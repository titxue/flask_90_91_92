```shell
docker build -t my_combined_app .
docker run -d -p 90:90 -p 92:92 my_combined_app
```