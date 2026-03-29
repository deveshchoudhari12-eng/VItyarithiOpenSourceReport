#!/bin/bash

# Check if python3 is installed
if command -v python3 >/dev/null 2>&1
then
    echo "python3 is installed."

    # Show Python version
    echo "Version: $(python3 --version)"

    # Show package details (Ubuntu/Debian uses dpkg)
    pkg_info=$(dpkg -l | grep python3 | head -n 1)
    echo "Package: $pkg_info"

    # Case statement for philosophy message
    case "python3" in
        python3)
            echo "Python: 30 years of open collaboration that powered the AI revolution"
            ;;
        *)
            echo "Unknown package"
            ;;
    esac

else
    echo "python3 is NOT installed."
fi
