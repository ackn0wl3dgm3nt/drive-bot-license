#!/bin/bash

{
	sudo apt install python3-pip
	pip3 install hwid
	python3 -c "import hwid;import hashlib;print('HWID: '+hwid.get_hwid());print('SHA256: '+hashlib.sha256(hwid.get_hwid().encode()).hexdigest())"
	pip3 uninstall hwid -y
}
