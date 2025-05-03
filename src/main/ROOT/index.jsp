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

    <link rel="icon" href="/favicon.ico" type="image/x-icon">

	  <style>
      <%@include file="/style.css"%>
    </style>

	  <title>java практика</title>

	  <meta name="description" content="Ежедневная практика в java - лучший способ освоить данный язык программирования">

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
    		<li><a href="/"><b><span class="iamhere">Главная</span></b></a></li>
    		<li><a href="/blog"><b><b>Блог</b></a></li>
    		<li><a href="/devops">DevOps</b></a></li>
    	</ul>
      </div>
      
    </div>
    
    <div id="top">
      <h1>О ПРОЕКТЕ</h1> 
	  </div>

    <p class="center">На сайте разобраны простые
    "пет-проекты" для тех, кому не терпится применить полученные знания в деле.</p>

    <div id="logos" align="center">
      <p>
        <a href="/devops#linux"><img src="images/logo/linux.svg" class="logo" alt="linux" title="linux"/></a>
        <a href="/devops#wireguard"><img src="images/logo/wireguard.svg" class="logo" alt="wireguard" title="wireguard"/></a>
        <a href="/devops#java"><img src="images/logo/java.svg" class="logo" alt="java" title="java"/></a>
      </p>
    </div>

	  <div class="article-preview">
      <h4>Виртуальная частная сеть</h4>
      <p>Краткий гайд по настройке <b>wireguard</b> на своем сервере...
		  <a href="/blog/virtualnaya-chastnaya-set.jsp"><b>читать</b></a></p>
	  </div>

	  <div class="article-preview">
      <h4>Проект Эйлера - решенные задачи</h4>
      <p>Цикл задач проекта Эйлера позволяет не только познакомиться с алгоритмами и отработать конструкции языка программирования, 
      но и разобраться с такими вопросами как настройка, отладка, тестирование и т.п...
		  <a href="/blog/project-euler-solutions.jsp"><b>читать</b></a></p>
	  </div>

    <div id="footer">
    	<ul>
    		<li><a href="#top"><b>Наверх</b></a></li>
    	</ul>
    </div>

  </body>
</html>
