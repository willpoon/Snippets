 curl www.ishadowsocks.com 2> /dev/null | grep -iE "服务器地址:|端口:|加密方式:|状态:|密码:" | sed 's/\<h4\>//g' | sed 's/\<\/h4\>//g' | sed 's/\<font color\=\"green\"\>//g' | sed 's/\<\/font\>//g' | sed 's/ //g'

