#!/bin/sh

TARGET_DIRECTORY=../delivery-service

git checkout $1

rm -rf ${TARGET_DIRECTORY}/src 
rm ${TARGET_DIRECTORY}/README.md
rm ${TARGET_DIRECTORY}/pom.xml
rm ${TARGET_DIRECTORY}/.gitlab-ci.yml
rm -rf ${TARGET_DIRECTORY}/terraform
rm ${TARGET_DIRECTORY}/Dockerfile
rm ${TARGET_DIRECTORY}/delivery-service.yml

cp -r ./src ${TARGET_DIRECTORY}/
cp ./README.md ${TARGET_DIRECTORY}/
cp ./pom.xml ${TARGET_DIRECTORY}/
cp ./.gitlab-ci.yml ${TARGET_DIRECTORY}/
cp ./.gitignore ${TARGET_DIRECTORY}/
cp ./mvn* ${TARGET_DIRECTORY}/
cp -r ./.mvn ${TARGET_DIRECTORY}/
cp ./settings.xml ${TARGET_DIRECTORY}/
cp -r ./terraform ${TARGET_DIRECTORY}/
cp -r apache-jmeter-5.2.1 ${TARGET_DIRECTORY}/
cp *.jmx ${TARGET_DIRECTORY}/

git checkout master
