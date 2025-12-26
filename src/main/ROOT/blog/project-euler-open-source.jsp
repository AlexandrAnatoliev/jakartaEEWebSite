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

    <style type="text/css">
<%@include file="/style.css" %>
    </style>

    <title>java практика: Project Euler open source проект</title>

    <meta name="description"
          content="Project Euler open source - это 
                             проект, не только помогающий изучить и 
                             попрактиковать конструкции языка Java,
                             но и сделать свой первый pull request
                             на GitHub.">
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
      <h1 id="top">PROJECT EULER OPEN SOURCE</h1>

      <p><a href="https://github.com/AlexandrAnatoliev/project-euler.git">Project Euler open source</a>
      - это проект,  не только помогающий 
      изучить и попрактиковать конструкции языка 
      Java, но и сделать свой первый pull request 
      на GitHub.</p>
    </section>
    <aside class="article-preview">
      <h4>Навигация</h4>
      <ul>
        <li><a href="#setup-instructions-ru"><b>Инструкции по установке</b></a></li>
        <li><a href="#problems-ru"><b>Задачи</b></a></li>
        <li><a href="#submitting-your-changes-ru"><b>Отправка ваших изменений</b></a></li>
        <li><a href="#contact-ru"><b>Контакты</b></a></li>
        <li><a href="#requirements-ru"><b>Требования</b></a></li>
        <li><a href="#list-of-contributors-ru"><b>Список контрибьютеров</b></a></li>
      </ul>
    </aside>
    <section>
      <div align="center">
        <a id="setup-instructions-ru"></a>
        <h2>Инструкции по Установке</h2>
      </div>


      <p>1. Сделайте "форк" этого 
      <a href="https://github.com/AlexandrAnatoliev/project-euler.git">репозитория</a>
      нажатием кнопки "Fork" в правом верхнем углу страницы.
      Это создаст копию репозитория на Вашем GitHub 
      аккаунте.</p>
      <figure>
        <img alt="Кнопка Fork"
             src="/images/project-euler-open-source/fork-button.png" class="large">
      </figure>

      <p>2.Клонируйте Ваш "форкнутый" репозиторий нажатием
      кнопки "Code":</p>
      <figure>
        <img alt="Кнопка Code"
             src="/images/project-euler-open-source/code-button.png" class="large">
      </figure>

      <p>Откроется маленькое окно:</p> 
      <figure>
        <img alt="Кнопка Code"
             src="/images/project-euler-open-source/clone-window.png" class="large">
      </figure>

      <p>Скопируйте из него URL и выполните на своем 
      компьютере команду:</p>

      <pre class="vimcode">
git clone https://github.com/<your-username>/project-euler.git
      </pre>

      <p>3. Перейдите в папку с проектом:</p>

      <pre class="vimcode">
cd project-euler
      </pre>

      <p>4. Добавьте ссылку на оригинальный репозиторий
      для будущих обновлений:</p>

      <pre class="vimcode">
git remote add upstream https://github.com/AlexandrAnatoliev/project-euler.git
      </pre>

      <p>(Напомню, здесь должен быть URL оригинального
      репозитория, а не "форкнутого" Вами, так что
      username в нем должно быть `AlexandrAnatoliev`,
      а не Ваш собственный username.)</p>

      <p>Добавьте ссылку на свой репозиторий (форк):</p>
      <pre class="vimcode">
git remote add upstream https://github.com/<your-username>/project-euler.git
      </pre>

      <p>5. Проверьте ремоуты для своего репозитория:</p>

      <pre class="vimcode">
git remote -v
      </pre>

      <p>Вы должны увидеть origin и upstream ремоуты:</p>

      <pre class="vimcode">
origin  https://github.com/<your-username>/project-euler.git (fetch)
origin  https://github.com/<your-username>/project-euler.git (push)
upstream        https://github.com/AlexandrAnatoliev/project-euler.git (fetch)
upstream        https://github.com/AlexandrAnatoliev/project-euler.git (push)
      </pre>

      <p>6. Выполните pull из upstream репозитория в Вашу
      master ветку, чтобы синхронизировать ее с основным
      проектом:</p>

      <pre class="vimcode">
