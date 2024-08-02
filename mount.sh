#!/bin/bash

sshfs unite@odcf-worker02.dkfz.de:/omics/odcf/project /mnt/odcf -o reconnect -o IdentityFile=/root/.ssh/id_rsa
