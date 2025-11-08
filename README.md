# Bluespec SystemVerilog Extension for Zed

This extension provides syntax highlighting support for Bluespec SystemVerilog (BSV) in the [Zed editor](https://zed.dev).

## Features

- Syntax highlighting for BSV files (.bsv)
- Support for BSV keywords, types, operators, and constructs
- Comment highlighting (single-line `//` and multi-line `/* */`)

## Installation

### From Source

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/zed-bsv.git
   cd zed-bsv
   ```

2. Build the extension:
   ```bash
   cargo build --release
   ```

3. Install the extension in Zed:
   - Open Zed
   - Run command: `zed: install dev extension`
   - Select this directory

### From Zed Extensions

Once published to the Zed extension registry:
- Open Zed
- Go to Extensions (Cmd+Shift+X or Ctrl+Shift+X)
- Search for "Bluespec SystemVerilog"
- Click Install

## Supported Syntax

This extension highlights:

- **Keywords**: `package`, `module`, `interface`, `typedef`, `struct`, `enum`, etc.
- **Control Flow**: `if`, `else`, `case`, `for`, `while`, `return`
- **Method/Function**: `method`, `function`, `rule`
- **Built-in Types**: `Bit`, `Int`, `UInt`, `Bool`, `Vector`, `Reg`, `FIFO`, etc.
- **Operators**: Arithmetic, logical, bitwise, and comparison operators
- **Literals**: Numbers, strings, boolean values (`True`, `False`)
- **Comments**: Single-line and multi-line comments

## Tree-sitter Grammar

This extension uses the [tree-sitter-bsv](https://github.com/sandytruant/tree-sitter-bsv) grammar for parsing BSV code.

## Development

To modify or extend this extension:

1. Edit the syntax highlighting queries in `languages/bsv/highlights.scm`
2. Update language configuration in `languages/bsv/config.toml`
3. Modify extension metadata in `extension.toml`
4. Rebuild and reload in Zed

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

## License

MIT

## Credits

- Tree-sitter grammar: [tree-sitter-bsv](https://github.com/sandytruant/tree-sitter-bsv)
- Based on the [Zed extension API](https://github.com/zed-industries/zed)
