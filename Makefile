setup:
	rm -rf .builds
	swift package update
	swift package generate-xcodeproj
run:
	Users/dodocha/workspace/FFXIV-EquipmentDatabase-CLI/.build/debug/FFXIV-EquipmentDatabase-CLI
