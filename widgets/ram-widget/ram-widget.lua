-------------------------------------------------
-- based on https://github.com/streetturtle/awesome-wm-widgets/tree/master/cpu-widget
-------------------------------------------------

local watch = require("awful.widget.watch")
local wibox = require("wibox")

local cpugraph_widget = wibox.widget {
    max_value = 100,
    background_color = "#00000000",
    forced_width = 50,
    step_width = 1,
    step_spacing = 0,
    widget = wibox.widget.graph,
    color = "linear:0,0:0,22:0,#FF0000:0.3,#FFFF00:0.5,#74aeab"
}

--- By default graph widget goes from left to right, so we mirror it and push up a bit
local cpu_widget = wibox.container.margin(wibox.container.mirror(cpugraph_widget, { horizontal = true }), 0, 0, 0, 2)

watch([[bash -c "free -m | awk 'NR==2 {print $2,$3,$4}'"]], 1,
    function(widget, stdout)
        local total, used, free = stdout:match('(%d+)%s(%d+)%s(%d+)%s')

        widget:add_value((used/total)*100)

    end,
    cpugraph_widget
)

return cpu_widget

