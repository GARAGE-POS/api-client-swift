//
//  Example: Integrating Environment Switching in Your App
//  
//  This file demonstrates how to use KarageAPIClient's environment
//  switching capabilities in your iOS/macOS app.
//

import SwiftUI
import KarageAPIClient

// MARK: - Example 1: Simple Environment Display

struct EnvironmentBadgeView: View {
    @State private var currentEnv = EnvironmentManager.shared.currentEnvironment
    
    var body: some View {
        HStack {
            Circle()
                .fill(currentEnv.isProduction ? .red : .orange)
                .frame(width: 8, height: 8)
            
            Text(currentEnv.rawValue)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 4)
        .background(.ultraThinMaterial)
        .clipShape(Capsule())
    }
}

// MARK: - Example 2: Full Settings View

struct EnvironmentSettingsView: View {
    @State private var currentEnvironment = EnvironmentManager.shared.currentEnvironment
    @State private var showingLogoutAlert = false
    @State private var selectedEnvironment: Environment?
    
    var body: some View {
        List {
            Section {
                LabeledContent("Environment", value: currentEnvironment.rawValue)
                LabeledContent("Server URL", value: currentEnvironment.baseURL)
                    .font(.caption)
                
                if currentEnvironment.isProduction {
                    HStack {
                        Image(systemName: "exclamationmark.triangle.fill")
                            .foregroundStyle(.red)
                        Text("Production Environment")
                            .font(.caption)
                    }
                }
            } header: {
                Text("Current Configuration")
            }
            
            Section {
                ForEach(Environment.allCases, id: \.self) { env in
                    Button {
                        selectedEnvironment = env
                        showingLogoutAlert = true
                    } label: {
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                Text(env.rawValue)
                                    .foregroundStyle(.primary)
                                    .font(.body)
                                
                                Text(env.baseURL)
                                    .foregroundStyle(.secondary)
                                    .font(.caption)
                            }
                            
                            Spacer()
                            
                            if env == currentEnvironment {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundStyle(.blue)
                            }
                            
                            if env.isProduction {
                                Image(systemName: "exclamationmark.triangle.fill")
                                    .foregroundStyle(.orange)
                                    .font(.caption)
                            }
                        }
                    }
                }
            } header: {
                Text("Available Environments")
            } footer: {
                Text("Changing environment will log you out and require re-authentication.")
                    .font(.caption)
            }
        }
        .navigationTitle("API Environment")
        .alert("Switch Environment?", isPresented: $showingLogoutAlert) {
            Button("Cancel", role: .cancel) { }
            Button("Switch & Logout", role: .destructive) {
                if let env = selectedEnvironment {
                    switchEnvironment(to: env)
                }
            }
        } message: {
            if let env = selectedEnvironment {
                Text("This will switch to \(env.rawValue) and log you out. You'll need to sign in again.")
            }
        }
        .onAppear {
            setupEnvironmentObserver()
        }
    }
    
    private func switchEnvironment(to environment: Environment) {
        // 1. Switch the API environment
        EnvironmentManager.shared.switchToEnvironment(environment)
        
        // 2. Update OAuth configuration (if managed separately)
        updateOAuthConfiguration(for: environment)
        
        // 3. Logout the user
        logoutUser()
        
        // 4. Update UI
        currentEnvironment = environment
    }
    
    private func setupEnvironmentObserver() {
        NotificationCenter.default.addObserver(
            forName: .karageEnvironmentDidChange,
            object: nil,
            queue: .main
        ) { notification in
            if let newEnv = notification.userInfo?[KarageEnvironmentKey] as? Environment {
                currentEnvironment = newEnv
            }
        }
    }
    
    private func updateOAuthConfiguration(for environment: Environment) {
        // Your OAuth config update logic here
        // Example: Update OAuth2Config.json issuer to match environment.baseURL
        print("📝 Updating OAuth config to: \(environment.baseURL)")
        
        // See README for detailed implementation
    }
    
    private func logoutUser() {
        // Your logout logic here
        print("👋 Logging out user...")
    }
}

// MARK: - Example 3: Quick Environment Switcher (Debug Only)

