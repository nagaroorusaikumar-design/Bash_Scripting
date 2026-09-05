# Bash Scripting

A collection of hands-on Bash scripts covering core shell scripting concepts — variables, conditionals, user input, command substitution, argument passing, and a real-world web server deployment automation. A `Vagrantfile` is included to spin up a multi-VM lab environment for testing the scripts against real machines.

## 📂 Scripts

| Script | What it demonstrates |
|---|---|
| `First_Script_File.sh` | A first script printing system info — uptime, memory, and disk utilization |
| `Command_substitute.sh` | Command substitution (`$(...)` and backticks) to capture free RAM, load average, and root partition size into variables |
| `Conditional_if.sh` | `if / else` conditional logic with user input, exit status checks, and `sleep` for readability |
| `Multi_conditional_elif.sh` | `if / elif / else` logic to count active network interfaces via `ip addr` |
| `reading_user_data.sh` | Reading user input with `read`, including a silent password prompt (`read -sp`) |
| `Inline_command.sh` | Positional parameters (`$0`, `$1`, `$2`, `$3`) for passing arguments into a script |
| `Inline_argument-passing.sh` | A parameterized web server setup script — installs dependencies, downloads a template via URL argument, unzips, and deploys it, all driven by inline arguments |
| `Web_Service_Script.sh` | A fully automated Apache (`httpd`) web server deployment: installs dependencies, starts/enables the service, downloads and deploys a template site, and cleans up afterward |

## 🖥️ Lab Environment (Vagrantfile)

The included `Vagrantfile` provisions a 4-node private network to test these scripts against real infrastructure:

| VM | Box | Private IP | Purpose |
|---|---|---|---|
| `scriptbox` | CentOS Stream 9 | `192.168.10.12` | Scripting sandbox (1024 MB RAM) |
| `web01` | CentOS Stream 9 | `192.168.10.13` | Web server target |
| `web02` | CentOS Stream 9 | `192.168.10.14` | Web server target |
| `web03` | Ubuntu Bionic 64 | `192.168.10.15` | Cross-distro web server target |

This setup makes it easy to test the same deployment script (`Web_Service_Script.sh`) across both CentOS and Ubuntu targets.

## 🚀 Getting Started

**Run a script locally:**
```bash
chmod +x Scripts/First_Script_File.sh
./Scripts/First_Script_File.sh
```

**Spin up the lab environment:**
```bash
vagrant up
vagrant ssh web01
```

**Deploy the sample web app on a target VM:**
```bash
sudo ./Scripts/Web_Service_Script.sh
```

## 🧰 Prerequisites

- Bash (Linux/macOS/WSL)
- [Vagrant](https://www.vagrantup.com/) + [VirtualBox](https://www.virtualbox.org/) (for the lab environment)
- `yum`-based target OS for the web deployment scripts (CentOS/RHEL family)

## 📖 Why this repo exists

Scripting is a core DevOps skill — this repo is a progressive practice log, starting from basic system-info scripts and working up to a real deployment automation script that installs a web server, pulls a template, and serves it, all with a single command.

## 🔮 Possible next steps

- Parameterize `Web_Service_Script.sh` further (currently hardcoded template URL)
- Add error handling (`set -e`, exit code checks) across scripts
- Add a `.gitignore` for `.vagrant/` to keep the repo clean
