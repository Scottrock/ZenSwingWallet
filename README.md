# [ZEN](https://zencash.io/) Desktop GUI Wallet

## Graphical user interface wrapper for the [ZEN](https://zencash.io/) command line tools

This program provides a Graphical User Interface (GUI) for the Zen client tools that acts as a wrapper and 
presents the information in a user-friendly manner.

![Screenshot](https://github.com/Scottrock/zen-swing-wallet-ui/blob/master/docs/ZenWallet.png "Main Window")

#### New/Experimental: [Zen Desktop GUI Wallet for Windows](https://github.com/vaklinov/zclassic-swing-wallet-ui/blob/master/docs/Readme-Windows.md) is available

## Building, installing and running the Wallet GUI


**For security reasons it is recommended to always build the GUI wallet program from GitHub**
**[source](https://github.com/vaklinov/zclassic-swing-wallet-ui/archive/master.zip).**
The details of how to build it are described below (easy to follow).
Users who insist on downloading a binary release - try another product 


1. Operating system and tools

   As of June 2017 (Zen RC2) this program is primarily tested on Linux but also supports
   MacOS/Windows (same limitation as [ZEN](https://zencash.io/)).   
   The tools you need to build and run the Wallet GUI are Git, Java (JDK7 or later) and 
   Ant. If using Ubuntu Linux, they may be installed via command: 
   ```
   user@ubuntu:~/build-dir$ sudo apt-get install git default-jdk ant
   ``` 
   For RedHat/CentOS/Fedora-type Linux systems the command is (like):
   ```
   user@centos:~/build-dir$ sudo yum install java-1.8.0-openjdk git ant 
   ```
   The name of the JDK package (`java-1.8.0-openjdk`) may vary depending on the Linux system, so you need to
   check it, if name `java-1.8.0-openjdk` is not accepted.
   If you have some other Linux distribution, please check your relevant documentation on installing Git, 
   JDK and Ant. The commands `git`, `java`, `javac` and `ant` need to be startable from command line 
   before proceeding with build.

2. Building from source code

   As a start you need to clone the zen-swing-wallet-ui Git repository:
   ```
   user@ubuntu:~/build-dir$ git clone https://github.com/Scottrock/zen-swing-wallet-ui.git
   ```
   Change the current directory:
   ```
   user@ubuntu:~/build-dir$ cd zen-swing-wallet-ui/
   ```
   Issue the build command:
   ```
   user@ubuntu:~/build-dir/zen-swing-wallet-ui$ ant -buildfile ./src/build/build.xml
   ```
   This takes a few seconds and when it finishes, it builds a JAR file `./build/jars/ZenSwingWalletUI.jar`. 
   You need to make this file executable:
   ```
   user@ubuntu:~/build-dir/zen-swing-wallet-ui$ chmod u+x ./build/jars/ZenSwingWalletUI.jar
   ```
   At this point the build process is finished the built GUI wallet program is the JAR 
   file `./build/jars/ZenSwingWalletUI.jar`

3. Installing the built Zen GUI wallet

   3.1. If you have built ZClassic from source code:

   Assuming you have already built from source code [ZEN](https://zencash.io/) in directory `/home/user/zen/src` (for 
   example - this is the typical build dir. for Zen RC2) which contains the command line tools `zen-cli` 
   and `zend` you need to take the created file `./build/jars/ZenSwingWalletUI.jar` and copy it 
   to diretcory `/home/user/zen/src` (the same dir. that contains `zen-cli` and `zend`). Example copy command:
   ```
   user@ubuntu:~/build-dir/zen-swing-wallet-ui$ cp ./build/jars/ZenSwingWalletUI.jar /home/user/zen/src    
   ```

4. Running the installed Zen GUI wallet

   Before running the GUI you need to start zend (e.g. `zend --daemon`). The wallet GUI is a Java program packaged 
   as an executable JAR file. It may be run from command line or started from another GUI tool (e.g. file manager). 
   Assuming you have already installed [ZEN](https://zencash.io/) and the GUI Wallet `ZenSwingWalletUI.jar` in 
   directory `/home/user/zen/src` one way to run it from command line is:
   ```
   user@ubuntu:~/build-dir/zen-swing-wallet-ui$ java -jar /home/user/zen/src/ZenSwingWalletUI.jar
   ```
   If you are using Ubuntu (or similar ;) Linux you may instead just use the file manager and 
   right-click on the `ZenSwingWalletUI.jar` file and choose the option "Open with OpenJDK 8 Runtime". 
   This will start the Zen GUI wallet.

### Donations accepted
This release has been cloned from Vaklinov's zclassic-swing-wallet-ui
All development and work has come from that source.
The originators statement is as follows:
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

