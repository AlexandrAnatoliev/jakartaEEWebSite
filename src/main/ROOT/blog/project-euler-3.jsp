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
    	
    	<title>java практика: проект Эйлера 3 задача</title>
    	
    	<meta name="description" content="Проект Эйлера 3 задача (наибольший простой делитель) позволила: отработать конструкции языка java, 
    	реализовать пользовательский ввод через параметры командной строки, скомпилировать файлы программы в jar архив, передать его через ssh 
   		и запустить на удаленном сервере">
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
        		<ul>
    				<li><a href="/"><b>Главная</b></a></li>
    				<li><a href="/blog"><b><span class="iamhere">Блог</span></b></a></li>
    				<li><a href="/devops"><b>DevOps</b></a></li>
    			</ul>
      		</div>
    	</div>

    	<div id="top">
      		<h1>ПРОЕКТ ЭЙЛЕРА 3 ЗАДАЧА</h1>
    	</div>

    	<p>Данная небольшая задача уже не решается "с наскоку" и потребует немного подумать над алгоритмом. Также помимо применения в программе новых 
    	конструкций языка <b>java</b>, реализуем пользовательский ввод через параметры командной строки, все файлы скомпилируем в один <b>jar</b> архив, 
    	передадим его через <b>ssh</b> и запустим на удаленном сервере. <b>Онлайн-калькулятор</b> для проверки вычислений и <b>правильный ответ</b> 
    	на задачу прилагаются.</p>

    	<div id="top">
      		<h3>Наибольший простой делитель</h3>
    	</div>

    	<p>Простые делители числа <b>13195</b> - это <b>5, 7, 13</b> и <b>29</b>.<br/>
    	Какой самый большой делитель числа <b>600851475143</b>, являющийся простым числом?</p>

    	<div class="calculator">

    		<h3>Онлайн-калькулятор: "Разложение числа на простые множители"</h3>

    		<form method="post">
      			<label for="num">Введите число:</label>
      			<input type="number" step="any" id="num" name="num" required><br><br>

      			<input type="submit" value="Посчитать">
    		</form>

    		<%
      		// Получаем введенные значения из запроса
      		String numStr = request.getParameter("num");

      		// Проверяем, что параметры не null и не пустые
      		if (numStr != null && !numStr.isEmpty()) {
        		try {
          			// Преобразуем строки в числа
          			long number = Long.parseLong(numStr);%>
          			<p>Число <b><%= numStr %></b> раскладывается на множители:

            		<%while (number % 2 == 0) {%>
            			<%number /= 2;%>
            			<b><%= 2 %></b>
            		<%}%>
					
          			<%for (long i = 3; i * i <= number; i += 2) {%>
            			<%while (number % i == 0) {%>
            				<%number /= i;%>
            				<b><%= i %></b>
            			<%}%>
            		<%}%>
            		
            		<%if(number > 1) {%>
            		 	<b><%= number %></b>
            		<%} %>
  
          			</p>

    		<%   } catch (NumberFormatException e) { %>

    			<!-- Обработка ошибки ввода -->
    			<p style="color: red;">Ошибка: Пожалуйста, введите корректные числовые значения.</p>

    		<%  }
      		}
    		%>
    	</div>

    	<div id="top">
      		<h3>Описание алгоритма</h3>
    	</div>

		<p>Для простоты объяснения идеи алгоритма программы возьмем не <b>600851475143</b>, а меньшее число, например – <b>1000</b>.</p>

		<p>Число обратное <b>простому</b> называется <b>составным</b> и его можно разложить на множители.<br/>
		Так <b>1000 = 2 * 500</b>, и потому <b>1000</b> делится как на <b>2</b>, так и на <b>500</b>. 
		При этом <b>2</b> – минимальный делитель числа, а <b>500</b> – максимальный.<br/>
		Однако является ли найденный максимальный делитель (<b>500</b>) простым?</p>

		<p>Чтобы найти максимальный <b>простой</b> делитель нужно повторять цикл и раскладывать каждый найденный максимальный делитель на множители
		 до тех пор, пока последний в итоге не перестанет раскладываться на множители.</p>

		<p>Алгоритм получаем следующий:
			<ul>
				<li><b>1000 % 2 == 0</b> –  т.е <b>1000</b> делится нацело на <b>2</b></li>
				<li>Далее вместо того, чтобы продолжать делить <b>1000</b> на <b>3… 4… 5… 999</b>, вычисляем максимальный делитель:</li>
				<li><b>1000 / 2 = 500</b> – т.е. <b>500</b> - максимальный делитель числа <b>1000</b></li>
				<li><b>500 / 2 = 250</b></li>
				<li><b>250 /2 = 125</b></li>
				<li><b>125 / 5 = 25</b></li>
				<li><b>25 / 5 = 5</b> – искомый максимальный простой делитель числа <b>1000</b>.</li>
			</ul>
		</p>
		<p>Как мы видим в итоге тысяча тысяч операций по поиску максимального простого делителя числа <b>1000</b> сократилось до <b>5</b> итераций.</p>
		

