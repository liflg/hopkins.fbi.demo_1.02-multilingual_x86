Setup.Package
{
    vendor = "liflg.org",
    id = "hopkins",               -- unique identifier, will be proposed as installdirectory SAMPLE: "fakk2"
    description = "Hokins FBI Demo",      -- full name of the game, will be used during setup SAMPLE: "Heavy Metal: FAKK2"
    --version = "1.02-multilingual",          -- version of the game SAMPLE: "1.02-english"
    version = "1.02-english",          -- version of the game SAMPLE: "1.02-english"
    splash = "splash.png", -- name of the splash file which has to be placed inside the meta directory
    superuser = false, 
    write_manifest = true, -- needs to be true if an uninstall-option should be provided
                           -- NOTE: atm installing serveral thousands files will slow down the installation process

    support_uninstall = true, 
    recommended_destinations =
    {
        "/usr/local/games",
	"/opt/",
	MojoSetup.info.homedir,
    }, 

    Setup.Readme
    {
        description = "README",
        source = "README.liflg"
    },

    Setup.DesktopMenuItem
    {
        disabled = false,
        name = "Hopkins FBI Demo",
        genericname = "Adventure",
        tooltip = "Play Hopkins FBI Demo",
        builtin_icon = false,
        icon = "icon.png",
        commandline = "%0/Hopkins_FBI",
        category = "Game", 
    },

    Setup.Option
    {    
    	value = true,
	required = true,
    	disabled = false,
    	bytes = 82442240,
    	description = "Required game data without binary",
   
    	Setup.File
    	{
		source = "base:///Hopkins-PDemo-1.00.tar",
    	},
   
    	Setup.File
    	{
    		wildcards = { "icon.png", "README.liflg" }
    	},

	Setup.File
	{
		source = "base:///Patch-PDemo-EN-1.02.tar",
	},
    },
}

