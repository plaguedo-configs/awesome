-- Own theme by Igor Voevodov based on Powerarrow theme by Rom Ockee

local gfs = require("gears.filesystem")

local theme_name = "perfect-igor"
local theme_path = gfs.get_configuration_dir() .. "themes/" .. theme_name .. "/"


green = "#7fb219"
cyan  = "#7f4de6"
red   = "#e04613"
lblue = "#6c9eab"
dblue = "#00ccff"
black = "#3f3f3f"
lgrey = "#d2d2d2"
dgrey = "#333333"
white = "#ffffff"

theme = {}

theme.wallpaper = theme_path .. "wallpapers/anime-3.jpg"

theme.font                                  = "Terminus 9"
theme.fg_normal                             = "#AAAAAA"
theme.fg_focus                              = "#F0DFAF"
theme.fg_urgent                             = "#CC9393"
theme.bg_normal                             = "#222222"
theme.bg_focus                              = "#1E2320"
theme.bg_urgent                             = "#3F3F3F"
theme.border_width                          = "0"
theme.border_normal                         = "#3F3F3F"
theme.border_focus                          = "#6F6F6F"
theme.border_marked                         = "#CC9393"
theme.titlebar_bg_focus                     = "#3F3F3F"
theme.titlebar_bg_normal                    = "#3F3F3F"
theme.binclock_bg                           = "#777e76"
theme.binclock_fga                          = "#CCCCCC"
theme.binclock_fgi                          = "#444444"
-- theme.taglist_bg_focus                      = black 
theme.taglist_fg_focus                      = dblue
theme.tasklist_bg_focus                     = "#222222" 
theme.tasklist_fg_focus                     = dblue
theme.textbox_widget_as_label_font_color    = white 
theme.textbox_widget_margin_top             = 1
theme.text_font_color_1                     = green
theme.text_font_color_2                     = dblue
theme.text_font_color_3                     = white
theme.notify_font_color_1                   = green
theme.notify_font_color_2                   = dblue
theme.notify_font_color_3                   = black
theme.notify_font_color_4                   = white
theme.notify_font                           = "Monaco 7"
theme.notify_fg                             = theme.fg_normal
theme.notify_bg                             = theme.bg_normal
theme.notify_border                         = theme.border_focus
theme.awful_widget_bckgrd_color             = dgrey
theme.awful_widget_border_color             = dgrey
theme.awful_widget_color                    = dblue
theme.awful_widget_gradien_color_1          = orange
theme.awful_widget_gradien_color_2          = orange
theme.awful_widget_gradien_color_3          = orange
theme.awful_widget_height                   = 14
theme.awful_widget_margin_top               = 2

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
-- theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
-- theme.fg_widget        = "#AECF96"
-- theme.fg_center_widget = "#88A175"
-- theme.fg_end_widget    = "#FF5656"
-- theme.bg_widget        = "#494B4F"
-- theme.border_widget    = "#3F3F3F"

theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]

-- theme.menu_bg_normal    = ""
-- theme.menu_bg_focus     = ""
-- theme.menu_fg_normal    = ""
-- theme.menu_fg_focus     = ""
-- theme.menu_border_color = ""
-- theme.menu_border_width = ""
theme.menu_height       = "16"
theme.menu_width        = "140"

