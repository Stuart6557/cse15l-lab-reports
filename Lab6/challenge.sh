echo "-----------------------------"
echo "Cloning Git Repo"
echo "-----------------------------"

rm -rf lab7

git clone git@github.com:Stuart6557/lab7.git

cd lab7

echo "-----------------------------"
echo "Running Tests"
echo "-----------------------------"

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples

echo "-----------------------------"
echo "Fixing bug"
echo "-----------------------------"

sed '43/index1 += 1/index2 += 1/' ListExamples.java
sed -i '43s/index1 += 1/index2 += 1/' ListExamples.java

echo "-----------------------------"
echo "Running Tests Again"
echo "-----------------------------"

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples

echo "-----------------------------"
echo "Committing and Pushing"
echo "-----------------------------"

git add .
git commit -m "fixed bug"
git push

echo "-----------------------------"
echo "Done!"
echo "-----------------------------"