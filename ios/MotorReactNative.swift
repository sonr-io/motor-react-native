@objc(MotorReactNative)

import SonrMotor
class MotorReactNative: NSObject, NSObject {

    @objc(multiply:withB:withResolver:withRejecter:)
    func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        resolve(a*b)
    }

    @objc(newWallet:withResolver:withRejecter:)
    func newWallet(resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock)  {
        SonrMotor.MotorNewWallet(reject)
    }
}
