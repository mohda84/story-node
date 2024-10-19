#!/bin/bash

# Update package list and install Python3 and pip
sudo apt update
sudo apt install -y python3 python3-pip

# Function to install Story automatically
install_story() {
    # Download the install script from GitHub using wget
    wget  https://raw.githubusercontent.com/mohda84/story-node/refs/heads/main/story_installer.sh
    
    # Make the script executable
    chmod +x story_installer.sh
    
    # Run the script
    python3 story_installer.sh
}

# Function to check Story node synchronization status
check_story_status() {
    # Download the status script using wget
    wget  https://raw.githubusercontent.com/mohda84/story-node/588ad8b2c8379f553e11e656faed52463aabce72/status
    
    # Run the script
    python3 story_status.py
}

# Function to update Story to the latest version
update_story() {
    # Download the update script using wget
    wget  https://raw.githubusercontent.com/mohda84/story-node/1680cad701c6ef1b2987f22ede83a7d360756f61/update
    
    # Run the script
    python3 story_update.py
}

# Display menu and prompt user for input
echo "Please select an option:"
echo "1. Install Story automatically"
echo "2. Check Story node synchronization status"
echo "3. Update Story to the latest version"
read -p "Enter the number of your choice: " choice

# Execute the corresponding function based on user input
case $choice in
    1)
        install_story
        ;;
    2)
        check_story_status
        ;;
    3)
        update_story
        ;;
    *)
        echo "Invalid choice. Please run the script again and select a valid option."
        ;;
esac
