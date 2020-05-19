#!/bin/bash

terraform apply \
  -var=hcloud_token=$LXR_CORE_TOKEN \
  -var=public_key=$LXR_CORE_PUBLIC \
  -var=private_key=$LXR_CORE_PRIVATE


if [ $? -ne 0 ]; then
    exit 1
fi
