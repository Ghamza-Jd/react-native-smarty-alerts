import { NativeModules } from 'react-native';

type SmartyAlertsType = {
  alert(title: string,
    message: string,
    btnOneLabel: string,
    btnTwoLabel: string,
    btnOneAction: Function,
    btnTwoAction: Function): Promise<void>;
};

const { SmartyAlerts } = NativeModules;

export default SmartyAlerts as SmartyAlertsType;
