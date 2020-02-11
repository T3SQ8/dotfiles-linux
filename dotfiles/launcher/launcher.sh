location=($HOME/.config/launcher/)
option=$(cat $location/list | dmenu)

settingsoption()
{
cd $location/settings
sh -c $location/settings/$(ls | dmenu)
}

case "$option" in
	GuiProgram) sh -c $option &;;
	vim|ranger) st -e $option &;;
	settings) settingsoption&;;
esac
