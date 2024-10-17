# **LXR-Scoreboard** 🏆  
**Scoreboard System for RedM LXRCore**

![Version](https://img.shields.io/badge/Version-1.0.0-brightgreen)  
![Build](https://img.shields.io/badge/Build-Stable-blue)  
![License](https://img.shields.io/badge/License-MIT-green)  
![Contributions Welcome](https://img.shields.io/badge/Contributions-Welcome-orange)  
![Platform](https://img.shields.io/badge/Platform-RedM-black)  
![Framework](https://img.shields.io/badge/Framework-LXRCore-blue)  
![Made with ❤️ by](https://img.shields.io/badge/Made%20with%20❤️%20by-iBoss-blue)

## **Introduction**  
**LXR-Scoreboard** provides a clean and user-friendly scoreboard for RedM servers using the **LXRCore Framework**. This scoreboard allows players to easily see the number of connected players, job roles, ping, and server information.

---

## **Features**

- **Player Count**: Displays total players online.
- **Job Roles**: Shows player jobs such as police, EMS, and more.
- **Ping Display**: Displays player ping to the server.
- **Customizable Design**: Easily customizable to fit the server’s theme and style.
- **Performance Efficient**: Lightweight and optimized for large player bases.
- **Toggle Scoreboard**: Use a configurable key to open and close the scoreboard.

---

## **Installation**

### **Step 1: Download & Extract**
1. Download the script and extract it to your server’s `resources` folder.
2. Place the extracted folder under `[lxr]`.

### **Step 2: Add to Server Config**
Add the following lines to your `server.cfg` or `resources.cfg`:

```bash
ensure lxr-core
ensure lxr-scoreboard
```

---

## **Configuration**

### **Key Bindings for Scoreboard**  
The default key for opening the scoreboard is **'F10'** but can be changed in the `config.lua` file.

```lua
Config = {}

Config.OpenKey = 0xE30CD707  -- F10 Key
```

### **Job Display Customization**  
You can specify which jobs are displayed on the scoreboard. This can be configured in `config.lua`:

```lua
Config.JobDisplay = {
    police = true,
    ambulance = true,
    mechanic = true,
    sheriff = true,
}
```

### **Player Count Settings**  
Set up the player count display using the built-in functions:

```lua
Config.ShowTotalPlayers = true
Config.ShowJobCount = true
```

- **ShowTotalPlayers**: Enable/disable the total player count on the scoreboard.
- **ShowJobCount**: Enable/disable job-specific player counts.

---

## **Commands**

- **/scoreboard**: Manually open the scoreboard if the key binding is not used.

---

## **Screenshots**

Here’s a preview of the scoreboard interface:

![Scoreboard](https://img.shields.io/badge/Screenshot-ComingSoon-orange)

---

## **Dependencies**

- [**LXRCore**](https://github.com/LXRCore/lxr-core): The main framework powering this scoreboard.
- [**lxr-jobs**](https://github.com/LXRCore/lxr-jobs): Required for displaying job-related player information.

---

## **Development & Contributors**

- **Lead Developer**: iBoss
- **Development Team**: iBoss Dev Team

---

## **License**

```
LXRCore Framework
Copyright (C) 2024 iBoss

This program is free software: you can redistribute it and/or modify
it under the terms of the MIT License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

---

## **Contributions**
Contributions are always welcome! Feel free to fork the repository, submit issues, or make pull requests.

---