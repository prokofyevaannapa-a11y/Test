local Enabled = false

toggle.MouseButton1Click:Connect(function()
    Enabled = not Enabled

    if Enabled then
        toggle.BackgroundColor3 = Color3.fromRGB(0,170,0)
        toggle.Text = "ON"
        -- Включить функцию
    else
        toggle.BackgroundColor3 = Color3.fromRGB(170,0,0)
        toggle.Text = "OFF"
        -- Выключить функцию
    end
end)
