# My neovim configurations
For everything to work properly, you need to install the following packages.

> [!NOTE]
> The way you install them will depend on your linux distribution. Since I use Archlinux, I'll use pacman.

```fish
sudo pacman -Syu --noconfirm --needed fg bd ripgrep unzip nodejs
```

After installing the packages, now clone the repository.

```fish
git clone https://github.com/antoniojoacir/nvim $HOME/.config/nvim
```

----

## Plugins
The plugins on my neovim are managed by LazyThe plugins on my neovim are managed by [Lazy](https://github.com/folke/lazy.nvim)

![lazy-exemple](https://github.com/user-attachments/assets/556cfe9a-7a2b-480d-a9f8-e27c5bd9faf3)


### Themes
To change nvim's theme, simply change the line containing `vim.cmd.colorscheme("color-scheme-name")` in the `init.lua` file

To install new themes, you'll need to export them in the `colorschemes.lua` file located here:

```
~/.config/nvim/
├── lua
│   └── custom
│       └── plugins
│           ├── ...
│           ├── colorschemes.lua <-- HERE
│           └── ...
├── plugin
│   └── ...
├── README.md
└── init.lua
```

### File handling
I'm currently using a module of the [mini.nvim](https://github.com/echasnovski/mini.nvim) plugin called [mini.files](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-files.md), the key to open it is `\` the rest is defaults.

![mini.files](https://github.com/user-attachments/assets/e8b61c0c-3ad9-480d-a79d-d87b0c1dd7b5)

But there is another possibility which is [oil.nvim](https://github.com/stevearc/oil.nvim), it uses the standard nvim motions, to enable it you will need to comment out all the mini.files in the `mini.lua` file or just the keymap so as not to conflict with oil.

`mini.lua`
```lua
--  vim.keymap.set("n", "\\", function()
--      local success = pcall(function()
--          local file_path = vim.api.nvim_buf_get_name(0)
--              if file_path == "" then
--                  error("No buffer")
--              end
--          MiniFiles.open(file_path, false)
-- 		    MiniFiles.reveal_cwd()
--      end)
--      if not success then
-- 	        MiniFiles.open()
-- 	    end
--  end, { desc = "Toggle into currently opened file" })
```

Then comment out these lines from `oil.lua`.

`oil.lua`
```lua
-- if true then
   -- return {}
-- end
```
it will look like this

![img](https://github.com/user-attachments/assets/4f44cb33-2c7c-40d8-8a45-5d692b335dac)
