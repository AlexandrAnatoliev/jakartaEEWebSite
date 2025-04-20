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
    <title>java практика: проект Эйлера 2 задача</title>
    <meta name="description" content="Проект Эйлера 2 задача (четные числа Фибоначчи) прозволяет 
                                      не только отработать конструкции языка java, но и реализовать 
                                      пользовательский ввод, установку и запуск  программы на удаленном 
                                      сервере">
  </head>

  <body>

	  <div id="header">
      <div class="favicon">
        <a href="/"><img src="/favicon.ico" alt="java практика сайт" class="favicon"></a>
      </div>
      <div class="github">
        <a href="https://github.com/AlexandrAnatoliev"><img src="/images/logo/github.svg" alt="ссылка на github" class="github"></a>
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
      <h1>ПРОЕКТ ЭЙЛЕРА 2 ЗАДАЧА</h1>
    </div>

    <p>В данной задаче продолжаем знакомиться с языком <b>java</b>, для чего реализуем 
    пользовательский ввод, а также установим и запустим программу на удаленном сервере. Как всегда, 
    для проверки вычислений сделан небольшой <b>онлайн-калькулятор</b> и приведен 
    <b>правильный ответ</b> на задачу.</p>

    <div id="top">
      <h3>Четные числа Фибоначчи</h3>
    </div>

    <p>Каждый следующий элемент ряда Фибоначчи получается при сложении двух предыдущих. 
    Начиная с <b>1</b> и <b>2</b>, первые <b>10</b> элементов будут:</p>

    <p><b>1, 2, 3, 5, 8, 13, 21, 34, 55, 89...</b></p>

    <p>Найдите сумму всех четных элементов ряда Фибоначчи, которые не превышают <b>четыре миллиона.</b></p>

    <div class="calculator">

    <h3>Онлайн-калькулятор: "Определение ближайшего меньшего числа Фибоначчи"</h1>

    <form method="post">
      <label for="number1">Введите первое число:</label>
      <input type="number" step="any" id="number1" name="number1" required><br><br>

      <label for="number2">Введите второе число:</label>
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
          double num2 = Double.parseDouble(num2Str); %>

          <% if((num1 % num2) == 0) {%>
            <p>Число <strong><%= num1 %></strong> делится на число <strong><%= num2 %></strong> нацело.</p>
          <% } else { %>
            <p>Числа <strong><%= num1 %></strong> и <strong><%= num2 %></strong> не делятся нацело.</p>
          <% } %>

    <%   } catch (NumberFormatException e) { %>

    <!-- Обработка ошибки ввода -->
    <p style="color: red;">Ошибка: Пожалуйста, введите корректные числовые значения.</p>

    <%  }
      }
    %>
    </div>

    <div id="top">
      <h3>Описание алгоритма работы программы</h3>
    </div>

<pre class="vimcode">
import java.util.Scanner;

public class Problem2 {
  public static void main(String[] args) {

    int firstFib = 1;
    int secondFib = 2;
    int nextFib = 3; // 1 + 2
    int answer = 0;

    Scanner input = new Scanner(System.in);
    System.out.print("Input max value Fibonacci sequence term: ");
    int max = input.nextInt();

    while (nextFib < max) {

      if (secondFib % 2 == 0) {
        answer += secondFib;
      }

      nextFib = firstFib + secondFib;
      firstFib = secondFib;
      secondFib = nextFib;
    }

    System.out.println("Answer is " + answer);
  }
}
</pre>

    <p>Весь алгоритм задачи построен на том, что если два числа делятся нацело, то остаток от их деления равен нулю.</p>

    <div class="vimcode">
      if ((num % 3) == 0 || (num % 5) == 0)
    </div>

    <p>
      <ul>
        <li>В цикле <b>for</b> перебираем натуральные числа <b>num</b> от одного до тысячи.</li> 
        <li>Каждое из них проверяем на соответствие условиям задачи.</li>
        <li>Числа, удовлетворяющие условиям задачи, суммируем в переменную <b>answer</b>.</li>
      </ul>
    </p>

    <div id="top">
      <h3>DevOps</h3>
    </div>

	  <p>Поскольку программирование это не только код, но и такие вопросы как настройка, отладка и т.п., скомпилируем файл в прямо консоли:</p>

    <div class="vimcode">
      javac Problem1.java
    </div>

    <p>Запустим скомпилированный файл и получим искомый ответ:</p>
<pre class="vimcode">
$ java Problem1
Answer = 233168
</pre>

    <p>Вопросы компиляции <b>java</b> были подробно описаны ранее, не буду повторяться:</b>

	  <div class="article-preview">
      <h4>Компиляция java кода</h4>
      <p>Компиляция <b>java</b> кода без использования <b>ide</b> (одного класса, нескольких, создание <b>jar-файла</b>).
		  <a href="/blog/kompilyaciya-java-koda.jsp"><b>читать</b></a></p>
	  </div>

    <p>Небольшой гайд по установке <b>java</b> на компьютер:</p>

	  <div class="article-preview">
      <h4>Установка java на linux</h4>
      <p>Небольшой конспект по установке <b>java</b> на <b>linux</b>...
		  <a href="/blog/ustanovka-java.jsp"><b>читать</b></a></p>
	  </div>
    
    <p>Даже притом, что сложность этой программы уровня <b>Hello world</b>, в ней применен ряд конструкций языка <b>java</b>:
      <ul>
        <li>Объявление и инициализация переменной</li>
        <li>Арифметическая операция <b>%</b></li>
        <li>Сочетание арифметической операции с присваиванием <b>+=</b></li>
        <li>Операция инкремента <b>++</b></li>
        <li>Операции отношения <b>==</b> и логические <b><</b> и <b>||</b></li>
        <li>Сцепление строки с числом</li>
        <li>Область видимости, вложенные блоки</li>
        <li>Условный оператор <b>if</b></li>
        <li>Цикл <b>for</b></li>
      </ul>
    </p>

	  <div class="article-preview">
      <h4>Навигация по статьям</h4>
		  <ul>
        <li><a href="/blog/ustanovka-java.jsp"><b>Установка java на linux</b></a></li>
        <li><a href="/blog/kompilyaciya-java-koda.jsp"><b>Компиляция java кода</b></a></li>
		    <li><b>Проект Эйлера 1 задача</b></li>
        <li><a href="/blog/project-euler-solutions.jsp"><b>Проект Эйлера - решенные задачи</b></a></li>
      </ul>
	  </div>
    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
