local gpu_adapters = require('utils.gpu_adapter')
-- local backdrops = require('utils.backdrops')
local colors = require('colors.custom')

return {
   animation_fps = 165,
   max_fps = 165,
   front_end = 'WebGpu',
   webgpu_power_preference = 'HighPerformance',
   webgpu_preferred_adapter = gpu_adapters:pick_best(),
   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Dx12', 'IntegratedGpu'),

   -- color scheme
   colors = colors,

   -- 初始大小
   initial_cols = 120,
   initial_rows = 30,
   -- background
   -- background = backdrops:create_opts(),
   window_background_opacity = 0.9,
   text_background_opacity = 0.9,
   macos_window_background_blur = 70,

   -- scrollbar
   enable_scroll_bar = true,

   -- tab bar
   -- enable_tab_bar = true,
   tab_max_width = 25,
   -- show_tab_index_in_tab_bar = false,
   -- switch_to_last_active_tab_when_closing_tab = true,
   -- use_fancy_tab_bar = false,
   hide_tab_bar_if_only_one_tab = false,
   window_decorations = "RESIZE",
   -- show_new_tab_button_in_tab_bar = true,

   -- window
   window_padding = {
      left = 2,
      right = 2,
      top = 5,
      bottom = 5,
    },
   adjust_window_size_when_changing_font_size = false,
   window_close_confirmation = 'NeverPrompt',
   window_frame = {
      active_titlebar_bg = '#090909',
      -- font = fonts.font,
      -- font_size = fonts.font_size,
   },
   -- inactive_pane_hsb = {
   --    saturation = 0.9,
   --    brightness = 0.65,
   -- },
   inactive_pane_hsb = {
      saturation = 1,
      brightness = 1,
   },
}
