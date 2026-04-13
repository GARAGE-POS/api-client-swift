import Foundation

/// Manages OpenAPI configuration file operations
internal final class ConfigurationFileManager: @unchecked Sendable {
    
    static let shared = ConfigurationFileManager()
    private init() {}
    
    private let fileName = "openapi"
    
    /// Get the URL for the openapi.json configuration file
    /// - Returns: URL to the configuration file in Documents directory, or bundle if not found
    func getConfigFileURL() -> URL? {
        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let configURL = documentsPath.appendingPathComponent("\(fileName).json")
        
        // If file doesn't exist in documents, copy from bundle
        if !FileManager.default.fileExists(atPath: configURL.path) {
            guard let bundleURL = Bundle.main.url(forResource: fileName, withExtension: "json") else {
                print("❌ [ConfigurationFileManager] openapi.json not found in bundle")
                return nil
            }
            
            do {
                try FileManager.default.copyItem(at: bundleURL, to: configURL)
                print("✅ [ConfigurationFileManager] Copied openapi.json to Documents directory")
            } catch {
                print("❌ [ConfigurationFileManager] Failed to copy openapi.json: \(error)")
                return bundleURL  // Fall back to bundle URL for reading only
            }
        }
        
        return configURL
    }
    
    /// Read the current server URL from openapi.json
    /// - Returns: The current server URL, or nil if not found
    func getCurrentServerURL() -> String? {
        guard let configURL = getConfigFileURL() else { return nil }
        guard let data = try? Data(contentsOf: configURL) else {
            print("❌ [ConfigurationFileManager] Could not read openapi.json")
            return nil
        }
        
        guard let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else {
            print("❌ [ConfigurationFileManager] Could not parse openapi.json")
            return nil
        }
        
        guard let servers = json["servers"] as? [[String: Any]],
              let firstServer = servers.first,
              let serverURL = firstServer["url"] as? String else {
            print("❌ [ConfigurationFileManager] No servers found in openapi.json")
            return nil
        }
        
        return serverURL
    }
    
    /// Update the server URL in openapi.json
    /// - Parameter newURL: The new server URL to set
    /// - Returns: True if successful, false otherwise
    @discardableResult
    func updateServerURL(to newURL: String) -> Bool {
        guard let configURL = getConfigFileURL() else {
            print("❌ [ConfigurationFileManager] Could not get config file URL")
            return false
        }
        
        guard let data = try? Data(contentsOf: configURL) else {
            print("❌ [ConfigurationFileManager] Could not read openapi.json")
            return false
        }
        
        guard var json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else {
            print("❌ [ConfigurationFileManager] Could not parse openapi.json")
            return false
        }
        
        // Update servers URL
        if var servers = json["servers"] as? [[String: Any]], !servers.isEmpty {
            servers[0]["url"] = newURL
            json["servers"] = servers
            
            // Write back to file
            do {
                let updatedData = try JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
                try updatedData.write(to: configURL)
                print("✅ [ConfigurationFileManager] Updated openapi.json server URL to: \(newURL)")
                return true
            } catch {
                print("❌ [ConfigurationFileManager] Failed to write openapi.json: \(error)")
                return false
            }
        } else {
            print("❌ [ConfigurationFileManager] No servers found in openapi.json")
            return false
        }
    }
}
