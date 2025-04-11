<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <style type="text/css">
		  <%@include file="/style.css" %>
    </style>
    <title>java практика: компиляция java кода</title>
    <meta name="description" content="компиляция java кода без использования ide (одного класса, нескольких, создание jar-файла).">
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
      <h1>КОМПИЛЯЦИЯ JAVA КОДА</h1>
    </div>

    <p>Компиляция <b>java</b> кода без использования <b>ide</b> (одного класса, нескольких, создание <b>jar-файла</b>).</p>

    <h3>Компиляция и выполнение одного java класса</h3>

    <p>Пусть, исходный код программы находится в файле <b>Test.java</b> по пути:</p>

<pre class="vimcode">
project-dir/
  Test.java
</pre>

Имя файла с исходным кодом должно совпадать с именем класса (class Test -> Test.java).

```java
// Исходный кода файла Test.java
class Test {
    public static void main(String[] args) {
        System.out.println("Run Test");
    }
}
```

* Компилируем файл **Test.java** в файл с байт-кодом **Test.class** командой:

```javac Test.java```

Файл **Test.class** появится рядом с **Test.java**:

```
project-dir/
	Test.java
	Test.class
```

* Запускаем программу командой:

```java Test```


    <h3>Компиляция и выполнение нескольких классов</h3>

Для работы с несколькими классами нужен **classpath**. Он похож на файловую систему, в которой содержатся классы, а
функции папок выполняют пакеты (**packages**).

Отделим файлы исходного кода (каталог **src/**) от скомпилированных файлов (**bin/**).

Например, в пакете **src** находится два класса **Box** и **BoxMachine**.

```java
package src;

public class Box {
    private double size;

    public Box(double size) {
        this.size = size;
    }

    public String toString() {
        return "Box have size " + size;
    }
}
```

```java
package src;

public class BoxMachine {
    public static void main(String[] args) {
        for (int i = 0; i < 5; i++) {
            System.out.println(new Box(Math.random() * 10));
        }
    }
}
```

Все это образует файловую структуру:

```
project-dir/
    src/
        Box.java
        BoxMachine.java      
```

Чтобы скомпилировать эту группу классов, необходимо из главного каталога (в котором лежит **src/** каталог) выполнить
команду:

```
javac -d bin ./src/*
где:
    -d      - флаг, после которого следует указать местоположение, куда попадут скомпилированные файлы.
    bin     - название папки
    ./src/* - расположение исходных файлов
    *       - указывает, что необходимо скомпилировать все файлы
```

Теперь скомпилированные файлы появились в папке **bin/**:

```
project-dir/
    src/
        Box.java
        BoxMachine.java
    bin/
        src/
            Box.class
            BoxMachine.class
```

Для их запуска из главной директории воспользуемся командой:

```
java -classpath ./bin src.BoxMachine
где:
    -classpath      - флаг, после которого указывается местоположение скомпилированных файлов
    ./bin           - название папки, в которой лежат скомпилированные файлы
    src.BoxMachine  - название пакета и главного класса 
```

    <h3>Создание JAR-файлов</h3>

Соберем скомпилированные файлы в **jar-файл** - архив классов.

* В главном каталоге создадим файл-манифест **manifest.mf**:

```
project-dir/
    manifest.mf
    src/
        Box.java
        BoxMachine.java
    bin/
        src/
            Box.class
            BoxMachine.class
```

В нем указывается главный класс, который будет запускаться при выполнении **jar-файла**, **classpath** и дополнительная
информация.

```
main-class: src.BoxMachine  // класс, содержащий метод main
class-path: bin/            // путь к скомпилированным классам или дополнительным библиотекам
```

* Собираем **jar-файл**:

```
jar -cmf manifest.mf box-machine.jar -C bin .
где:
    -cmf            - флаг, после которого указывают путь к файлу манифеста
    manifest.mf     - путь к манифесту
    box-machine.jar - название выходного jar-файла
    -C              - флаг, после которого указывают путь к скомпилированным классам
    bin             - путь к скомпилированным классам
    .               - путь, куда будет помещен jar-файл
```

**jar-файл** создан в текущей папке

```
project-dir/
    box-machine.jar
    manifest.mf
    src/
        Box.java
        BoxMachine.java
    bin/
        src/
            Box.class
            BoxMachine.class
```

* Запускаем **jar-файл** командой:

```java -jar box-machine.jar```

В качестве проверки создадим отдельную директорию `lib/`, перенесем туда наш jar-файл и запустим его оттуда.

```
project-dir/
    manifest.mf
    src/
        Box.java
        BoxMachine.java
    bin/
        src/
            Box.class
            BoxMachine.class
    lib/
        box-machine.jar
```
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
      # wg genkey | tee /etc/wireguard/privatekey | wg pubkey | tee /etc/wireguard/publickey
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

    <img alt="Виртуальная частная сеть, создаем конфиг для wireguard" src="/images/virtualnaya-chastnaya-set/code1.png" class="code">

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

    <img alt="Виртуальная частная сеть, добавляем в конфиг клиента" src="/images/virtualnaya-chastnaya-set/code2.png" class="code">
    
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

    <p> Например, в <b>Ubuntu</b> это выглядит так: Заходим в <b>"Настройки"</b>, далее <b>"Сеть"</b>. Нажимаем <b>"+"</b>, чтобы добавить <b>"VPN"</b>. Выбираем <b>"Импортировать из файла"</b>.</p>

    <img alt="Добавление конфигурации vpn на ubuntu1" src="/images/virtualnaya-chastnaya-set/addvpn1.png" class="large">

    <p>Находим созданный ранее Вами файл с конфигурацией клиента и открываем его.</p>

    <img alt="Добавление конфигурации vpn на ubuntu2" src="/images/virtualnaya-chastnaya-set/addvpn2.png" class="large">
    
    <p>Можно включать и использовать.</p>

    <img alt="Добавление конфигурации vpn на ubuntu3" src="/images/virtualnaya-chastnaya-set/addvpn3.png" class="large">

    <p>Параметры конфигурации, подключенных пользователей, количество переданного трафика и т.п. моджно посмотреть с помощью команды:</p>

    <div class="vimcode">
      # wg show
    </div>

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
