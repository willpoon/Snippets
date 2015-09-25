

m () 
{ 
    if [ $# -lt 1 ]; then
        echo "usage: m <subject> [body] [attach1 attach2 attach3 ...]";
        return -1;
    fi;

subject=$1
content=$2

cmd=""
cmdlist=""

shift #skip the first one 
shift #skip the second one

until [ $# -eq 0 ]
do
cmd="uuencode $1 $(basename $1)"
cmdlist="${cmd};$cmdlist"
shift
done


cat > .$$ << !
$content
!

( cat .$$ ; eval $cmdlist ) |  mail -s "$subject" poon
rm .$$

}

