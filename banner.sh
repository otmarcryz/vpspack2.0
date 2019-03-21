#!/bin/bash

########## Banner ##########

banner3="
<h5 style="text-align: center;"<BR><font color='white'>⭐StarxNet⭐</font><BR><font color='gray'><BR>♥️Disfruta De El Servidor♥️<BR></font><BR><font color='red'>⚠️ADVERTENCIA⚠️</BR></font><BR><font color='gray'>🚫NO SPAM</BR></font><BR><font color='white'>🚫NO TORRENT</BR></font><BR><font color='gray'>🚫NO FLOOD</BR></font><BR><font color='white'>🚫NO CARDING</BR></font><BR><font color='gray'>🚫NO MULTI LOGIN</BR></font><BR><font color='red'>⚠️ADVERTENCIA⚠️<BR></font><BR><font color='gray'>Gracias por ser miembro Prime 🚀 <BR></font><BR><font color='white'>¿Dudas o sugerencias?<BR><font color='white'>📱Contactos Mr Ray📱</font><BR><font color='gray'>➡️WhatsApp: https://wa.me/5219581736439<BR><font color='gray'><BR>➡️Telegram: https://t.me/Sr_Ray</font><BR></font><BR><font color='white'>DarkSide<BR></font>
"
sed -i 's%DROPBEAR_BANNER=""%DROPBEAR_BANNER="/etc/issue.net"%g' /etc/default/dropbear
echo "$banner3" > /etc/issue.net
service dropbear restart

sshd_config_bak=$(cat /etc/ssh/sshd_config |grep -v "Banner")
echo "$sshd_config_bak" > /etc/ssh/sshd_config
echo "Banner /etc/bannerssh" >> /etc/ssh/sshd_config
service ssh restart 1>/dev/null 2>/dev/null
service sshd restart 1>/dev/null 2>/dev/null
if [ -f /etc/bannerssh ]
then
banner=$(cat /etc/bannerssh)
else
banner="No hay un banner por el momento"
fi
echo "bannerssh" > /etc/bannerssh
service ssh restart 1> /dev/null 2>/dev/null
service sshd restart 1>/dev/null 2>/dev/null

banner2="
<h5 style="text-align: center;"<BR><font color='white'>⭐StarxNet⭐</font><BR><font color='gray'><BR>♥️Disfruta De El Servidor♥️<BR></font><BR><font color='red'>⚠️ADVERTENCIA⚠️</BR></font><BR><font color='gray'>🚫NO SPAM</BR></font><BR><font color='white'>🚫NO TORRENT</BR></font><BR><font color='gray'>🚫NO FLOOD</BR></font><BR><font color='white'>🚫NO CARDING</BR></font><BR><font color='gray'>🚫NO MULTI LOGIN</BR></font><BR><font color='red'>⚠️ADVERTENCIA⚠️<BR></font><BR><font color='gray'>Gracias por ser miembro Prime 🚀 <BR></font><BR><font color='white'>¿Dudas o sugerencias?<BR><font color='white'>📱Contactos Mr Ray📱</font><BR><font color='gray'>➡️WhatsApp: https://wa.me/5219581736439<BR><font color='gray'><BR>➡️Telegram: https://t.me/Sr_Ray</font><BR></font><BR><font color='white'>DarkSide<BR></font>
"
echo "$banner2" > /etc/bannerssh
/etc/init.d/ssh restart
echo -e "\033[1;37mTerminado !!!\033[0m"
