\rm -rf main
\rm -rf handler.zip
GOOS=linux go build -o main
zip handler.zip ./main
aws lambda update-function-code --function-name *SKILL NAME* --zip-file fileb://handler.zip