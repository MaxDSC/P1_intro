#корневая директория
ROOT_DIR=~/my_java_projects
#название проекта
PRJ=P1_intro
#где лежат package проекта
SRC=$(ROOT_DIR)/$(PRJ)/src/main/java
#корневая папкам куда уходят компилированные файлы
TRG=$(ROOT_DIR)/$(PRJ)/target
#корневой путь до package, где квесты
Q=maxdsc/quests
# тотже путь, но в формате через точку
PKG=maxdsc.quests
# путь до первого квеста
Q1=$(Q)/hellojava
#путь до первого квеста через точку
PKG1=$(PKG).hellojava

check:
	java -jar $(ROOT_DIR)/checkstyle-10.21.3-all.jar -c $(ROOT_DIR)/google_checks.xml $$(find $(SRC) -name "*.java")

format:
	java -jar $(ROOT_DIR)/google-java-format-1.25.2-all-deps.jar -i $$(find $(SRC) -name "*.java")


q1: compile_q1
	java -classpath $(TRG) $(PKG1).Hello

compile_q1:
	javac -Werror -d $(TRG) $(SRC)/$(Q1)/Hello.java

clean: rm -ri $(TRG)
