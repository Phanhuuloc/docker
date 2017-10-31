#!/bin/sh
#ssh
ssh-keygen -t rsa -P ""
ssh-copy-id -i $HOME/.ssh/id_rsa.pub root@slave01
ssh-copy-id -i $HOME/.ssh/id_rsa.pub root@slave02
ssh-copy-id -i $HOME/.ssh/id_rsa.pub root@0.0.0.0
