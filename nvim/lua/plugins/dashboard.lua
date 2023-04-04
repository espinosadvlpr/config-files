local version = vim.version()
local header = {
	"            :h-                                  Nhy`               ",
	"           -mh.                           h.    `Ndho               ",
	"           hmh+                          oNm.   oNdhh               ",
	"          `Nmhd`                        /NNmd  /NNhhd               ",
	"          -NNhhy                      `hMNmmm`+NNdhhh               ",
	"          .NNmhhs              ```....`..-:/./mNdhhh+               ",
	"           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
	"           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
	"      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
	" .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
	" h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
	" hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
	" /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
	"  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
	"   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
	"     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
	"       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
	"       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
	"       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
	"       //+++//++++++////+++///::--                 .::::-------::   ",
	"       :/++++///////////++++//////.                -:/:----::../-   ",
	"       -/++++//++///+//////////////               .::::---:::-.+`   ",
	"       `////////////////////////////:.            --::-----...-/    ",
	"        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
	"         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
	"           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
	"            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
	"           s-`::--:::------:////----:---.-:::...-.....`./:          ",
	"          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
	"         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
	"        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
	"                        .-:mNdhh:.......--::::-`                    ",
	"                           yNh/..------..`                          ",
	"                                                                    ",
	"N E O V I M - v " .. version.major .. "." .. version.minor,
	"",
}

local center = {
	{
		desc = "Find File                     ",
		keymap = "",
		key = "f",
		icon = "  ",
		action = "Telescope find_files",
	},

	{
		desc = "New File",
		keymap = "",
		key = "n",
		icon = "  ",
		action = "enew",
	},

	{
		desc = "Update Plugins",
		keymap = "",
		key = "u",
		icon = "  ",
		action = "PackerSync",
	},

	{
		desc = "Manage Extensions",
		keymap = "",
		key = "m",
		icon = "  ",
		action = "Mason",
	},

	{
		desc = "Config",
		keymap = "",
		key = "s",
		icon = "  ",
		action = "Telescope find_files cwd=~/.config/nvim",
	},
	{
		desc = "Exit",
		keymap = "",
		key = "q",
		icon = "  ",
		action = "exit",
	},
}

local footer = {
	"🚀 sharp tools make good work.",
}

vim.api.nvim_create_autocmd("Filetype", {
	pattern = "dashboard",
	group = vim.api.nvim_create_augroup("Dashboard_au", { clear = true }),
	callback = function()
		vim.cmd([[
            setlocal buftype=nofile
            setlocal nonumber norelativenumber nocursorline noruler
        ]])
	end,
})

local setup, dashboard = pcall(require, "dashboard")
if not setup then
	return
end

dashboard.setup({
	theme = "doom",
	config = {
		header = header,
		center = center,
		footer = footer,
	},
})