<pre class="vimcode">
import java.util.Scanner;

public class Solution {
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
    input.close();
  }
}
</pre>

    <p>Во-первых, нужно помнить, что согласно заданию и самому определению чисел Фибоначчи: “следующий элемент получается при сложении двух предыдущих”.</p> 

    <div class="vimcode">
      nextFib = firstFib + secondFib;
    </div>
    
    <p>Во-вторых, четное число делится на <b>2</b> без остатка.</p>

    <div class="vimcode">
      if (secondFib % 2 == 0)
    </div>

    <p>Ну и главное, не нужно вычислять каждый элемент ряда каждый раз заново. Потому, как только будет получено число Фибоначчи, следующее за первыми двумя.</p>

    <div class="vimcode">
      nextFib = firstFib + secondFib;
    </div>

    <p>...значения обновляются:</p>
    
    <div class="vimcode">
      firstFib = secondFib;
    </div>

    <p>...первое число принимает значение второго:</p>

    <div class="vimcode">
      secondFib = nextFib;
    </div>
    
    <p>...второе – третьего (суммы первых двух).<br/>
    Такой цикл продолжается снова и снова до тех пор, пока в итоге не дойдет до искомых <b>4000000</b>.</p>

    <div id="top">
      <h3>DevOps</h3>
    </div>

    <p>Постепенно приближаем сложность задачи к реальной - напишем и запустим программу на удаленном сервере.<br/>
    Арендуем <b>vps сервер</b> на время (гайд внизу).</p>

	  <div class="article-preview">
      <h4>Аренда виртуального сервера</h4>
      <p>Краткий пошаговый гайд по аренде сервера... <a href="/blog/arenda-vps.jsp">
      <b>читать</b></a></p>
	  </div>

    <p>...подключимся к нему...

	  <div class="article-preview">
      <h4>Подключение по ssh к виртуальному серверу</h4>
		  <p>Краткий гайд по подключению по ssh к виртуальному серверу (VPS)... <a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>читать</b></a></p>
	  </div>
	
    <p>...и напишем текст программы в любом встроеном текстовом редакторе - <b>vim, nano</b> (лично я пользуюсь <b>neovim</b>).<br/>
    Краткий список команд ниже.</p>

	  <div class="article-preview">
      <h4>Основные команды linux терминала</h4>
      <p>Команды, вводимые пользователем в консоли терминала, выполняются командной оболочкой <b>bash</b>. 
      Пользователь вводит команду, <b>bash</b> ищет программу, соответствующую команде, в нужных каталогах,
       запускает ее и передает ей введенные параметры. Количество их, потому, огромно. 
       В статье будут описаны лишь те команды linux терминала, которые я использую чаще всего...
		  <a href="/blog/komandy-linux-terminala.jsp"><b>читать</b></a></p>
	  </div>

    <p>Небольшой гайд по установке <b>java</b> на сервер:</p>

	  <div class="article-preview">
      <h4>Установка java на linux</h4>
      <p>Небольшой конспект по установке <b>java</b> на <b>linux</b>...
		  <a href="/blog/ustanovka-java.jsp"><b>читать</b></a></p>
	  </div>
    
    <p>Скомпилируем программу...</p>

    <div class="vimcode">
      javac Solution.java
    </div>

    <p>Вопросы компиляции <b>java</b> были подробно описаны в статье.</b>

	  <div class="article-preview">
      <h4>Компиляция java кода</h4>
      <p>Компиляция <b>java</b> кода без использования <b>ide</b> (одного класса, нескольких, создание <b>jar-файла</b>).
		  <a href="/blog/kompilyaciya-java-koda.jsp"><b>читать</b></a></p>
	  </div>

    <p>Запустим скомпилированный файл, введем максимальное число, до которого будем производить вычисления и получим искомый ответ:</p>
<pre class="vimcode">
$ java Solution
Input max value Fibonacci sequence term: 4000000
Answer is 4613732
</pre>

    <p>В данной программе применилм несколько новых конструкций языка <b>java</b>:
      <ul>
        <li>Чтение программой вводимых пользователем данных</li>
        <li>Применен цикл <b>while</b></li>
      </ul>
    </p>

	  <div class="article-preview">
      <h4>Навигация по статьям</h4>
		  <ul>
        <li><a href="/blog/project-euler-1.jsp"><b>Проект Эйлера задача 1</b></a></li>
        <li><a href="/blog/project-euler-solutions.jsp"><b>Проект Эйлера - решенные задачи</b></a></li>
		    <li><b>Проект Эйлера 2 задача</b></li>
      </ul>
	  </div>
	  
        <div id="footer">
    		<ul>
    			<li><a href="#top"><b>Наверх</b></a></li>
    		</ul>
    	</div>

  </body>
</html>
