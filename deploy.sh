#!/usr/bin/env bash

set -eux

make dev
ssh dev systemctl stop vault
rsync -vz pkg/linux_amd64/vault dev:/usr/bin/vault
ssh dev systemctl start vault