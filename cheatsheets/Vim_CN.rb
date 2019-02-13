cheatsheet do
    title 'Vim中文指南'
    docset_file_name 'Vim_CN'
    keyword 'vimc'
    source_url 'http://cheat.kapeli.com'

    category do
        id '帮助'

        entry do
            command ':help command'
            name '查找帮助'
            notes '例如`:help v`查找关于命令`v`的帮助文档, 养成查找帮助文档的好习惯~'
        end
    end

    category do
        id '退出Vim'

        entry do
            command ':q[uit]'
            name '退出Vim'
            notes '操作在当文件有更改时会失败.'
        end
        entry do
            command ':q[uit]!'
            name '忽略更改并退出Vim'
        end

        entry do
            command ':qa'
            name '退出所有打开的文件'
        end

        entry do
            command ':cq[uit]'
            name '忽略更改并退出所有打开的文件'
        end
        entry do
            command ':wq'
            name '保存并退出Vim'
        end
        entry do
            command ':wqa'
            name '保存并退出所有文件'
        end
        entry do
            command ':wq!'
            name '强制保存并退出Vim'
        end
        entry do
            command ':wq {file}'
            name '保存当前文件到{file}, 文件如果在编辑的话会失败'
        end
        entry do
            command ':wq! {file}'
            name '强制保存当前文件到{file}'
        end
        entry do
            command ':[range]wq[!]'
            name '只保存指定行范围内的内容并且退出'
            notes '例如`1,2wq!`表示只保存第一和第二行的内容，其他的的删除，然后退出'
        end
        entry do
            command 'ZZ'
            name '保存并且强制退出Vim'
            notes '等同于`wq!`'
        end
        entry do
            command 'ZQ'
            name '强制退出不保存'
            notes '相当于`q!`'
        end

    end

    category do
        id '编辑文件'

        entry do
            command ':e[dit]'
            name '编辑(重新载入)当前文件'
            notes '当文件被另一个用户重新保存时，:e命令会重新从文件系统加载文件'
        end
        entry do
            command ':e[dit]!'
            name '强制编辑(重新载入)当前文件'
            notes '忽略当前更改，强制从文件系统重新加载文件，当需要忽略当前更改时有用'
        end
        entry do
            command ':e[dit] {file}'
            name '编辑{file}'
        end
        entry do
            command ':e[dit]! {file}'
            name '编辑{file}'
            notes '忽略当前文件的更改，强制编辑{file}'
        end
        entry do
            command 'gf'
            name '编辑光标下文件名所代表的文件'
            notes '助记: goto file'
        end
    end

    category do
        id '插入文本'

        entry do
            command 'a'
            name '在光标后开始插入'
        end
        entry do
            command 'A'
            name '在光标所在行尾开始插入'
        end
        entry do
            command 'i'
            name '在光标前开始插入'
        end
        entry do
            command 'I'
            name '在光标所在行头开始插入'
        end
        entry do
            command 'o'
            name '在当前光标下新起一行开始编辑'
        end
        entry do
            command 'O'
            name '在当前光标上新起一行开始编辑'
        end
    end

    category do
        id '插入文件'
        entry do
            command ':r[ead] [name]'
            name '读取并插入[name]的文件内容到当前光标下'
            notes '例如 `:r sys.log` 将sys.log的内容插入到当前光标下'
        end
        entry do
            command ':r[ead] !{cmd}'
            name '执行命令并且将命令的标准输出插入到当前光标下'
            notes '例如 `:r !date` 把当前日期插入到当前光标下一行'
        end
    end

    category do
        id '删除文本'
        entry do
            command 'x'
            name '删除光标之后的字符'
        end
        entry do
            command '<Del>'
            command 'X'
            name '删除光标之前的字符'
        end
        entry do
            command 'd{motion}'
            name '删除{motion}所代表范围内的文本'
            notes '例如 `dw`删除光标所在单词中光标以及后面的单词 ; `daw`删除光标所在单词; `d$`删除光标所在行后面的字符;  `d0`删除光标所在行前面的字符'
        end
        entry do
            command '[count]dd'
            name '删除光标及以下一共[count]行， 如不指定[count]则删除光标所在行'
        end
        entry do
            command 'D'
            name '删除光标所在行后面的字符'
            notes '相当于 `d$`'
        end
        entry do
            command '{Visual}x'
            command '{Visual}d'
            name '在可视化模式下删除选中的字符'
            notes '查看可视化模式下的文本选择类目'
        end
        entry do
            command '{Visual}CTRL-H'
            command '{Visual}<BS>'
            name '在选择模式下删除选中的文本, `gh`进入选择模式'
        end
        entry do
            command '{Visual}X'
            command '{Visual}D'
            name '在可视化模式下删除选中的行'
        end
        entry do
            command ':[range]d[elete]'
            name '删除[range]范围内的行'
            notes '默认情况下删除当前光标所在行, 例如`:2d`删除第二行, `:2,3d`删除第二到第三行'
        end
        entry do
            command ':[range]d[elete] {count}'
            name '从指定范围开始删除{count}行'
            notes '例如`:2d 10`从第二行开始删除十行'
        end
    end

    category do
        id '变更/替换文本'
        entry do
            command 'r{char}'
            name '用{char}替换光标下的字符'
        end
        entry do
            command 'R'
            name '进入插入模式，但是对于输入是替换而不是插入'
            notes '例如按`R`后输入1234,如果插入的位置原本有字符,那么原来的字符将被替换成1234,行的长度不会增加'
        end
        entry do
            command '~'
            name '切换光标所在字符的大小写，并且光标向右移'
            notes '可以在光标所在处连续将后面的字符的大小写更改'
        end
        entry do
            command 'g~{motion}'
            name '替换{motion}范围内的文本的大小写'
        end
        entry do
            command '{Visual}~'
            name '切换选中文本的大小写'
        end
        entry do
            command '{Visual}U'
            name '切换选中文本到大写'
        end
        entry do
              command 'SHIFT+I+<comment-char>+ESC+ESC'
              name '块插入'
              notes '按`CTRL+V`进入块选择，选择完之后按照上述操作输入想插入的字符'
        end
        entry do
              command 'x'
              name '块删除'
              notes '按`CTRL+V`进入块选择，然后`x`删除选中的字符'
        end
    end

    category do
        id '信息'

        entry do
          command '%'
          name '跳转和光标上的字符对应的字符上去'
          notes '例如文本[error], 在[上`%`会跳转到]上,反之跳转到[上'
        end
        entry do
          command '*'
          name '搜索光标所在单词并高亮'
        end
    end

    category do
        id '范围'
        entry do
            notes <<-'END'
            范围允许将命令应用于当前缓冲区中的一组行。对于大多数命令，默认范围是当前行。

            * `:21s/old/new/g` - 替换第21行的old为new
            * `:1s/old/new/g` - 第一行
            * `:$s/old/new/g` - 最后一行
            * `:%s/old/new/g` - 所有行
            * `:.,$s/old/new/g` - 当前行到最后一行
            END
        end
    end

    category do
        id '替换(substitute)'
        entry do
            name '对范围内的每一行替换{pattern}为{string}'
            notes '
            ```
            :[range]s[ubstitute]/{pattern}/{string}/[c][e][g][p][r][i][I] [count]
            ```'
        end
        entry do
            name '重复上一步:使用相同的搜索模式和替换字符串进行替换，但不使用相同的标志'
            notes '
            ```
            :[range]s[ubstitute] [c][e][g][r][i][I] [count] :[range]&[c][e][g][r][i][I] [count]
            ```
            你可以添加其他的标志。'
        end
        entry do
            notes <<-'END'
            替换时你能使用的参数如下:

            * `[c]` 确认每一次替换，Vim会执行对应匹配的内容. 你能输入以下命令:
              * `y`      替换(Y)
              * `n`      跳过(N)
              * `a`      替换其余所有
              * `q`      退出
              * `CTRL-E`  向上滚动屏幕
              * `CTRL-Y`  向下滚动屏幕

            * `[e]` 当搜索模式失败时，不要发出错误消息，继续进行
            * `[g]`  替换行中出现的所有项。如果没有此参数，则仅对每行中的第一个匹配进行替换
            * `[i]`  忽略匹配时的大小写
            * `[I]`  不忽略匹配时的大小写
            * `[p]`  打印替换的最后一行内容
            END
        end
    end

    category do
        id '拷贝/移动文本'
        entry do
            command '"{a-zA-Z0-9.%#:-"}'
            name '使用寄存器存储临时数据，用于下一次操作'
            notes '[寄存器分类](https://harttle.land/2016/07/25/vim-registers.html)'
        end
        entry do
            command ':reg[isters]'
            command ':di[splay]'
            name '展示所有寄存器的值'
        end
        entry do
            command ':reg[isters] {arg}'
            command ':di[splay] [arg]'
            name '查看指定寄存器的值'
        end
        entry do
            command '["x]y{motion}'
            name '复制{motion}所代表的内容[到寄存器x]'
        end
        entry do
            command '["x][count]yy'
            command '["x][count]Y'
            name '复制[count]行(默认当前行)[到寄存器x]'
        end
        entry do
            command '{Visual}["x]y'
            name '可视化模式下复制选中文本[到寄存器x]'
            notes '见选择文本相关内容'
        end
        entry do
            command '{Visual}["x]Y'
            name '可视化模式下复制选中行[到寄存器x]'
        end
        entry do
            command ':[range]y[ank] [x]'
            name '复制[range]行范围[到寄存器x]'
        end
        entry do
            command ':[range]y[ank] [x] {count}'
            name '复制{count}行[到寄存器x], [range]取最后一个数字'
            notes '默认取当前行'
        end
        entry do
            command '["x][count]p'
            name '粘贴[寄存器x]内容[count]次到光标后'
            notes '默认是匿名寄存器'
        end
        entry do
            command '["x][count]P'
            name '粘贴[寄存器x]内容[count]次到光标前'
        end
        entry do
            command '["x]gp'
            name '同`p`, 然后将光标移至新文本后'
        end
        entry do
            command '["x]gP'
            name '同`P`, 然后将光标移至新文本后'
        end
        entry do
            command ':[line]pu[t] [x]'
            name '粘贴[寄存器x]内容到[line]行后'
            notes '默认当前行'
        end
        entry do
            command ':[line]pu[t]! [x]'
            name '粘贴[寄存器x]内容到[line]行前'
        end
    end



    category do
        id '撤消、重做和重复'

        entry do
            command '[count]u'
            name '撤销前[count]个修改'
        end
        entry do
            command ':u[ndo]'
            name '撤销上一次操作'
        end
        entry do
            command '[count]CTRL-R'
            name '重做[count]个撤销操作,即恢复'
        end
        entry do
            command ':red[o]'
            name '重做上个撤销操作'
        end
        entry do
            command 'U'
            name ' 恢复当前行（即一次撤销对当前行的全部操作）'
        end
        entry do
            command '.'
            name '重复上一命令对编辑缓冲区的修改'
        end
    end

    category do
        id '光标移动'

        entry do
            name '基础命令'
            notes <<-'END'
            ```
              k              <上>
            h   l      <左>         <右>
              j              <下>
            ```
            END
        end
        entry do
            command '[count]h'
            command '[count]<Left>'
            name '向左移动'
        end
        entry do
            command '[count]l'
            command '[count]<Right>'
            command '[count]<Space>'
            name '向右移动'
        end
        entry do
            command '[count]k'
            command '[count]<Up>'
            command '[count]CTRL-P'
            name '向上移动'
        end
        entry do
            command '[count]j'
            command '[count]<Down>'
            command '[count]CTRL-J'
            command '[count]<NL>'
            command '[count]CTRL-N'
            name '向下移动'
        end
        entry do
            command '0'
            command '<Home>'
            name '行首'
        end
        entry do
            command '^'
            name '到行首的第一个非空字符'
        end
        entry do
            command '$'
            command '<End>'
            name '行尾'
        end
        entry do
            command 'g0'
            command 'g<Home>'
            name '对于超出屏幕的一行，移动到屏幕的最左边不是整行的最左边，而是屏幕的最左边'
        end
        entry do
            command 'g^'
            name '与`g0`不同的是移动到第一个非空字符'
        end
        entry do
            command 'g$'
            command 'g<End>'
            name '对于超出屏幕的一行，移动到屏幕的最右边不是整行的最右边，而是屏幕的最右边'
        end
        entry do
            command 'f{char}'
            name '在当前行往右边寻找下一个{char}出现的位置'
            notes '`fd`寻找下一个d出现的位置'
        end
        entry do
            command 'F{char}'
            name '在当前行往左边寻找上一个{char}出现的位置'
            notes '与`f{char}`命令相反'
        end
        entry do
            command 't{char}'
            name '正向移动到下一个{char}的前一个字符上'
        end
        entry do
            command 'T{char}'
            name '反向移动到上一个{char}的后一个字符上'
        end
        entry do
            command '[count];'
            name '重复上一个`f``F``t``T`命令[count]次'
        end
        entry do
            command '[count],'
            name '反方向重复上一个`f``F``t``T`命令[count]次'
            notes '当跳转过头了之后可以使用`,`操作回到之前的位置'
        end
        entry do
            command '-  <minus>'
            name '向上[count]行，光标回到行首第一个非空字符上'
        end
        entry do
            command '+'
            command 'CTRL-M'
            command '<CR>'
            name '向下[count]行，光标回到行首第一个非空字符上'
        end
        entry do
            command '_  <underscore>'
            name '向下[count]-1行，光标回到行首第一个非空字符上'
        end
        entry do
            command 'CTRL-End'
            command 'G'
            name '去第[count]行首第一个非空字符'
            notes '默认:最后一行'
        end
        entry do
            command 'CTRL-Home'
            command 'gg'
            name '去第[count]行首第一个非空字符'
            notes '默认:第一行'
        end
        entry do
            command 'SHIFT-Right'
            command 'w'
            name '按照标点或者空格向右移动[count]个词，光标在词的开头'
            notes '例如ii d d d,e,d w,dd, 对于空格和标点w都作为分隔符'
        end
        entry do
            command 'CTRL-Right'
            command 'W'
            name '按照空格向右移动[count]个词，光标在词的开头'
            notes '例如ii d d d,e,d w,dd, 对于空格W作为分隔符'
        end
        entry do
            command 'e'
            name '按照标点或者空格向右移动[count]个词，光标在词的结尾'
        end
        entry do
            command 'E'
            name '按照空格向右移动[count]个词，光标在词的结尾'
        end
        entry do
            command 'SHIFT-Left'
            command 'b'
            name '按照标点或者空格向左移动[count]个词，光标在词的开头'
        end
        entry do
            command 'CTRL-Left'
            command 'B'
            name '按照空格向左移动[count]个词，光标在词的开头'
        end
        entry do
            command 'ge'
            name '按照标点或者空格向左移动[count]个词，光标在词的结尾'
        end
        entry do
            command 'gE'
            name '按照空格向左移动[count]个词，光标在词的结尾'
        end
        entry do
            command 'H'
            name '移动光标到屏幕上方'
        end
        entry do
            command 'M'
            name '移动光标到屏幕中间'
        end
        entry do
            command 'L'
            name '移动光标到屏幕底部'
        end
        entry do
            command 'zz'
            name '当前行滚动到屏幕中间'
        end
        entry do
            command 'zt'
            name '当前行滚动到屏幕顶部'
        end
        entry do
            command 'zb'
            name '当前行滚动到屏幕底部'
        end

        entry do
            notes <<-'END'
            以下命令在`words`或者`WORDS`间移动
            `word`由字母、数字和下划线组成，或者由其他非空白字符组成，用空格(空格、制表符、&lt;EOL&gt;)分隔。这可以通过“iskeyword”选项进行更改。
            `WORD`由一系列非空白字符组成，用空格分隔。空行也被认为是一个单词和一个单词。
            END
        end

        entry do
            command '('
            name '向后跳过[count]个sentences'
        end
        entry do
            command ')'
            name '向前跳过[count]个sentences'
        end
        entry do
            command '{'
            name '向后跳过[count]个段落'
        end
        entry do
            command '}'
            name '向前跳过[count]个段落'
        end
        entry do
            command ']]'
            name '向前跳过[count]节或者跳到下个第一列的{'
            notes '通过`:help ]]`获取帮助信息'
        end
        entry do
            command ']['
            name '向前跳过[count]节或者跳到下个第一列的}'
            notes '通过`:help ][`获取帮助信息'
        end
        entry do
            command '[['
            name '向后跳过[count]节或者跳到下个第一列的{'
            notes '通过`:help [[`获取帮助信息'
        end
        entry do
            command '[]'
            name '向后跳过[count]节或者跳到下个第一列的}'
            notes '通过`:help []`获取帮助信息'
        end

    end


    category do
        id '标记'
        entry do
            command 'm{a-zA-Z}'
            name '在光标所在位置设置标记{a-zA-Z}'
            notes '标记可以方便在文档的不同位置之间跳转'
        end
        entry do
            command 'm\''
            command 'm\`'
            name '设置前面的上下文标记'
            notes '通过`:help m\'`获取更多信息'
        end
        entry do
            command ':[range]ma[rk] {a-zA-Z}'
            command ':[range]k{a-zA-Z}'
            name '在[range]的最后一个数字所在行首设置标记{a-zA-Z}'
            notes '默认为光标所在行'
        end
        entry do
            command '\'{a-z}'
            name '跳转到标记{a-z}'
            notes '例如`\'a`跳转到标记a'
        end
        entry do
            command '\'{A-Z0-9}'
            name '跳转到标记{A-Z0-9}'
            notes '大写标记可以跨越不同的缓冲区, 即可以在不同的文件之间跳转'
        end
        entry do
            command '`{a-z}'
            name '跳转到标记{a-z}'
        end
        entry do
            command '`{A-Z0-9}'
            name '跳转到标记{A-Z0-9},这个命令跨越不同的缓冲区'
        end
        entry do
            command ':marks'
            name '列出所有标记'
        end
        entry do
            command ':marks {arg}'
            name '列出指定的标记'
        end
    end


    category do
        id '搜索'
        entry do
            command '/{pattern}[/]<CR>'
            name '往前搜索匹配{pattern}的内容'
            notes '例如`/df`从光标处向前搜索匹配df的内容'
        end
        entry do
            command '/{pattern}/{offset}<CR>'
            name '往上或往下{offset}行向前搜索匹配{pattern}的内容'
        end
        entry do
            command '/<CR>'
            name '重复上一次向前搜索'
        end
        entry do
            command '//{offset}<CR>'
            name '重复上一次向前搜索'
        end
        entry do
            command '?{pattern}[?]<CR>'
            name '向后搜索匹配{pattern}的内容'
        end
        entry do
            command '?{pattern}?{offset}<CR>'
            name '往上或往下{offset}行向后搜索匹配{pattern}的内容'
        end
        entry do
            command '?<CR>'
            name '重复上一次向后搜索'
        end
        entry do
            command '??{offset}<CR>'
            name '重复上一次向后搜索'
        end
        entry do
            command 'n'
            name '跳到下一个搜索结果'
        end
        entry do
            command 'N'
            name '跳到上一个搜索结果'
        end
        entry do
            command ':lv {pattern} [g][j] {file(s)}'
            name '使用内部的grep命令在文件中搜索,,'
            notes <<-'END'
            结果放在QuickFix列表中，列表可以使用`:cw`打开

            * 'g' 返回所有匹配项，而不仅仅是每行一个匹配项
            * 'j' 不自动调到第一个匹配项
            * 递归搜索使用`**`模式例如`**/*.c`
            END
        end
    end

    category do
        id '选择文本(可视化模式Visual Mode)'

        entry do
            notes <<-'END'
            要选择文本，请使用下面的命令之一进入可视化模式，并使用运动命令高亮显示感兴趣的文本。然后，对文本使用一些命令。

            可以使用的操作符是:

            * `~`   切换大小写
            * `d`   删除
            * `c`   更改
            * `y`   复制
            * `>`   右挪
            * `<`   左挪
            * `!`   使用外部命令过滤
            * `=`   使用'equalprg'过滤
            * `gq`  将行格式化为“textwidth”长度
            END
        end
        entry do
            command 'v'
            name '按字符启动可视化模式'
        end
        entry do
            command 'V'
            name '按行启动可视化模式(水平方向)'
        end
        entry do
            command 'CTRL-V'
            name '按行启动可视化模式(垂直方向)'
        end
        entry do
            command '<Esc>'
            name '退出可视化模式'
        end
        entry do
              command 'viw'
              name '可视化模式下选择当前光标所在单词'
    end
    end


    category do
        id '暂停'

        entry do
            command 'CTRL-Z'
            name '暂停Vim'
            notes '将vim放置在后台, 使用`jobs`命令可以查看有哪些后台vim在运行， 使用`fg 序号`命令可以将对应的vim转到前台'
        end
        entry do
            command ':sus[pend][!]'
            command ':st[op][!]'
            name '暂停Vim!'
        end

    end

    category do
        id '多窗口'

        entry do
            command ':e filename'
            name '编辑另一个文件'
        end

        entry do
            command ':split filename'
            name '水平拆分窗口然后打开另一个文件'
        end

        entry do
            command 'CTRL-W v'
            name '垂直拆分窗口'
        end

        entry do
            command 'CTRL-W s'
            name '水平拆分当前窗口'
        end

        entry do
            command 'CTRL-W Arrow Up'
            name '移动光标到上一个窗口'
        end

        entry do
            command 'CTRL-W CTRL-W'
            name '循环切换窗口'
        end

        entry do
            command 'CTRL-W_'
            name '最大化当前矿口'
        end

        entry do
            command 'CTRL-W='
            name '所有窗口一样大'
        end

        entry do
            command '10 CTRL-W+'
            name '将当前窗口增大10行高度'
        end

        entry do
            command ':vsplit file'
            name '垂直拆分并打开另一个文件'
        end

        entry do
            command ':sview file'
            name '`split`的readonly模式'
        end

        entry do
            command ':hide'
            name '关闭当前窗口'
        end

        entry do
            command ':only'
            name '仅保持当前窗口打开'
        end

        entry do
            command ':ls'
            name '展示当前缓存区列表（文件列表）'
        end

        entry do
            command ':b 2'
            name '打开缓冲区中编号为2的文件'
        end

        entry do
            command ':bd[n]'
            name '关闭当前缓冲区'
        end
    end

    category do
        id '标签式浏览'
        entry do
            notes <<-'END'
            当编辑程序时，通常需要跳转到另一个位置。Vim使用一个标记文件来列出每个单词和
            的位置。标记文件必须由能够处理文件语法的实用程序创建，并且必须在进行了重要的编辑之后进行更新。
            END
        end

        entry do
            command 'CTRL-]'
            command 'LMB-on-tag+CTRL'
            command 'g LMB-on-tag'
            name '跳转到标签'
        end

        entry do
            command 'CTRL+t'
            name '跳转后返回'
        end
        entry do
            command ':tags'
            name '显示标签堆栈'
        end
    end

    category do
        id '内部列表'
        entry do
            notes <<-'END'
              * Vim使用一个全局的QuickFix列表. 列表包含了由其他命令填充的文件位置.
              * Vim每个窗口有一个位置列表。该列表类似于QuickFix列表，包含文件中的位置列表。
            END
          end
        entry do
            command ':cw'
            name '打开全局的QuickFix列表'
        end
        entry do
          command ':ccl'
          name '关闭QuickFix列表'
        end
        entry do
            command ':lw'
            name '打开位置列表'
        end
    end

    notes <<-'END'
    * 基于 [fprintf](http://www.fprintf.net/vimCheatSheet.html).
    * 由[cstfb](https://github.com/cstfb)基于[Arief Bayu Purwanto](https://github.com/ariefbayu) 制作的Vim速查表翻译而来.
    END
end
