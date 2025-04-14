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
    <title>java практика: проект Эйлера 1 задача</title>
    <meta name="description" content="Проект Эйлера 1 задача (числа, кратные 3 или 5).">
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
      <h1>Проект Эйлера 1 задача</h1>
    </div>

    <p> Проект Эйлера 1 задача (числа, кратные 3 или 5).</p>

    <p>Обновляем перечень пакетов <b>apt</b> в системе:</p>

    <div class="vimcode">
      sudo apt update
    </div>

    <p>Проверим, устанавливалась <b>java</b> ранее или нет.</p>

    <h3>Определение делимости двух чисел</h1>

    <form method="post">
      <label for="number1">Числитель:</label>
      <input type="number" step="any" id="number1" name="number1" required><br><br>

      <label for="number2">Знаменатель:</label>
      <input type="number" step="any" id="number2" name="number2" required><br><br>

      <input type="submit" value="Определить делимость">
    </form>

    <%
        // Получаем введенные значения из запроса
        String num1Str = request.getParameter("number1");
        String num2Str = request.getParameter("number2");

        // Проверяем, что параметры не null и не пустые
        if (num1Str != null && num2Str != null && !num1Str.isEmpty() && !num2Str.isEmpty()) {
            try {
                // Преобразуем строки в числа
                double num1 = Double.parseDouble(num1Str);
                double num2 = Double.parseDouble(num2Str);

                // Вычисляем сумму
                double sum = num1 % num2; %>
        
                <% if(sum == 0) {%>
                  <p>YES</p>
                <% } else { %>
                  <p>NO</p>
                <% } %>

    <!-- Выводим результат -->
    <h3>Результат:</h3>
    <p>Сумма чисел <strong><%= num1 %></strong> и <strong><%= num2 %></strong> равна <strong><%= sum %></strong>.</p>

    <%
            } catch (NumberFormatException e) {
    %>

    <!-- Обработка ошибки ввода -->
    <p style="color: red;">Ошибка: Пожалуйста, введите корректные числовые значения.</p>

    <%
            }
        }
    %>

	  <div class="article-preview">
      <h4>Навигация по статьям</h4>
		  <ul>
        <li><a href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>Копирование файлов по ssh</b></a></li>
        <li><a href="/blog/virtualnaya-chastnaya-set.jsp"><b>Виртуальная частная сеть</b></a></li>
		    <li><b>Установка java на linux</b></li>
        <li><a href="/blog/kompilyaciya-java-koda.jsp"><b>Компиляция java кода</b></a></li>
      </ul>
	  </div>
    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
