#!/bin/bash

if [[ -z "$1" ]]; then
    echo "Usage: $0 module [module...]"
    exit 1
fi

mydir=$(dirname $0)

PROMPT="${PROMPT:-Enter Machine Owner Key (MOK) passphrase: }"
KERNELVER=${KERNELVER:-$(uname -r)}

read_passphrase() {
    # We write to /dev/tty to get around DKMS' redirection to /dev/null if it's being run with -q (e.g. during rpm installs)
    echo -n "$PROMPT" >/dev/tty
    read -s KBUILD_SIGN_PIN </dev/tty
    export KBUILD_SIGN_PIN
    echo >/dev/tty
    openssl rsa -check -noout -passin env:KBUILD_SIGN_PIN -in $mydir/MOK.priv >/dev/null 2>&1
}

do_sign() {
    /lib/modules/$KERNELVER/build/scripts/sign-file sha256 $mydir/MOK.priv $mydir/MOK.der "$1"
}

while ! read_passphrase; do echo "Wrong passphrase, please try again."; done

for module in $@; do
    echo "Signing module: $module"
    module_basename=${module:0:-3}
    module_suffix=${module: -3}
    if [[ "$module_suffix" == ".xz" ]]; then
        unxz $module
        do_sign $module_basename
        xz -f $module_basename
    elif [[ "$module_suffix" == ".gz" ]]; then
        gunzip $module
        do_sign $module_basename
        gzip -9f $module_basename
    else
        do_sign $module
    fi
done
