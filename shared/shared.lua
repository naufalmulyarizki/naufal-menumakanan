Config = {}

Config.Location = {
    ["menumakanan"] = {
        [1] = { -- Contoh Menggunakan Image Link
            coords = vec3(-1838.3661, -1191.3083, 14.2165), -- Koordinat
            UseLink = true, -- Ingin Gunain Link Atau Tidak?
            debug = false, -- Ingin ada Debug Atau Tidak?
            useped = false, -- Ingin Gunain Ped Atau Tidak?
            pedModel = "a_m_m_business_01",  -- Model Ped
            radius = 1, -- Radius Target
            rotation = 50, -- rotation Target
            -- image = 'uwu.png', -- Image Path
            image = 'https://r2.fivemanage.com/2m4oV62ieYsDsrby6qPGZ/menu_pedagang.png', -- Image Link
            icon = "fas fa-file",  -- Icon Target
            label = "Menu Makanan" -- Label Target
        },
        [2] = { -- Contoh Menggunakan Image Local
            coords = vec3(-1836.6008, -1188.7816, 14.2164), -- Koordinat
            debug = false, -- Ingin ada Debug Atau Tidak?
            useped = false, -- Ingin Gunain Ped Atau Tidak?
            UseLink = false, -- Ingin Gunain Link Atau Tidak?
            pedModel = "a_m_m_business_01",  -- Replace with the desired ped model
            radius = 1, -- Radius Target
            rotation = 50,  -- Rotation Target
            image = 'uwu.png', -- Image Path
            -- image = 'https://r2.fivemanage.com/2m4oV62ieYsDsrby6qPGZ/menu_pedagang.png', -- Image Link
            icon = "fas fa-file", -- Icon Target
            label = "Menu Makanan" -- Label Target
        },
    },
}