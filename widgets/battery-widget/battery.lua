local awful = require("awful")
local naughty = require("naughty")
local watch = require("awful.widget.watch")
local wibox = require("wibox")

local gfs = require("gears.filesystem")

local theme_name = "perfect-igor"
local theme_path = gfs.get_configuration_dir() .. "themes/" .. theme_name .. "/"

local PATH_TO_ICONS = theme_path .. "icons/symbolic/"
local POWER_SUPPLY_ICON = "battery-full-charged-symbolic.svg"
local HOME = os.getenv("HOME")

local battery_widget = wibox.widget {
    {
        id = "icon",
        widget = wibox.widget.imagebox,
        resize = false
    },
    layout = wibox.container.margin(_, 3, 0, 4)
}

-- Popup with battery info
-- One way of creating a pop-up notification - naughty.notify
local notification
local function show_battery_status()
    awful.spawn.easy_async([[bash -c 'acpi']],
        function(stdout, _, _, _)
            naughty.destroy(notification)
            notification = naughty.notify{
                text =  stdout,
                title = "Battery status",
                timeout = 5, hover_timeout = 0.5,
                width = 200,
            }
        end
    )
end

local function show_battery_status()
    notification = naughty.notify{
        text =  "Питание от постоянного источника",
        title = "Battery status",
        timeout = 5, hover_timeout = 0.5,
        width = 300,
    }
end

-- Alternative to naughty.notify - tooltip. You can compare both and choose the preferred one
--battery_popup = awful.tooltip({objects = {battery_widget}})

-- To use colors from beautiful theme put
-- following lines in rc.lua before require("battery"):
-- beautiful.tooltip_fg = beautiful.fg_normal
-- beautiful.tooltip_bg = beautiful.bg_normal

local function show_battery_warning()
    naughty.notify{
        text = "Huston, we have a problem",
        title = "Battery is dying",
        timeout = 5, hover_timeout = 0.5,
        position = "bottom_right",
        bg = "#F06060",
        fg = "#EEE9EF",
        width = 300,
    }
end

local last_battery_check = os.time()

awful.spawn.with_line_callback("acpi", {
    stdout = function(line)
        watch("acpi -i", 10,
            function(widget, stdout, stderr, exitreason, exitcode)
                local batteryType

                local battery_info = {}
                local capacities = {}
                for s in stdout:gmatch("[^\r\n]+") do
                    local status, charge_str, time = string.match(s, '.+: (%a+), (%d?%d?%d)%%,?.*')
                    if string.match(s, 'rate information') then
                        -- ignore such line
                    elseif status ~= nil then
                        table.insert(battery_info, {status = status, charge = tonumber(charge_str)})
                    else
                        local cap_str = string.match(s, '.+:.+last full capacity (%d+)')
                        table.insert(capacities, tonumber(cap_str))
                    end
                end

                local capacity = 0
                for i, cap in ipairs(capacities) do
                    capacity = capacity + cap
                end

                local charge = 0
                local status
                for i, batt in ipairs(battery_info) do
                    if batt.charge >= charge then
                        status = batt.status -- use most charged battery status
                        -- this is arbitrary, and maybe another metric should be used
                    end

                    charge = charge + batt.charge * capacities[i]
                end
                charge = charge / capacity

                if (charge >= 0 and charge < 15) then
                    batteryType = "battery-empty%s-symbolic"
                    if status ~= 'Charging' and os.difftime(os.time(), last_battery_check) > 300 then
                        -- if 5 minutes have elapsed since the last warning
                        last_battery_check = time()

                        show_battery_warning()
                    end
                elseif (charge >= 15 and charge < 40) then batteryType = "battery-caution%s-symbolic"
                elseif (charge >= 40 and charge < 60) then batteryType = "battery-low%s-symbolic"
                elseif (charge >= 60 and charge < 80) then batteryType = "battery-good%s-symbolic"
                elseif (charge >= 80 and charge <= 100) then batteryType = "battery-full%s-symbolic"
                end

                if status == 'Charging' then
                    batteryType = string.format(batteryType, '-charging')
                else
                    batteryType = string.format(batteryType, '')
                end

                widget.icon:set_image(PATH_TO_ICONS .. batteryType .. ".svg")

                -- Update popup text
                -- battery_popup.text = string.gsub(stdout, "\n$", "")
            end,
            battery_widget)

        battery_widget:connect_signal("mouse::enter", function() show_battery_status() end)
        battery_widget:connect_signal("mouse::leave", function() naughty.destroy(notification) end)
    end,
    stderr = function(line)
        if string.match(line, "No support for device type: power_supply") then
            battery_widget.icon:set_image(PATH_TO_ICONS .. POWER_SUPPLY_ICON)
            battery_widget:connect_signal("mouse::enter", function() show_battery_status() end)
            battery_widget:connect_signal("mouse::leave", function() naughty.destroy(notification) end)
        end
    end,
})



return battery_widget