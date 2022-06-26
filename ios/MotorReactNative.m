#import "MotorReactNative.h"
#import "Motor/Motor.h"
@implementation MotorReactNative

RCT_EXPORT_MODULE()

// Example method
// See // https://reactnative.dev/docs/native-modules-ios
RCT_REMAP_METHOD(multiply,
                 multiplyWithA:(nonnull NSNumber*)a withB:(nonnull NSNumber*)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  NSNumber *result = @([a floatValue] * [b floatValue]);

  resolve(result);
}

RCT_REMAP_METHOD(getName,
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  resolve([[UIDevice currentDevice] name]);
}

RCT_REMAP_METHOD(newWallet,
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
    NSError *error = nil;
    BOOL *result = SNRMotorNewWallet(&error);
    if (error) {
        reject(@"error", @"error", error);
    } else {
        resolve(@(result));
    }
}
@end
