CLASSPATH = .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar

SemanticAnalysisHandlerTests.class:
	javac -g -cp $(CLASSPATH) *.java

debug-test: SemanticAnalysisHandlerTests.class
	jdb -classpath $(CLASSPATH) org.junit.runner.JUnitCore SemanticAnalysisHandlerTests	
