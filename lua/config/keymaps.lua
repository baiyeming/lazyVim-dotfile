function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-------------取消s默认功能---------------
--Map("n", "s", "")

--------------windows分屏幕快捷键-----------------
Map("n", "sv", ":vsp<CR>")
Map("n", "sh", ":sp<CR>")

-------------------关闭当前-----------------------
Map("n", "sc", "<C-w>c")

------------关闭其他-----------------
Map("n", "so", "<C-w>o")

---------------------窗口之间跳转-----------------
Map("n", "<A-h>", "<C-w>h")
Map("n", "<A-j>", "<C-w>j")
Map("n", "<A-k>", "<C-w>k")
Map("n", "<A-l>", "<C-w>l")

-- 左右比例控制
Map("n", "<C-Left>", ":vertical resize -2<CR>")
Map("n", "<C-Right>", ":vertical resize +2<CR>")
Map("n", "s,", ":vertical resize -20<CR>")
Map("n", "s.", ":vertical resize +20<CR>")
-- 上下比例
Map("n", "sj", ":resize +10<CR>")
Map("n", "sk", ":resize -10<CR>")
Map("n", "<C-Down>", ":resize +2<CR>")
Map("n", "<C-Up>", ":resize -2<CR>")
-- 等比例
Map("n", "s=", "<C-w>=")

----------------插入insert模式--------------------
Map("i", "jk", "<ESC>")

----------------视觉V模式------------------
Map("v", "<s-h>", "^")
Map("v", "s-l", "$")

-- visual模式下缩进代码
Map("v", "<", "<gv")
Map("v", ">", ">gv")
-- 上下移动选中文本
Map("v", "J", ":move '>+1<CR>gv-gv")
Map("v", "K", ":move '<-2<CR>gv-gv")

-- Terminal相关
Map("n", "<leader>t", ":sp | terminal<CR>")
Map("n", "<leader>vt", ":vsp | terminal<CR>")
Map("t", "<Esc>", "<C-\\><C-n>")
Map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]])
Map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]])
Map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]])
Map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]])

--------------------快速移动鼠标-----------------------
Map("n", "H", "^")
Map("n", "L", "$")
Map("n", "dH", "d^")
Map("n", "dL", "d$")
---------------------全选----------------------
Map("n", "<C-a>", "GVgg")

-- 上下滚动浏览
Map("n", "<C-j>", "4j")
Map("n", "<C-k>", "4k")
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
Map("n", "<C-u>", "9k")
Map("n", "<C-d>", "9j")

-- 在visual 模式里粘贴不要复制
Map("v", "p", '"_dP')

-- 退出
Map("n", "q", ":q<CR>")
Map("n", "qq", ":q!<CR>")
Map("n", "Q", ":qa!<CR>")

-- insert 模式下，跳到行首行尾
Map("i", "<C-h>", "<ESC>I")
Map("i", "<C-l>", "<ESC>A")
