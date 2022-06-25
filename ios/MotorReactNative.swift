import Foundation
import SonrMotor

@objc(MotorReactNative)
class MotorReactNative: NSObject {

    @objc(multiply:withB:withResolver:withRejecter:)
    func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        resolve(a*b)
    }

    @objc(newWallet:withRejecter:)
    func newWallet(resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock)  {
        var error : NSError?
        let rawBuf = MotorNewWallet(nil, &error)
        if let err = error {
            reject("newWallet", err.localizedDescription, err)
        } else {
            resolve(rawBuf)
        }
    }
}
