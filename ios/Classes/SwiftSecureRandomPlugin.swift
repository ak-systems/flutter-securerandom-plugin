import Flutter
import UIKit

public class SwiftSecureRandomPlugin: NSObject, FlutterPlugin {
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "securerandom", binaryMessenger: registrar.messenger())
        let instance = SwiftSecureRandomPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "generate":
            generate( call, result )
            break
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    private func generate(_ call: FlutterMethodCall, _ result: @escaping FlutterResult) {
        
        let numBytes = (call.arguments as! NSDictionary).value(forKey: "numBytes") as! Int
        
        var bytes = [UInt8](repeating: 0, count: numBytes)
        let status = SecRandomCopyBytes(kSecRandomDefault, bytes.count, &bytes)
        
        if status == errSecSuccess {
            result(FlutterStandardTypedData(bytes: Data(bytes: bytes, count: numBytes)))
        } else {
            result(FlutterError(code: "SecRandomCopyBytes:" + String(status),
                                message: "Unable to generate secure random bytes.",
                                details: nil))
        }
        
    }
    
}
