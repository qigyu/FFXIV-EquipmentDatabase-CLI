setup:
	rm -rf .builds
	swift package update
	swift package generate-xcodeproj
build: setup
	swift build
install: build
	sudo cp ~/workspace/FFXIV-EquipmentDatabase-CLI/.build/arm64-apple-macosx/debug/ffxiv /usr/local/bin/ffxiv
