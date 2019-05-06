blackBars = false

Citizen.CreateThread(function()
    while true do
        while not blackBars do
            if IsControlJustPressed(0, 74) then
                blackBars = true
            end
            Citizen.Wait(5)
        end
        
        while blackBars do
            DisplayRadar(false)
            DrawRect(1.0, 1.0, 2.0, 0.25, 0, 0, 0, 255)
            DrawRect(1.0, 0.0, 2.0, 0.25, 0, 0, 0, 255)
            if IsControlJustPressed(0, 74) then
                blackBars = false
                DisplayRadar(true)
            end
            Citizen.Wait(5)
        end
    end
end)