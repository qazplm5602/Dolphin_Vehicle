Citizen.CreateThread(
    function()
        local ui_dolphin = false
        while true do
            Citizen.Wait(0)
            local ped = GetPlayerPed( -1 )
            local veh = GetVehiclePedIsIn(ped, false)
            local inVeh = IsPedInAnyVehicle(ped, false)
            local ped = GetPlayerPed(-1)
            local healthengine = GetVehicleEngineHealth(veh)
            local healthbody = GetVehicleBodyHealth(veh)
            local healthpetrol = GetVehiclePetrolTankHealth(veh)
            if inVeh then
                SendNUIMessage({ 
                    type="open",
                    negudo = math.floor(healthengine),
                    negudo2 = math.floor(healthbody),
                    negudo3 = math.floor(healthpetrol)
                })
                ui_dolphin = true
            else
                if ui_dolphin then
                    ui_dolphin = false
                    SendNUIMessage({
                        type="close"
                    })
                end
            end
        end
    end
)