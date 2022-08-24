wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
sudo apt install unzip
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
rm ngrok-stable-linux-amd64.zip
chmod 755 ngrok
sudo mv ngrok /usr/bin/
read -p "Ngrok token: " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp 5900 &>/dev/null &
echo Идёт процесс взлома Genesis Cloud...
echo Обход системы успешно пройден...
echo Приступаем к установки Windows 10
sudo apt update -y > /dev/null 2>&1
echo "Установка QEMU (2-3m)..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo Установка Windows Disk...
curl -L -o lite10.qcow2 https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.0.3/providers/qemu.box
echo "Windows 7 x86 Установлен!"
echo Ваш VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "ВНИМАНИЯ: Не нажимайте Ctrl+C для копирования!!!! Перепишите IP вручную!"
echo "Окно с Putty не закрывать. Когда в окне Putty появится красная надпись (неактивно) - можно закрывать."
echo Скрипт сделан Артёмом Андреевым
sudo qemu-system-x86_64 -vnc :0 -hda lite10.qcow2  -smp cores=4  -m 10192M -machine usb=on -device usb-tablet > /dev/null 2>&1
