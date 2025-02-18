# Naufal Menu Makanan Script

Tampilan Menu Makanan Script (STANDALONE)

# Features 
- Fitur Menampilkan menu makanan Pada Script Restoran

# Installation
- Add Resource ox_lib
- Add Resource ox_target

# Shared settings

```lua
Config = {}

Config.Location = {
    -- Contoh Menggunakan Image Link
    ["menumakanan"] = {
        [1] = { 
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

        -- Contoh Menggunakan Image Local
        [2] = {
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
```

## Export (Export Untuk Membantu Kamu Kembangin Script Resource Kamu)

```lua
-- url : string
exports['naufal-menumakanan']:OpenImage(url)
```

## Previews 

![preview1](https://r2.fivemanage.com/WX5Hv6yMgODTgG2WF6rml/images/menumakanangithub1.png)
![preview2](https://r2.fivemanage.com/WX5Hv6yMgODTgG2WF6rml/images/menumakanangithub2.png)

# Dependencies

- [ox_lib](https://github.com/overextended/ox_lib)
- [ox_target](https://github.com/overextended/ox_target)

# Github Star History

[![Star History Chart](https://api.star-history.com/svg?repos=naufalmulyarizki/naufal-naufal-menumakanan&type=Date)](https://star-history.com/#naufalmulyarizki/naufal-naufal-menumakanan&Date)