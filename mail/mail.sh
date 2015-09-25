#shell send email
if  [ -z $1 ];then
    echo "mail content is null!"
    exit 1
fi

if [ ! -f $1 ];then
    echo "$1 does not exists!"
    exit 1
fi
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
from_name="AdsStatNotice"
from="AdsStatNotice@e.189.cn"
to=""
for email in `cat $SCRIPT_DIR/mail.conf`
do
   to=$email","$to
done;
echo $to
email_content=$1
email_subject="ads stat halfhour notice $2"

echo -e "To: ${to}\nFrom: \"${from_name}\" <${from}>\nSubject: ${email_subject}\n\n`cat ${email_content}`" | /usr/sbin/sendmail -t

