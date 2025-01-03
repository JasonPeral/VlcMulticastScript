
## Overview
This Bash script launches VLC Media Player with a user-provided or default UDP address for streaming. It also includes a help feature for guidance.

## Prerequisites
- VLC Media Player must be installed.
- Update the `VLC_PATH` variable to the correct VLC executable path on your system. Default is:
  ```
  /Applications/VLC.app/Contents/MacOS/VLC
  ```

## Usage

1. **To launch VLC with a specific UDP address**:
   ```
   ./script.sh udp://@<IP>:<PORT>
   ```

   Example:
   ```
   ./script.sh udp://@239.255.2.2:5678
   ```

2. **To view usage instructions**:
   ```
   ./script.sh help
   ```

3. **To use the default UDP address**:
   ```
   ./script.sh
   ```
   Output:
   ```
   No address provided. Using default: udp://@239.0.0.190:1234
   Launching VLC with address: udp://@239.0.0.190:1234
   ```

## Script Details

- **Default UDP Address**: If no address is provided, the script uses `udp://@239.0.0.190:1234`.
- **Help Feature**: Displays usage instructions when `help` is passed or invalid arguments are provided.
- **VLC Launch**: VLC is launched with the specified or default address.

## Troubleshooting
- Ensure `VLC_PATH` points to the correct VLC executable.
- Use the `help` argument for usage instructions:
  ```
  ./script.sh help
  ```

---
Adapt the script as needed for your setup. Happy streaming!