git pull upstream master
      </pre>

      <p>7. Создайте новую ветку командой:</p>

      <pre class="vimcode">
git switch -c fix-issue
      </pre>

      <p>Сейчас Вы готовы начать работать с issue!
      Помните, каждый раз сначала делать pull
      из upstream репозитория, чтобы держать содержимое
      Вашего локального репозитория в соответствии
      с главным проектом.</p>

      <p>Рекомендую всегда создавать новую
      ветвь для каждого issue, который Вы выполняете!
      Иначе pull request будут слишком большими и 
      возможно аозникнут конфликты слияния.</p>
    </section>

    <section>
      <div align="center">
        <a id="problems-ru"></a>
        <h2>Задачи</h2>
      </div>

      <p>Проект Эйлер содержит более 800 различных задач
      различной трудности. Вы можете выбрать любую 
      задачу, которую Вы хотите. Вы можете также выбрать
      и решить несколько задач. Только не забывайте
      создавать новую ветвь для каждой из них.</p>

      <p>Сначала, выберите задачу, которую Вы хотите решать
      и откройте ее директорию:</p>

      <pre class="vimcode">
project-euler 
├── Problem1/
│   └── README.md
├── Problem2/
│   └── README.md
├── Problem3/
│   └── README.md
└── README.md
      </pre>

      <p>Перейдите в README файл выбранной задачи, чтобы
      получить информацию об ее сути.</p>

      <p>Создайте директорию для Вашего решения в формате:</p>

      <pre class="vimcode">
Solution[номер задачи]-[Ваш github nickname]/
      </pre>

      <p>Например:</p>

      <pre class="vimcode">
project-euler 
├── Problem1/
│   ├── Solution1-User1/
│   ├── Solution1-Username2/
│   ├── Solution1-IvanIvanov/
│   │     ^
│   │     └── директория для Вашего решения
│   └── README.md
├── Problem2/
│   ├── Solution2-User1/
│   └── README.md
└── README.md
      </pre>

      <p>После этого Вы готовы решать задачу!</p>

      <p>Добавьте файлы с исходным кодом в Вашу директорию
      (Наличие README приветствуется)</p>

      <p>Пожалуйста, организуйте репозиторий придерживаясь
      одного из следующих форматов:</p>

      <pre class="vimcode">
Solution1-YourGithubName/
├── Main.java       // Ваш исходный код
└── README.md       // (Опционально) короткое описание или гайд по использованию 
      </pre>

      <p>Если код состоит из нескольких классов:</p>

      <pre class="vimcode">
Solution1-YourGithubName/
├── src/           // Ваш исходный код
│   ├── Class1.java
│   ├── Class2.java
│   └── Main.java
└── README.md      
      </pre>

      <p>Если есть тесты:</p>

      <pre class="vimcode">
Solution1-YourGithubName/
├── src/           
│   ├── main/           // Ваш исходный код
│   │   ├── Class1.java
│   │   ├── Class2.java
│   │   └── Main.java
│   └── test/           // (Опционально) тесты 
│       ├── Class1Test.java
│       ├── Class2Test.java
│       └── MainTest.java
└── README.md      
      </pre>

      <p> Избегайте лишних файлов (бинарные 
      файлы или метаданные IDE) и проверьте что Ваша
      программа работает корректно.</p>

      <p>Все корректные решения будут добавлены после ревью.</p>

      <p>Вам не нужно спрашивать разрешения
      начать решать задачу, предложенную в issue,
      т.к. в этом проекте все issue открыты для новых
      контрибьютеров. Можно сразу же начинать работать
      с issue прямо сейчас! Однако помните, что на
      большинстве проектов Вам необходимо спрашивать
      разрешение прежде чем начать работать с issue. 
      Это необходимо чтобы несколько человек не начали
      работать над одним и тем же issue одновременно,
      и соответственно потратили свое время...</p>
    </section>

    <section>
      <div align="center">
        <a id="submitting-your-changes-ru"></a>
        <h2>Отправка ваших изменений</h2>
      </div>

      <p>После того как Вы решили задачу, Вы готовы отправить 
      изменения!</p> 

      <p>1. Добавьте Ваши изменения в отслеживание:</p>

      <pre class="vimcode">
