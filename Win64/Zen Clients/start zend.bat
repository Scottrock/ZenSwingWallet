@echo off
IF NOT EXIST %APPDATA%\ZcashParams (
MKDIR %APPDATA%\ZcashParams
)
IF NOT EXIST %APPDATA%\Zen (
MKDIR %APPDATA%\Zen
)
IF NOT EXIST %APPDATA%\Zen\zen.conf (
    ECHO rpcuser=zenrpc > %APPDATA%\Zen\zen.conf
    ECHO rpcpassword=fortytwo >> %APPDATA%\Zen\zen.conf
)
IF NOT EXIST %APPDATA%\ZcashParams\sprout-proving.key (    
    ECHO Downloading Zcash trusted setup sprout-proving.key, this may take a while ...
    .\wget64.exe --progress=dot:giga --continue --retry-connrefused --waitretry=3 --timeout=30 https://z.cash/downloads/sprout-proving.key -O %APPDATA%\ZcashParams\sprout-proving.key    
)
IF NOT EXIST %APPDATA%\ZcashParams\sprout-verifying.key (    
    ECHO Downloading Zcash trusted setup sprout-verifying.key, this may take a while ...    
    .\wget64.exe --progress=dot:giga --continue --retry-connrefused --waitretry=3 --timeout=30 https://z.cash/downloads/sprout-verifying.key -O %APPDATA%\ZcashParams\sprout-verifying.key
)

.\zend.exe -listenonion=0
