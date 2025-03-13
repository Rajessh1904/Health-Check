# VM Health Check Script

This repository contains a bash script that checks the health of a virtual machine by examining CPU usage, disk space, and memory usage. The script also supports a command line argument named "explain" to provide a detailed summary of the health status.

## Usage

1. Clone the repository:
    ```sh
    git clone https://github.com/your-username/vm-health-check.git
    cd vm-health-check
    ```

2. Make the script executable:
    ```sh
    chmod +x health_check.sh
    ```

3. Run the script:
    ```sh
    ./health_check.sh
    ```

4. To get a detailed summary, use the "explain" argument:
    ```sh
    ./health_check.sh explain
    ```

## Script Details

- `check_cpu`: Checks and displays the CPU usage.
- `check_disk`: Checks and displays the disk usage for each mounted filesystem.
- `check_memory`: Checks and displays the memory usage.
- `explain_summary`: Provides a detailed summary of the health status parameters.

## License

This project is licensed under the MIT License.
