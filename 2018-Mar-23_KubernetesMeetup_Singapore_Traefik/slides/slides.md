#  <!-- .element: style="margin-left:-5px"-->

![Traefik](./slides/images/traefik.logo.horizontal.bright.svg) <!-- .element: style="border:none;" -->

Singapore Kubernetes Meetup - 2018-Mar-23

<small>[Michael Bright](http://twitter.com/mjbright) - [Containous](http://twitter.com/containous)</small>

<!-- ![Traefik](./slides/images/containous.logo.png) <!-- .element: style="border:none;width=80;" --> 
<img src="slides/images/containous.logo.png" width="160" style="border:none;align:right" /> <!-- .element: style="border:none;align:right" -->

<!-- 
containous.io
<img src="slides/images/traefik.logo.bright.svg" width="40" />
<img src="slides/images/letsencrypt-logo.svg" width="40" />
<img src="slides/images/traefik.logo.bright.svg width="40" />
<img src="slides/images/traefik-logo.svg" width="40" />
<img src="slides/images/traefik.horizontal.logo.bright.svg" width="40" />
-->



---

<!-- .slide: data-background="./slides/images/grenoble-pont-st-laurent_dark.png" -->

## About me <!-- .element: style="margin-bottom:100px"-->

* Developer Advocate @containous creators of Traefik <!-- .element: style="margin-top: 10px; margin-left:-400px" class="fragment" data-fragment-index="1" -->
* British - living in Grenoble, in the French Alps <!-- .element: style="margin-top: 10px; margin-left:-400px" class="fragment" data-fragment-index="2" -->
* Docker Community Lead </h2> </li> <!-- .element: style="margin-top: 10px; margin-left:-400px" class="fragment" data-fragment-index="3" -->
* Python User Group Creator </h2> </li> <!-- .element: style="margin-top: 10px; margin-left:-400px" class="fragment" data-fragment-index="3" -->
* Kubernetes CKA </h2> </li> <!-- .element: style="margin-top: 10px; margin-left:-400px" class="fragment" data-fragment-index="4" -->
* Crazy about Open Source and Cloud Technologies </h2> </li> <!-- .element: style="margin-top: 10px; margin-left:-400px" class="fragment" data-fragment-index="5" -->


---


## Why another Reverse Proxy?

Note:


-

## Once, this is how configs were updated ... <!-- .element: style="margin-left:-50px"-->

1. Deploy a service to expose <!-- .element: style="margin-top: 100px; margin-left:-400px" class="fragment" data-fragment-index="1" -->
1. Configure the Reverse Proxy <!-- .element: style="margin-left:-400px" class="fragment" data-fragment-index="2" -->
1. Reload/Restart it. <!-- .element: style="margin-left:-400px" class="fragment" data-fragment-index="3" -->

<p style="margin-top:200px;font-size: 200%;color:white" class="fragment">**In a static way!!**</p>

![Old archi](./slides/images/old-archi.png) <!-- .element: style="float: right; width: 60%; margin-right:-200px; margin-top:-500px"-->

Note:

---

## One Reverse Proxy to rule them all

![Traefik](./slides/images/traefik.logo.bright.svg)

-

### Dynamic configuration for dynamic infrastruture

![New archi](./slides/images/newarchi-RP.png) <!-- .element: style="background-color:white; height:480px; margin-top:-20px; margin-bottom: -35px" class="fragment fade-out" data-fragment-index="1" -->
![New archi02](./slides/images/newarchi-RP-config.png) <!-- .element: style="background-color:white; height:480px; margin-top:-500px;" class="fragment" data-fragment-index="1" -->

<p style="margin-top:-40px;font-size: 125%;color:white" class="fragment">**How to configure dynamic infrastructures?**</p>


Note:

-

## Træfik in detail

* Dynamic Reverse Proxy <!-- .element: style=" margin-left:-300px"-->
* Written in GO (Single binary) <!-- .element: style="margin-left:-300px"-->
* Open Source <!-- .element: style="margin-left:-300px"-->
* Docker official image <!-- .element: style="margin-left:-300px"-->
* Multiple-Backends <!-- .element: style="margin-left:-300px"-->
* Hot config reloading <!-- .element: style="margin-left:-300px"-->
* Load-balancing: WRR, DRR <!-- .element: style="margin-left:-300px"-->
* Circuit breakers <!-- .element: style="margin-left:-300px"-->
* Let's Encrypt <!-- .element: style="margin-left:-300px"-->
* Websockets <!-- .element: style="margin-left:-300px"-->
* HTTP2 <!-- .element: style="margin-left:-300px"-->
* ... <!-- .element: style="margin-left:-300px"-->

![Features](./slides/images/wordcloud.png) <!-- .element: style="border:none; float: right; width: 50%; margin-top: -525px; margin-right:-150px"-->

Note:

* Reverse Proxy Dynamic  Written in GO (Single binary)  Open Source  Docker official image
* Multi-Backends : Docker, SwarmMode, Kub, Mesos/Marathon, Consul/ETCD2-3/ZK, DynamoDB, Eureka, RANCHER, Service Fabric (1.5)
* Hot reloading
* Load-balancing: Weighted Roud Robin, Dynamic RR
* Circuit breakers
* Supports Websockets
* HTTP2

* Desde los 2 anos que existe Træfik, intentamos proponer mas y mas fonctionalidades a nuestros utilizadores.
-

## Træfik versions

* Træfik v1.1 - camembert <!-- .element: style=" margin-left:-400px"-->
  * Cluster mode
  * Swarm mode
  * Generic mesos,
  * Basic Authentication (Global)
  * Session Affinity
* Træfik v1.2 - morbier  <!-- .element: style=" margin-top:20px; margin-left:-400px"-->
  * Rancher
  * Eureka
  * Prometheus
  * Healthcheks
  * Traefik bug

![Features](./slides/images/wordcloud.png) <!-- .element: style="border:none; float: right; width: 50%; margin-top: -550px; margin-right:-150px"-->

Note:

-

## Træfik versions

* Træfik v1.3 - raclette <!-- .element: style=" margin-left:-400px"-->
  * Basic Authentication (Frontend)
  * DynamoDB
  * DashBoard Filter
  * Rancher
* Træfik v1.4 - roquefort  <!-- .element: style=" margin-top:20px; margin-left:-400px"-->
  * GRPC
  * Auth Forward
  * Custom Error Pages
  * Custom Headers (Files)
  * DataDog & StatD
  * Proxy Protocol
  * Multi Arch...

![Features](./slides/images/wordcloud.png) <!-- .element: style="border:none; float: right; width: 50%; margin-top: -550px; margin-right:-150px"-->

-

## Træfik versions

* Træfik v1.6 - cancoillotte <!-- .element: style=" margin-left:-400px"-->
  * Rate Limiting
  * ETCD V3
  * Dynamic TLS certificates
  * Custom Headers (Docker & K8s)
  * Service Fabric
  * ACME HTTP-01 challenge

![Features](./slides/images/wordcloud.png) <!-- .element: style="border:none; float: right; width: 50%; margin-top: -350px; margin-right:-150px"-->
---

<!-- .slide: data-background="./slides/images/squirrel.jpg" -->

# DEMO  <!-- .element: style="float: right; width: 50%; margin-right:-200px; color: white"-->

Note:

---

## Let's talk about Security...

* Auto-generated unsigned certificate <!-- .element: style="margin-top: 40px; margin-left: -150px" class="fragment" data-fragment-index="1" -->
* Statically provided certificates <!-- .element: style="margin-left: -150px" class="fragment" data-fragment-index="2" -->
* Dynamically provided certificates <!-- .element: style="margin-left: -150px"  class="fragment" data-fragment-index="3" -->
  * File and KV store <!-- .element:  class="fragment" data-fragment-index="3" -->
* Let's Encrypt certificates <!-- .element: style="margin-left: -150px"  class="fragment" data-fragment-index="4" -->
  * ~~TLS~~<!-- .element: class="fragment" data-fragment-index="4" -->,DNS and HTTP (1.5) Challenges <!-- .element: class="fragment" data-fragment-index="4" -->
  * Dynamic <!-- .element: class="fragment" data-fragment-index="4" -->
  * Renewed automatically <!-- .element: class="fragment" data-fragment-index="4" -->
  * Stored in file or KV store <!-- .element: class="fragment" data-fragment-index="4" -->

<div style="float: right; width: 40%; margin-top: -450px; margin-right: -200px" data-fragment-index="1" class="fragment">
<div data-fragment-index="2" class="fragment fade-out" >
```toml
[entryPoints]
  [entryPoints.https]
  address = ":443"
    [entryPoints.https.tls]
```
</div>
</div>
<div style="float: right; width: 62%; margin-top: -400px; margin-right: -300px" data-fragment-index="2" class="fragment">
<div data-fragment-index="3" class="fragment fade-out" >
```toml
[entryPoints]
  [entryPoints.https]
  address = ":443"
    [entryPoints.https.tls]
      [[entryPoints.https.tls.certificates]]
       CertFile = "/snitest.com.cert"
       KeyFile = "/snitest.com.key"
```
</div>
</div>
<div style="float: right;  width: 50%; margin-top: -350px; margin-right: -200px" data-fragment-index="3" class="fragment">
<div data-fragment-index="4" class="fragment fade-out" >
```toml
[entryPoints]
  [entryPoints.https]
  address = ":443"
    [entryPoints.https.tls]

[file]

[[tlsConfiguration]]
entryPoints = ["https"]
  [tlsConfiguration.certificate]
     CertFile = "/snitest.com.cert"
     KeyFile = "/snitest.com.key"
```
</div>
</div>
<div style="float: right; width: 40%; margin-top: -250px; margin-right: -200px" data-fragment-index="4" class="fragment">
```toml
[entryPoints]
  [entryPoints.http]
  address = ":80"
  [entryPoints.https]
  address = ":443"
    [entryPoints.https.tls]

[acme]
email = "test@traefik.io"
storage = "/acme.json"
entryPoint = "https"
OnHostRule = true
  [acme.httpChallenge]
  entryPoint = "http"
```
</div>
![LE](./slides/images/letsencrypt-logo.svg) <!-- .element: style="display:none" class="fragment" data-fragment-index="4" -->

Note:

---

## Some key figures

<p style="font-size: 200%;">**Træfik**</p>
Version 1.5</BR>
+13800 &#9734;</BR>
+/- 40M Downloads</BR>
+1200 LGTM</BR>
+220 Contributors

<!--
<p style="font-size: 200%;" class="fragment" data-fragment-index="1">**Containous**</p>
<p class="fragment" data-fragment-index="1">Raised 1M€</p>
<p style="margin-top:-20px;" class="fragment" data-fragment-index="1">1 year old</p>
-->

Note:

### TRAEFIK

### Containous


-

# CONTAINOUS IS HIRING <!-- .element: style="margin-top: 0px; margin-bottom: 50px"-->

<p style="font-size: 140%;">`docker run -it containous/jobs`</p>

# WE HAVE CHEESE <!-- .element: style="margin-top: 50px"-->
![Features](./slides/images/traefik-morbier.png) <!-- .element: style="border:none;  float: left; width: 12%; margin-top: -100px;"-->
![Features](./slides/images/traefik-raclette.svg) <!-- .element: style="border:none; float: right; width: 20%;  margin-top: -100px; margin-right:-150px"-->
![Features](./slides/images/traefik-roquefort.svg) <!-- .element: style="border:none; width: 25%;"-->

Note:


-

# ... AND STICKERS

![Traefik](./slides/images/traefik.logo.bright.svg) <!-- .element: style="border:none" -->

---

# THANK YOU <!-- .element: style="margin-bottom: 100px;"-->

[traefik.io](http://traefik.io)
</BR>
[@traefikproxy](http://twitter.com/traefikproxy)
</BR>
[@mjbright](http://twitter.com/mjbright)
</BR>
Slides at
[2018-Mar-23_Kubernetes_Singapore](https://mjbright.github.io/Talks/2018-Mar-23_Kubernetes_Singapore)
</BR>
Derived from [slides](https://nmengin.github.io/madrid-20180117) from Nicolas Mengin of Containous
