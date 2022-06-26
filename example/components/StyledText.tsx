/* eslint-disable react-native/no-inline-styles */
/* eslint-disable react/react-in-jsx-scope */
import { Text, TextProps } from './Themed';

export function MonoText(props: TextProps) {
  return (
    <Text {...props} style={[props.style, { fontFamily: 'space-mono' }]} />
  );
}
