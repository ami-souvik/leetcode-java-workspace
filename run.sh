rm -rf bin/*
rm -rf executables/Solution.java
javac -cp "lib/json-simple-1.1.1.jar" -d bin/ GenerateExec.java
java -cp lib/json-simple-1.1.1.jar:bin/ GenerateExec $1;
javac -d bin/ ./bin/$1.java;
# for i in $(ls ./solutions);
#     do javac -d bin/ ./solutions/$i;
# done
javac -d bin/ LeetCode.java
java -cp bin/ LeetCode $1
