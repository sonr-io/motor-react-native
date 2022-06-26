#import "MotorReactNative.h"

@implementation MotorReactNative

RCT_EXPORT_MODULE(SNRMotorModule)

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

RCT_EXPORT_METHOD(deviceName,
                 successCallback:(RCTPromiseResolveBlock)resolve)
{
  resolve([[UIDevice currentDevice] name]);
}

RCT_EXPORT_METHOD(newWallet,
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
    NSError *error = nil;
    BOOL result = MTRBindNewWallet(&error);
    if (error) {
        reject(@"error", @"error", error);
    } else {
        resolve(@(result));
    }
}
@end
