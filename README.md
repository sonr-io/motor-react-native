# motor-react-native

React Native bindings for the Sonr Motor Node

## Installation

```sh
npm install motor-react-native
```

## Usage

```js
import { newWallet } from "motor-react-native";

// ...

const result = await newWallet();
```

## API Reference

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
