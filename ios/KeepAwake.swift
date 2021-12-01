import UIKit

@objc(KeepAwake)
class KeepAwake: NSObject {
    
    @objc
    static func requiresMainQueueSetup() -> Bool {
        return true
    }

    @objc func activate() -> Void {
        UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = true
    }
    

    @objc func deactivate() -> Void {
        UIApplication.shared.isIdleTimerDisabled = false
    }
}
