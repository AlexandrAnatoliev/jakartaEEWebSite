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

    	<p>Данная небольшая задача уже не решилась "с наскоку" и потребовала немного подумать над алгоритмом. Также помимо применения в программе новых 
    	конструкций языка <b>java</b>, реализовал в ней пользовательский ввод через параметры командной строки, все файлы скомпилировал в один <b>jar</b>
    	 архив,	передал его через <b>ssh</b> и запустил на удаленном сервере.<br>
    	<b>Онлайн-калькулятор</b> для проверки вычислений и <b>правильный ответ</b> на задачу прилагаются.</p>

    	<div id="top">
      		<h3>Наибольший простой делитель</h3>
    	</div>

    	<p><i>Простые делители числа <b>13195</b> - это <b>5, 7, 13</b> и <b>29</b>.<br/>
    	Какой самый большой делитель числа <b>600851475143</b>, являющийся простым числом?</i></p>

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

		<p>При целочисленном делении числа, мы получаем сразу два делителя: максимальный и минимальный. <br/>
		Например, число <b>15</b> можно представить как произведение <b>3</b> на <b>5</b>. Больший делитель, в свою очередь, 
		также может быть разложен на множители.</p>

		<p>При этом, если перебирать делители от меньшего к большему, то первый же найденный делитель будет априори минимальным и простым.</p> 

		<p>Также нет необходимости проверять все делители от <b>2</b> до самого раскладываемого числа. Достаточно проверять делители только до 
		корня квадратного из раскладываемого числа. Если до него делителей числа нет, то и дальше их не будет и проверяемое число является простым.</p>

		<p>Кроме того все четные числа делятся на <b>2</b>. Потому, проверив делимость числа на <b>2</b> можно не проверять его делимость 
		на <b>4, 6</b> и т.д.</p>

		<p>Так же при разложении числа на простые множители не нужно каждый раз проверять все множители. 
			<ul>
				<li>Например, раскладываем число <b>13195</b> и последовательно проверяем его делимость на <b>2, 3</b> и <b>5</b>.</li> 
				<li>Обнаруживаем, что <b>13195 % 5 = 0</b> и сокращаем число <b>13195 / 5 = 2639</b>.</li>
				<li>Нет необходимости заново проверять делимость числа <b>2639</b> на <b>2</b> и <b>3</b>, т.к. число <b>13195 ( = 2639 * 5)</b> 
				уже на них проверялось ранее.</li>
				<li>В то же время любое число может содержать и несколько одинаковых множителей (например число <b>12 = 2 * 2 * 3</b>). 
				Потому число <b>2639</b> нужно проверять на делимость чисел <b>5, 9, 11</b> и т.д.</li>
			</ul>
		</p>

    	<div id="top">
      		<h3>Описание работы программы</h3>
    	</div>

		<p>Исходный код программы разделен два класса, размещенных в отдельных файлах.</p>

<pre class="vimcode">
src/
  Calculator.java
  Solution.java
</pre>

		<p>Класс <b>Solution</b> служит для получения пользовательского ввода, а также содержит метод <b>main()</b>.</p>

<pre class="vimcode">
// Solution.java
public class Solution {
  public static void main(String[] args) {
    long num = (args.length > 0) ? (Long.parseLong(args[0])) : (600851475143L);

    Calculator calculator = new Calculator();
    long answ = calculator.getMaxPrimeDiv(num);

    System.out.println("Answer is " + answ);
  }
}
</pre>
		<p>Число, максимальный простой делитель которого необходимо найти, передается пользователем программе через параметры командной строки:</p>

    	<div class="vimcode">
			# java Solution 1000
		</div>
		
		<p>Число <b>1000</b> принимается методом <b>main()</b> в виде элемента массива <b>args[0]</b> содержащего строку <b>"1000"</b>.<br>
		Чтобы преобразовать строку в число, применил предопределенный класс <b>Long</b> и его статический метод <b>parseLong()</b>.</p>

		<p>Программу можно запускать также и без параметров (<b>args.length == 0</b>):</p>

    	<div class="vimcode">
			# java Solution
    	</div>

		<p>В этом случае программа вычисляет максимальный простой делитель дефолтного числа <b>600851475143</b> (из условий 3 задачи Эйлера).</p>	

		<p>Для вычисления ответа, с помощью конструктора создал объект <b>calculator</b> - экземпляр класса <b>Calculator</b>, 
		содержащий необходимые методы для вычислений.</p>

<pre class="vimcode">
//Calculator.java
class Calculator {
  long getMinDiv(long number, long div) {
    if(number % div == 0) {
      return div;
    }

    div = (div % 2 == 0) ? (div + 1) : (div + 2);

    for (long i = div; i * i < number; i += 2) {
      if (number % i == 0)
        return i;
    }
    
    return 1;
  }
</pre>
    
    	<p>Метод <b>getMinDiv()</b> принимает число и начальный делитель в качестве аргументов и возвращает минимальный простой делитель числа.<br/>
    	При этом проверяются только нечетные делители и только до корня квадратного из проверяемого числа.</p>

<pre class="vimcode">
//Calculator.java - продолжение
  long getMaxPrimeDiv(long num) {
    long minDiv = getMinDiv(num, 2);

    while (minDiv != 1) {
      num = num / minDiv;
      minDiv = getMinDiv(num, minDiv);
    }
    return num;
  }
}
</pre>

		<p>Метод <b>getMaxPrimeDiv()</b> принимает число и раскладывает его на множители до тех пор, пока оно не перестанет раскладываться. 
		Последний полученый множитель и будет искомым <b>максимальным простым делителем</b>.</p>

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