git add файлы-которые-вы-изменили
      </pre>

      <p>2. Сделайте коммит:</p>

      <pre class="vimcode">
git commit -m "Fixed issue"
      </pre>

      <p>3. Отправить изменения в Ваш "форкнутый" репозиторий:</p>

      <pre class="vimcode">
git push origin fix-issue
      </pre>

      <p>После того как Вы отправили Ваши изменения на 
      GitHub, Вы готовы создать pull request.</p>

      <p>Перейдите на Ваш "форк" репозитория на GitHub.</p>

      <li>Вы увидите надпись "fix-issue had recent pushes" 
        (или как Ваша ветка называется) и кнопку 
        "Compare & pull request" на ней.</li>

      <figure>
        <img alt="Кнопка Pull Request"
             src="/images/project-euler-open-source/compare-and-pull-request-button.png" class="large">
      </figure>

      <li>Заполните поля title и description подробностямм
        о задаче и Вашем ее решении. Вы можете также добавить
        иную информацию, такую как скриншоты, если хотите.</li>

      <figure>
        <img alt="Поля title и description"
             src="/images/project-euler-open-source/title-and-description-boxes.png" class="large">
      </figure>

      <li>В конце нажмите кнопку "Create pull request" 
        чтобы закончить создание pull request.</li>

      <figure>
        <img alt="Кнопка Create pull request"
             src="/images/project-euler-open-source/create-pull-request-button.png" class="large">
      </figure>

      <p>Поздравляю, Вы сделали свой первый вклад в open 
      source на GitHub!</p>

      <p>Можете расслабиться и подождать пока не сделают
      ревью Вашего кода. Если все хорошо, Ваш pull request
      вольют в основную ветку. Если нет, Вам будет 
      предложено внести изменения в Ваш код.</p>

      <p>Помните, что нужно подождать ревью Вашего pull 
      request, не закрывайте его сами.
      Если Вас просят сделать изменения, Вы можете
      коммититить их в ну же самую ветвь, не нужно
      закрывать текущий pull request и открывать новый.</p>
    </section>

    <section>
      <div align="center">
        <a id="contact-ru"></a>
        <h2>Контакты</h2>
      </div>

      <p>Столкнувшись с затруднениями, не стесняйтесь
      открыть issue, написать в
      <a href="https://github.com/AlexandrAnatoliev/project-euler/discussions/23">Discussions</a>
      или мне на почту per-1986@list.ru.</p>
    </section>

    <section>
      <div align="center">
        <a id="requirements-ru"></a>
        <h2>Требования</h2>
      </div>

      <li>Установленная Java </li>

    </section>

    <section>
      <div align="center">
        <a id="list-of-contributors-ru"></a>
        <h2>Список Контрибьютеров</h2>
      </div>

      <p>Огромное спасибо всем, кто контрибьютил
      в этот проект! </p>

      <div align="center">
        <a href="https://github.com/AlexandrAnatoliev"><img src="https://images.weserv.nl/?url=https://avatars.githubusercontent.com/u/116306656?v=4&h=300&w=300&fit=cover&mask=circle&maxage=7d" width="80px"/></a>
      </div>
    </section>

    <aside class="article-preview">
      <h4>Навигация по статьям</h4>
      <ul>
        <li><a href="/blog/primer-git.jsp"><b>Пример использования git</b></a></li>
        <li><a href="/blog/project-euler-4.jsp"><b>Проект Эйлера 4 задача</b></a></li>
        <li><b>Project Euler open source</b></li>
      </ul>
    </aside>

    <footer>
      <ul>
        <li><a href="#top"><b>Наверх</b></a></li>
      </ul>
    </footer>

  </body>
</html>
