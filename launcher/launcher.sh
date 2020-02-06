option=$(echo "TerminalProgram
settings
GuiProgram" | dmenu)

settingsoption()
{
cd .config/launcher/settings
sh -c ~/.config/launcher/settings/$(ls | dmenu)
}

case "$option" in
	GuiProgram) sh -c $option &;;
	TerminalProgram) st -e $option &;;
	settings) settingsoption&;;
esac
