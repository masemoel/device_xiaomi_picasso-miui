"#!/bin/bash
#
# Copyright (C) 2020 AICP
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=picasso
VENDOR=xiaomi

INITIAL_COPYRIGHT_YEAR=2020

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

AICP_ROOT="${MY_DIR}/../../.."

HELPER="${AICP_ROOT}/vendor/lineage/build/tools/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Initialize the helper
setup_vendor "${DEVICE}" "${VENDOR}" "${AICP_ROOT}"

# Copyright headers and guards
write_headers

write_makefiles "${MY_DIR}/proprietary-files.txt" true

cat << EOF >> "$ANDROIDMK"
EOF

# Finish
write_footers
