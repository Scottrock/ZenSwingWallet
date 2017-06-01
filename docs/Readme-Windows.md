# [ZClassic](http://zclassic.org) Desktop GUI Wallet - for Windows

This version of the swing wallet does not have a windows version at present - when it does, you could follow these instructions:

The [ZClassic](http://zclassic.org) development team has released a [version for Windows](https://github.com/z-classic/zclassic/releases/tag/v1.0.5a).
Before installing the GUI wallet on Windows you need to install ZClassic on Windows.

![Screenshot](https://github.com/vaklinov/zclassic-swing-wallet-ui/raw/master/docs/ZClassicWalletWindows.png "ZClassic Wallet for Windows")

1. Installing ZClassic on Windows

   1.1. Download the ZClassic node [zclassic-Windows-NoGUI-v1.0.5.zip](https://github.com/z-classic/zclassic/releases/download/v1.0.5a/zclassic-Windows-NoGUI-v1.0.5.zip)

   1.2. Unzip the file so that the executables `zcashd.exe` and `zcash-cli.exe` are in one directory.
   
   1.3. Download the [ZClassic Proving Key](https://z.cash/downloads/sprout-proving.key)
        and store it in directory `%APPDATA%\ZcashParams`.
        
   1.4. Download the [ZClassic Verifying Key](https://z.cash/downloads/sprout-verifying.key)
        and store it in directory `%APPDATA%\ZcashParams`.
        
   After downloading the two keys, they should be available in the same directory similar to:
![Screenshot](https://github.com/vaklinov/zclassic-swing-wallet-ui/raw/master/docs/ZCashKeyDir.png "ZClassic keys directory on Windows")

   1.5. Create directory `%APPDATA%\Zclassic` and a text file `zclassic.conf` in it with the following content:
   ```
   addnode=dnsseed.zclassic.org
   addnode=dnsseed.rotorproject.org
   rpcuser=username
   rpcpassword=SomePassword_PleaseChangeThisValue   
   ```

2. Installing the ZClassic Desktop GUI wallet

   2.1. Install JDK 8 for Windows - e.g. [use this good tutorial](http://www.wikihow.com/Install-the-Java-Software-Development-Kit)

   2.2. You may use the [latest binary release of the ZClassic Desktop GUI wallet](https://github.com/vaklinov/zclassic-swing-wallet-ui/releases/latest).
   Download file [ZClassicSwingWalletUI.jar](https://github.com/vaklinov/zclassic-swing-wallet-ui/releases/download/0.58.2-beta/ZClassicSwingWalletUI.jar)
   and place it in the same folder as `zcashd.exe` and `zcash-cli.exe`. The result needs to be similar to:
![Screenshot](https://github.com/vaklinov/zclassic-swing-wallet-ui/raw/master/docs/ZClassicWinDir.png "ZClassic directory on Windows")

4. Running the installed ZClassic GUI wallet

   The wallet GUI is a Java program packaged as an executable JAR file. It may be run from command line or started from another GUI tool 
   (e.g. file manager). One way to run it from command line is:
   ```
   java -jar ZClassicSwingWalletUI.jar
   ```
   You may instead just use Windows the file manager and double-click on the `ZClassicSwingWalletUI.jar`. 
   This will start the ZClassic GUI wallet.

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
