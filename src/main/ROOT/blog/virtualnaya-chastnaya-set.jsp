<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <style type="text/css">
		  <%@include file="/style.css" %>
    </style>
    <title>java практика: виртуальная частная сеть</title>
    <meta name="description" content="Виртуальная частная сеть, краткий гайд по настройке wireguard на своем сервере.">
  </head>

  <body>

	  <div id="header">
      <div class="favicon">
        <img src="/favicon.ico" alt="java практика сайт" class="favicon">
      </div>
      <div class="menu">
		    / <a href="/"><b> <span class="iamhere">главная</span></b></a> /
		    <a href="/blog"><b>блог</b></a> /
		    <!--
    		  <a href="/projects"><b>проекты</b></a> /
		    -->
        <a href="/devops"><b>devOps</b></a> /
      </div>
    </div>


    <div id="top">
      <h1>ВИРТУАЛЬНАЯ ЧАСТНАЯ СЕТЬ</h1>
    </div>

    <p>Краткий гайд по настройке <b>wireguard</b> на своем сервере.</p>

	  <div class="article-preview">
		  <h4>Полезные ссылки</h4>
		  <ul>
        <li><a href="/blog/arenda-vps.jsp"><b>Аренда виртуального сервера</b></a></li>
        <li><a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>Подключение по ssh к виртуальному серверу</b></a></li>
        <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные команды linux терминала</b></a></li>
        <li><a href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>Копирование файлов по ssh</b></a></li>
			</ul>
	  </div>

    <p>Обновляем пакеты на сервере</p>

    <div class="vimcode">
      # apt update && apt upgrade -y
    </div>

    <p>Устанавливаем <b>wireguard</b></p>

    <div class="vimcode">
      # apt install -y wireguard
    </div>

    <p>Генерируем ключи <b>wireguard</b>-сервера</p>

    <div class="vimcode">
      # wg genkey | tee /etc/privatekey | wg pubkey | tee /etc/wireguard/publickey
    </div>

    <p>Сгенерированные публичный и приватный ключи будут сохранены в соответствующих файлах</p>

<pre class="vimcode">
/etc/
  wireguard/
    privatekey
    publickey
</pre>

    <p>Проверим, как называется сетевой интерфейс</p>

    <div class="vimcode">
      # ip a
    </div>

    <p>Скорее всего сетевой интерфейс будет <b>eth.0</b>.</p>

    <p>Создаем конфиг для сетевого интерфейса</p>

    <div class="vimcode">
      # vim /etc/wireguard/wg0.conf
    </div>

    <p>Выглядеть он будет так:</p>

    <img alt="Создаем конфиг для wireguard" src="/images/virtualnaya-chastnaya-set/code1.png" class="code">

    <p>Файл с конфигурацией <b>wireguard</b>-сервера находится в этой же папке</p>

<pre class="vimcode">
/etc/
  wireguard/
    privatekey
    publickey
    wg0.conf
</pre>

    <p>В примере в строках <b>PostUp</b> и <b>PostDown</b> использован сетевой интерфейс <b>eth0</b> (у Вас может быть и другой).
    Вставляем вместо <b>[privatekey]</b> содержимое файла <b>/etc/wireguard/privatekey</b>.</p>

    <p>Настраиваем <b>ip</b> форвардинг:</p>

    <div class="vimcode">
      $ echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
    </div>

    <p>Включаем <b>systemd</b> демон с <b>wireguard</b>:</p>

<pre class="vimcode">
# systemctl enable wg-quick@wg0.service 
# systemctl start wg-quick@wg0.service 
# systemctl status wg-quick@wg0.service 
</pre>

    <p>Создаем ключи клиента:</p>

    <div class="vimcode">
      # wg genkey | tee /etc/wireguard/client_privatekey | wg pubkey | tee /etc/wireguard/client_publickey
    </div>

    <p>Они появляются в каталоге</p>

<pre class="vimcode">
/etc/
  wireguard/
    client_privatekey
    client_publickey
    privatekey
    publickey
    wg0.conf
</pre>

    <p>Добавляем в конфиг сервера клиента:</p>

    <div class="vimcode">
      vim /etc/wireguard/wg0.conf
    </div>

    <p>Запись клиента</p>

<pre class="vimcode">
[Peer]
PublicKey = [client_publickey]
AllowedIPs = 10.0.0.2/32
</pre>

    <p>Вставляем вместо <b>[client_publickey]</b> содержимое файла <b>/etc/wireguard/client_publickey</b>.</p>

    <p>Выглядеть, в итоге, он будет так:</p>

    <img alt="Добавляем в конфиг сервера клиента" src="/images/virtualnaya-chastnaya-set/code1.png" class="code">
    
    <p>Перезагружаем <b>systemctl</b> сервис с <b>wireguard</b>

<pre class="vimcode">
# systemctl restart wg-quick@wg0
# systemctl status wg-quick@wg0
</pre>

    <p>На <b>ЛОКАЛЬНОЙ</b> машине (клиенте) создаем текстовый файл с конфигом клиента</p>

    <div class="vimcode">
      $ vim client_wb.conf
    </div>

<pre class="vimcode">
[Interface]
PrivateKey = [client_privatekey]
Address = 10.0.0.2/32
DNS = 8.8.8.8

[Peer]
PublicKey = [publickey]
Endpoint = [server-ip]:51830
AllowedIPs = 0.0.0.0/0
PersistentKeepalive = 20
</pre>

    <p>Вставляем вместо <b>[client_privatekey]</b> содержимое файла <b>/etc/wireguard/client_privatekey</b>,
    вместо <b>[publickey]</b> - <b>/etc/wireguard/publickey</b>, <b>[server-ip]</b> заменяем на <b>ip</b> сервера.</p>

    <p>Этот конфигурационный файл открываем в <b>wireguard</b>-клиенте телефона или компьютера.</p>

	  <div class="article-preview">
      <h4>Навигация по статьям</h4>
		  <ul>
		    <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные команды linux терминала</b></a></li>
        <li><a href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>Копирование файлов по ssh</b></a></li>
		    <li><b>Виртуальная частная сеть</b></li>
      </ul>
	  </div>
    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
