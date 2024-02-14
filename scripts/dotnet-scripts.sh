#! /bin/bash

# restore
dotnet build \
    -t:InstallAndroidDependencies \
    -f:net8.0-android \
    -p:AndroidSdkDirectory="/media/leandro/Dados/android-sdk-manager/sdk" \
    -p:JavaSdkDirectory="/media/leandro/Dados/android-sdk-manager/jdk-17.0.10+7" \
    -p:AcceptAndroidSDKLicenses=True

#------------------------------------------------


# build
dotnet build -t:Run -f net8.0-android /p:Configuration=Debug /p:AndroidSdkDirectory=/media/leandro/Dados/android-sdk-manager/sdk/ /p:JavaSdkDirectory="/media/leandro/Dados/android-sdk-manager/jdk-17.0.10+7" /p:AcceptAndroidSDKLicenses=True


# Referencias
# - https://techcommunity.microsoft.com/t5/educator-developer-blog/net-maui-on-linux-with-visual-studio-code/ba-p/3982195
# - https://rjj-software.co.uk/blog/building-net-maui-android-apps-on-linux-based-operating-systems/
# - https://learn.microsoft.com/pt-br/dual-screen/android/emulator/adb
# - https://egvijayanand.in/2021/04/04/net-maui-project-debug-with-vs-code/
# - 
# - 
# - 

# ANOTAÇÕES:
# -  Só funcionou quando criei o projeto por liha de comando
# - o build só funciona quando executo os comandos acima% 