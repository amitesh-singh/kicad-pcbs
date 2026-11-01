# make bluepill as stlink

- made this kicad design and it works well 
- refer to this guide 
- https://slemi.info/2018/08/14/making-your-own-st-link-v2/
- https://github.com/skeyzero/stlink_V2/
- already downloaded the hex file in the current folder
On linux,

```
sudo apt install stlink-tools
st-flash --reset --format ihex stlink.hex

```
