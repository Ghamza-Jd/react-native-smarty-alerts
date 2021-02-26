import * as React from 'react';

import { StyleSheet, View, Text } from 'react-native';
import SmartyAlerts from 'react-native-smarty-alerts';


export default function App() {
  const [result, setResult] = React.useState<number | undefined>();

  React.useEffect(() => {
    let f = () => { console.log('pressed') };
    let f2 = () => { console.log('not pressed') };
    SmartyAlerts.alert("Title", "Message", "Hamza", "jadid", f, f2);
  }, []);

  return (
    <View style={styles.container}>
      <Text>Result: {result}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
