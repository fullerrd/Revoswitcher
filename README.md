# REVOSWITCHER
## A Multi Algorithm Autoswitching Miner

This program will automatically mine the most profitable coin of the following algorithms:
* Cryptonight
* Ethash // ETH, ETC, EXP
* Equihash // ZEC, ZCH
* Groestl
* Myriad-Groestl
* Lyra2RE2
* NeoScrypt
* Skein

This script currently only works with `http://miningpoolhub.com`
Register for an account, go to the "Hub Workers" page on the left hand side
Change "WORKER NAME" to something of your choosing
Change "WORKER PASSWORD" to "x" without the quotes (MPH does not check this value)
Set that worker's "Job" and "Account's Default Job" to:
`NVIDIA - Cryptonight, Ethash, Equihash, Groestl, Lyra2RE2, Myriad-Groestl, NeoScrypt, Skein`

If you want MiningPoolHub to automatically exhange your altcoins for a single payout coin of your choice (i.e. get paid out in Bitcoin, Ethereum, etc..) change the settings on "Auto Exchange" page

# INSTALLATION
### 1) Install dependencies
	`sudo apt install expect`
        `sudo apt install nvidia-cuda-toolkit`
Setting up xorg.conf WITHOUT X. Instructions from: https://forums.bunsenlabs.org/viewtopic.php?id=1380 
Here is my cheatsheet for the Debian stable nvidia installation

    NvidiaGraphicsDrivers
    ---------------------
    https://wiki.debian.org/NvidiaGraphicsDrivers

    1)  Go to TTY1 (ctrl-alt-F1), then login as root: "sudo su -"

    2)  Stop the X server with "systemctl stop lightdm.service"

    3)  "apt-get install nvidia-settings nvidia-xconfig nvidia-driver"

        This will also build the kernel nvidia module

    4)  Create xorg server config file [ important to do this before restarting X!!]

        "nvidia-xconfig"    [ error messages can usually be ignored ]

    5)  Reboot, to blacklist nouveau

    5)  set up monitors with nvidia-settings (although arandr should work)
### 2) Download and Extract REVOSWITCHER.zip to the Desktop, or directory of your choice.
	`git clone https://github.com/Revolux/Revoswitcher`
### 3) Make switch.sh and overclock.sh executable
	`chmod +x switch.sh`
	`chmod +x overclock.sh`
### 4) Change worker name in `switch.sh` to your own
	`#MINER NAME`
	`NAME=username.WORKERNAME`
	Make sure your worker password is 'x'
### 4) Add REVOSWITCHER to your startup commands 
To run, add the following line to your Startup Applications Preferences ("STARTUP - CHOOSE MINER HERE" on the Desktop of Revolux Miners)
`screen -d -m -S REVOSWITCHER /home/revolux/Desktop/Revoswitcher/switch.sh`
Replace `/home/revolux/Desktop/` with your install directory if necessary

## Mining BTCZ/BTG on Suprnova
1. `git checkout BTCZ/BTG`
2. `git pull`
3. Read README
