# P1_init

## *Содержание*

1. [Структура проекта](#Структура-проекта)
   
   1.2. [Команды для создания структуры проекта](#Команды-для-создания-структуры-проекта)
   
   1.3. [Дерево чистого проекта](#Дерево-чистого-проекта)

## 1. Структура проекта

Название проекта my_java_projects.P1_intro 

src - исходный код программы 

src/main/java - исходный код 

src/main/resources - файлы, используемые программой 

src/test/java - исходный код для тестирования программы 

src/test/resources - файлы, используемые для тестирования 

target - сборка исходного кода 

README_RUS.md

### 1.2. Команды для создания структуры проекта

mkdir P1_intro
cd P1_intro
mkdir target src
cd src
mkdir -p main/java main/resources test/java test/resources

### 1.3. Дерево чистого проекта

.
└── P1_intro
    ├── README_RUS.md
    ├── src
    │   ├── main
    │   │   ├── java
    │   │   └── resources
    │   └── test
    │       ├── java
    │       └── resources
    └── target
