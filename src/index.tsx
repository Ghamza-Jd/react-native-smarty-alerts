import { NativeModules } from 'react-native';

type SmartyAlertsType = {
  multiply(a: number, b: number): Promise<number>;
};

const { SmartyAlerts } = NativeModules;

export default SmartyAlerts as SmartyAlertsType;
