tests: sort lint units

ci: bootstrap lint tests

units:
	@/usr/bin/xcodebuild -project iOSArchitectures.xcodeproj -scheme "iOSArchitectures" -destination "platform=iOS Simulator,OS=11.4,name=iPhone X" test

bootstrap:
	@/usr/local/bin/carthage bootstrap --platform iOS,macOS --no-use-binaries --use-ssh

sort:
	/usr/bin/perl ./bin/sortXcodeProject iOSArchitectures.xcodeproj/project.pbxproj

update:
	@/usr/local/bin/carthage update --platform iOS,macOS --no-use-binaries --use-ssh

lint:
	/usr/local/bin/swiftlint autocorrect
