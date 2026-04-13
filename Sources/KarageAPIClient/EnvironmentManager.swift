import Foundation

/// Notification posted when the environment changes
public extension Notification.Name {
    static let karageEnvironmentDidChange = Notification.Name("KarageEnvironmentDidChangeNotification")
}

/// User info key for the new environment in environment change notification
public let KarageEnvironmentKey = "KarageEnvironment"

/// Manages API environment configuration and switching
@MainActor
public final class EnvironmentManager: @unchecked Sendable {
    
    // MARK: - Singleton
    
    public static let shared = EnvironmentManager()
    private init() {
        _currentEnvironment = Self.detectCurrentEnvironment()
    }
    
    // MARK: - Properties
    
    private var _currentEnvironment: Environment
    
    /// The current active environment
    public private(set) var currentEnvironment: Environment {
        get { _currentEnvironment }
        set {
            _currentEnvironment = newValue
            NotificationCenter.default.post(
                name: .karageEnvironmentDidChange,
                object: self,
                userInfo: [KarageEnvironmentKey: newValue]
            )
        }
    }
    
    /// The current environment label (e.g., "Q1", "Sandbox", "Live")
    public var currentEnvironmentLabel: String {
        return currentEnvironment.rawValue
    }
    
    /// All available environments
    public var availableEnvironments: [Environment] {
        return Environment.allCases
    }
    
    /// Labels for all available environments
    public var availableEnvironmentLabels: [String] {
        return Environment.allCases.map { $0.rawValue }
    }
    
    /// Whether environment switching is available
    public var isEnvironmentSwitchingAvailable: Bool {
        return true  // Always available
    }
    
    /// Current server base URL
    public var currentServerURL: String {
        return currentEnvironment.baseURL
    }
    
    // MARK: - Static Methods
    
    /// Get the current environment without accessing the shared instance
    /// Useful for initial setup or when you don't want to trigger initialization
    public static func getCurrentEnvironment() -> Environment {
        return detectCurrentEnvironment()
    }
    
    /// Get the current environment label without accessing the shared instance
    public static func getCurrentEnvironmentLabel() -> String {
        return detectCurrentEnvironment().rawValue
    }
    
    // MARK: - Environment Switching
    
    /// Switch to the next environment in sequence (Q1 -> Q2 -> ... -> Live -> Q1)
    /// - Returns: The new environment after switching
    @discardableResult
    public func switchToNextEnvironment() -> Environment {
        let nextEnv = currentEnvironment.next
        print("🔄 [EnvironmentManager] Switching from \(currentEnvironment.rawValue) to \(nextEnv.rawValue)")
        
        return switchToEnvironment(nextEnv)
    }
    
    /// Switch to a specific environment
    /// - Parameter environment: The target environment
    /// - Returns: The new environment (same as input if successful)
    @discardableResult
    public func switchToEnvironment(_ environment: Environment) -> Environment {
        print("🔄 [EnvironmentManager] Switching to environment: \(environment.rawValue)")
        
        // Don't switch if already on this environment
        if currentEnvironment == environment {
            print("ℹ️ [EnvironmentManager] Already on environment \(environment.rawValue)")
            return currentEnvironment
        }
        
        // Update configuration file
        let success = ConfigurationFileManager.shared.updateServerURL(to: environment.baseURL)
        
        if success {
            // Update current environment (this will post notification)
            currentEnvironment = environment
            print("✅ [EnvironmentManager] Environment updated to: \(environment.rawValue)")
        } else {
            print("❌ [EnvironmentManager] Failed to update configuration for environment: \(environment.rawValue)")
        }
        
        return currentEnvironment
    }
    
    /// Switch to a specific environment by label (e.g., "Q1", "Sandbox", "Live")
    /// - Parameter label: The environment label
    /// - Returns: The new environment, or current environment if label is invalid
    @discardableResult
    public func switchToEnvironment(label: String) -> Environment {
        guard let environment = Environment.allCases.first(where: { $0.rawValue == label }) else {
            print("❌ [EnvironmentManager] Invalid environment label: \(label)")
            return currentEnvironment
        }
        
        return switchToEnvironment(environment)
    }
    
    // MARK: - Private Methods
    
    /// Detect the current environment from the configuration file
    private static func detectCurrentEnvironment() -> Environment {
        guard let serverURL = ConfigurationFileManager.shared.getCurrentServerURL() else {
            print("⚠️ [EnvironmentManager] Could not read server URL from config, defaulting to Q1")
            return .qa1
        }
        
        guard let detected = Environment.detect(from: serverURL) else {
            print("⚠️ [EnvironmentManager] Could not detect environment from URL: \(serverURL), defaulting to Q1")
            return .qa1
        }
        
        print("✅ [EnvironmentManager] Detected environment: \(detected.rawValue) from URL: \(serverURL)")
        return detected
    }
    
    /// Refresh the current environment by re-reading from the configuration file
    /// Useful if the configuration was modified externally
    public func refreshEnvironment() {
        let detected = Self.detectCurrentEnvironment()
        if detected != currentEnvironment {
            print("🔄 [EnvironmentManager] Environment changed externally from \(currentEnvironment.rawValue) to \(detected.rawValue)")
            currentEnvironment = detected
        }
    }
}
