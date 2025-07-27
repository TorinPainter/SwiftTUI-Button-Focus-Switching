extension Application {
    public static var shared: Application? {
        // SwiftTUI might store this differently - adjust as needed
        Mirror(reflecting: Application.self).descendant("shared") as? Application
    }
    
    public static func resignFocus() {
        shared?.rootNode?.resignFirstResponderRecursively()
    }
}