#!/bin/bash

sshfs unite@odcf-worker02.dkfz.de:/omics/odcf /mnt/odcf -o reconnect -o IdentityFile=/root/.ssh/id_rsa
