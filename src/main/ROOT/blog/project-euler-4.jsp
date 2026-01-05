<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<!-- Yandex.Metrika counter -->
<script type="text/javascript">
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

<title>java практика: проект Эйлера 4 задача</title>

<meta name="description"
  content="Проект Эйлера 4 задача (наибольшее произведение-палиндром) позволила не только познакомиться и отработать новые конструкции языка java, 
           но и попрактиковаться в работе с git, создать локальный git-репозиторий с кодом программы, отправить изменения на удаленный репозиторий (в GitHub) 
          и склонировать код на удаленный сервер, где затем скомпилировать и запустить программу.">
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
    <h1 id="top">ПРОЕКТ ЭЙЛЕРА 4 ЗАДАЧА</h1>

    <p>Проект Эйлера 4 задача (наибольшее произведение-палиндром) позволила не только познакомиться и отработать новые конструкции языка <b>java</b>, 
    но и попрактиковаться в работе с <b>git</b>, создать локальный репозиторий с кодом программы, отправить изменения на удаленный репозиторий (в <b>GitHub</b>) 
          и склонировать код на удаленный сервер, где затем скомпилировать и запустить программу.
       <b>Онлайн-калькулятор</b> для проверки вычислений и <b>правильный ответ</b> на задачу прилагаются.</p>
  </section>

  <section>
    <h3>Наибольшее произведение-палиндром</h3>

    <p>
      <i>Число-палиндром с обеих сторон (справа налево и слева направо) читается одинаково. 
        Самое большое число-палиндром, полученное умножением двух <b>двузначных</b> чисел - <b>9009 = 91 * 99</b>.</br>
        Найдите самый большой палиндром, полученный умножением двух <b>трехзначных</b> чисел.
      </i>
    </p>
  </section>

  <section>
    <article class="calculator">
      <h3>Онлайн-калькулятор: "Самый большой палиндром"</h3>

      <form method="post">
        <label for="num">Введите максимальное число:</label> <input type="number"
          step="any" id="num" name="num" required><br> <br>
        <input type="submit" value="Посчитать">
      </form>

      <%
      	// Получаем введенные значения из запроса
      	String numStr = request.getParameter("num");

      	// Проверяем, что параметры не null и не пустые
      	if (numStr != null && !numStr.isEmpty() && (Double.parseDouble(numStr) > 0)) {
        	try {
        // Преобразуем строки в числа
          int max = Integer.parseInt(numStr);

          int min = 1;
          for(int i = max; i > 100; i /= 10)
          {
            min *= 10;
          }

          int answer = 0;
          int fact1 = (int) Math.sqrt(max);
          int maxFact1 = 0;
          int maxFact2 = 0;%>

      <% 
          while (answer < fact1 * fact1) {
            for (int fact2 = fact1; fact1 * fact2 > min; fact2--) {
              String stringNumber = String.valueOf(fact1 * fact2);
              if (stringNumber.equals(new StringBuilder(stringNumber).reverse().toString())) {
                if(answer < fact1 * fact2) {
                  answer = fact1 * fact2;
                  maxFact1 = fact1;
                  maxFact2 = fact2;
                }
                break;
              }
            }
          fact1--;
          }
      %>
      
      <p>Самый большой палиндром, образованный произведением двух <b>n-значных</b> чисел и меньший <b><%= max %></b> это <b><%= answer %> = <%= maxFact1 %> * <%= maxFact2 %></b></p>
        
      <%  } catch (NumberFormatException e) { %>

      <!-- Обработка ошибки ввода -->
      <p style="color: red;">Ошибка: Пожалуйста, введите корректные числовые значения.</p>

      <%  }
      	}
    		%>
    </article>
  </section>

  <section>
    <h3>Описание работы программы</h3>

    <p>В программу можно передать параметр, указывающий разрядность множителей, среди произведений которых нужно искать палиндром.
      Например, если мы ищем палиндром среди произведений <b>двузначных</b> чисел, 
      то передаем программе <b>2</b> через параметры командной строки:</p>

    <div class="vimcode"># java Solution 2</div>

    <p>
      Программу можно запускать также и без параметров:
    </p>

    <div class="vimcode"># java Solution</div>

    <p>
    В этом случае программа вычисляет максимальный палиндром двух <b>трехзначных</b> чисел (согласно условиям 4 задачи Эйлера).
    </p>

    <p>Весь исходный код программы находится в одном файле.</br>
      Класс <b>Solution</b> служит для получения пользовательского
      ввода, содержит метод <b>main()</b>, а также статические методы необходимые для вычислений.
    </p>

