name: title_inversed_whiteText
layout: false
<!-- class: center, middle -->
class: center, middle, inverse

# Unikernels - The next big little thing ?
<!-- ![](images/unikernel.org.png) -->
<!-- ## Unikernels: The next big little thing ?
     #### C'est quoi les Unikernels ?
-->
<!-- ![](images/logo-tmux.svg) -->

###Snowcamp.io, Grenoble, France, Feb 2017
<img src="images/snowcamp.io.png" width=200 />

<!-- <h3> <img width=120 src="images/hpe_logo.svg" /> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; Mike Bright, <img src="images/Twitter_Bird.svg" width=24 /> @mjbright </h3> -->

<br/>
<br/>
<h3> Mike Bright, <img src="images/Twitter_Bird.svg" width=24 /> @mjbright </h3>



???
SpeakerNotes:

Introduce ourselves.

---
name: template
layout: false
class: center, left
exclude: true
## Template page
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left-column[
]

.right-column[
]

.left[.footnote[.vlightgray[ @mjbright ]]]

???
SpeakerNotes:

---
name: section_overview
layout: false
class: center, left
## Unikernels
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left-column[
Overview
]

.right-column[

- What are Unikernels?
    - Why do we need them?
    - Domains of application

- Unikernel implementations
    -  Clean-slate or legacy
    -  Tooling

-  Containers and Unikernels

-  Demo

-  Conclusions

]

.left[.footnote[.vlightgray[ @mjbright ]]]

---
name: section_why_talk
layout: false
class: left
## Why this talk?
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left[.footnote[.vlightgray[ @mjbright ]]]

--

Curiosity about
- What we can expect to see from Unikernels (and Docker ...)
- Who the players are

--

1990's: First unikernels - Exokernel and Nemesis (Univ. Cambr)

--

Jan 2014: ACM - <a href="https://queue.acm.org/detail.cfm?id=2566628">"Unikernels: Rise of the Virtual Library Operating System"</a>, Anil Madhavapeddy and David J. Scott

--

Mar .red[2015]: Linux.com - <a href="https://www.linux.com/news/7-unikernel-projects-take-docker-2015">7 Unikernel Projects to Take On Docker in 2015</a>, Lars Kurth

--

Nov 2015: Docker Con Europe demo <a href="https://blog.docker.com/2016/01/unikernel/">Cool Hack "Unikernels, Meet Docker!"</a>

--

Jan 2016: Docker Blog - <a href="https://blog.docker.com/2016/01/unikernel/">Unikernel Systems Joins Docker</a>

--

Oct 2016: The NewStack - <a href="http://thenewstack.io/utilizing-unikernels-within-internet-things/">Debunking Unikernels</a>,  Idit Levine Dell-EMC

--

In 2017 ?
- MirageOS 3 will be released
- DockerCon US and EU


???
SpeakerNotes:

7 Unikernel Projects to Take On Docker in 2015:
There are several up-and-coming open source projects to watch this year, including ClickOS, Clive, HaLVM, LING, MirageOS, Rump Kernels and OSv among others, with each of them placing emphasis on a different aspect of the unikernel approach.  For example, MirageOS and HaLVM take a clean-slate approach and focus on safety and security, ClickOS emphasizes speed, while OSv and Rump kernels aim for compatibility with legacy software. Such flexible approaches are not possible with existing monolithic operating systems, which have decades of assumptions and trade-offs baked into them.

Why this talk?

---
name: section_divider_what
layout: false
class: center, middle, inverse
exclude: false
## .cyan[What are Unikernels?] .lightgray["Library OS"]

---
name: section_history
layout: false
class: center, left
## .blue[What are Unikernels?] .lightgray["Library OS"]
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left[.footnote[.vlightgray[ @mjbright ]]]

Applications built with only the OS components they actually require,
e.g. TCP Stack, DNS, DHCP, NAT, F/w, Disk access.

<img src="images/comparison-vm-unikernel_stack.png" width=400 />

--

