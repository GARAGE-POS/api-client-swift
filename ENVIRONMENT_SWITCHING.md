# Environment Switching - Quick Reference

This guide shows you how to use the environment switching feature in your app.

## What Was Added

### New Public APIs

1. **`EnvironmentManager`** - Singleton for managing environments
2. **`Environment`** - Enum representing all available environments (Q1-Q4, Sandbox, Live)
3. **`Notification.karageEnvironmentDidChange`** - Posted when environment changes
4. **`KarageEnvironmentKey`** - Key to get new environment from notification

### Files Created

- `Environment.swift` - Environment enum with all QA/Sandbox/Live options
- `EnvironmentManager.swift` - Main API for switching environments
- `ConfigurationFileManager.swift` - Handles openapi.json updates (internal)
- `Examples/EnvironmentSwitchingExample.swift` - Complete integration examples

## Quick Start

### 1. Get Current Environment

```swift
import KarageAPIClient

let env = EnvironmentManager.shared.currentEnvironment
print(env.rawValue) // "Q1", "Sandbox", "Live", etc.
print(env.baseURL)  // "https://api-qa1.karage.co"
```

### 2. Switch Environment

```swift
// Switch to specific environment
EnvironmentManager.shared.switchToEnvironment(.live)
EnvironmentManager.shared.switchToEnvironment(.sandbox)

// Or by string
EnvironmentManager.shared.switchToEnvironment(label: "Q2")

// Cycle to next
EnvironmentManager.shared.switchToNextEnvironment()
```

### 3. Listen for Changes

```swift
NotificationCenter.default.addObserver(
    forName: .karageEnvironmentDidChange,
    object: nil,
    queue: .main
) { notification in
    if let newEnv = notification.userInfo?[KarageEnvironmentKey] as? Environment {
        print("Switched to: \(newEnv.rawValue)")
        // Update OAuth config, logout user, etc.
    }
}
```

## Integration with Your OAuth Setup

Since you keep OAuth configuration separate, here's how to sync it:

```swift
func switchToEnvironment(_ environment: Environment) {
    // 1. Switch API environment (updates openapi.json)
    EnvironmentManager.shared.switchToEnvironment(environment)
    
    // 2. Update your OAuth2Config.json issuer to match
    updateOAuth2ConfigIssuer(to: environment.baseURL)
    
    // 3. Logout user (forces re-auth with new environment)
    authManager.logout()
}

private func updateOAuth2ConfigIssuer(to issuer: String) {
    // Your OAuth config is at: Documents/OAuth2Config.json
    // Update the "issuer" field to match the environment.baseURL
    
    // See Examples/EnvironmentSwitchingExample.swift for full implementation
}
```

## Available Environments

| Environment | Label | URL | Type |
|------------|-------|-----|------|
| `.qa1` | "Q1" | https://api-qa1.karage.co | QA |
| `.qa2` | "Q2" | https://api-qa2.karage.co | QA |
| `.qa3` | "Q3" | https://api-qa3.karage.co | QA |
| `.qa4` | "Q4" | https://api-qa4.karage.co | QA |
| `.sandbox` | "Sandbox" | https://sandbox-api.karage.co | Staging |
| `.live` | "Live" | https://api.karage.co | Production |

## Environment Properties

```swift
let env = Environment.sandbox

env.rawValue       // "Sandbox"
env.baseURL        // "https://sandbox-api.karage.co"
env.isProduction   // false
env.isQA           // false
env.next           // .live (next in cycle)
```

## Best Practices

### ✅ DO

- **Always logout** when switching environments
- **Sync OAuth config** to match API environment
- **Show environment badge** in non-production builds
- **Listen for changes** to update your app state

### ❌ DON'T

- Don't switch environments while user is authenticated
- Don't forget to update OAuth issuer URL
- Don't expose QA environments in production builds (unless desired)

## SwiftUI Example

```swift
struct SettingsView: View {
    @State private var currentEnv = EnvironmentManager.shared.currentEnvironment
    
    var body: some View {
        List {
            Section("Environment") {
                Picker("Environment", selection: $currentEnv) {
                    ForEach(Environment.allCases, id: \.self) { env in
                        Text(env.rawValue).tag(env)
                    }
                }
                .onChange(of: currentEnv) { _, newEnv in
                    switchToEnvironment(newEnv)
                }
            }
        }
    }
    
    func switchToEnvironment(_ env: Environment) {
        EnvironmentManager.shared.switchToEnvironment(env)
        updateOAuthConfig(for: env)
        logout()
    }
}
```

## How It Works

1. **Configuration Storage**
   - `openapi.json` is copied from bundle to Documents directory on first run
   - Environment switches update the Documents copy
   - Changes persist across app launches

2. **Environment Detection**
   - Reads current server URL from `openapi.json`
   - Detects environment from URL pattern (qa1, qa2, sandbox, etc.)
   - Defaults to Q1 if unable to detect

3. **Switching Process**
   - Updates `openapi.json` with new server URL
   - Posts `karageEnvironmentDidChange` notification
   - Your app updates OAuth config and logouts user

## Troubleshooting

**Q: Environment not changing?**
- Check that `openapi.json` is in your app bundle
- Verify write permissions to Documents directory
- Check console logs for error messages

**Q: OAuth still using old environment?**
- Make sure you're syncing OAuth config on environment change
- Verify OAuth2Config.json issuer matches API environment

**Q: Getting auth errors after switching?**
- Did you logout the user? Always logout when switching
- Check that OAuth issuer URL exactly matches API base URL

## See Also

- `README.md` - Full documentation
- `Examples/EnvironmentSwitchingExample.swift` - Complete code examples
- Your `SupportSettingsViewModel.swift` - Reference implementation
