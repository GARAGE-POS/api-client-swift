import Foundation

/// Represents available API environments for Karage services
public enum Environment: String, CaseIterable {
    case qa1 = "Q1"
    case qa2 = "Q2"
    case qa3 = "Q3"
    case qa4 = "Q4"
    case sandbox = "Sandbox"
    case live = "Live"
    
    /// The base URL for this environment
    public var baseURL: String {
        switch self {
        case .qa1:
            return "https://api-qa1.karage.co"
        case .qa2:
            return "https://api-qa2.karage.co"
        case .qa3:
            return "https://api-qa3.karage.co"
        case .qa4:
            return "https://api-qa4.karage.co"
        case .sandbox:
            return "https://sandbox-api.karage.co"
        case .live:
            return "https://api.karage.co"
        }
    }
    
    /// Detect environment from a URL string
    /// - Parameter url: The URL string to analyze
    /// - Returns: The detected environment, or nil if not recognized
    public static func detect(from url: String) -> Environment? {
        if url.contains("qa1") || url.contains("-qa1") {
            return .qa1
        } else if url.contains("qa2") || url.contains("-qa2") {
            return .qa2
        } else if url.contains("qa3") || url.contains("-qa3") {
            return .qa3
        } else if url.contains("qa4") || url.contains("-qa4") {
            return .qa4
        } else if url.contains("sandbox") {
            return .sandbox
        } else if url.contains("api.karage.co") && !url.contains("qa") && !url.contains("sandbox") {
            return .live
        }
        return nil
    }
    
    /// Get the next environment in sequence (Q1 -> Q2 -> ... -> Live -> Q1)
    public var next: Environment {
        switch self {
        case .qa1: return .qa2
        case .qa2: return .qa3
        case .qa3: return .qa4
        case .qa4: return .sandbox
        case .sandbox: return .live
        case .live: return .qa1
        }
    }
    
    /// Whether this is a production environment
    public var isProduction: Bool {
        return self == .live
    }
    
    /// Whether this is a QA environment
    public var isQA: Bool {
        return [.qa1, .qa2, .qa3, .qa4].contains(self)
    }
}
