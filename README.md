# Motor for React-Native

React Native bindings for the Sonr Motor Node.

## Installation

### For a `react-native` project

```sh
npm install motor-react-native
```

### For a `expo` project

1. Eject the `expo` project.

```sh
expo eject

// or

yarn eject
```

2. Install the `motor-react-native` package.*

```sh
npm install motor-react-native
```

3. Embed Motor to your iOS project:
    - Build Phases > Link Binary With Libraries > Add `Motor.xcframework`

4. Run `pod install` in the `ios` directory.

## Usage

```js
import { newWallet } from "motor-react-native";

// ...

const result = await newWallet();
```

## To Do
- [ ] Implement ExportWallet in Swift/Java/JS
- [ ] Implement LoadWallet in Swift/Java/JS
- [ ] Implement Address in Swift/Java/JS
- [ ] Implement DidDoc in Swift/Java/JS
- [ ] Implement ImportCredential in Swift/Java/JS
- [ ] Implement Sign in Swift/Java/JS
- [ ] Implement Verify in Swift/Java/JS

## API Reference

These methods are subject to change, as the library is being actively developed.

| **Method**         | **Description**                                                              |        **Params**        | **Returns** |
|--------------------|------------------------------------------------------------------------------|:------------------------:|:-----------:|
| `NewWallet`        | Create a new mpc wallet                                                      |      Threshold:`int`     |    ERROR    |
| `ExportWallet`     | Marshals wallet to json and returns - TESTING ONLY                           |                          |    BYTES    |
| `LoadWallet`       | Unmarshals the buffer into a wallet                                          |       Buf: `bytes`       |    ERROR    |
| `Address`          | Get wallet address                                                           |                          |    STRING   |
| `DidDoc`           | Get DidDocument of account                                                   |                          |    STRING   |
| `ImportCredential` | Import a webauthn/biometric credential proto bytes into wallet did document  |       Cred:`bytes`       |    ERROR    |
| `Sign`             | Sign a buffer with MPC wallet, completes entire process and returns a tx raw |        Msg:`bytes`       |    BYTES    |
| `Verify`           | Verify a signature of a buffer                                               | Msg:`bytes`, Sig:`bytes` |     BOOL    |

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
