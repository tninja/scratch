### install spring
xcode-select --install

brew tap pivotal/tap
brew install springboot

### ch02
mkdir -p ch02 && cd ch02

spring init -dweb,data-jpa,h2,thymeleaf --build gradle readinglist

cd readinglist
./gradlew clean build
