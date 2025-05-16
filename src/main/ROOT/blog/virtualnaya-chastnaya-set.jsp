<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<!-- Yandex.Metrika counter -->
<script type="text/javascript">
	(function(m, e, t, r, i, k, a) {
		m[i] = m[i] || function() {
			(m[i].a = m[i].a || []).push(arguments)
		};
		m[i].l = 1 * new Date();
		for (var j = 0; j < document.scripts.length; j++) {
			if (document.scripts[j].src === r) {
				return;
			}
		}
		k = e.createElement(t), a = e.getElementsByTagName(t)[0], k.async = 1,
				k.src = r, a.parentNode.insertBefore(k, a)
	})(window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

	ym(101004544, "init", {
		clickmap : true,
		trackLinks : true,
		accurateTrackBounce : true
	});
</script>

<noscript>
  <div>
    <img src="https://mc.yandex.ru/watch/101004544"
      style="position: absolute; left: -9999px;" alt="" />
  </div>
</noscript>
<!-- /Yandex.Metrika counter -->

<style type="text/css">
  <%@include file="/style.css" %>
</style>

<title>java практика: виртуальная частная сеть</title>
<meta name="description"
  content="Виртуальная частная сеть, краткий гайд по настройке wireguard на своем сервере.">
</head>

<body>
  <header>
    <div class="favicon">
      <a href="/"><img src="/favicon.ico" alt="java практика сайт"
        class="favicon"></a>
    </div>
    <div class="github">
      <a href="https://github.com/AlexandrAnatoliev"><img
        src="/images/logo/github.svg" alt="ссылка на github"
        class="github"></a>
    </div>

    <nav>
      <ul>
        <li><a href="/"><b>Главная</b></a></li>
        <li><a href="/blog" class="current"><b>Блог</b></a></li>
        <li><a href="/devops"><b>DevOps</b></a></li>
      </ul>
    </nav>
  </header>

  <section>
    <h1 id="top">ВИРТУАЛЬНАЯ ЧАСТНАЯ СЕТЬ</h1>

    <p>
      Краткий гайд по настройке <b>wireguard</b> на своем сервере.
    </p>

    <aside class="article-preview">
      <h4>Полезные ссылки</h4>
      <ul>
        <li><a href="/blog/arenda-vps.jsp"><b>Аренда
              виртуального сервера</b></a></li>
        <li><a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>Подключение
              по ssh к виртуальному серверу</b></a></li>
        <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные
              команды linux терминала</b></a></li>
        <li><a href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>Копирование
              файлов по ssh</b></a></li>
      </ul>
    </aside>

    <p>Обновляем пакеты на сервере</p>

    <div class="vimcode"># apt update && apt upgrade -y</div>

    <p>
      Устанавливаем <b>wireguard</b>
    </p>

    <div class="vimcode"># apt install -y wireguard</div>

    <p>
      Генерируем ключи <b>wireguard</b>-сервера
    </p>

    <div class="vimcode"># wg genkey | tee
      /etc/wireguard/privatekey | wg pubkey | tee
      /etc/wireguard/publickey</div>

    <p>Сгенерированные публичный и приватный ключи будут сохранены в
      соответствующих файлах</p>

    <pre class="vimcode">
/etc/
  wireguard/
    privatekey
    publickey
</pre>

    <p>Проверим, как называется сетевой интерфейс</p>

    <div class="vimcode"># ip a</div>

    <p>
      Скорее всего сетевой интерфейс будет <b>eth.0</b>.
    </p>

    <p>Создаем конфиг для сетевого интерфейса</p>

    <div class="vimcode"># vim /etc/wireguard/wg0.conf</div>

    <p>Выглядеть он будет так:</p>

    <figure>
      <img alt="Виртуальная частная сеть, создаем конфиг для wireguard"
        src="/images/virtualnaya-chastnaya-set/code1.png" class="code">
    </figure>

    <p>
      Файл с конфигурацией <b>wireguard</b>-сервера находится в этой же
      папке
    </p>

    <pre class="vimcode">
/etc/
  wireguard/
    privatekey
    publickey
    wg0.conf
</pre>

    <p>
      В примере в строках <b>PostUp</b> и <b>PostDown</b> использован
      сетевой интерфейс <b>eth0</b> (у Вас может быть и другой).
      Вставляем вместо <b>[privatekey]</b> содержимое файла <b>/etc/wireguard/privatekey</b>.
    </p>

    <p>
      Настраиваем <b>ip</b> форвардинг:
    </p>

    <div class="vimcode">$ echo "net.ipv4.ip_forward=1" >>
      /etc/sysctl.conf</div>

    <p>
      Включаем <b>systemd</b> демон с <b>wireguard</b>:
    </p>

    <pre class="vimcode">
# systemctl enable wg-quick@wg0.service 
# systemctl start wg-quick@wg0.service 
# systemctl status wg-quick@wg0.service 
</pre>

    <p>Создаем ключи клиента:</p>

    <div class="vimcode"># wg genkey | tee
      /etc/wireguard/client_privatekey | wg pubkey | tee
      /etc/wireguard/client_publickey</div>

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

    <div class="vimcode">vim /etc/wireguard/wg0.conf</div>

    <p>Запись клиента</p>

    <pre class="vimcode">
[Peer]
PublicKey = [client_publickey]
AllowedIPs = 10.0.0.2/32
</pre>

    <p>
      Вставляем вместо <b>[client_publickey]</b> содержимое файла <b>/etc/wireguard/client_publickey</b>.
    </p>

    <p>Выглядеть, в итоге, он будет так:</p>

    <figure>
      <img alt="Виртуальная частная сеть, добавляем в конфиг клиента"
        src="/images/virtualnaya-chastnaya-set/code2.png" class="code">
    </figure>

    <p>
      Перезагружаем <b>systemctl</b> сервис с <b>wireguard</b>
    <pre class="vimcode">
# systemctl restart wg-quick@wg0
# systemctl status wg-quick@wg0
</pre>

    <p>
      На <b>ЛОКАЛЬНОЙ</b> машине (клиенте) создаем текстовый файл с
      конфигом клиента
    </p>

    <div class="vimcode">$ vim client_wb.conf</div>

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

    <p>
      Вставляем вместо <b>[client_privatekey]</b> содержимое файла <b>/etc/wireguard/client_privatekey</b>,
      вместо <b>[publickey]</b> - <b>/etc/wireguard/publickey</b>, <b>[server-ip]</b>
      заменяем на <b>ip</b> сервера.
    </p>

    <p>
      Этот конфигурационный файл открываем в <b>wireguard</b>-клиенте
      телефона или компьютера.
    </p>

    <p>
      Например, в <b>Ubuntu</b> это выглядит так: Заходим в <b>"Настройки"</b>,
      далее <b>"Сеть"</b>. Нажимаем <b>"+"</b>, чтобы добавить <b>"VPN"</b>.
      Выбираем <b>"Импортировать из файла"</b>.
    </p>

    <figure>
      <img alt="Добавление конфигурации vpn на ubuntu1"
        src="/images/virtualnaya-chastnaya-set/addvpn1.png"
        class="large">
    </figure>

    <p>Находим созданный ранее Вами файл с конфигурацией клиента и
      открываем его.</p>

    <figure>
      <img alt="Добавление конфигурации vpn на ubuntu2"
        src="/images/virtualnaya-chastnaya-set/addvpn2.png"
        class="large">
    </figure>

    <p>Можно включать и использовать.</p>

    <figure>
      <img alt="Добавление конфигурации vpn на ubuntu3"
        src="/images/virtualnaya-chastnaya-set/addvpn3.png"
        class="large">
    </figure>

    <p>Параметры конфигурации, подключенных пользователей,
      количество переданного трафика и т.п. моджно посмотреть с помощью
      команды:</p>

    <div class="vimcode"># wg show</div>
  </section>

  <aside class="article-preview">
    <h4>Навигация по статьям</h4>
    <ul>
      <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные
            команды linux терминала</b></a></li>
      <li><a href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>Копирование
            файлов по ssh</b></a></li>
      <li><b>Виртуальная частная сеть</b></li>
      <li><a href="/blog/ustanovka-java.jsp"><b>Установка
            java на linux</b></a></li>
      <li><a href="/blog/kompilyaciya-java-koda.jsp"><b>Компиляция
            java кода</b></a></li>
    </ul>
  </aside>

  <footer>
    <ul>
      <li><a href="#top"><b>Наверх</b></a></li>
    </ul>
  </footer>

</body>
</html>