<pre class="vimcode">
public class Solution {
  public static void main(String[] args) {
    int digits = (args.length > 0) ? (Integer.parseInt(args[0])) : (3);

    int max = (int) Math.pow(10, digits) - 1;
    int min = (int) Math.pow(10, digits - 1);

    int answer = 0;
    int fact1 = max;

    while (answer < fact1 * fact1) {
      for (int fact2 = fact1; fact2 > min; fact2--) {
        if (isPalindrome(fact1 * fact2)) {
          answer = Math.max(fact1 * fact2, answer);
          break;
        }
      }
      fact1--;
    }
    System.out.println("The largest palindrome between " + min +
        " and " + max + " is " + answer);
  }
</pre>

    <p>Программа перебирает множители <b>fact1</b> и <b>fact2</b> в цикле от максимально возможного значения (<b>max = 999</b> для трехзначных чисел),
    к минимальному (<b>min = 100</b>). Если их произведение является палиндромом и числом большим, чем уже записанный ответ, его значение (<b>answer</b>) обновляется.</p>

    <p>Поскольку перебор множителей идет от большего к меньшему, то первый найденный при переборе <b>fact2</b> палиндром является максимальным и перебор <b>fact2</b> прерывается 
    (все следующие произведения <b>fact1 * fact2</b> будут заведомо меньше). Перебор начинается заново уже при новом значении <b>fact1</b>.</p>

    <p>По этой же причине прекращается перебор первого множителя <b>fact1</b>, как только его квадрат превысит последний полученный ответ <b>answer</b> 
    - все возможные последующие палиндромы заведомо меньше.</b> 

  <p>Метод <b>invert</b> принимает положительное натуральное число (например, <b>123456</b>), превращает его в строку (<b>"123456"</b>), инвертирует ее (<b>"654321"</b>) и 
  и преобразует обратно в число (<b>654321</b>), которое и возвращает.</p>

<pre class="vimcode">
  public static int invert(int number) {
    String stringNumber = String.valueOf(number);
    stringNumber = new StringBuilder(stringNumber).reverse().toString();
    return Integer.parseInt(stringNumber);
  }
</pre>

<p>Метод <b>isPalindrome</b> принимает натуральное число и возвращает <b>true</b>, если оно является палиндромом. 
Для этого он использует вышеописанный метод <b>invert</b>. Если число равно инвертированному самому себе - оно палиндром.</b>

<pre class="vimcode">
  public static boolean isPalindrome(int number) {
    return number == invert(number);
  }
</pre>
  </section>

  <section>
    <h3>DevOps</h3>

    <p>Продолжаю работать с удаленным сервером и начну внедрять в работу <b>git</b>.</br> 
    Создаю локальный <b>git-репозиторий</b> с кодом программы, отправлю изменения (<b>git push</b>) на удаленный репозиторий (в <b>GitHub</b>) 
    и склонирую (<b>git clone</b>) код на мой <b>vps-сервер</b>. После чего уже соберу и запущу программу из консоли через <b>ssh</b> соединение.</p>

    <p>В данный момент структура проекта имеет следующий вид:</p>

<pre class="vimcode">
project-euler/
  problem-4/
    src/
      Solution.java
</pre>

    <p>Инициализирую <b>git</b> репозиторий в корневой папке проекта (<b>project-euler/</b>):</p>

    <div class="vimcode">
      git init
    </div>

    <p>Небольшая "шпаргалка" по командам <b>git</b>:</p>

