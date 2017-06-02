# [ZEN](https://zencash.io/) Desktop GUI Wallet - for Windows

This version of the swing wallet does not have a windows version at present - when it does, you could follow these instructions:

The [ZEN](https://zencash.io/) development team has released a [version for Windows](https://github.com/z-classic/zclassic/releases/tag/v1.0.5a).
Before installing the GUI wallet on Windows you need to install Zen on Windows.

![Screenshot](https://github.com/vaklinov/zclassic-swing-wallet-ui/raw/master/docs/ZClassicWalletWindows.png "Zen Wallet for Windows")

1. Installing Zen on Windows

   1.1. Download the Zen node [zen windows binarys](https://github.com/cronicc/zen/releases/tag/v.2.0.8-4)

   1.2. Unzip the file so that the executables `zend.exe` and `zen-cli.exe` are in one directory.
   
   1.3. run the included `start zend.bat`

2. Installing the Zen Desktop GUI wallet

   2.1. Install JDK 8 for Windows - e.g. [use this good tutorial](http://www.wikihow.com/Install-the-Java-Software-Development-Kit)

   2.2. You may Download the file [ZenSwingWalletUI.jar](https://github.com/vaklinov/zclassic-swing-wallet-ui/releases/download/0.58.2-beta/ZClassicSwingWalletUI.jar)
   and place it in the same folder as `zend.exe` and `zen-cli.exe`. The result needs to be similar to:
![Screenshot](https://github.com/vaklinov/zclassic-swing-wallet-ui/raw/master/docs/ZClassicWinDir.png "ZClassic directory on Windows")

4. Running the installed Zen GUI wallet

   The wallet GUI is a Java program packaged as an executable JAR file. It may be run from command line or started from another GUI tool 
   (e.g. file manager). One way to run it from command line is:
   ```
   java -jar ZenSwingWalletUI.jar
   ```
   You may instead just use Windows the file manager and double-click on the `ZenSwingWalletUI.jar`. 
   This will start the Zen GUI wallet.

### Donations accepted
This project is non-commercial in nature and developed by volunteers. If you find the GUI
Wallet useful, please consider making a donation for its further development. Your contribution matters! Donations 
are accepted at ZClassic Z address:
```
zcaTKUNkohUgYj3C5bTapCKRk7JZapPfvCUj7GGBUWuBikx4sWEs5KSyd93b9jnjJnbDxnApyXyfeG482iJ5HzoC7cz6oob
```

### License
This program is distributed under an [MIT License](https://github.com/vaklinov/zclassic-swing-wallet-ui/raw/master/LICENSE).

### Disclaimer
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

### Known issues and limitations

1. Issue: Wallet versions 0.58 and below, when running on Windows systems with (typically non-western) locales that
redefine the decimal point in the Windows locale settings, have problems with updating the GUI wallet state. 
A workaround is to change the Windows [locale settings](https://windows.lbl.gov/software/optics/5-1-2/Optics4.jpg) to have dot as decimal separator.
