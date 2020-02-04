var1=$(echo "ExampleGuiProgram
TerminalProgramEx" | dmenu)

case "$var1" in
	ExampleGuiProgram) sh -c $var1 &;;
	TerminalProgramEx) st -e $var1 &
esac
