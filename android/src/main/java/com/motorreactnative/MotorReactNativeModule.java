package com.motorreactnative;

import androidx.annotation.NonNull;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;

@ReactModule(name = MotorReactNativeModule.NAME)
public class MotorReactNativeModule extends ReactContextBaseJavaModule {
    public static final String NAME = "MotorReactNative";

    public MotorReactNativeModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    @NonNull
    public String getName() {
        return NAME;
    }


    // Example method
    // See https://reactnative.dev/docs/native-modules-android
    @ReactMethod
    public void multiply(int a, int b, Promise promise) {
        promise.resolve(a * b);
    }

  @ReactMethod
  public void newWallet(Promise promise) {
    try {
      final boolean result = motor.Motor.newWallet();
      promise.resolve(result);
    } catch (Exception e) {
      promise.reject(e);
    }
  }


  public static native int nativeMultiply(int a, int b);
}
