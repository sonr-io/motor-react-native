/* eslint-disable @typescript-eslint/no-unused-vars */
/* eslint-disable react/react-in-jsx-scope */
import { StyleSheet } from 'react-native';

import EditScreenInfo from '../components/EditScreenInfo';
import { Text, View } from '../components/Themed';
import { Button } from 'react-native';
import { RootTabScreenProps } from '../types';
import { multiply, newWallet } from 'motor-react-native';
import { useState } from 'react';
export default function TabOneScreen({}: RootTabScreenProps<'TabOne'>) {
  const [count, setCount] = useState(0);

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Tab One</Text>
      <View
        style={styles.separator}
        lightColor="#eee"
        darkColor="rgba(255,255,255,0.1)"
      />
      <EditScreenInfo path="/screens/TabOneScreen.tsx" />
      <Button
        title="Press me"
        color="#f194ff"
        onPress={() => onClick(setCount)}
      />
    </View>
  );
}

async function onClick(
  handler: React.Dispatch<React.SetStateAction<number>>
): Promise<void> {
  const result = await multiply(5, 2);
  console.log(result);
  try {
    const name = await newWallet();
    console.log(name);
  } catch (error) {
    console.log(error);
  }

  handler(result);
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
  },
  separator: {
    marginVertical: 30,
    height: 1,
    width: '80%',
  },
});
