return {
  {
    'willothy/nvim-cokeline',
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('cokeline').setup({
        show_if_buffers_are_at_least = 1,

        buffers = {
          filter_valid = false,
          filter_visible = false,
          focus_on_delete = 'next',
          new_buffers_position = 'last',
          delete_on_right_click = true,
        },

        default_hl = {
          fg = function(buffer)
            return
                buffer.is_focused
                and '#cdd6f4'
                or '#8794c7'
          end,
          bg = 'NONE',
        },

        --fill_hl = "TabLineFill",
        pick = {
          use_filename = true,
          letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERTYQP',
        },

        components = {
          {
            text = '❙',
            fg = "#a769e2"
          },
          {
            text = function(buffer) return ' ' .. buffer.devicon.icon end,
            fg = function(buffer) return buffer.devicon.color end,
          },
          {
            text = ' '
          },
          {
            text = function(buffer) return buffer.filename .. ' ' end,
            bold = function(buffer) return buffer.is_focused end,
            fg = function(buffer)
              if buffer.is_focused then
                return buffer.devicon.color
              end
            end,
          },
          {
            text = function(buffer)
              if buffer.is_modified then
                return ""
              end
              if buffer.is_hovered then
                return "󰅙"
              end
              return "󰅖"
            end,
            fg = function(buffer)
              if buffer.is_focused then
                return buffer.devicon.color
              end
            end,
            on_click = function(_, _, _, _, buffer)
              buffer:delete()
            end,
          },
          {
            text = " ",
          },
        }
      })
    end
  }
}
