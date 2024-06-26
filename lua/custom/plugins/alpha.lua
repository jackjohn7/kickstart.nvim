local alpha = require 'alpha'
local dashboard = require 'alpha.themes.dashboard'

local dashboards = {
  {
    '                                                     ',
    '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
    '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
    '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
    '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
    '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
    '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
    '                                                     ',
  },
  {
    '                                                               ',
    '    ,----..                                                    ',
    '   /   /   \\    ,----..                        ____    ,--,    ',
    "  /   .     :  /   /   \\                     ,'  , `.,--.'|    ",
    " .   /   ;.  \\|   :     :                 ,-+-,.' _ ||  | :    ",
    ".   ;   /  ` ;.   |  ;. /              ,-+-. ;   , ||:  : '    ",
    ";   |  ; \\ ; |.   ; /--`   ,--.--.    ,--.'|'   |  |||  ' |    ",
    "|   :  | ; | ';   | ;     /       \\  |   |  ,', |  |,'  | |    ",
    ".   |  ' ' ' :|   : |    .--.  .-. | |   | /  | |--' |  | :    ",
    "'   ;  \\; /  |.   | '___  \\__\\/: . . |   : |  | ,    '  : |__  ",
    " \\   \\  ',  / '   ; : .'| ,\" .--.; | |   : |  |/     |  | '.'| ",
    "  ;   :    /  '   | '/  :/  /  ,.  | |   | |`-'      ;  :    ; ",
    "   \\   \\ .'   |   :    /;  :   .'   \\|   ;/          |  ,   /  ",
    "    `---`      \\   \\ .' |  ,     .-./'---'            ---`-'   ",
    "                `---`    `--`---'                              ",
    '                                                               ',
  },
  {
    '  ::   .: .,::::::   :::      :::         ...            ',
    " ,;;   ;;,;;;;''''   ;;;      ;;;      .;;;;;;;.         ",
    ',[[[,,,[[[ [[cccc    [[[      [[[     ,[[     \\[[,       ',
    '"$$$"""$$$ $$""""    $$\'      $$\'     $$$,     $$$       ',
    ' 888   "88o888oo,__ o88oo,.__o88oo,.__"888,_ _,88P       ',
    ' MMM    YMM""""YUMMM""""YUMMM""""YUMMM  "YMMMMMP"        ',
    '.::    .   .:::  ...    :::::::..    :::   :::::::-.   .:',
    "';;,  ;;  ;;;'.;;;;;;;. ;;;;``;;;;   ;;;    ;;,   `';,;;;",
    " '[[, [[, [[',[[     \\[[,[[[,/[[['   [[[    `[[     [['[[",
    "   Y$c$$$c$P $$$,     $$$$$$$$$c     $$'     $$,    $$ $$",
    '    "88"888  "888,_ _,88P888b "88bo,o88oo,.__888_,o8P\' ""',
    '     "M "M"    "YMMMMMP" MMMM   "W" """"YUMMMMMMMP"`   MM',
  },
  {

    '',
    '',
    'ooooo      ooo                    o8o                          oooo          ',
    "`888b.     `8'                    `\"'                          `888          ",
    ' 8 `88b.    8   .ooooo.          oooo  .oooo.o      oo.ooooo.   888   .oooo.o',
    ' 8   `88b.  8  d88\' `88b         `888 d88(  "8       888\' `88b  888  d88(  "8',
    ' 8     `88b.8  888   888          888 `"Y88b.        888   888  888  `"Y88b. ',
    ' 8       `888  888   888          888 o.  )88b       888   888  888  o.  )88b',
    'o8o        `8  `Y8bod8P\'          888 8""888P\'       888bod8P\' o888o 8""888P\'',
    '                                  888                888                     ',
    '                              .o. 88P               o888o                    ',
    '                              `Y888P                                         ',
    '',
    '',
  },
  {
    ' __                 ',
    '/  \\        ________________',
    '|  |       /                \\',
    '@  @       | It looks       |',
    '|| ||      | like you       |',
    '|| ||   <--| suck at         |',
    '|\\_/|      | writing rust.   |',
    '\\___/      \\_________________/',
  },
  {

    '         ,_---~~~~~----._         ',
    '  _,,_,*^____      _____``*g*\\"*, ',
    " / __/ /'     ^.  /      \\ ^@q   f ",
    '[  @f | @))    |  | @))   l  0 _/  ',
    ' \\`/   \\~____ / __ \\_____/    \\   ',
    '  |           _l__l_           I   ',
    '  }          [______]           I  ',
    '  ]            | | |            |  ',
    '  ]             ~ ~             |  ',
    '  |                            |   ',
    '   |                           |  ',
  },
  {

    ' ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄     ▄▄▄▄▄▄ ▄▄    ▄ ▄▄▄▄▄▄▄ ',
    '█       █       █   █   █      █  █  █ █       █',
    '█   ▄▄▄▄█   ▄   █   █   █  ▄   █   █▄█ █   ▄▄▄▄█',
    '█  █  ▄▄█  █ █  █   █   █ █▄█  █       █  █  ▄▄ ',
    '█  █ █  █  █▄█  █   █▄▄▄█      █  ▄    █  █ █  █',
    '█  █▄▄█ █       █       █  ▄   █ █ █   █  █▄▄█ █',
    '█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄█ █▄▄█▄█  █▄▄█▄▄▄▄▄▄▄█',
  },
  {

    "        .--'''''''''--.",
    "     .'      .---.      '.",
    '    /    .-----------.    \\',
    '   /        .-----.        \\',
    '   |       .-.   .-.       |',
    '   |      /   \\ /   \\      |',
    '    \\    | .-. | .-. |    /',
    "     '-._| | | | | | |_.-'",
    "         | '-' | '-' |",
    '          \\___/ \\___/',
    "       _.-'  /   \\  `-._",
    "     .' _.--|     |--._ '.",
    "     ' _...-|     |-..._ '",
    '            |     |',
    "            '.___.'",
  },
  {
    ' ▄▄ • ▄▄▌  ▄▄▄ . ▄▄▄· • ▌ ▄ ·. ',
    '▐█ ▀ ▪██•  ▀▄.▀·▐█ ▀█ ·██ ▐███▪',
    '▄█ ▀█▄██ ▪ ▐▀▀▪▄▄█▀▀█ ▐█ ▌▐▌▐█·',
    '▐█▄▪▐█▐█▌ ▄▐█▄▄▌▐█▪ ▐▌██ ██▌▐█▌',
    '·▀▀▀▀ .▀▀▀  ▀▀▀  ▀  ▀ ▀▀  █▪▀▀▀',
  },
  {

    '                                                                  ',
    '▀████▀   ▀███▀▄█▀▀▀█▄█     ▄▄█▀▀▀█▄█   ▄█▀ ██     ▄▄▄▄▄▄▄      ██ ',
    '  ▀██     ▄█ ▄██    ▀█   ▄██▀     ▀█   ██ ▄█▀  ▄██▀      ▀▄▄   ██ ',
    '   ██▄   ▄█  ▀███▄       ██▀       ▀█████████ ▄█   ▄███▄█  █▄  ██ ',
    '    ██▄  █▀    ▀█████▄   ██           ██ ██  ▄█   ██  ▄██  ██  ██ ',
    '    ▀██ █▀   ▄     ▀██   ██▄       ███████████▄  ██▀  ██   █▀  ▀▀ ',
    '     ▄██▄    ██     ██   ▀██▄     ▄▀▄█▀ ██   ██  ███▄███▄▄█▀   ▄▄ ',
    '      ██     █▀█████▀      ▀▀█████▀ ██ ▄█▀    ██  ▀▀▀▀▀▀▀▀     ██ ',
    '                                              ▀█▄▄     ▄▄█        ',
    '                                                ▀█████▀           ',
  },
  {

    ' _______  ________ __       __ ',
    '|       \\|        \\  \\  _  |  \\',
    '| ▓▓▓▓▓▓▓\\\\▓▓▓▓▓▓▓▓ ▓▓ / \\ | ▓▓',
    '| ▓▓__/ ▓▓  | ▓▓  | ▓▓/  ▓\\| ▓▓',
    '| ▓▓    ▓▓  | ▓▓  | ▓▓  ▓▓▓\\ ▓▓',
    '| ▓▓▓▓▓▓▓\\  | ▓▓  | ▓▓ ▓▓\\▓▓\\▓▓',
    '| ▓▓__/ ▓▓  | ▓▓  | ▓▓▓▓  \\▓▓▓▓',
    '| ▓▓    ▓▓  | ▓▓  | ▓▓▓    \\▓▓▓',
    ' \\▓▓▓▓▓▓▓    \\▓▓   \\▓▓      \\▓▓',
    '                               ',
    '                               ',
    '                               ',
  },
  {

    '██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗     ',
    '██║     ██║████╗  ██║██║   ██║╚██╗██╔╝     ',
    '██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝      ',
    '██║     ██║██║╚██╗██║██║   ██║ ██╔██╗      ',
    '███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗     ',
    '╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝  BTW',
  },
}

math.randomseed(os.time())
-- Set header
dashboard.section.header.val = dashboards[math.random(#dashboards)]

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
  dashboard.button('f', '  > Find file', ':cd $HOME/Workspace | Telescope find_files<CR>'),
  dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
  dashboard.button('s', '  > Settings', ':e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>'),
  dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd [[
    autocmd FileType alpha setlocal nofoldenable
]]

return {}
