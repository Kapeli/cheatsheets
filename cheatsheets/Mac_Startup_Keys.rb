cheatsheet do
	title 'Mac Startup Keys'
	docset_file_name 'Mac_Startup_Keys'
	keyword 'macstartup'
	source_url 'http://cheat.kapeli.com'

	category do
		id 'Mac Startup Keys'
		entry do
			command 'C'
			name 'Start up from a bootable CD, DVD, or USB thumb drive (such as OS X install media).'
		end
		entry do
			command 'D'
			name 'Start up in [Apple Hardware Test](http://support.apple.com/kb/HT1509) (AHT).'
		end
		entry do
			command 'CMD+ALT+P+R'
			name '[Reset NVRAM](http://support.apple.com/kb/HT1379)'
			notes 'Press until you hear startup sound a second time.'
		end
		entry do
			command 'ALT'
			name 'Start up in [Startup Manager](http://support.apple.com/kb/HT1310), where you can select an OS X volume or network volume to start from. '
		end
		entry do
			command 'Eject or F12'
			name 'Ejects any removable media, such as an optical disc.'
		end
		entry do
			command 'N'
			name 'Attempt to start up from a compatible network server (NetBoot).'
		end
		entry do
			command 'T'
			name 'Start up in [Target Disk Mode](http://support.apple.com/kb/HT1661).'
		end
		entry do
			command 'SHIFT'
			name 'Start up in [Safe Boot](http://support.apple.com/kb/HT1564) mode and temporarily disable login items.'
		end
		entry do
			command 'CMD+V'
			name 'Start up in [Verbose mode](http://support.apple.com/kb/HT1492).'
		end
		entry do
			command 'CMD+S'
			name 'Start up in [Single-User mode](http://support.apple.com/kb/HT1492).'
		end
		entry do
			command 'ALT+N'
			name 'Start from a NetBoot server using the default boot image.'
		end
		entry do
			command 'CMD+R'
			name 'Start from the OS X Recovery System'
			notes 'Available on Macs that ship with OS X Lion. Some CPUs require an [EFI BootROM update to support this feature](http://support.apple.com/kb/HT4904).'
		end
	end
	notes 'For the best experience with startup keys, press the keys immediately after the startup tone plays.'
end
