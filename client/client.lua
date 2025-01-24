menumakanan = lib.addKeybind({ -- Add Keybind Buat Close Menu
    name = 'menumakanan',
    description = 'Tutup Menu Makanan', -- Deskripsi
    defaultKey = 'BACK', -- Key (Untuk Keynya Bisa di cek https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/)
    onPressed = function(self) -- Ketiak di pencet
        menumakanan:disable(true) -- Menu Keybind disable
        SendNUIMessage({ type = "closeMenu" }) -- Menu UI Tutup
    end,
})

-- Function Open Image
local function OpenImage(link)
    SendNUIMessage({
        type = "showMenuLink",
        menuImage = link
    })
    menumakanan:disable(false) -- Menu Keybind enable
end
exports('OpenImage', OpenImage) -- Export Link Open Image

CreateThread(function()
    for k,v in ipairs(Config.Location['menumakanan']) do
        if v.useped then

            local pedModel = v.pedModel -- Model Ped
            local coords = v.coords  -- Coords Ped

            -- Request Model
            RequestModel(pedModel)
            while not HasModelLoaded(pedModel) do
                Wait(500)
            end

            -- Membuat Ped
            local ped = CreatePed(4, pedModel, coords.x, coords.y, coords.z, -140.0, false, true)
            SetEntityInvincible(ped, true) -- Membuat Ped Menjadi Kebal
            SetEntityVisible(ped, true, false) -- Membuat Ped Bisa Dilihat
            FreezeEntityPosition(ped, true) -- Membuat Ped Menjadi Kaku

            -- Membuat Target Entity Ped
            exports.ox_target:addLocalEntity(ped, {
                {
                    icon = v.icon, -- Icon Target
                    label = v.label, -- Label Target
                    distance = v.radius, -- Distance Target
                    onSelect = function() -- Ketika Di Trigger pada target
                        if not v.UseLink then -- Valdasi menggunakan link atau tidak
                            -- Send Ui Untuk Open Image
                            SendNUIMessage({
                                type = "showMenu",
                                menuImage = v.image 
                            })

                            menumakanan:disable(false) -- Menu Keybind enable
                        else -- Jika Menggunakan link
                            -- Send Ui Untuk Open Image Link
                            SendNUIMessage({
                                type = "showMenuLink",
                                menuImage = v.image 
                            })

                            menumakanan:disable(false) -- Menu Keybind enable
                        end
                    end
                },
            })
        else
              -- Membuat Circle Zone
            exports.ox_target:addSphereZone({
                name = "menumakanan" .. k, -- Name Target
                radius = v.radius, -- Radius Target
                coords = v.coords, -- Coords Target
                debug = v.debug, -- Debug Target
                rotation = v.rotation, -- Rotation Target
                options = {
                    {
                        icon = v.icon,  -- Icon Target
                        label = v.label, -- Label Target
                        onSelect = function() -- Ketika Di Trigger pada target
                            if not v.UseLink then -- Valdasi menggunakan link atau tidak
                                -- Send Ui Untuk Open Image
                                SendNUIMessage({
                                    type = "showMenu",
                                    menuImage = v.image 
                                })
    
                                menumakanan:disable(false) -- Menu Keybind enable
                            else -- Jika Menggunakan link
                                -- Send Ui Untuk Open Image Link
                                SendNUIMessage({
                                    type = "showMenuLink",
                                    menuImage = v.image 
                                })
    
                                menumakanan:disable(false) -- Menu Keybind enable
                            end
                        end
                    },
                },
            })
        end
    end
end)
 
menumakanan:disable(true) -- Menu Keybind disable