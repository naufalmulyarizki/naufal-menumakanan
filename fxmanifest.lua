-- ####################################################### 
-- ##███╗░░██╗░█████╗░██╗░░░██╗███████╗░█████╗░██╗░░░░░ ##
-- ##████╗░██║██╔══██╗██║░░░██║██╔════╝██╔══██╗██║░░░░░ ##
-- ##██╔██╗██║███████║██║░░░██║█████╗░░███████║██║░░░░░ ##
-- ##██║╚████║██╔══██║██║░░░██║██╔══╝░░██╔══██║██║░░░░░ ##
-- ##██║░╚███║██║░░██║╚██████╔╝██║░░░░░██║░░██║███████╗ ##
-- ##╚═╝░░╚══╝╚═╝░░╚═╝░╚═════╝░╚═╝░░░░░╚═╝░░╚═╝╚══════╝ ##
-- ####################################################### 

-- Owner                 : Naufal Mulyarizki 
-- Developer             : Naufal#8714
-- Nama Lengkap          : Naufal
-- Repositories Github   : 

--[[ FX Information ]]--
fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'

--[[ Resource Information ]]--
author 'Naufal'
description 'Naufal Menu Makanan'
version '1.0'

--[[ Shared Script ]]--
shared_script {
    '@ox_lib/init.lua', -- Comment ketika tidak digunakan
    'shared/*.lua',
}

--[[ Client Script ]]--
client_scripts {
    'client/*.lua',
}

--[[ UI Page ]]--
ui_page 'html/index.html'

--[[ Server Assets ]]--
files {
    'html/index.html',
    'html/style.css',
    'html/images/*',  -- Include your menu image(s) 
}