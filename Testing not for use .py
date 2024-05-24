import os
import vdf

# Function to get the directory where your games are stored
def get_games_directory():
    while True:
        games_directory = input("Please enter the directory where your games are stored: ")
        if os.path.isdir(games_directory):
            return games_directory
        else:
            print("Invalid directory. Please try again.")

# Get the directory from the user
games_directory = get_games_directory()

# Define the directory to place the .desktop files
desktop_files_directory = os.path.expanduser("~/.local/share/applications")

# Path to Steam userdata configuration
steam_userdata_path = os.path.expanduser("~/.steam/steam/userdata")
if not os.path.exists(steam_userdata_path):
    steam_userdata_path = os.path.expanduser("~/.local/share/Steam/userdata")

# Function to find the Steam user directory
def get_steam_userdir():
    for userdir in os.listdir(steam_userdata_path):
        config_path = os.path.join(steam_userdata_path, userdir, 'config', 'shortcuts.vdf')
        if os.path.exists(config_path):
            return config_path
    return None

# Function to create a .desktop file
def create_desktop_file(name, exec_path, icon_path):
    desktop_file_content = f"""[Desktop Entry]
Name={name}
Exec={exec_path}
Icon={icon_path}
Type=Application
Categories=Game;
Comment={name}
Terminal=false
"""
    desktop_file_path = os.path.join(desktop_files_directory, f"{name}.desktop")
    with open(desktop_file_path, 'w') as desktop_file:
        desktop_file.write(desktop_file_content)
    os.chmod(desktop_file_path, 0o755)
    print(f"Created: {desktop_file_path}")

# Function to add game to Steam library
def add_to_steam_library(name, exec_path, icon_path):
    config_path = get_steam_userdir()
    if not config_path:
        print("Steam configuration file not found.")
        return

    # Read existing shortcuts
    with open(config_path, 'rb') as f:
        shortcuts = vdf.binary_load(f)

    # Create a new entry for the game
    new_entry = {
        "AppName": name,
        "Exe": exec_path,
        "icon": icon_path,
        "ShortcutPath": "",
        "LaunchOptions": "",
        "IsHidden": 0,
        "AllowDesktopConfig": 1,
        "OpenVR": 0,
        "tags": {
            "1": {
                "tag": "game",
                "name": name,
            }
        }
    }

    # Add the new entry to the shortcuts
    shortcuts["shortcuts"].append(new_entry)

    # Save the updated shortcuts back to the configuration file
    with open(config_path, 'wb') as f:
        vdf.binary_dump(shortcuts, f)

    print(f"Added '{name}' to Steam library.")

# Example usage:
game_folder = "MyAwesomeGame"  # Replace with the actual game folder name
game_exec_path = os.path.join(games_directory, game_folder, "game_executable.exe")  # Adjust the executable file name
game_icon_path = os.path.join(games_directory, game_folder, "game_icon.png")  # Adjust the icon file name
add_to_steam_library(game_folder, game_exec_path, game_icon_path)
create_desktop_file(game_folder, game_exec_path, game_icon_path)

