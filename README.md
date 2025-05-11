# Personal NixOS Repository

This repository contains my personal NixOS configuration files, built on NixOS's unstable channel.

## Repository Structure

### Branch Structure

- **unable** - Stable production configuration to be used as a restore point on existing systems or a starting point on new systems.
- **unstable-dev** - Development branch where I test changes and verify stability before merging to prod, this is what I run day-to-day on my systems.

### File Structure

- `flake.nix` - The entry point for the configuration
- `hosts/` - Host-specific configuration files
- `common/` - Shared configuration files used across multiple hosts

## Purpose

This repository serves three primary functions:

1. **Version Control** - Tracking changes made to my NixOS configuration over time
2. **Backup** - Maintain a reliable backup of my system configuration
3. **Deployment** - Easily pull and apply configurations to new or existing NixOS installations

## Notes

- This configuration is personalized for my specific hardware and workflow
- All changes to the production branch have been tested
- Configurations use the nixos-unstable channel

## License

Personal use repository - feel free to reference or adapt for your own configurations.
