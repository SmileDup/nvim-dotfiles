require('nvim-tree').setup {
	-- 关闭文件时自动关闭
	auto_close = true,
	-- hide hidden files
	filters = {
		dotfiles = true,
		custom = {}
	},
	-- 不显示 git 状态图标
	git = {
		enable = false
	},
    view = {
        width = 30,
        hide_root_folder = false,
        side = 'left',
        auto_resize = false,
        mappings = {
            custom_only = false,
            list = {}
        },
        number = false,
        relativenumber = false,
        signcolumn = "yes"
    },
	trash = {
		cmd = "gio trash -f",
		require_confirm = false
	}
}
