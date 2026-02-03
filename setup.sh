#!/bin/bash
# Setup TimerMinimal Project
echo "==== TimerMinimal Setup ===="

# Controllo Gradle
if ! command -v gradle &> /dev/null
then
    echo "Gradle non trovato! Installa Gradle e riprova."
    exit 1
fi

# Controllo Java
if ! command -v java &> /dev/null
then
    echo "Java non trovato! Installa JDK 17+ e riprova."
    exit 1
fi

# Controllo Android SDK
if [ -z "$ANDROID_SDK_ROOT" ]; then
    echo "ANDROID_SDK_ROOT non impostato! Imposta la variabile e riprova."
    exit 1
fi

# Build APK di debug
echo "Compilazione APK di debug..."
gradle assembleDebug

echo "Setup completato! APK pronto in app/build/outputs/apk/debug/"
