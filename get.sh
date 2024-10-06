#!/bin/bash
sudo apt install dmidecode -y
sudo dmidecode -s system-uuid | python3 -c "import sys, hashlib; uuid = sys.stdin.read().strip(); print('HWID: ' + uuid); print('SHA256: ' + hashlib.sha256(uuid.encode()).hexdigest())"