    <aside class="article-preview">
      <h4>Основные команды git</h4>
      <p>Полный список команд git довольно обширен, потому здесь приведены только основные - те, которые использую чаще всего...
        <a href="/blog/komandy-git.jsp"><b>читать</b></a>
      </p>
    </aside>

    <p>Добавляю файл с кодом для отслеживания:<p>

      <div class="vimcode">
	git add .
      </div>

    <p>Делаю "коммит":</p>

    <div class="vimcode">
      git commit -m "feat: solve Project Euler problem #4"
    </div>

    <p>Правильно написать "коммит" поможет статья:</p>

    <aside class="article-preview">
      <h4>Соглашение о коммитах</h4>
      <p>Это соглашение помогает упростить ведение истории изменений, 
        автоматизировать анализ изменений в коде и в целом повышает прозрачность для всей команды...
        <a href="/blog/soglashenie-o-kommitah.jsp"><b>читать</b></a>
      </p>
    </aside>

    <p>Создаю репозиторий на <b>GitHub</b>, после чего добавляю его:</p>

    <div class="vimcode">
      git remote add origin https://github.com/YourRepository...
    </div>
      
    <p>Отправляю изменения в ветку <b>main</b> удаленного репозитория (<b>origin</b>):</p>

    <div class="vimcode">
      git push origin main
    </div>

    <p>Подключаюсь через ssh к удаленному vps-серверу. </p>

    <div class="vimcode">
      ssh root@192.123.4.56
    </div>

    <p>Как это сделать было описано ранее:</p>
    
    <aside class="article-preview">
      <ul>
        <li><a href="/blog/arenda-vps.jsp"><b>Аренда
              виртуального сервера</b></a></li>
        <li><a href="/blog/ustanovka-java.jsp"><b>Установка
              java на linux</b></a></li>
        <li><a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>Подключение
              по ssh к виртуальному серверу</b></a></li>
        <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные
              команды linux терминала</b></a></li>
      </ul>
    </aside>
    
    <p>Клонирую код из удаленного репозитория на сервер:</p>

    <div class="vimcode">
      git clone https://github.com/YourRepository...
    </div>
  
    <p>Компилирую файлы с исходным кодом (из папки <b>problem-4</b>):</p>

    <div class="vimcode">
      javac -d bin/ src/Solution.java
    </div>

    <p>
      Вопросы компиляции <b>java</b>-кода подробно описаны в статье:
    </p>

    <aside class="article-preview">
      <h4>Компиляция java кода</h4>
      <p>
        Компиляция <b>java</b> кода без использования <b>ide</b> (одного
        класса, нескольких, создание <b>jar-файла</b>)... <a
          href="/blog/kompilyaciya-java-koda.jsp"><b>читать</b></a>
      </p>
    </aside>

    <p>Запускаю скомпилированный файл и получаю искомый ответ:</p>
    
    <pre class="vimcode">
java -cp bin/ Solution 3
The largest palindrome between 100 and 999 is 906609
</pre>
    
    <p>
      В этой программе применил несколько новых конструкций языка <b>java</b>:
    
      <ul>
	<li>Математическую функцию <b>Math.pow()</b>;</li>
	<li>Приведение типов <b>(int)</b></li>
	<li>Прикладной программный интерфейс класса <b>String</b>;</li>
	<li>Построение символьных строк при помощи <b>StringBuilder</b>;</li>
	<li>Оператор прерывания логики программы <b>break</b>;</li>
	<li>Статические методы.</li>
      </ul>
    </p>
  </section>

  <aside class="article-preview">
    <h4>Навигация по статьям</h4>
    <ul>
      <li><a href="/blog/komandy-git.jsp"><b>Основные команды git</b></a></li>
      <li><a href="/blog/primer-git.jsp"><b>Пример использования git</b></a></li>
      <li><b>Проект Эйлера 4 задача</b></li>
      <li><a href="/blog/project-euler-open-source.jsp"><b>Project Euler open source</b></a></li>
    </ul>
  </aside>

  <footer>
    <ul>
      <li><a href="#top"><b>Наверх</b></a></li>
    </ul>
  </footer>

</body>
</html>
