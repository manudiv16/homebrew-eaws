# homebrew-eaws

Homebrew tap for [EAWS](https://github.com/manudiv16/eaws) - Simple AWS CLI tool for ECS, CloudWatch, and CodePipeline.

## Installation

```bash
# Add the tap
brew tap manudiv16/eaws

# Install EAWS
brew install eaws
```

## Update

```bash
# Update the tap
brew update

# Upgrade EAWS
brew upgrade eaws
```

## Uninstall

```bash
# Uninstall EAWS
brew uninstall eaws

# Remove the tap (optional)
brew untap manudiv16/eaws
```

## About EAWS

EAWS is a simple AWS CLI tool built with Go that provides easy access to AWS services:

- 🚀 **Interactive CLI** - Uses interactive prompts for easy navigation
- 🎨 **Colorized Output** - Beautiful colored output for better readability
- 🐳 **ECS Support** - List and connect to ECS containers
- 📊 **CloudWatch Logs** - Query and view CloudWatch logs
- 🔄 **CodePipeline** - Monitor pipeline status and details
- 🔐 **AWS Profile Support** - Works with AWS profiles and granted tool

## Prerequisites

- AWS CLI configured
- [granted](https://github.com/common-fate/granted) (optional, for profile management)

## Usage

After installation, you can use EAWS with:

```bash
# Show help
eaws --help

# List ECS containers
eaws container list

# Connect to a container
eaws container connect

# Query CloudWatch logs
eaws logs query

# View pipeline status
eaws pipeline
```

## Support

For issues, feature requests, or documentation, please visit the main repository:
[https://github.com/manudiv16/eaws](https://github.com/manudiv16/eaws)

## Alternative Installation Methods

If you prefer not to use Homebrew, you can also install EAWS using:

### Quick Install Script

```bash
curl -fsSL https://raw.githubusercontent.com/manudiv16/eaws/main/install.sh | bash
```

### Manual Installation

Download the binary from the [releases page](https://github.com/manudiv16/eaws/releases) and move it to your PATH.

## Formula

This tap contains the Homebrew formula for EAWS. The formula is located at `Formula/eaws.rb`.

## License

This tap is released under the MIT License. See the main project's [LICENSE](https://github.com/manudiv16/eaws/blob/main/LICENSE) for details.
