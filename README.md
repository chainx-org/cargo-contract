# Cargo plugin for [`ink!`](https://github.com/chainx-org/ink) contracts

**IMPORTANT NOTE:** WORK IN PROGRESS! Do not expect this to be working. 

A small CLI tool for helping setting up and managing WebAssembly smart contracts written with ink!.

## Installation

`cargo install --git https://github.com/chainx-org/cargo-contract --branch ink2.0 cargo-contract --force`

Use the --force to ensure you are updated to the most recent cargo-contract version.

## Usage

```
cargo-contract 0.3.0
Utilities to develop Wasm smart contracts.

USAGE:
    cargo contract <SUBCOMMAND>

OPTIONS:
    -h, --help       Prints help information
    -V, --version    Prints version information

SUBCOMMANDS:
    new                  Setup and create a new smart contract project
    build                Compiles the smart contract
    generate-metadata    Generate contract metadata artifacts
    test                 Test the smart contract off-chain
    deploy               Upload the smart contract code to the chain
    instantiate          Instantiate a deployed smart contract
    help                 Prints this message or the help of the given subcommand(s)
```

## Features

The `deploy` and `instantiate` subcommands are **disabled by default**, since they are not fully stable yet and increase the build time.

If you want to try them, you need to enable the `extrinsics` feature:

`cargo install --git https://github.com/paritytech/cargo-contract cargo-contract --features extrinsics --force`

Once they are stable and the compilation time is acceptable, we will consider removing the `extrinsics` feature.

## License

The entire code within this repository is licensed under the [GPLv3](LICENSE). Please [contact us](https://www.parity.io/contact/) if you have questions about the licensing of our products.


