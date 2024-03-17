# 引数の数が２つかチェックする
if [ "$#" -eq 2 ]; then
        filename=$1
        domain=$2
  echo "Filename: ${filename}"
  echo "Domain: ${domain}"
  read -p "Press [Enter] key to move on to the next.";
else
  echo "引数の数が不正です（ $# 個）"
fi
DATE=`date '+%Y-%m-%d_%H%M%S'`
sudo cp ${filename} ${filename}.bak.${DATE}
sudo cp ${filename}.bak.for-ssl-update ${filename}
echo "エラーが表示されなければDRYRUNでSSL更新をテストします。よろしいですか"
  read -p "Press [Enter] key to move on to the next.";
kusanagi restart
sudo certbot renew  --cert-name studypocket.net  --dry-run
sudo certbot renew  --cert-name ${domain} --dry-run
echo "エラーがなければSSLを更新します。よろしいですか"
  read -p "Press [Enter] key to move on to the next.";
sudo certbot renew  --cert-name ${domain}  --force-renewal

echo "エラーがなければCONF設定ファイルをもとに戻します。よろしいですか"
  read -p "Press [Enter] key to move on to the next.";
sudo cp ${filename}.production ${filename}
kusanagi restart
echo ${domain}"のSSL更新を完了しました"
~                                         
