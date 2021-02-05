# docker-xmr-stak

Docker  for xmr-stak-rx from https://github.com/fireice-uk/xmr-stak/tree/xmr-stak-rx
Mine XMR over TLS

## Build
```
docker build -t docker-xmr-stak-rx .
```

## Run
```
docker run -idt docker-xmr-stak-rx
```

takes 30 sec.

Accepts ENV variables:
- POOL_URL= Pool server, should support TLS. (e.g. "-O pool.supportxmr.com:443" or "-o pool.supportxmr.com:5555")
- POOL_USER= wallet address
- POOL_PW= Password (only needed to identify the instance)

Example with variables:

```
docker run -idt -e POOL_URL="-o pool.supportxmr.com:5555" docker-xmr-stak-rx
```
## Monitor
```
docker attach <container-id>
```
  press keys: 
-    h -> Hash performance
-    r -> Report
-    e -> Errors
  
