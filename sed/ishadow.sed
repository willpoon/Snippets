curl www.ishadowsocks.com 2> /dev/null | grep -iE "服务器地址:|端口:|加密方式:|状态:|密码:" | sed 's/\///g;s/\<h4\>//g;s/\<font color\=\"green\"\>//g;s/\<font\>//g;s/ //g'

