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

<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-7WDGSQZ36B"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-7WDGSQZ36B');
</script>

<style type="text/css">
  <%@include file="/style.css" %>
</style>

<title>java практика: копирование файлов по ssh</title>
<meta name="description"
  content="Копирование файлов по ssh, краткий гайд.">
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
    <h1 id="top">КОПИРОВАНИЕ ФАЙЛОВ ПО SSH</h1>

    <p>После аренды виртуального сервера не всегда удобно что-то
      делать сразу на нем. Чаще всего проект будет делаться на локальном
      компьютере и лишь потом копироваться сервер.</p>

    <aside class="article-preview">
      <h4>Аренда виртуального сервера</h4>
      <p>
        Краткий пошаговый гайд по аренде сервера... <a
          href="/blog/arenda-vps.jsp"><b>читать</b></a>
      </p>
    </aside>

    <p>Генерируем открытый и закрытый ключ:</p>

    <div class="vimcode">ssh-keygen</div>

    <p>
      В консоль будет выведен хеш ключа и его графическое представление.
      Сами ключи по умолчанию (<b>id_rsa.pub</b> - открытый и <b>id_rsa</b>
      - закрытый) сохранятся в домашнем каталоге пользователя в
      директории <b>.ssh</b>.
    <p>
      Во время генерации программа попросит ввести пароль, которым будут
      защищены ключи. Это не обязательно (нажать дважды <b>enter</b>).
    </p>

    <p>Копируем публичный ключ на удаленную машину:</p>

    <pre class="vimcode">
ssh-copy-id [имя пользователя]@[ip-адрес]
            |                   |
            |<-1                |<-2
  где:
1 - учетная запись пользователя, 
    под которой будем логиниться на удаленной машине
2 - адрес удаленной машины (или доменное имя)
</pre>

    <p>Вводим пароль пользователя.</p>

    <p>Копируем с локальной машины на удаленный сервер:</p>

    <div class="vimcode">scp [путь к файлу] [имя
      пользователя]@[ip-адрес]:[путь к файлу]</div>

    <p>Копируем файл на сервер</p>

    <div class="vimcode">scp test.txt
      user@192.168.1.29:/home/user/</div>

    <p>Копируем несколько файлов за раз (указываем пути к ним через
      пробел):</p>

    <div class="vimcode">scp test1.txt test2.txt
      user@192.168.1.29:/home/user/</div>

    <p>Копируем с удаленного сервера на локальную машину (меняем
      источник и место назначения местами):</p>

    <div class="vimcode">scp
      user@192.168.1.29:/home/user/test.txt ~/</div>

    <p>
      Передача директории (используем ключ <b>-r</b>):
    </p>

    <div class="vimcode">scp -r testdir
      user@192.168.1.29:/home/user/</div>

    <p>Передача с одного удаленного сервера на другой:</p>

    <div class="vimcode">scp
      gendo@192.168.1.25:/home/gendo/test.txt
      user@192.168.1.29:/home/user/</div>
  </section>

  <aside class="article-preview">
    <h4>Навигация по статьям</h4>
    <ul>
      <li><a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>Подключение
            по ssh к виртуальному серверу</b></a></li>
      <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные
            команды linux терминала</b></a></li>
      <li><b>Копирование файлов по ssh</b></li>
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
