<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <!-- Yandex.Metrika counter -->
    <script type="text/javascript" >
      (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
      m[i].l=1*new Date();
      for (var j = 0; j < document.scripts.length; j++) {if (document.scripts[j].src === r) { return; }}
      k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
      (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

      ym(101004544, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true
      });
    </script>
    <noscript><div><img src="https://mc.yandex.ru/watch/101004544" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
    <!-- /Yandex.Metrika counter -->
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
		    / <a href="/"><b>главная</b></a> /
		    <a href="/blog"><b><b><span class="iamhere">блог</span></b></a> /
		    <!--
    		  <a href="/projects"><b>проекты</b></a> /
		    -->
        <a href="/devops">devOps</b></a> /
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

    <p>Имя файла с исходным кодом должно совпадать с именем класса (class <b>Test</b> -> <b>Test.java</b>).</p>

<pre class="vimcode">
// Test.java
public class Test {
  public static void main(String[] args) {
    System.out.println("Run Test");
  }
}
</pre>

    <p>Компилируем файл <b>Test.java</b> в файл с байт-кодом <b>Test.class</b> командой:</p>

    <div class="vimcode">
      $ javac Test.java
    </div>

    <p>Файл <b>Test.class</b> появится рядом с <b>Test.java</b>:</p>

<pre class="vimcode">
project-dir/
  Test.java
  Test.class
</pre>

    <p>Запускаем программу командой:</p>

    <div class="vimcode">
      $ java Test
    </div>


    <h3>Компиляция и выполнение нескольких java классов</h3>

    <p>Для работы с несколькими классами нужен <b>classpath</b>. Он похож на файловую систему, в которой содержатся классы, а функции папок выполняют пакеты (<b>packages</b>).</p>

    <p>Отделим файлы исходного кода (каталог <b>src/</b>) от скомпилированных файлов (<b>bin/</b>). Например, в пакете <b>src</b> находится два класса <b>Box</b> и <b>BoxMachine</b>.</p>

<pre class="vimcode">
// Box.java
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
</pre>

<pre class="vimcode">
// BoxMachine.java
package src;

public class BoxMachine {
  public static void main(String[] args) {
    for (int i = 0; i < 5; i++) {
      System.out.println(new Box(Math.random() * 10));
    }
  }
}
</pre>

    <p>Все это образует файловую структуру:</b>

<pre class="vimcode">
project-dir/
  src/
    Box.java
    BoxMachine.java
</pre>

    <p>Чтобы скомпилировать эту группу классов, необходимо из главного каталога (в котором лежит <b>src/</b> каталог) выполнить команду:</b>

<pre class="vimcode">
$ javac -d bin ./src/*
где:
  -d      - флаг, после которого следует указать...
  bin     - ...куда попадут скомпилированные файлы
  ./src/  - расположение исходных файлов
  *       - указывает, что необходимо скомпилировать все файлы
</pre>

    <p>Теперь скомпилированные файлы появились в папке <b>bin/</b>:</p>

<pre class="vimcode">
project-dir/
  src/
    Box.java
    BoxMachine.java
  bin/
    src/
      Box.class
      BoxMachine.class
</pre>

    <p>Для их запуска из главной директории (<b>project-dir</b>)воспользуемся командой:</p>

<pre class="vimcode">
$ java -classpath ./bin src.BoxMachine
где:
  -classpath      - флаг, после которого указывается...
  ./bin           - ...местоположение скомпилированных файлов
  src.BoxMachine  - название пакета и главного класса
</pre>

    <h3>Создание JAR-файлов</h3>

    <p>Соберем скомпилированные файлы в <b>jar-файл</b> - архив классов.</p>

    <p>В главном каталоге создадим файл-манифест <b>manifest.mf</b>:</p>

<pre class="vimcode">
project-dir/
  manifest.mf
  src/
    Box.java
    BoxMachine.java
  bin/
    src/
      Box.class
      BoxMachine.class
</pre>

    <p>В нем указывается главный класс, который будет запускаться при выполнении <b>jar-файла</b>, <b>classpath</b> и дополнительная информация.</p>

<pre class="vimcode">
main-class: src.BoxMachine // класс, содержащий метод main
class-path: bin/ // путь к скомпилированным классам
</pre>

    <p>Собираем <b>jar-файл</b>:</p>

<pre class="vimcode">
jar -cmf manifest.mf box-machine.jar -C bin .
где:
  -cmf            - флаг, после которого указывают...
  manifest.mf     - ...путь к манифесту
  box-machine.jar - название выходного jar-файла
  -C              - флаг, после которого указывают...
  bin             - ...путь к скомпилированным классам
  .               - путь, куда будет помещен jar-файл
</pre>

    <p><b>jar-файл</b> создан в текущей папке</p>

<pre class="vimcode">
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
</pre>

    <p>Запускаем <b>jar-файл</b> командой:</p>

    <div class="vimcode">
      $ java -jar box-machine.jar
    </div>

    <p>В качестве проверки создадим отдельную директорию <b>lib/</b>, перенесем туда наш <b>jar-файл</b> и запустим его оттуда.</p>

<pre class="vimcode">
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
</pre>

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