--{{--- Theme icons ------------------------------------------------------------------------------------------

theme.awesome_icon                              = theme_path .. "icons/powerarrow/awesome-icon.png"
theme.clear_icon                                = theme_path .. "icons/powerarrow/clear.png"
-- theme.clear_icon                                = theme_path .. "icons/powerarrow/llauncher.png"
theme.menu_submenu_icon                         = theme_path .. "icons/powerarrow/submenu.png"
theme.tasklist_floating_icon                    = theme_path .. "icons/powerarrow/floatingm.png"
theme.titlebar_close_button_focus               = theme_path .. "icons/powerarrow/close_focus.png"
theme.titlebar_close_button_normal              = theme_path .. "icons/powerarrow/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme_path .. "icons/powerarrow/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme_path .. "icons/powerarrow/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme_path .. "icons/powerarrow/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme_path .. "icons/powerarrow/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme_path .. "icons/powerarrow/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme_path .. "icons/powerarrow/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme_path .. "icons/powerarrow/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme_path .. "icons/powerarrow/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme_path .. "icons/powerarrow/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme_path .. "icons/powerarrow/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme_path .. "icons/powerarrow/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme_path .. "icons/powerarrow/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme_path .. "icons/powerarrow/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme_path .. "icons/powerarrow/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme_path .. "icons/powerarrow/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme_path .. "icons/powerarrow/maximized_normal_inactive.png"
theme.taglist_squares_sel                       = theme_path .. "icons/powerarrow/square_sel.png"
theme.taglist_squares_unsel                     = theme_path .. "icons/powerarrow/square_unsel.png"
theme.layout_floating                           = theme_path .. "icons/powerarrow/floating.png"
theme.layout_tile                               = theme_path .. "icons/powerarrow/tile.png"
theme.layout_tileleft                           = theme_path .. "icons/powerarrow/tileleft.png"
theme.layout_tilebottom                         = theme_path .. "icons/powerarrow/tilebottom.png"
theme.layout_tiletop                            = theme_path .. "icons/powerarrow/tiletop.png"
theme.widget_battery                            = theme_path .. "icons/powerarrow/battery.png"
theme.widget_mem                                = theme_path .. "icons/powerarrow/mem.png"
theme.widget_cpu                                = theme_path .. "icons/powerarrow/cpu.png"
theme.widget_temp                               = theme_path .. "icons/powerarrow/temp.png"
theme.widget_net                                = theme_path .. "icons/powerarrow/net.png"
theme.widget_hdd                                = theme_path .. "icons/powerarrow/hdd.png"
theme.widget_music                              = theme_path .. "icons/powerarrow/music.png"
theme.widget_task                               = theme_path .. "icons/powerarrow/task.png"
theme.widget_mail                               = theme_path .. "icons/powerarrow/mail.png"
theme.arr1                                      = theme_path .. "icons/powerarrow/arr1.png"
theme.arr2                                      = theme_path .. "icons/powerarrow/arr2.png"
theme.arr3                                      = theme_path .. "icons/powerarrow/arr3.png"
theme.arr4                                      = theme_path .. "icons/powerarrow/arr4.png"
theme.arr5                                      = theme_path .. "icons/powerarrow/arr5.png"
theme.arr6                                      = theme_path .. "icons/powerarrow/arr6.png"
theme.arr7                                      = theme_path .. "icons/powerarrow/arr7.png"
theme.arr8                                      = theme_path .. "icons/powerarrow/arr8.png"
theme.arr9                                      = theme_path .. "icons/powerarrow/arr9.png"
theme.arr0                                      = theme_path .. "icons/powerarrow/arr0.png"

--{{--- User icons ------------------------------------------------------------------------------------------

theme.goldendict_icon           = theme_path .. "icons/goldendict.png"
theme.books_icon                = theme_path .. "icons/books_brown.png"
theme.xfe_icon                  = theme_path .. "icons/xfe.png"
theme.xferoot_icon              = theme_path .. "icons/xfe-root.png"
theme.htop_icon                 = theme_path .. "icons/activity_monitor.png"
theme.audacious_icon            = theme_path .. "icons/audacious.png"
theme.deadbeef_icon             = theme_path .. "icons/deadbeef.png"
theme.vlc_icon                  = theme_path .. "icons/vlc.png"
theme.xfburn_icon               = theme_path .. "icons/xfburn.png"
theme.myedu_icon                = theme_path .. "icons/nucleus24.png"
theme.ideaCE_icon               = theme_path .. "icons/ideaCE.png"
theme.ideaUE_icon               = theme_path .. "icons/ideaUE.png"
theme.pycharm_icon              = theme_path .. "icons/PyCharm_16.png"
theme.emacs_icon                = theme_path .. "icons/emacs.png"
theme.sublime_icon              = theme_path .. "icons/SublimeText2old.png"
theme.eclipse_icon              = theme_path .. "icons/eclipse.png"
theme.galculator_icon           = theme_path .. "icons/accessories-calculator.png"
theme.spacefm_icon              = theme_path .. "icons/file-manager.png"
theme.gedit_icon                = theme_path .. "icons/text-editor.png"
theme.terminal_icon             = theme_path .. "icons/gnome-terminal.png"
theme.terminalroot_icon         = theme_path .. "icons/gksu-root-terminal.png"
theme.system_icon               = theme_path .. "icons/processor.png"
theme.android_icon              = theme_path .. "icons/android_hdpi.png"
theme.gcolor_icon               = theme_path .. "icons/icon.png"
theme.gimp_icon                 = theme_path .. "icons/gimp.png"
theme.inkscape_icon             = theme_path .. "icons/inkscape.png"
theme.recordmydesktop_icon      = theme_path .. "icons/gtk-recordmydesktop.png"
theme.screengrab_icon           = theme_path .. "icons/screengrab.png"
theme.xmag_icon                 = theme_path .. "icons/xmag.png"
theme.mydevmenu_icon            = theme_path .. "icons/safety_helmet.png"
theme.mymultimediamenu_icon     = theme_path .. "icons/emblem_multimedia.png"
theme.mygraphicsmenu_icon       = theme_path .. "icons/graphics.png"
theme.nvidia_icon               = theme_path .. "icons/nvidia-settings.png"
theme.myofficemenu_icon         = theme_path .. "icons/applications_office.png"
theme.mytoolsmenu_icon          = theme_path .. "icons/tool_box.png"
theme.mywebmenu_icon            = theme_path .. "icons/web.png"
theme.mysettingsmenu_icon       = theme_path .. "icons/hammer_screwdriver.png"
-- theme.celestia_icon           = theme_path .. "icons/celestia.png"
-- theme.geogebra_icon           = theme_path .. "icons/geogebra.png"
theme.rosetta_icon              = theme_path .. "icons/rosetta.png"
theme.stellarium_icon           = theme_path .. "icons/stellarium.png"
theme.mathematica_icon          = theme_path .. "icons/Mathematica_Icon.png"
theme.acroread_icon             = theme_path .. "icons/acroread.png"
theme.djview_icon               = theme_path .. "icons/djvulibre-djview4.png"
theme.kchmviewer_icon           = theme_path .. "icons/kchmviewer.png"
theme.leafpad_icon              = theme_path .. "icons/leafpad.png"
theme.librebase_icon            = theme_path .. "icons/libreoffice-base.png"
theme.librecalc_icon            = theme_path .. "icons/libreoffice-calc.png"
theme.libredraw_icon            = theme_path .. "icons/libreoffice-draw.png"
theme.libreimpress_icon         = theme_path .. "icons/libreoffice-impress.png"
theme.libremath_icon            = theme_path .. "icons/libreoffice-math.png"
theme.librewriter_icon          = theme_path .. "icons/libreoffice-writer.png"
theme.gparted_icon              = theme_path .. "icons/gparted.png"
theme.peazip_icon               = theme_path .. "icons/PeaZip.png"
theme.teamviewer_icon           = theme_path .. "icons/teamview.png"
theme.virtualbox_icon           = theme_path .. "icons/virtualbox.png"
-- theme.vmware_icon             = theme_path .. "icons/vmware-workstation.png"
theme.unetbootin_icon           = theme_path .. "icons/unetbootin.png"
theme.cups_icon                 = theme_path .. "icons/cupsprinter.png"
theme.java_icon                 = theme_path .. "icons/sun_java.png"
theme.qt_icon                   = theme_path .. "icons/qtassistant.png"
theme.filezilla_icon            = theme_path .. "icons/filezilla.png"
theme.firefox_icon              = theme_path .. "icons/firefox.png"
theme.thunderbird_icon          = theme_path .. "icons/thunderbird.png"
theme.luakit_icon               = theme_path .. "icons/luakit.png"
theme.gajim_icon                = theme_path .. "icons/gajim.png"
theme.skype_icon                = theme_path .. "icons/skype.png"
theme.vidalia_icon              = theme_path .. "icons/vidalia_icon.png"
theme.weechat_icon              = theme_path .. "icons/weechat.png"
theme.meld_icon                 = theme_path .. "icons/meld.png"
theme.umplayer_icon             = theme_path .. "icons/umplayer.png"
theme.qalculate_icon            = theme_path .. "icons/qalculate.png"
theme.wicd_icon                 = theme_path .. "icons/wicd.png"
theme.opera_icon                = theme_path .. "icons/opera.png"
theme.qtcreator_icon            = theme_path .. "icons/qtcreator.png"
theme.florence_icon             = theme_path .. "icons/keyboard.png"
theme.texworks_icon             = theme_path .. "icons/TeXworks.png"
theme.vym_icon                  = theme_path .. "icons/vym.png"
theme.wmsmixer_icon             = theme_path .. "icons/wmsmixer.png"
theme.cherrytree_icon           = theme_path .. "icons/cherrytree.png"
theme.scantailor_icon           = theme_path .. "icons/scantailor.png"
theme.gucharmap_icon            = theme_path .. "icons/gucharmap.png"
theme.sigil_icon                = theme_path .. "icons/sigil.png"
theme.dwb_icon                  = theme_path .. "icons/dwb.png"
theme.qpdfview_icon             = theme_path .. "icons/qpdfview.png"
theme.ghex_icon                 = theme_path .. "icons/ghex.png"
theme.qtlinguist_icon           = theme_path .. "icons/linguist.png"
theme.xfw_icon                  = theme_path .. "icons/xfw.xpm"
theme.free42_icon               = theme_path .. "icons/free42.png"
theme.fontypython_icon          = theme_path .. "icons/fontypython.png"
theme.windows_icon              = theme_path .. "icons/windows.png"
theme.tinymount_icon            = theme_path .. "icons/tinymount.png"
theme.pgadmin3_icon             = theme_path .. "icons/pgadmin3.png"
theme.chromium_icon             = theme_path .. "icons/chromium.png"
theme.dropbox_icon              = theme_path .. "icons/dropbox.png"
theme.gpick_icon                = theme_path .. "icons/gpick.png"
theme.projects_icon             = theme_path .. "icons/projects.png"
theme.qbittorrent_icon          = theme_path .. "icons/qbittorrent.png"
theme.tkdiff_icon               = theme_path .. "icons/tkdiff.png"
theme.kdiff3_icon               = theme_path .. "icons/kdiff3.png"
theme.rubymine_icon             = theme_path .. "icons/rubymine.png"
theme.multiplemonitors_icon     = theme_path .. "icons/multiple_monitors.png"
theme.xnview_icon               = theme_path .. "icons/xnview_2.png"
theme.mystuffmenu_icon          = theme_path .. "icons/creative_suite.png"
theme.assembler_icon            = theme_path .. "icons/assembler_icon.png"
theme.dlang_icon                = theme_path .. "icons/dlang.png"
theme.erlang_icon               = theme_path .. "icons/erlang.png"
theme.databases_icon            = theme_path .. "icons/databases.png"
theme.ruby_icon                 = theme_path .. "icons/ruby.png"
theme.linux_icon                = theme_path .. "icons/linux.png"
theme.html_icon                 = theme_path .. "icons/html.png"
theme.androidmobile_icon        = theme_path .. "icons/android.png"
theme.quiterss_icon             = theme_path .. "icons/quiterss.png"
theme.anki_icon                 = theme_path .. "icons/anki.png"
theme.binclock_bgicon           = theme_path .. "icons/transbinclock.png"
theme.task_icon                 = theme_path .. "icons/task.png"
theme.task_done_icon            = theme_path .. "icons/task_done.png"
theme.project_icon              = theme_path .. "icons/project.png"
theme.udisks_glue               = theme_path .. "icons/usb10.png"
theme.usb                       = theme_path .. "icons/usb.png"
theme.calendar_icon             = theme_path .. "icons/calendar4.png"
theme.cdrom                     = theme_path .. "icons/disc.png"
theme.docsmenu_icon             = theme_path .. "icons/docsmenu.png"
theme.xmind_icon                = theme_path .. "icons/xmind.png"
theme.c_icon                    = theme_path .. "icons/text-x-c.png"
theme.js_icon                   = theme_path .. "icons/text-x-javascript.png"
theme.py_icon                   = theme_path .. "icons/text-x-python.png"
theme.learning_icon             = theme_path .. "icons/add.png"
theme.cpp_icon                  = theme_path .. "icons/text-x-c++.png"
theme.markup_icon               = theme_path .. "icons/text-xml.png"

--{{----------------------------------------------------------------------------

return theme


