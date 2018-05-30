# docker-robot


### Build and start

``` bash
$ docker-compose up -d --build
```

### Run web tests

To see tests running vnc to http://localhost:5900 (password = secret)

``` bash
$ docker-compose exec robot_tests_web ./wait-for-it.sh -t 60 standalone_chrome:4444 -- robot -d reports tests/
```

### Run api tests

``` bash
$ docker-compose exec robot_tests_api robot -d reports tests/
```

### Take it all down

``` bash
$ docker-compose down
```
