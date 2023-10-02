# MathMode Vim 插件 (MathMode Vim Plugin)
[中文版](#概述) | [English Version](#mathmode-vim-plugin)
## 概述

MathMode Vim 插件是一个用于在 macOS 系统上实现中英文自动切换的工具。该插件可根据当前编辑模式以及字符内容，自动切换输入法，以提高在 Vim 中编写中英文文本的效率。

## 功能特点

- 在插入模式下，根据当前字符自动切换输入法为中文或英文。
- 在退出插入模式并返回正常模式时，自动切换输入法为英文。
- 在数学环境下，自动切换输入法为英文（需要安装 vimtex 插件）。
- 基于 macOS 的输入法切换工具 macism，因此仅适用于 macOS 系统。

## 安装

1. 使用 Homebrew 安装 macism：

```bash
brew tap laishulu/macism
brew install macism
```
2. 确保系统上已经安装了 Rime 输入法，或者按照下面的配置修改 `g:mathmode_cjk_ime` 的值（该值可以通过在终端运行 macism 命令来获取）：

```vimscript
let g:mathmode_cjk_ime = 'your_custom_ime_identifier'
```
3. 使用Vim-Plug插件安装

```vimscript
Plug 'vanabel/mathmode'
```   
4. 使用数学模式自动切换(可选)
   
   要启用在数学环境下的自动切换功能，需要安装 VimTeX 插件。你可以按照以下步骤安装 VimTeX：

   1. 安装 vim-plug 插件管理器（如果尚未安装）：


    ```bash
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

   2. 在你的 .vimrc 中添加以下配置以安装并启用 VimTeX 插件：

   ```vimscript
   " 在你的 .vimrc 文件中添加以下配置
   call plug#begin('~/.vim/plugged')
    Plug 'lervag/vimtex' " 安装 VimTeX 插件
   call plug#end()
   ```

    3. 保存并关闭 `.vimrc` 文件，然后在 Vim 中执行 `:source ~/.vimrc` 以应用配置更改。
     
## 配置
你可以将以下命令添加到你的 `.vimrc` 文件中以配置插件：

```vimscript
let g:mathmode_normal_ime = 'com.apple.keylayout.ABC'
let g:mathmode_cjk_ime = 'im.rime.inputmethod.Squirrel.Hans'
```
其他输入法示例：
```vimscript
"德语
let g:mathmode_cjk_ime=com.apple.keylayout.German-DIN-2137
”简体拼音
let g:mathmode_cjk_ime=com.apple.inputmethod.SCIM.ITABC
"繁体拼音
let g:mathmode_cjk_ime=com.apple.inputmethod.TCIM.Pinyin
"希腊语
let g:mathmode_cjk_ime=com.apple.keylayout.Greek
```
## 致谢

MathMode Vim 插件基于 [laishulu/vim-macos-ime](https://github.com/laishulu/vim-macos-ime) 插件进行修改和定制。感谢原作者的贡献！


## 许可证

MathMode Vim 插件采用 MIT 许可证进行分发。详细信息请参阅 [LICENSE](https://github.com/vanabel/mathmode/edit/main/LICENSE) 文件。

有关更多信息和问题反馈，请访问 [MathMode Vim 插件仓库](https://github.com/vanabel/mathmode)并提交Issue。感谢您的使用！

----

# MathMode Vim Plugin

## Overview

The MathMode Vim plugin is a tool designed to automate the switching between your native language (e.g., Chinese) and English input modes on macOS systems. This plugin automatically switches input methods based on the current editing mode and the content of characters, enhancing the efficiency of writing your native language and English text in Vim.

## Features

- In insert mode, it automatically switches the input method to Chinese or English based on the current character.
- When exiting insert mode and returning to normal mode, it automatically switches the input method to English.
- In mathematical environments, it automatically switches the input method to English (requires the installation of the VimTeX plugin).
- It relies on the macOS input method switching tool, macism, and is therefore only applicable to macOS systems.

## Installation

1. Install macism using Homebrew:

```bash
brew tap laishulu/macism
brew install macism
```
2. Ensure that the Rime input method is installed on your system, or modify the value of `g:mathmode_cjk_ime` as shown below (you can obtain this value by running the `macism` command in the terminal):

```vimscript
let g:mathmode_cjk_ime = 'your_custom_ime_identifier'
```
3. Enabling Automatic Switching in Math Mode (Optional)

    To enable automatic switching in math mode, you need to install the VimTeX plugin. You can follow these steps to install VimTeX:

    1. Install the vim-plug plugin manager (if not already installed):

    ```bash
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```
    2. To install and enable the VimTeX plugin, add the following configuration to your `.vimrc`:

    ```vimscript
    " Add the following configuration to your .vimrc file
    call plug#begin('~/.vim/plugged')
    Plug 'lervag/vimtex' " Install the VimTeX plugin
    call plug#end()
    ```
    3. Save and close the `.vimrc` file, then execute `:source ~/.vimrc` in Vim to apply the configuration changes.

## Configuration

You can add the following commands to your `.vimrc` file to configure the plugin:

```vimscript
let g:mathmode_normal_ime = 'com.apple.keylayout.ABC'
let g:mathmode_cjk_ime = 'im.rime.inputmethod.Squirrel.Hans'
```
Other input method examples:
```vimscript
"German
let g:mathmode_cjk_ime = 'com.apple.keylayout.German-DIN-2137'
"Simplified Pinyin
let g:mathmode_cjk_ime = 'com.apple.inputmethod.SCIM.ITABC'
"Traditional Pinyin
let g:mathmode_cjk_ime = 'com.apple.inputmethod.TCIM.Pinyin'
"Greek
let g:mathmode_cjk_ime = 'com.apple.keylayout.Greek'
```
## Thanks

The MathMode Vim plugin is based on the [laishulu/vim-macos-ime](https://github.com/laishulu/vim-macos-ime) plugin and has been modified and customized. We would like to express our gratitude to the original author for their contributions!

## License

The MathMode Vim plugin is distributed under the MIT license. For detailed information, please refer to the [LICENSE]([https://opensource.org/licenses/MIT](https://github.com/vanabel/mathmode/edit/main/LICENSE)) file.


For more information and feedback, please visit the [MathMode Vim Plugin](https://github.com/vanabel/mathmode) repository and submit an issue. Thank you for using it!
