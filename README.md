# Cargo plugin for [`ink!`](https://github.com/chainx-org/ink) contracts

**IMPORTANT NOTE:** WORK IN PROGRESS! Do not expect this to be working. 

A small CLI tool for helping setting up and managing WebAssembly smart contracts written with ink!.

## Installation

`cargo install --git https://github.com/chainx-org/cargo-contract cargo-contract --force`

Use the --force to ensure you are updated to the most recent cargo-contract version.

## Usage

```
cargo-contract 0.2.0
Utilities to develop Wasm smart contracts.

USAGE:
    cargo contract <SUBCOMMAND>

OPTIONS:
    -h, --help       Prints help information
    -V, --version    Prints version information

SUBCOMMANDS:
    new                  Setup and create a new smart contract.
    build                Builds the smart contract.
    generate-metadata    Generate contract metadata artifacts
    test                 Test the smart contract off-chain.
    deploy               Deploy the smart contract on-chain. (Also for testing purposes.)
    help                 Prints this message or the help of the given subcommand(s)
```

## Feature

The `deploy` subcommand is **disabled by default**, since it's not working properly at the moment and increases the build time.

If you want to try it, you need to enable the `deploy` feature.

Once it is working properly and the compilation time is acceptable, we will consider removing the `deploy` feature.

## License

The entire code within this repository is licensed under the [GPLv3](LICENSE). Please [contact us](https://www.parity.io/contact/) if you have questions about the licensing of our products.