#if DEBUG
struct QuickEnvironmentSwitcherView: View {
    @State private var currentEnv = EnvironmentManager.shared.currentEnvironment
    
    var body: some View {
        Menu {
            ForEach(Environment.allCases, id: \.self) { env in
                Button {
                    EnvironmentManager.shared.switchToEnvironment(env)
                    currentEnv = env
                } label: {
                    HStack {
                        Text(env.rawValue)
                        if env == currentEnv {
                            Image(systemName: "checkmark")
                        }
                    }
                }
            }
        } label: {
            HStack {
                Circle()
                    .fill(currentEnv.isProduction ? .red : .orange)
                    .frame(width: 8, height: 8)
                Text(currentEnv.rawValue)
                    .font(.caption)
                Image(systemName: "chevron.down")
                    .font(.caption2)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(.ultraThinMaterial)
            .clipShape(Capsule())
        }
    }
}
#endif

// MARK: - Example 4: AppDelegate/Scene Delegate Integration

class AppCoordinator {
    
    static let shared = AppCoordinator()
    private init() {
        setupEnvironmentObserver()
    }
    
    private func setupEnvironmentObserver() {
        NotificationCenter.default.addObserver(
            forName: .karageEnvironmentDidChange,
            object: nil,
            queue: .main
        ) { [weak self] notification in
            guard let newEnv = notification.userInfo?[KarageEnvironmentKey] as? Environment else {
                return
            }
            
            self?.handleEnvironmentChange(to: newEnv)
        }
    }
    
    private func handleEnvironmentChange(to environment: Environment) {
        print("🔄 Environment changed to: \(environment.rawValue)")
        
        // 1. Update OAuth configuration
        syncOAuthConfiguration(to: environment)
        
        // 2. Clear any cached data
        clearCachedData()
        
        // 3. Logout user
        logoutCurrentUser()
        
        // 4. Reset app to login screen
        resetToLoginScreen()
    }
    
    private func syncOAuthConfiguration(to environment: Environment) {
        guard let configURL = getOAuthConfigURL() else {
            print("❌ Could not find OAuth config file")
            return
        }
        
        do {
            let data = try Data(contentsOf: configURL)
            var json = try JSONSerialization.jsonObject(with: data) as? [String: Any] ?? [:]
            
            // Update issuer to match new environment
            json["issuer"] = environment.baseURL
            
            let updatedData = try JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
            try updatedData.write(to: configURL)
            
            print("✅ OAuth configuration synced to \(environment.rawValue)")
        } catch {
            print("❌ Failed to update OAuth config: \(error)")
        }
    }
    
    private func getOAuthConfigURL() -> URL? {
        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let configURL = documentsPath.appendingPathComponent("OAuth2Config.json")
        
        // Copy from bundle if doesn't exist
        if !FileManager.default.fileExists(atPath: configURL.path),
           let bundleURL = Bundle.main.url(forResource: "OAuth2Config", withExtension: "json") {
            try? FileManager.default.copyItem(at: bundleURL, to: configURL)
        }
        
        return configURL
    }
    
    private func clearCachedData() {
        // Clear any API response caches, etc.
    }
    
    private func logoutCurrentUser() {
        // Implement your logout logic
    }
    
    private func resetToLoginScreen() {
        // Navigate to login screen
    }
}

// MARK: - Example 5: Static Usage (Without Shared Instance)

struct EnvironmentChecker {
    
    static func checkEnvironment() {
        // Get current environment without accessing shared instance
        let currentEnv = EnvironmentManager.getCurrentEnvironment()
        let envLabel = EnvironmentManager.getCurrentEnvironmentLabel()
        
        print("Current environment: \(envLabel)")
        print("Is production: \(currentEnv.isProduction)")
        print("Is QA: \(currentEnv.isQA)")
    }
}

// MARK: - Example 6: Preview Helpers

#if DEBUG
struct EnvironmentSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            EnvironmentSettingsView()
        }
    }
}

struct EnvironmentBadgeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            EnvironmentBadgeView()
            QuickEnvironmentSwitcherView()
        }
        .padding()
    }
}
#endif
