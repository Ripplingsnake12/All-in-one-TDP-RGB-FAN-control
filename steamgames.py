import os
import vdf

# Function to get the directory to scan for games from the user
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

    with open(config_path, 'rb') as f:
        shortcuts = vdf.binary_load(f)
    
    new_entry = {
        'AppName': name,
        'Exe': exec_path,
        'StartDir': os.path.dirname(exec_path),
        'icon': icon_path,
        'ShortcutPath': '',
        'LaunchOptions': ''
    }

    next_id = max([int(k) for k in shortcuts['shortcuts'].keys()]) + 1 if shortcuts['shortcuts'] else 0
    shortcuts['shortcuts'][str(next_id)] = new_entry

    with open(config_path, 'wb') as f:
        vdf.binary_dump(shortcuts, f)
    
    print(f"Added to Steam: {name}")

# Create the .desktop files directory if it does not exist
os.makedirs(desktop_files_directory, exist_ok=True)

# Scan the games directory for executables
for root, dirs, files in os.walk(games_directory):
    for file in files:
        if os.access(os.path.join(root, file), os.X_OK) and not file.endswith('.desktop'):
            exec_path = os.path.join(root, file)
            name, _ = os.path.splitext(file)
            icon_path = os.path.join(root, f"{name}.png")
            if not os.path.exists(icon_path):
                icon_path = ""  # If no icon found, leave it empty or use a default icon path
            create_desktop_file(name, exec_path, icon_path)
            add_to_steam_library(name, exec_path, icon_path)

print("All .desktop files created and games added to Steam successfully.")
