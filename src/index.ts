import { Platform, NativeModules } from 'react-native';

export async function isTestFlight(): Promise<boolean> {
  if (Platform.OS !== 'ios') {
    return false;
  }

  const mod = NativeModules.RnIsTf;
  if (!mod?.isTestFlight) {
    return false;
  }

  return mod.isTestFlight();
}
