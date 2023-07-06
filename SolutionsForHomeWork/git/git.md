# **GIT**

## **HW_1**

[Станьте гуру в Git](https://www.atlassian.com/ru/git/tutorials)

[Шпаргалка по командам](https://www.yourtodo.ru/posts/13/)

*Предусловия:*

  * для Windows должен быть установлен - GitBash:
      + **Git Bash** — это приложение для сред Microsoft Windows, эмулирующее работу командной строки Git. Bash — аббревиатура от Bourne Again Shell. Оболочка (Shell) представляет собой приложение терминала для взаимодействия с операционной системой с помощью письменных команд. Bash — популярная оболочка, используемая по умолчанию в Linux и macOS. Git Bash представляет собой пакет, который устанавливает в операционную систему Windows оболочку Bash, некоторые распространенные утилиты Bash и систему Git.
      + **Установка Git Bash**
        Git Bash поставляется в составе пакета [Git For Windows](https://gitforwindows.org/). Скачайте и установите Git For Windows, как любое другое приложение для Windows. После загрузки найдите входящий в состав пакета файл .exe и откройте его, чтобы запустить Git Bash.
  * создан аккаунт в GitHub:
      +  [GitHub](https://github.com/)
      + [Видео: регистрация на сервисе GitHub](https://www.youtube.com/watch?v=5DKVktUtH3A)
  * все шаги сценария выполняйте в терминале GitBush, Terminal, в папке под гитом.

### **JSON**

 **1.** Создать внешний репозиторий (папку) c названием JSON(HWbyVadimKsendzov):

  + Для cоздания репозитория кликните на кнопку New repository справа вверху.
  + На странице создания репозитория https://github.com/new укажите:
      + название репозитория
      + настройки видимости (приватный это репозиторий или публичный)
      + поставьте галочку, чтобы создать README файл
      + [ **Видео**: создание репозитория на сервисе GitHub](https://www.youtube.com/watch?v=CgFHLQBwj7A)
  
 **2.** Клонировать репозиторий JSON на локальный компьютер:

  + Репозиторий в виде папки у вас на компьютере называется **локальный репозиторий.**
  + Репозиторий, загруженный на GitHub, называется **удалённый репозиторий.**
  + Когда вы клонируете себе на компьютер репозиторий с GitHub, вы создаёте локальную копию удалённого репозитория.

  Команда для клонирования репозитория

  ```$ git clone <repository HTTPS>```

  Например, чтобы склонировать себе на компьютер репозиторий с тасками курса https://github.com/rolling-scopes-school/tasks, необходимо открыть Git Bash и выполнить в нём команду

   ```git clone https://github.com/rolling-scopes-school/tasks```

  Если необходимо склонировать себе на компьютер отдельную ветку репозитория, выполните команду

  ```$ git clone ссылка на репозиторий -b название ветки```

  **3.** Внутри локального JSON создать файл “new.json”:

   ```$ touch new.json```

  **4.** Добавить файл под гит;

  ```$ git add new.json```

  **5.** Закоммитить файл:

  ```$ git commit -m "Added new.json"```

  **6.** Отправить файл на внешний GitHub репозиторий:

  ```$ git push```
  
  ```$ git push --set-upstream origin <yourBranch>```


  **7.** Отредактировать содержание файла “new.json” - написать информацию о себе (ФИО, возраст, количество домашних животных, будущая желаемая зарплата). Всё написать в формате JSON;

  + ```$ vim new.json```
  + нажать **i** (режим редактирования)
  + 
    
```json
  {
    "name": "Liudmila",
    "age": "birthdate - 1980",
    "pets":"my husband",
    "mySalary": "NDA"
  }
```
  + Esc -> **:wq**

 **8.** Отправить изменения на внешний репозиторий:

  + ```$ git status```

  + ```$  git add new.json```

  + ```$ git commit -m "Added information about myself in new.json file"```

  + ```$ git push```

  **9.** Создать файл preferences.json;

   ```$ touch preferences.json```

  **10.**. В файл preferences.json добавить информацию о своих предпочтениях (Любимый фильм, любимый сериал, любимая еда, любимое время года, сторона которую хотели бы посетить) в формате JSON:

  + ```vim preferences.json```
  +  нажать **i** (режим редактирования)
  + 
    
```json
  {
    "favorite movie": "Three nuts for cinderella",
    "favorite TV series": "True Blood",
    "favorite food":"echpochmak",
    "favorite season": "indian summer",
    "the country you would like to visit": "Mongolia"
  }
```

  + Esc -> **:wq**

**11.** Создать файл sklls.json добавить информацию о скиллах которые будут изучены на курсе в формате JSON:

  + ```$ cat >> skills.json```
  +
```json
{
        "hardSkills":   [
                                "SQL/ Postgres, MySQL, Redis",
                                "Terminal Linux",
                                "Git", 
                                "API/ Postman", 
                                "Dev Tools", 
                                "ADB",
                                "Charle", 
                                "Fiddler",
                                "Android Studio", 
                                "Docker",
                                "JS",
                                "Jmeter",
                                "Software Testing",
                                "Markdown"
                        ]                   
}
```
  + **Ctrl + D** (выход из режима редактирования и сохранения файла)
  
  **12.** Отправить сразу 2 файла на внешний репозиторий:

  + ```$ git status```
  + ```$ git add skills.json preferences.json```
  + ```$ git status```
  + ```$ git commit -m "Added two files"```
  + ```$ git push```

  **13.** На веб интерфейсе создать файл bug_report.json:

  + зайти в свой репозиторий
  + нажать *Add file*
  + выбрать Create new file
  + в поле *Name your file...* вписать bug_report.json

**14.** Сохранить изменения на веб интерфейсе:

  + нажать *Commit changes...*
  + во всплывающем окне выбрать *Commit directly to the <ветка> branch*
  + нажать *Commit changes*

**15.** На веб интерфейсе модифицировать файл bug_report.json, добавить баг репорт в формате JSON:

  + в своей ветке найти файл bug_report.json
  + нажать на него
  + нажать на *IconButton* карандаш
  +  
```json
  {
	"bag1": "какой-то баг №1",
	"bag2": "какой-то баг №2"
	}
```

**16.** Сохранить изменения на веб интерфейсе:
  + нажать *Commit changes...*
  + во всплывающем окне выбрать *Commit directly to the <ветка> branch*
  + нажать *Commit changes*
  
**17.** Синхронизировать внешний и локальный репозиторий JSON:
  
  + ```$ git pull```
**18.** Я перенесла файлы

### **XML**

[XML для чайников](https://msiter.ru/tutorials/uchebnik-xml-dlya-nachinayushchih)

 **1.** Создать внешний репозиторий (папку) c названием XML(HWbyVadimKsendzov):

  + Для cоздания репозитория кликните на кнопку New repository справа вверху.
  + На странице создания репозитория https://github.com/new укажите:
      + название репозитория
      + настройки видимости (приватный это репозиторий или публичный)
      + поставьте галочку, чтобы создать README файл
      + [ **Видео**: создание репозитория на сервисе GitHub](https://www.youtube.com/watch?v=CgFHLQBwj7A)
  
 **2.** Клонировать репозиторий JSON на локальный компьютер:

  + Репозиторий в виде папки у вас на компьютере называется **локальный репозиторий.**
  + Репозиторий, загруженный на GitHub, называется **удалённый репозиторий.**
  + Когда вы клонируете себе на компьютер репозиторий с GitHub, вы создаёте локальную копию удалённого репозитория.

  Команда для клонирования репозитория

  ```$ git clone <repository HTTPS>```

  Например, чтобы склонировать себе на компьютер репозиторий с тасками курса https://github.com/rolling-scopes-school/tasks, необходимо открыть Git Bash и выполнить в нём команду

   ```git clone https://github.com/rolling-scopes-school/tasks```

  Если необходимо склонировать себе на компьютер отдельную ветку репозитория, выполните команду

  ```$ git clone ссылка на репозиторий -b название ветки```

 **2.1** Внутри репозитория создать папку XML:
  + ```$ ls -l``` посмотреть что находится в папке в читабельном виде
  + ```$ cd``` <путь к нужной папке> ( у меня $ cd SolutionsForHomeWork/git) перейти в папку в которой будет вестись работа
  + ```mkdir XML```
  + ```$ ls -l``` посмотреть что находится в папке в читабельном виде
  + ```$ cd XML``` перейти в папку XML
   
 **3.**  Внутри папки XML создать файл “new.xml”:

  ```touch new.xml```
   
 **4.**  Добавить файл под гит:

  ```git add new.xml```
   
 **5.**  Закоммитить файл:

 ```git commit -m "comment"```
   
 **6.**  Отправить файл на внешний GitHub репозиторий:
 ```$ git push```
   
 **7.**  Отредактировать содержание файла “new.xml” - написать информацию о себе (ФИО, возраст, количество домашних животных, будущая желаемая зарплата). Всё написать в формате XML:

  + ```$ vim new.xml```
  + нажать **i** (режим редактирования)
  + 
    
```xml
<?xml version="1.0" encoding="UTF-8"?>
    <data>
        <name>Liudmila</name>
        <age>42</age>
        <pets>my husband</pets>
        <mySalary>NDA</mySalary>
    </data>
```
  + Esc -> **:wq**
   
 **8.** Отправить изменения на внешний репозиторий:
   + ```$ git status```

  + ```$  git add new.xml```

  + ```$ git commit -m "Added information about myself in new.xml file"```

  + ```$ git push```
   
 **9.** Создать файл preferences.xml:
  ```touch preferences.xml```
   
 **10.** В файл preferences.xml добавить информацию о своих предпочтениях (Любимый фильм, любимый сериал, любимая еда, любимое время года, сторона которую хотели бы посетить) в формате XML:

  + ```$ preferences.xml```
  + нажать **i** (режим редактирования)
  + 
    
```xml
<?xml version="1.0" encoding="UTF-8"?>
    <favorite>
        <favorite_movie>Three nuts for cinderella</favorite_movie>
        <favorite_TV_series>True Blood</favorite_TV_series>
        <favorite_food>Three nuts for cinderella</favorite_food>
        <favorite_country=you would like to visit>Mongolia</favorite_country>
    </favorite>
```
  + Esc -> **:wq**
  
 **11.** Создать файл sklls.xml добавить информацию о скиллах которые будут изучены на курсе в формате XML:

  + ```vim skills.xml```
  + нажать **i** (режим редактирования)
  + 
```xml
   <?xml version="1.0" encoding="UTF-8"?>
    <hardSkills>SQL, Terminal Linux,Git, API, Dev Tools,ADB,Charle, Fiddler,Android Studio,Docker, JS, Jmeter,Software Testing, Markdown</hardSkills>
```
+ Esc -> **:wq**
 
 **12.** Сделать коммит в одну строку:

 Не стоит делать в одну строчку. Лучше:
  + ```$  git add .```

  + ```$ git commit -m "Коментарий"```

 **13.**Отправить сразу 2 файла на внешний репозиторий:
 
 ```$ git push```
   
 **14.** На веб интерфейсе создать файл bug_report.xml:

  + зайти в свой репозиторий
  + нажать *Add file*
  + выбрать Create new file
  + в поле *Name your file...* вписать bug_report.json
  
 **15.** Ссохранить изменения на веб интерфейсе:

  + нажать *Commit changes...*
  + во всплывающем окне выбрать *Commit directly to the <ветка> branch*
  + нажать *Commit changes*
   
 **16.** На веб интерфейсе модифицировать файл bug_report.xml, добавить баг репорт в формате XML:
 
  + в своей ветке найти файл bug_report.json
  + нажать на него
  + нажать на *IconButton* карандаш
```xml
<?xml version="1.0" encoding="UTF-8"?>
<bugs>
	<bag1>какой-то баг №1</bag1>
	<bag2>какой-то баг №2</bag2>
</bugs>
```
   
 **17.** Cохранить изменения на веб интерфейсе:
   
  + нажать *Commit changes...*
  + во всплывающем окне выбрать *Commit directly to the <ветка> branch*
  + нажать *Commit changes*
  + 
 **18.** Синхронизировать внешний и локальный репозиторий XML:
 
  ```$ git pull```

 ## **HW_2**

**1.** На локальном репозитории сделать ветки для Postman, Jmeter, CheckLists, Bag Reports, SQL, Charles, Mobile testing :
  + В ветке ```main``` набрать ```$  git branch```. 
  + 
    - Postman ➠  ```$ git branch Postman```
    - Jmeter ➠ ```$ git branch Jmeter```
    - CheckLists ➠ ```$ git branch CheckLists```
    - Bag Reports ➠ ```$ git branch Bug_Reports```
    - SQL ➠ ```$ git branch SQL```
    - Charles ➠ ```$ git branch Charles```
    - Mobile testing ➠ ```$ git branch Mobile_testing```
  + ```$  git branch``` ➠ проверка наличия всех созданных веток.
  
**2.** Запушить все ветки на внешний репозиторий:

```git push origin --all```

**3.** В ветке Bag Reports сделать текстовый документ со структурой баг репорта:
  + 
  + на ветке ```main``` ➠  ```$ git pull```
  + ```$ git checkout Bug_Reports```
  + ```$ git merge main``` ➠ синхронизировать с ```main```
  + ```$ vim Bug_Report.md```
  + нажать **i** (режим редактирования)
  + написать образец баг репорта
  + Esc -> **:wq**

**4.** Запушить структуру багрепорта на внешний репозиторий:

  + ```$ git add Bug_Report.md```
  + ```$ git commit -m "Added one file Bug_Report.md```
  + ```$ git push origin Bug_Report```

**5.** Вмержить ветку ```Bag_Reports``` в ```main```:

  + ```$ git checkout main```
  + ```$ git merge Bug_Reports```

**6.** Запушить main на внешний репозиторий:

```$ git push```

**7.** В ветке ```CheckLists``` набросать структуру чек листа:

  + ```$ git checkout CheckLists```
  + ```$ vim CheckLists.txt```

**8.** Запушить структуру на внешний репозиторий:

  + ```$ git add CheckLists.txt```
  + ```$ git commit -m "Added one file CheckLists.txt```
  + ```$ git push origin CheckLists```

**9.** На внешнем репозитории сделать Pull Request ветки CheckLists в main:

  + ```Compare & pull request```
  + ```Create pull request```
  + ```Merge pull request```
  + ```Confirm merge```

**10.** Синхронизировать Внешнюю и Локальную ветки ```main```:

  + ```$ git checkout main```
  + ```$ git pull```