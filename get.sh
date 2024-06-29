#!/bin/bash

sudo dmidecode -s system-uuid | python3 -c "import sys, hashlib; uuid = sys.stdin.read().strip(); print(uuid); print(hashlib.sha256(uuid.encode()).hexdigest())"
