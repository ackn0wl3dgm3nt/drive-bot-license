#!/bin/bash

{
	sudo apt install python3-pip -y > /dev/null 2>&1
	pip3 install hwid --break-system-packages > /dev/null 2>&1
	python3 -c "import hwid; import hashlib; print('HWID: ' + hwid.get_hwid()); print('SHA256: ' + hashlib.sha256(hwid.get_hwid().encode()).hexdigest())"
	pip3 uninstall hwid --break-system-packages > /dev/null 2>&1
}
