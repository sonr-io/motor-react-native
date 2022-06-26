import { NativeModules, Platform } from 'react-native';

const LINKING_ERROR =
  `The package 'motor-react-native' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo managed workflow\n';

const MotorModule = NativeModules.SNRMotorModule
  ? NativeModules.SNRMotorModule
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

export function deviceName(): Promise<string> {
  return MotorModule.deviceName();
}

export function multiply(a: number, b: number): Promise<number> {
  return MotorModule.multiply(a, b);
}

export function newWallet(): Promise<Boolean> {
  return MotorModule.newWallet();
}
