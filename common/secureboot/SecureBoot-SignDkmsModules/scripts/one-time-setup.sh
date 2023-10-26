#!/bin/bash

mydir=$(dirname $0)

echo "I am about to generate the Machine Owner Key (MOK)."
echo "The passphrase you enter for this key will be required every time you want to sign a module."
read -p "Please press Return to go on..."
openssl req -new -x509 -newkey rsa:2048 -keyout $mydir/MOK.priv -outform DER -out $mydir/MOK.der -days 36500 -subj "/CN=$(hostname) module signing key/" || exit 1

echo
echo "Now I will import the generated key into the secure keystore."
echo "The passphrase you will enter is only required once, during the following reboot."
read -p "Please press Return to go on..."
mokutil --import $mydir/MOK.der || exit 1

echo
echo "Please reboot your computer now to complete the enrollment of your new MOK."
echo "This is going to look somewhat similar to https://sourceware.org/systemtap/wiki/SecureBoot"
