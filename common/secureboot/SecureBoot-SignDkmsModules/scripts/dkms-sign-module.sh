#!/bin/bash
export PROMPT="Enter Machine Owner Key (MOK) passphrase to sign $module $module_version: "
export KERNELVER=$kernelver
$(dirname $0)/sign-modules ../$kernelver/$arch/module/*.ko*
