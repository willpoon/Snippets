alias ll='ls -lart'
set -o vi
export ANDROID_HOME=/Users/poon/android-sdk-macosx
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '


ishadow(){
curl www.ishadowsocks.com 2>/dev/null|grep -iE "服务器地址:|端口:|加密方式:|状态:|密码:"|sed 's/\<h4\>//g'|sed 's/\<\/h4\>//g'|sed 's/\<font color\=\"green\"\>//g'|sed 's/\<\/font\>//g'|sed 's/ //g'
}

ishadow2(){
curl www.ishadowsocks.com 2> /dev/null | grep -iE "服务器地址:|端口:|加密方式:|状态:|密码:" | sed 's/\///g;s/\<h4\>//g;s/\<font color\=\"green\"\>//g;s/\<font\>//g;s/ //g'
}

refreshhosts(){
{ cat /etc/hosts|tee ~/hosts`date +%Y%m%d` ; LC_CTYPE=C && LANG=C && curl http://dn-mwsl-hosts.qbox.me/hosts.txt 2>/dev/null|sed  's/\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/127.0.0.1/g'|grep ^127 ; } | sort|uniq|grep -v '^\!' > /etc/hosts
}