Single process(**&#42;**) applications (no threads, forking or multi-user) (**&#42;**)

Small size (few lines of code) and very fast to boot

Small attack surface (potentially secure)

High performance - no context switches!

No shell

???
Speaker Notes:
Contrast
  + Typical application stack
  + Unikernel application stack


---
name: section_why
layout: false
class: center, left
## .blue[Why are Unikernels needed?]
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left[.footnote[.vlightgray[ @mjbright ]]]

Think for a moment - What OS do you run?

On what hardware?

Modern OS provide amazing backwards compatibility and features

--

But an app uses a tiny fraction of those features
consuming resources, increasing the attack surface (linux kernel ~ 25 M LOC)

--

<!--
We've moving on from monolithic applications on general purpose OS
to virtualized or containerized (&micro;-)services on general purpose OS
-->

<img src="images/comparison.png" width=400 />

--

<br/>
Unikernels provide an alternative

But are they a panacea?

???
SpeakerNotes:

---
name: section_divider_families
layout: false
class: center, middle, inverse
exclude: false
## .cyan[The 2 families of Unikernels]

---
name: section_implem1
layout: false
class: left

## .blue[Unikernel Implementations] - 2 families
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

<!-- .left-column[ Unikernel Families ] .right-column[ ] -->

There are 2 main classes of Unikernels
<!-- [ ] -->

--
<!-- .right-column[ ] -->

## Clean-Slate

The *Clean-Slate* approach emphasizes safety and security.<br/>
Same language for application and "Library OS" components.

One example of this approach is **MirageOS** (written in Ocaml)
<!-- [ ] -->
--
<!-- .right-column[ ] -->

## Legacy
The *Legacy* approach favours backward compatibility of existing applications based on POSIX-compatibilities.

One example of this approach is **OSv** for which there are implementatons of Tomcat, Jetty, Cassandra, OpenJDK

We will see more Unikernel implementations later ...


???
Speaker Notes:

A number of unikernel open source projects are beginning to take off, each with its own unique focus and approach.
For example, MirageOS and HaLVM take a clean-slate approach and emphasize safety and security;
ClickOS stresses speed;
while OSv and Rump kernels aim for compatibility with existing applications. Both OSv and Rump kernels have made significant progress in porting existing applications: for example MySQL, PHP and Nginx have been ported to Rump Kernels, whereas many applications such as Tomcat, Jetty, Cassandra, OpenJDK and others have been ported to OSv. Meanwhile, MirageOS has demonstrated 1MB unikernels that serve DNS, Git and SSL web traffic with complete type safety down to the device drivers.


.left[.footnote[.vlightgray[ @mjbright ]]]
---
name: section_divider_families
layout: false
class: center, middle, inverse
exclude: false
## .cyan[Application domains for Unikernels]

---
name: section_where_needed
layout: false
class: left
<h2>.blue[In what domains might they be used?]</h2>
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left[.footnote[.vlightgray[ @mjbright ]]]

**Cloud Computing**

- Small (kB/MB) immutable entities with fast boot times (100's ms).

- Possibility of on-demand servers, &micro;-services

- Potentially greater security (< LOC)

--

**NFV (Network Functional Virtualization)**

- Cloud but stricter requirements on response times
- Decouple software from the hardware, decompose/chain functions
- Ericsson, NEC, Cisco are active in this domain

--

**IoT / Embedded / Network Switches **

- For low-resource, potentially secure elements (<u>baremetal</u> or &micro;-vmm ?)
- Build up the "*app*" instead of stripping down the "*OS*"

--

**HPC**

- Greater performance possible (but may be *hard work*)


???
SpeakerNotes:

---
name: section_where_needed_nfv1
layout: false
class: left
<h2>.blue[In what domains might they be used? - NFV/SDN]</h2>

*Nano-services* boot up in 10-20 msec on demand and are removed when the request completes.

<table>
<tbody>
<tr>
<td>
<img src="images/nfv_unikernels.png" width=300 />
</td>
<td>
Presented by Ericsson Research, Jan 2016 at SCALE 14x.
<br/>
<br/>
<a href="https://www.youtube.com/watch?v=3jGClCBXuTg" /> <img src="images/youtube.jpg" width=30  />Unikernels meet NFV</a>
<br/>
<br/>
<a href="https://www.ericsson.com/research-blog/sdn/unikernels-meet-nfv/" />Ericsson Research Blog</a>
<br/>
<br/>
<a href="http://unikernel.org/blog/2016/unikernel-nfv-platform">Unikernels.org Blog</a>
</td>
</tr>
</tbody>
</table>
---
name: section_where_needed_nfv2
layout: false
class: left
<h2>.blue[IETF draft on Containers for NFV] .red[expired] Jan 2017</h2>

Taken from: <a href="https://www.ietf.org/archive/id/draft-natarajan-nfvrg-containers-for-nfv-03.txt"> draft-natarajan-nfvrg-containers-for-nfv-03.txt </a>

4.2. Instantiation Times

Measurement of time to boot image, up to the 1st RST packet (to a SYN flood).

                |--------------------------------------+
                | Technology Type       | Time (msecs) |
                |--------------------------------------+
                | standardvm.xen        |     6500     |
                | standardvm.kvm        |     2988     |
                | Container             |     1711     |
                | tinyx.kvm             |     1081     |
                | tinyx.xen             |     431      |
                | unikernel.osv.kvm     |     330      |
                | unikernels.minios.xen |**   31     **|
                +-----------------------+--------------+

Note:
   - These unikernels include just one application - iperf.
   - Tinyx is "Tinyfied Linux" running 4.4.1 kernel - busybox+sshd+iperf
   - Standard VM is Debian running 4.4.1 kernel + iperf
   - Docker container including iperf

---
name: section_where_needed_nfv2
layout: false
class: left
<h2>.blue[IETF draft on Containers for NFV] .red[expired] Jan 2017</h2>

4.3. Throughput

   TCP/IP throughput was measured using iperf from guest to host (to avoid physical medium limitations)

                |---------------------------------------------------------------+
                |     Technology        | Throughput (Gb/s) | Throughput (Gb/s) |
                |       Type            |        Tx         |        Rx         |
                |-----------------------+-------------------+-------------------+
                | standardvm.xen        |        23.1       |        24.5       |
                | standardvm.kvm        |        20.1       |        38.9       |
                | Container             |        45.1       |        43.8       |
                | tinyx.kvm             |        21.5       |        37.9       |
                | tinyx.xen             |        28.6       |        24.9       |
                | unikernel.osv.kvm     |**      47.9     **|**      47.7     **|
                | unikernels.minios.xen |**      49.5     **|        32.6       |
                +-----------------------+-------------------+-------------------+

Note:
- Throughput depends not just on guest efficiency
- Xen is optimized for Tx but not Rx (similar to ClickOS experience)

---
name: section_where_needed_nfv2
layout: false
class: left
<h2>.blue[IETF draft on Containers for NFV] .red[expired] Jan 2017</h2>

4.4. RTT

   Average round-trip time (RTT) measured from an external server using a ping flood.

                +-----------------------+--------------+
                | Technology Type       | Time (msecs) |
                |--------------------------------------+
                | standardvm.xen        |      34      |
                | standardvm.kvm        |      18      |
                | Container             |**     4    **|
                | tinyx.kvm             |      19      |
                | tinyx.xen             |      15      |
                | unikernel.osv.kvm     |       9      |
                | unikernels.minios.xen |**     5    **|
                +-----------------------+--------------+


---
name: section_where_needed_nfv2
layout: false
class: left
<h2>.blue[IETF draft on Containers for NFV] .red[expired] Jan 2017</h2>

4.5. Image Size

   We measure image size using the standard "ls" tool.

                +-----------------------+------------+
                | Technology Type       | Size (MBs) |
                |------------------------------------+
                | standardvm.xen        |    913     |
                | standardvm.kvm        |    913     |
                | Container             |     61     |
                | tinyx.kvm             |      3.5   |
                | tinyx.xen             |      3.7   |
                | unikernel.osv.kvm     |     12     |
                | unikernels.minios.xen |**    2   **|
                +-----------------------+------------+

---
name: section_where_needed_nfv2
layout: false
class: left
<h2>.blue[IETF draft on Containers for NFV] .red[expired] Jan 2017</h2>

4.6. Memory Usage

   "top" and "xl" (on Xen) used to measure memory usage:

                +-----------------------+-------------+
                | Technology Type       | Usage (MBs) |
                |-------------------------------------+
                | standardvm.xen        |     112     |
                | standardvm.kvm        |     82      |
                | Container             |**   3.8   **|
                | tinyx.kvm             |     30      |
                | tinyx.xen             |     31      |
                | unikernel.osv.kvm     |     52      |
                | unikernels.minios.xen |     8       |
                +-----------------------+-------------+


Note:
- OSv pre-allocates memory, e.g for buffers
- Best result is Docker as it has no OS function

---
name: section_where_needed_nfv2
layout: false
class: left
<h2>.blue[IETF draft on Containers for NFV] .red[expired] Jan 2017</h2>

So what conclusions can we draw in the case of NFV?

--

Well it depends of course !!

--

It depends upon your applications', your organizations' criteria:
-  Service agility/elasticity: spin up/down times
-  Memory consumption
-  Security/Isolation
-  Management frameworks
-  Compatibility with applications

--

These are still early days for Unikernels for Cloud Computing.

Hybrid approaches may be appropriate.


---
name: section_divider_families
layout: false
class: center, middle, inverse
exclude: false
## .cyan[Unikernel Implementations    ] .lightgray[... in more detail]

---
name: section_implem1
layout: false
class: left

## .blue[Unikernel Implementations] - 2 families
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

<!-- .left-column[ Unikernel Families ] .right-column[ ] -->

There are 2 main classes of Unikernels
<!-- [ ] -->

--
<!-- .right-column[ ] -->

The *Clean-Slate* approach emphasizes safety and security.<br/>
Same language for application and Library OS components.
- MirageOS (Ocaml)
- HalVM (Haskell)
- LING  (Erlang)
<!-- [ ] -->
--
<!-- .right-column[ ] -->

The *Legacy* approach favours backward compatibility of existing applications based on POSIX-compatibilities.

Many applications have been ported
- OSv (Tomcat, Jetty, Cassandra, OpenJDK, ...)
- Rumprun (MySQL, PHP, Nginx)
- Runtimejs
- Clive (Go)
<!-- ] -->

???
Speaker Notes:

A number of unikernel open source projects are beginning to take off, each with its own unique focus and approach.
For example, MirageOS and HaLVM take a clean-slate approach and emphasize safety and security;
ClickOS stresses speed;
while OSv and Rump kernels aim for compatibility with existing applications. Both OSv and Rump kernels have made significant progress in porting existing applications: for example MySQL, PHP and Nginx have been ported to Rump Kernels, whereas many applications such as Tomcat, Jetty, Cassandra, OpenJDK and others have been ported to OSv. Meanwhile, MirageOS has demonstrated 1MB unikernels that serve DNS, Git and SSL web traffic with complete type safety down to the device drivers.


.left[.footnote[.vlightgray[ @mjbright ]]]

---
name: section_implem2
layout: false
class: center, left
## .blue[Unikernel Implementations]

.left[.footnote[.vlightgray[ @mjbright ]]]
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

Technology | Description |
-|:-|:-|-
**ClickOS** <a href="http://cnp.neclab.eu"> cnp.neclab.eu </a> | For embedded network h/w.<br/>~5MB images, boots <20ms, 45 &mu;s delay, 100 VMs => 10Gbps 
 | | |
Clive<br/><a href="http://lsub.org/ls/clive.html"> lsub.org</a> | Written in Go.  For distributed and cloud.
 | | |
**Drawbridge**<br/><a href="https://www.microsoft.com/en-us/research/project/drawbridge/"> MS </a> | Research prototype. Picoprocess/container with minimal kernel API surface, and Windows library OS.
 | | |
Graphene <a href="http://graphene.cs.stonybrook.edu/"> graphene</a> | Securing "*multi-process*" legacy apps - adds IPC.
 | | |
HaLVM <a href="galois.com"> galois.com </a> | Port of GHC (Glasgow Haskell Compiler) suite.<br/> Write apps in Haskell to run on Xen.
 | | |
IncludeOS <a href="http://www.includeos.org/"> includeos.org </a> | Research project for C++ code on virtual hardware.
 | | |
LING <a href="http://erlangonxen.org/"> erlangonxen.org </a> | Erlang/OTP runs on Xen.
 | | |
MirageOS <a href="https://mirage.io/"> mirage.io </a> | Clean-slate library OS for secure, high-perf network apps.  More than 100 MirageOS libraries plus OCaml ecosystem.
 | | |
OSv <a href="http://osv.io/"> osv.io </a> Cloudius | Run Linux binaries (w. limitations), supports C/C++, JVM, Ruby, Node.js
 | | |
Rumprun <a href="http://rumpkernel.org/"> rumpkernel.org </a> | FreeBSD - Runs POSIX s/w on BM or VM (Xen).
 | | |
Runtime.js <a href="http://runtimejs.org/"> runtimejs.org </a> | For cloud, JavaScript V8, lightweight immutable VM image runs on Qemu/KVM.

---
name: section_mirageos
layout: false
class: center, left
exclude: false
## .blue[Unikernel implementations - MirageOS]/Ocaml
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left-column[
Clean-Slate
<br/>
<br/>
<img src="images/mirageos.png" width=80 />
<br/>
<a href="https://mirage.io/" >  https://mirage.io/ </a>

OCaml-Based
<img src="images/ocaml.jpg" width=80 />
]

.right-column[

MirageOS "Library OS" components are written in <a href="https://en.wikipedia.org/wiki/OCaml"> Ocaml </a>.

ML-derived languages are best known for their static type systems and type-inferring compilers.

OCaml unifies functional, imperative, and object-oriented programming under an ML-like type system.

OCaml has extensive libraries available

(Unison sync utility)
]

---
name: section_mirageos
layout: false
class: center, left
exclude: false
## .blue[Unikernel implementations - MirageOS]-2
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left[.footnote[.vlightgray[ @mjbright ]]]
.left-column[
Clean-Slate
<br/>
<br/>
<img src="images/mirageos.png" width=80 />
<br/>
<a href="https://mirage.io/" >  https://mirage.io/ </a>

OCaml-Based
<img src="images/ocaml.jpg" width=80 />
]

.right-column[
MirageOS Unikernels are based on the Mirage-OS Unikernel base (OS library).

The mirage tool is used to build Unikernels for various backends:
- Xen Hypervisor (PV)
- Unix (Linux or OS/X binaries)
- Browser (via Ocaml->JS compiler !!)
- MirageOS 3 (/Solo5) will support kvm (/ukvm)
- Even an experimental BM backend for Raspberry Pi
]

--
.right-column[
Building applications for unix or xen
```
mirage configure -t unix
make
./mir-console
```

```
mirage configure -t xen
make
****xen create ./mir-console.xen
```

]

???
Speaker Notes:

See sources:
    /home/mjb/src/git/Unikernels/mirage-skeleton/hello
ean Grove - From Unikernels to Databases to UIs: Truly full-stack apps in OCaml - Curry On
Sean Grove - From Unikernels to Databases to UIs: Truly full-stack apps in OCaml - Curry On
      https://www.youtube.com/watch?v=QWfHrbSqnB0

---
name: section_mirageos
layout: false
class: center, left
exclude: false
## .blue[Unikernel implementations - MirageOS - Use Cases]
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left-column[
Clean-Slate
<br/>
<br/>
<img src="images/mirageos.png" width=80 />
<br/>
<a href="https://mirage.io/" >  https://mirage.io/ </a>
]

.right-column[
- <div> BNC Pinata: http://ownme.ipredator.se/ <img src="images/pinata.svg" width=100 /> </div>

- Networking applications
    - e.g. CyberChaff  "false network hosts"

- PayGarden, Sean Grove
  <br/><a href="https://www.youtube.com/watch?v=i9eu9e7gN0Q" /> <img src="images/youtube.jpg" width=30  /> "Baby steps to unikernels in production" </a>
    - Too painful to create/configure AMI images on AWS
    - Solo5 allows to create KVM images deployable on GCE

]

.left[.footnote[.vlightgray[ @mjbright ]]]

???
Speaker Notes:

For me:
<a href="https://eventil.com/users/sgrove" /> sgrove </a>
<a href="https://github.com/ocamllabs/icfp2016-blog/blob/master/CUFP/baby-steps-to-unikernels-in-pr.md" /> Blog notes </a>


---
name: section_tools
layout: false
class: center, left
## .blue[Unikernel Tooling]
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->


.left[.footnote[.vlightgray[ @mjbright ]]]

.right-column[
- <a href="https://github.com/emc-advanced-dev/unik"> Unik [EMC-Dell]</a>: "*The Unikernel Compilation and Deployment Platform*" (+ image hub)
    - rumprun: Python, Node.js and Go
    - OSv: Java, Node.js, C and C++
    - IncludeOS: C++
    - MirageOS: OCaml


- <a href="https://developer.ibm.com/open/openprojects/solo5-unikernel/"> Solo5 [IBM] </a>: An alternative unikernel-base for MirageOS 
    - Provides qemu/KVM support for MirageOS
    - Is currently being integrated into MirageOS 3 beta

- ukvm [IBM]: An alternative VM Monitor
    - a "*library hypervisor*"

- <a href="http://osv.io/capstan/"> capstan </a>: OSv build tool (+ image hub)
]

???
SpeakerNotes:

---
name: section_tools
layout: false
class: center, left
## .blue[Unikernel Tooling]
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

<a href="https://github.com/mirage/jitsu" > MirageOS *jitsu* </a> : "Just-In-Time Summoning of Unikernels"

A DNS server that starts unikernels on demand.

![](images/jitsu.jpg)

Tested with MirageOS and Rumprun unikernels.

<a href="https://github.com/mirage/jitsu"> https://github.com/mirage/jitsu </a>

.left[.footnote[.vlightgray[ @mjbright ]]]

---
name: section_containers
layout: false
class: left
## .blue[Unikernels and Containers] : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  .magenta[My guess ...]
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left[.footnote[.vlightgray[ @mjbright ]]]

So what about Containers? ... and why did Docker buy Unikernel Systems?

<!-- <a href="https://www.infoq.com/interviews/chaudhry-unikernels-docker" /> Info.Q / Amir, Aug 2016 </a> -->

--

- Unikernel Systems are involved in MirageOS/Xen

- Unikernels already used as specific functions in  "*Docker for Mac*" <!-- - VPNKit, DataKit -->

--

Guessing:
- **No-brainer**: Provide build/ship/run tools for Unikernels
  - **build**:
     - tools to facilitate building Unikernels
     - *test*: run Unikernels in containers to faciltate testing
          https://github.com/mato/docker-unikernel-runner
  - **ship**: Docker registry extended to provide Unikernel images
  - **run**: Docker Swarm orchestrates **tasks** incl. Unikernels

--

- Secure Container deployments through hybrid solutions
    - Secure front-ends made of unikernels
        - e.g. for OCaml MediaWiki (http2https, tlstunnel, ...)
    - Containers for backend

- Surprises? ...

.left[.footnote[.vlightgray[ @mjbright ]]]

???
Speaker Notes:

```
So yes, it's right. I'm still working on Unikernels. I'm very happy today. So one of the things that's important to think about is that essentially where do Unikernels and containers sit? We see them as sitting on the same continuum and that continuum is one of specialization, some degree of isolation. So containers is something you can use to help package up your application and share a kernel across the containers. And that makes it easy for me to develop essentially a great application and deploy it. But you can think about the progression from that, from a full traditional OS to containerized applications and what comes next, what is further along on that spectrum of specialization. And that's where Unikernels sit. 

So it's like an extreme form of specialization which is something we have already talked about for many years. So you essentially take the components that you need, your application, the components you need, compile that down into an image that you can deploy. So given these things are all on the same continuum, it just made sense that the same tooling should work for all of them. So that's why it makes sense for Unikernel Systems and Docker, Unikernels themselves and containers to work together.
```


---
name: section_subsecn
layout: false
class: center, middle, inverse
## Demo

  <img src=images/demo.jpg width=200 /><br/>

DeferPanic - Unikernel IaaS - https://deferpanic.com/

runtime.js - Node.js Unikernel - https://github.com/runtimejs/example-web-server

4 unikernel demos - Look Ma, no OS! - https://github.com/technolo-g/lookma

???
SpeakerNotes:
#### - <a href="https://github.com/xxx/xxx"/> xxx </a> [xx yy]

---
name: section_conclusion
layout: false
class: left
## .blue[Conclusions] <img src="images/wildwest.jpg" width=150 />
<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->


- Much work needs to be done
  - to make them easy to build, deploy, .red[*debug*]
  - We will see easier to use solutions
      - Whatever Docker plan to surprise us with
      - Unik will facilitate building, deploying multiple technologies
      - Solo5 will allow mixing of technologies

- Several disparate technologies today
  - but some efforts to synergize

- Unikernels are an interesting complimentary technology to containers
  - We can expect hybrid solutions

- 2017 will be an interesting year for Unikernels

.left[.footnote[.vlightgray[ @mjbright ]]]

???
SpeakerNotes:

---
layout: false
class: center, left

## Resources

|   | |    |
|---|---|----|
| <img src="images/scoopit.png" width=60 /> | Scoop.it<br/>Unikernels| <a href="http://www.scoop.it/t/unikernels"> www.scoop.it/t/unikernels </a> |
| <img src="images/youtube.jpg" width=60 /> | Youtube<br/>Playlist| <a href="https://www.youtube.com/playlist?list=PLCDlZzVd_jn8heLw_Q10gOaEflLZKyf81"> youtube.com/.../unikernels </a> |
| <img src="images/wikipedia.jpg" width=60 /> | Wikipedia| <a href="https://en.wikipedia.org/wiki/Unikernel"> en.wikipedia.org/wiki/Unikernel </a> |
| <img src="images/unikernel.org.png" width=60 /> | unikernels.org| <a href="https://unikernels.org"> unikernels.org </a> |
| <img src="images/mirageos.png" width=60 /> | mirageos.io | <a href="https://mirageos.io"> mirageos.io </a> <br/> <a href="https://mirage.io/docs/papers"> mirage.io/docs/papers </a> |
| <img src="images/book_oreillyfree_unikernel.gif" width=60 /> | OReilly<br/>"Unikernels" | <a href="http://unikernel.org/blog/2016/unikernel-ebook"> Free download </a> |
| <img src="images/Twitter_Bird.svg" width=40 /> | @unikernel| <a href="https://twitter.com/unikernel"> @unikernel </a> |
| <img src="images/github.png" width=40 /> | github.com/ocamllabs | <a href="https://github.com/ocamllabs"> ocamllabs </a> |
| <img src="images/github.png" width=40 /> | github.com/mirage | <a href="https://github.com/mirage"> MirageOS </a> |


.left[.footnote[.vlightgray[ @mjbright ]]]

---
name: section_qa
layout: false
class: center, middle, inverse
## Thank you
## .blue[Q&A]

???
SpeakerNotes:


---
name: section_backup
layout: false
class: center, middle, inverse
exclude:true

*Viktor Farcic, senior consultant at CloudBees*

...  One of the most exciting areas that will become prominent in 2017 will be unikernels.

While the majority of the industry is still trying to wrap their heads around containers, we will start seeing unikernels taking over the stage.

They will, in a way, unify functionalities provided by VMs and containers.

http://sdtimes.com/whats-horizon-2017/

???
SpeakerNotes:

'''
With the continued rise to domination of the container model led by Docker adoption, we think it's worth calling attention to the continued rapid development in the Unikernel space. Unikernels are single-purpose library operating systems that can be compiled down from high-level languages to run directly on the hypervisors used by commodity cloud platforms. They promise a number of advantages over containers, not least their superfast startup time and very small attack surface area. Many are still at the research-project phase—Drawbridge from Microsoft Research, MirageOS and HaLVM amongst others—but we think the ideas are very interesting and combine nicely with the technique of serverless architecture.
'''

---
name: section_history
layout: false
class: center, left
exclude:true
## .blue[What are Unikernels - how did we get here?]
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left-column[
"Library OSes"
<img src="images/comparison.png" width=160/>
]

.right-column[
<img src="images/comparison-vm-unikernel_stack.png" width=400 />

A Unikernel is built by the compiler linking **only** the OS components needed by the application.

The OS becomes a "**Library OS**"

Unlike *"normal"* applications which sit atop a generic monolithic Linux kernel (or even &mu;-kernel) which has many unneeded features, e.g. floppy driver.

]


---
name: section_backup
exclude: true

At October's "*Docker Distributed Summit*", Docker even talked of minimizing the Hypervisor also.

<a href="https://blog.docker.com/2016/10/docker-distributed-system-summit-videos-podcast-episodes/" /> <img src="images/youtube.jpg" width=30  /> "Unikernels The rise of the library hypervisor in MirageOS" </a>

(<a href="https://queue.acm.org/detail.cfm?id=2566628/" > ACM: Unikernels: Rise of the Virtual Library Operating System </a>, Jan 2014)

---
name: section_backup
exclude: true

.right-column[
From the NFV Containers White Paper (2.3. Unikernels):

```
   Unikernels are essentially single-application virtual machines
   based on minimalistic OSes. Such minimalistic OSes have minimum
   overhead and are typically single-address space (so no user/kernel
   space divide and no expensive system calls) and have a
   co-operative scheduler (so reducing context switch costs).

   Examples of such minimalistic OSes are MiniOS [MINIOS] which
   runs on Xen and OSv [OSV] which runs on KVM, Xen and VMWare.
```
<a href="https://datatracker.ietf.org/doc/draft-natarajan-nfvrg-containers-for-nfv/?include_text=1" > https://datatracker.ietf.org/doc/draft-natarajan-nfvrg-containers-for-nfv/?include_text=1 </a>
]

.left[.footnote[.vlightgray[ @mjbright ]]]

???
Why unikernels for industry?

- Resource usage
- Security
- Improved infrastructure flows
- Advanced dev tooling
- Simplicity

---
name: section_families
layout: false
class: center, left
exclude: true
## .blue[Unikernel implementations]
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

Technology | Vendor | Description |
-|:-:|:-:|-
ClickOS | NEC | Unikernel for embedded network h/w.  ~ 5MB images, boots < 20msec, 45 usec delay, 100 VMs => 10Gbps 
Clive | | designed to work in distributed and cloud computing environments, written in the Go programming language.
Drawbridge | MS | Research prototype, little information available. a new form of virtualization for application sandboxing. Process-based picoprocess/container with minimal kernel API surface, and a Windows library OS to run in picoprocess
Graphene | | Linux-compatible library operating system that focuses on securing multi-process, server-type or shell-type legacy applications. Graphene spans a multi-process application across multiple picoprocesses, with inter-process abstractions (e.g., signals, message queues, semaphores) coordinated over simple pipe-like streams. For applications with multiple security principles, Graphene can dynamically sandbox an insecure picoprocess.
HaLVM | | Port of Glasgow Haskell Compiler tool suite that enables developers to write high-level, lightweight VMs that can run directly on the Xen hypervisor.
HermitCore | | Novel unikernel targeting a scalable and predictable runtime behavior for HPC and cloud environments. HermitCore supports C, C++, Fortran, Go, Pthreads, OpenMP and iRCCE[19] as message passing library. It is a research project that extends the multi-kernel approach and combines it with unikernel features. HermitCore can directly run on the KVM hypervisor but also on natively on x86_64 architecture.
IncludeOS | | C++, IncludeOS is a minimal, service oriented, open source, includable library operating system for cloud services. Currently a research project for running C++ code on virtual hardware.
LING | | Unikernel based on the Erlang/OTP and understands .beam files. Developers can create code in Erlang and deploy it as LING unikernels. LING removes the majority of vector files, uses only three external libraries and no OpenSSL.
MirageOS | | Clean-slate library OS for secure, high-performance network applications across a variety of cloud computing and mobile platforms. There are now more than 100 MirageOS libraries[22] and a growing number of compatible libraries within the wider OCaml ecosystem.
OSv | Cloudius Systems | New OS designed specifically for cloud VMs. Able to boot in less than a second, OSv is designed from the ground up to execute a single application on top of any hypervisor, resulting in superior performance, speed and effortless management. Can run unmodified Linux executables (with some limitations), and support for C, C++, JVM, Ruby and Node.js application stacks is available.
Rumprun | FreeBSD? | Software stack which enables running existing unmodified POSIX software as a unikernel. Rumprun supports multiple platforms, from bare ARM hardware to hypervisors such as Xen. It is based on rump kernels which provide free, portable, componentized, kernel quality drivers such as file systems, POSIX system call handlers, PCI device drivers, a SCSI protocol stack, virtio and a TCP/IP stack.[24]
Runtime.js | | Runtime.js is an open-source library operating system for the cloud that runs on JavaScript VM, could be bundled up with an application and deployed as a lightweight and immutable VM image. Runtime.js is built on the V8 Javascript engine and currently supports QEMU/KVM hypervisor.

???
Speaker Notes:
ClickOS | a high-performance, virtualized software middle box platform based on open source virtualization. Early performance analysis shows that ClickOS VMs are small (5MB), boot quickly (as little as 20 milliseconds), add little delay (45 microseconds) and more than 100 can be concurrently run while saturating a 10Gb pipe on an inexpensive commodity server.
Clive | Clive[15] is an operating system designed to work in distributed and cloud computing environments, written in the Go programming language.
Drawbridge | Drawbridge is a research prototype of a new form of virtualization for application sandboxing. Drawbridge combines two core technologies: a picoprocess, which is a process-based isolation container with a minimal kernel API surface, and a library OS, which is a version of Windows enlightened to run efficiently within a picoprocess.[16]
Graphene | Graphene[5][17] is a Linux-compatible library operating system that focuses on securing multi-process, server-type or shell-type legacy applications. Graphene spans a multi-process application across multiple picoprocesses, with inter-process abstractions (e.g., signals, message queues, semaphores) coordinated over simple pipe-like streams. For applications with multiple security principles, Graphene can dynamically sandbox an insecure picoprocess.
HaLVM | The Haskell Lightweight Virtual Machine (HaLVM) is a port of the Glasgow Haskell Compiler tool suite that enables developers to write high-level, lightweight VMs that can run directly on the Xen hypervisor.
HermitCore | HermitCore[18] is a novel unikernel targeting a scalable and predictable runtime behavior for HPC and cloud environments. HermitCore supports C, C++, Fortran, Go, Pthreads, OpenMP and iRCCE[19] as message passing library. It is a research project that extends the multi-kernel approach and combines it with unikernel features. HermitCore can directly run on the KVM hypervisor but also on natively on x86_64 architecture.
IncludeOS | IncludeOS is a minimal, service oriented, open source, includable library operating system for cloud services. Currently a research project for running C++ code on virtual hardware.
LING | LING[20] is a unikernel based on the Erlang/OTP and understands .beam files. Developers can create code in Erlang and deploy it as LING unikernels. LING removes the majority of vector files, uses only three external libraries and no OpenSSL.
MirageOS | MirageOS[21] is a clean-slate library operating system that constructs unikernels for secure, high-performance network applications across a variety of cloud computing and mobile platforms. There are now more than 100 MirageOS libraries[22] and a growing number of compatible libraries within the wider OCaml ecosystem.
OSv | OSv is a new OS designed specifically for cloud VMs from Cloudius Systems.[23] Able to boot in less than a second, OSv is designed from the ground up to execute a single application on top of any hypervisor, resulting in superior performance, speed and effortless management. Can run unmodified Linux executables (with some limitations), and support for C, C++, JVM, Ruby and Node.js application stacks is available.
Rumprun | Rumprun is a software stack which enables running existing unmodified POSIX software as a unikernel. Rumprun supports multiple platforms, from bare ARM hardware to hypervisors such as Xen. It is based on rump kernels which provide free, portable, componentized, kernel quality drivers such as file systems, POSIX system call handlers, PCI device drivers, a SCSI protocol stack, virtio and a TCP/IP stack.[24]
Runtime.js | Runtime.js is an open-source library operating system for the cloud that runs on JavaScript VM, could be bundled up with an application and deployed as a lightweight and immutable VM image. Runtime.js is built on the V8 Javascript engine and currently supports QEMU/KVM hypervisor.

---
name: section_halvm
layout: false
class: center, left
exclude:true
## .blue[Unikernel implementations - HalVM]
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left-column[
Clean-Slate
<br/>
<img src="images/halvm.jpg" width=80 />
<br/>
<img src="images/haskell-logo.jpg" width=80 />
]

.right-column[
HalVM - The Haskell Lightweight Virtual Machine: GHC running on Xen
- https://github.com/GaloisInc/HaLVM

- <a href="https://github.com/GaloisInc/HaLVM/tree/halvm3"> HalVM3 </a> is reconsidering it's Unikernel base
    http://uhsure.com/halvm3.html
    - Use rumpkernel (NetBSD base)
    - Shift to Solo5?

]

.left[.footnote[.vlightgray[ @mjbright ]]]

---
name: section_osv
layout: false
class: center, left
exclude:true
## .blue[Unikernel implementations - OSv]
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left-column[
POSIX-based
<img src="images/osv.jpg" width=80 />
<a href="http://osv.io/" > http://osv.io </a>
<a href="http://blog.osv.io/" > http://blog.osv.io </a>
]

.right-column[
OSv - Capable of running POSIX binaries
- can run JVM
- Cassandra: https://www.penninkhof.com/2015/05/minimalist-cassandra-vm-using-osv/
- Used in Mikelangelo (EU Project)
The MIKELANGELO project aims to bring High Performance Computing (HPC) to the cloud. HPC traditionally involves bleeding edge technologies, including lots of CPU cores, Infiniband interconnects between nodes, MPI libraries for message passing, and, surprise—NFS, a very old timer of the UNIX universe.

- Building OSv Images Using Docker: http://blog.osv.io/blog/blog/2015/04/27/docker/

- SDI: ODL + OSv: http://blog.osv.io/blog/blog/2015/03/31/sdi/


]

.left[.footnote[.vlightgray[ @mjbright ]]]

