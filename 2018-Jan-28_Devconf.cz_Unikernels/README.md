name: title_inversed_whiteText
layout: false
class: inverse, center, middle

<!-- ![](images/unikernel.org.png) -->
#Unikernels in Action
### 28 January 2018, DevConf.cz, Brno

<table>
<tr> <td width="70%">
<b>Michael Bright, Developer Evangelist @</b>
</td> <td width="20%">
<img src="./images/containous.logo.png" width=200 />
</td> <td width="20%">
</td> </tr>
</table>

<br/> <br/>

<table>
<tr> <td width="70%">
</td> <td width="33%">
</td> </tr>
<tr> <td width="33%">
<img src="./images/devconf.cz.jpg" width=100 />
</td> <td width="33%">
</td> <td width="33%">
<img src="./images/IMG_Brno_CZ_20180127_Enhanced.jpg" width=200 />
</td> </tr>
</table>
<br/> <br/>

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>

???
SpeakerNotes:

Introduce ourselves.

Why this presentation?

---
name: title_inversed_whiteText
layout: false
class: left, middle

## Agenda

- What are Unikernels ?
  - What they are not.
  - Advantages / Characteristics
  - Application domains 
  - Implementations & Tools

- IncludeOS .blue[demo]

<!--
- What I predicted last year ... mea culpa
  - didn't really happen
  - but lot's happened
-->

- What can we expect to see in 2018?

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>

???
SpeakerNotes:

Introduce ourselves.

Why this presentation?

---

name: title_inversed_whiteText
layout: false
class: inverse, center, middle

<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

## What are Unikernels?

## “Unikernels are specialized, single-address-space machine images constructed by using library operating systems”

### “What are Unikernels”, unikernel.org

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>

--
<br/> <br/> <br/>

## “VMs aren't heavy, OSes are"

### Alfred Bratterud, #IncludeOS

---
name: section_overview
layout: false
class: center, left

## What are Unikernels? - They are "Library OS"

<table style="width:100%; solid black; ">
  <tr>  <th>  </th> <th></th> </tr>
<tbody text-align="true">
<tr>
    <td style="width:100%; border: 1px solid black; background-color: #f1f1c1;">
Specialized applications built with only the "OS" components they need.
<hr/>
A Unikernel image runs
directly as a VM
<br/>
<br/>(or on bare metal?)
<hr/>

"OS" components such as
Network stack,
File-system,
Device drivers
are optional
<hr/>

Typically, there is no filesystem.

<hr/>
Configuration is stored in the unikernel application binary

    </td>  <td> </td>
                               <td> <img src="images/unikernel_compare.png" width=500 /> </td>
</tr>
</tbody>
</table>

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
---
name: section_overview
layout: false
class: left
exclude: false

## Unikernels: What they are **not** ... General Purpose

OS kernels with unneeded features e.g. floppy drivers, designed to run any software on any hardware are huge - **lines of code**

![](images/linuxkernel_loc.png)

Unikernels are **not** *"top-down"* minified versions of General Purpose OSes ...

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>

---
name: section_overview
layout: false
class: left
exclude: true

## Unikernels: What they are **not** ...  minified OS

## Container hosts
Minimal Linux distributions have been created with similar goals to Unikernels,
aimed to be minimal host OS for container engines, e.g.
- <img src="images/linuxkit.jpg" width=100 />
- CoreOS Linux
- Project Atomic
- RancherOS

They aim to be
- Secure
  - Less features/lines of code : reduced attack surface
  - **Atomic** updates of system (not quite *immutable*)
- Fast to boot : Small binary size
- Specialized to run containers

But these are still reduced versions of general purpose OSes and so have many unnecessary features.

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>

---
name: section_overview
layout: false
class: left
exclude: true

## Unikernels: What they are **not** ...  minified OS

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td><td> .blue[5]</td> </tr> </table> </div>

<img src="images/linuxkit.jpg" width=100 />
<br/>
In April 2017 Docker open sourced **LinuxKit** a way of building minimal Linux distributions for hosting containers.

LinuxKit is also a specialized Container Host with
- declarative specification of the system components to include
- services and applications encapsulated in containers
- MirageSDK ... .blue[looks interesting] ...

LinuxKit is still based on a General Purpose Linux Kernel but allows for much customization of the base system.

It's just one step closer to Unikernels ...

... who knows what Docker will do next **??** ...



---
name: section_overview
layout: false
class: left
exclude: true

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>

## Unikernels: What they are **not** ... summary
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

They are **not** minified **general purpose OS**
- Not *&micro;-kernels*
- Not *minified Linux* kernels or *Container OS*

They are **not** real-time Oses
- But they are very fast

They are **not**
- Multi-kernels (*though* HermitCore is !)
- Multi-process (*though* Graphene is !)

They are **not** all the same, but work on similar principles ...

<table style="width:100%; border: 1px solid black; background-color: #f1f1c1;">
  <tr>  <th>  </th> <th></th> </tr>
<tbody text-align="true">
<tr>
<td>
Building a specialized application with only the "OS" components needed
<center>==> a "bottom-up" approach</center>
</td>
</tr>
</tbody>
</table>

---
name: section_overview
layout: false
class: left

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>

## Unikernels: **Are** ...
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

**Very small** compared to an application + OS
- use few resources - allows high density
- immutable, suitable for micro-services
- No legacy drivers
- No unneeded .blue[shell] - **did I mention this?**

Have no separate **kernel space**
- No need to copy between kernel and **user space**

--

**More secure**
- small attack surface
- If compromised, the attacker can’t do much - **no** shell, users, processes ...

--

**Fast to boot**
- Possibility of on demand services

--

**More difficult to develop**
- &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; libraries, languages, debugging limitations


---
name: section_overview
layout: false
class: left

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>

## Unikernels: Application Domains
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

## Cloud Computing and *NFV*
- Fast to boot: On demand services
- Secure immutable images

--

## IoT / Embedded
- Small images for OTA updates
- Secure immutable images

--

## HPC
- Secure in the cloud
- Very efficient (no context switches, just 1 process)

---
name: section_where_needed_nfv2
layout: false
class: left
<h2>.blue[IETF draft on Containers for NFV] .red[expired] Jan 2017</h2>

Taken from: <a href="https://www.ietf.org/archive/id/draft-natarajan-nfvrg-containers-for-nfv-03.txt"> draft-natarajan-nfvrg-containers-for-nfv-03.txt </a>,  <a href="https://datatracker.ietf.org/meeting/96/materials/slides-96-nfvrg-3/"> Slides  </a>

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
name: title_inversed_whiteText
layout: false
class: inverse, center, middle

## Unikernel implementations

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>

???
Speaker notes:
---
name: section_overview
layout: false
class: left
## Unikernel Implementations: 2 families

<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

<br/>
<table style="width:100%; border: 1px solid black; background-color: #f1f1c1;">
  <tr>  <th> Clean-Slate </th> <th>  </th> <th>Legacy</th> </tr>
<tbody text-align="true">
<tr>
    <td> - Minimalist approach </td>  <td> </td>
                               <td> - POSIX compatibility </td>
</tr> <tr>
    <td> - Re-implement needed OS functions </td> <td> </td>
                               <td> - Re-use existing libraries</td>
</tr> <tr>
    <td> - Typically uses type safe language </td> <td> </td>
                               <td> - Possible binary compatibility</td>
</tr> <tr>
    <td> - Very small code size, resources </td> <td> </td>
                               <td> - Small to large code size/resources </td>
</tr> <tr>
    <td> - Harder to develop apps </td> <td> </td>
                               <td> - Easier to develop apps </td>
</tr> <tr>
</tr>
</tbody>
</table>

--
<br/>
<br/>

<!-- This means that clean-slate Unikernels tend to be implemented solely in one high-level language (and possibly derived languages) -->

--

<br/>
<br/>
We can see that *Legacy* Unikernels trade off some principles for ease of use ...

???

Clean-slate Unikernels
- a minimalist approach, implementing the Unikernel base and application in the same language
- Complete implementation
- typically a strongly typed functional language (Ocaml, Haskell, Erlang)

Legacy Unikernels
- Strive for some POSIX compatibility

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
---
name: section_overview
layout: false
class: left

## Unikernel Implementations:

<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

<!-- <img src="images/wildwest.jpg" width=100 /> -->

<br/>
<table style="width:100%; border: 1px solid black; background-color: #f1f1c1;">
  <tr>  <th> Clean-Slate </th> <th>  </th> <th>Legacy</th> </tr>
<tbody text-align="true">
<tr>
    <td> MirageOS (Ocaml) </td>  <td> </td>
                               <td> OSv </td>
</tr> <tr>
    <td> HalVM (Haskell) </td> <td> </td>
                               <td> Rumprun (<b>+LKL</b>) </td>
</tr> <tr>
    <td> LING (Erlang) </td> <td> </td>
                               <td> .red[Runtime.js] </td>
</tr> <tr>
    <td> IncludeOS (C/C++) </td> <td> </td>
                          <td> HermitCore </td>
</tr> <tr>
</tr> <tr> <td> </td> <td> </td> <td> Graphene </td>
</tr> <tr> <td> </td> <td> </td> <td> ClickOS </td>
</tr> <tr> <td> </td> <td> </td> <td> Vorteil </td>
<tr>  <th> Tools </th> <td>  </td> <td>Clive</td> </tr>
<!-- </tr> <tr> <td> </td> <td> </td> <td> Clive </td> -->
</tr> <tr> <td> Solo5/ukvm </td> <td> </td> <td> Magnios </td>
</tr> <tr> <td> Unik </td> <td> </td> <td> Ultibo </td>
</tr> <tr> <td> Unikraft </td> <td> </td> <td> Drawbridge </td>
</tr> <tr> <td> Minios </td> <td> </td> <td> ... others ? ... </td>
</tr> <tr>
</tr>
</tbody>
</table>

<!-- Some collaboration going on across projects e.g. to use some common underlying layers such as Minio, Solo5/ukvm and now .blue[Unikraft]. -->

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td><td> .blue[10]</td> </tr> </table> </div>
---
name: section_mirageos
layout: false
class: left
exclude: true

## Unikernel Implementations: MirageOS - Xen project

.left-column[
<img src="images/mirageos.png" width=80 />
<br/>
<a href="https://mirage.io/" > mirage.io </a>
<br/> <br/>
**Clean Slate**
<br/> <br/>
**Open Source**
<br/> <br/>
**Backing**
(Docker/Xen)
<hr/>

OCaml-Based
<img src="images/ocaml.jpg" width=80 />
]

.right-column[

MirageOS "Library OS" components and apps are written in <a href="https://en.wikipedia.org/wiki/OCaml"> Ocaml </a>,
a type-safe functional (& OO) language with extensive libraries.

The mirage tool is used to build Unikernels for various backends:
- Xen Hypervisor (PV)
- Unix (Linux or OS/X binaries)
- MirageOS 3 (/Solo5) supports kvm (/ukvm) and xhyve

Building applications for unix or xen
```
mirage configure -t [unix|xen|ukvm]
make depend
make
./mir-console
```

**Use cases**: <a href="http://ownme.ipredator.se/"> BNC Pinata </a> <img src="images/pinata.svg" width=50 /> , E/// Research NFV, PayGarden
]

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>

???
Speaker Notes:

For me:
<a href="https://eventil.com/users/sgrove" /> sgrove </a>
<a href="https://github.com/ocamllabs/icfp2016-blog/blob/master/CUFP/baby-steps-to-unikernels-in-pr.md" /> Blog notes </a>




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
class: left
exclude: true
## .blue[Unikernel implementations - MirageOS - Use Cases]
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left-column[
<img src="images/mirageos.png" width=80 />
<br/>
<a href="https://mirage.io/" > mirage.io </a>
<br/> <br/>
**Clean Slate**
<br/> <br/>
**Open Source**
<br/> <br/>
**Backing**
(Docker/Xen)
<hr/>
]

.right-column[
- <div> BNC Pinata: http://ownme.ipredator.se/ <img src="images/pinata.svg" width=100 /> </div>

- Networking applications
    - Ericsson Research NFV experiment

- PayGarden, Sean Grove
  <br/><a href="https://www.youtube.com/watch?v=i9eu9e7gN0Q" /> <img src="images/youtube.jpg" width=30  /> "Baby steps to unikernels in production" </a>
    - Too painful to create/configure AMI images on AWS
    - Solo5 allows to create KVM images deployable on GCE

]



<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
---
name: section_halvm
layout: false
class: left
exclude: true
## Unikernel Implementations: HalVM

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>

.left-column[
<img src="images/halvm.png" width=80 />
<br/>
<a href="http://halvm.org/" > halvm.org </a>
<br/> <br/>
**Clean Slate**
<br/> <br/>
**Open Source**
<br/> <br/>
**Backing**
(Galois)
<hr/>
]

.right-column[
A port of GHC (the Glasgow Haskell Compiler) to run as a Unikernel

Runs on Xen

Considering port to Solo5 for HalVM v3.

[2012] HalVM is a "nifty platform" for
- developing **simple** cloud services
- creating critical, isolated services

Aimed at highly secure network appliances such as [CyberChaff](https://formal.tech/products/cyberchaff/)


]

---
name: section_includeos
layout: false
class: left
## Unikernel Implementations: IncludeOS

.left-column[
<img src="images/includeos.png" width=80 />
<br/>
<a href="http://www.includeos.org/" > includeos.org </a>
<br/> <br/>
**Clean Slate**
<br/> <br/>
**Open Source**
<br/> <br/>
**Backing**
(IncludeOS)
<br/>
<hr/>
C/C++
<br/>
<!-- [FAQ](http://includeos.readthedocs.io/en/latest/FAQ.html) -->

[includeos.
readthedoc.io](http://includeos.readthedocs.io/)

<a href="https://www.youtube.com/watch?v=h7D88U-5pKc"><img src="images/youtube_small.jpg" width=26 />CppCon 2017</a>

]

.right-column[
Open source Unikernels written in C++ - ```#include <os>```

Runs on hypervisors (KVM, VMWare) *maybe* baremetal (E1000 support recently added) ...

Many features such as multi-threading, multi-cores can be compiled in (experimental today).
Single-memory space.

Delegates to route messages between TCP/IP stack components.

No blocking POSIX calls implemented yet, only async i/o.

Recent developments:
- Currently integrating MUSL [musl-libc.org](https://www.musl-libc.org/)
- Dashboard available as commercial product
- NaCl DSL to define network configurations
  - allows to build firewalls, routers, load-balancers
- Added Solo5 (ukvm) support
- Became 64-bit
- Added ARM support
- Worked with Mender (mender.io) for OTA updates

]

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
---
name: section_osv
layout: false
class: left
exclude: true
## Unikernel Implementations: OSv

.left-column[
<img src="images/osv.jpg" width=80 />
<br/>
<a href="http://osv.io/" >  osv.io </a>
<br/> <br/>
**Legacy**
<br/> <br/>
**Open Source**
<br/> <br/>
**Backing**
(Cloudius)
]

.right-column[
Written in C++ but with "POSIX" compatibility
- includes threads, tcp/ip, ZFS filesystem
- support for other languages and memory-managed platforms (JVM, Go, Lua)
- used in [Mikelangelo](https://www.mikelangelo-project.eu/2017/05/the-microservice-demo-application-running-inside-osv-unikernels-locally) EU Project (OpenStack+Unikernels)

Runs on KVM, Xen, VBox, VMWare

The **OSv Manifesto**
- Run **existing** Linux apps, run them **faster**
- Boot time ~ Exec time
- Leverage memory-managed platforms
- Stay open

Single process, address space

TCP/IP stack components (C++ classes) communicate via net channels

Possibility for MMU to handle garbage collection

]

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
---
name: section_rumprun
layout: false
class: left
exclude: true
## Unikernel Implementations: Rumprun

.left-column[
<img src="images/rumpkernel.png" width=80 />
<br/>
<a href="http://rumpkernel.org/" >  rumpkernel.org  </a>
<br/> <br/>
**Legacy**
<br/> <br/>
**Open Source**
<br/> <br/>
**Backing**
(NetBSD)
]


.right-column[
A refactoring of the NetBSD kernel allowing to select OS modules as needed.

Unikernel base in C/C++, supports many languages
  - C/C++, Lua, PHP, Python, Ruby, Node.js, Erlang, Go

Workflow is
- cross-compile against NetBSD libc (modified)
- bake in the hypervisor choice (not KVM ...)
- launch VM

**Baremetal** "Hypercall" implementation.

Many available packages: apache2, nginx, haproxy, redis, mysql, sqlite, leveldb, tor, mpg123


**NOTE**: LKL (Linux Kernel Libraries) an experimental Linux version since 2015
]
<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td><td> .blue[15]</td> </tr> </table> </div>
---
name: section_runtimejs
layout: false
class: left
exclude: true
## Unikernel Implementations: Runtime.js

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
.left-column[
<!-- <img src="images/rumpkernel.png" width=80 />
<br/>
-->
<a href="http://runtimejs.org/" >  runtimejs.org  </a>
<br/> <br/>
**Legacy**
<br/> <br/>
**Open Source**
<br/> <br/>
]

.right-column[
Implementation of v8 Javascript engine as a Unikernel

Supports Node.js on KVM Hypervisor

Ongoing discussions about supporting WebAssembly ..


]
---
name: section_hermitcore
layout: false
class: left
exclude: true
## Unikernel Implementations: HermitCore

.left-column[
<img src="images/hermitcore_logo.png" width=80 />
<br/>
<a href="http://www.hermitcore.org/" >  hermitcore.org  </a>
<br/> <br/>
**Legacy**
<br/> <br/>
**Open Source**
<br/> <br/>
]

.right-column[
Experimental unikernel from University of Aachen, initial performance results are promising.

Supports SMP in multi-kernel mode.

Modes:
- "classical unikernel" - runs on a VM
- multikernel on VM: proxy "Linux" kernel on one core, separate applications on other cores
- multikernel on BM: proxy "Linux" kernel on one core, separate applications on other cores

Uses Intel OpenMP runtime.

Languages:
- C++, Fortran, Go (all via gcc)

]
<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
---
name: section_tools
layout: false
class: left
exclude: true
## Unikernel Tools

Open Source tools help to advance the various projects.

### Unik: Unikernel Compiler

Cloud Foundry project (Dell-EMC) compiles several Unikernel Technologies
- Supports: RumpRun, OSv, IncludeOS, MirageOS

'VboxUnikInstanceListener' VM handles requests from the 'unik' cli.

### Solo5/ukvm

A common Unikernel (Solo5) **base** and (ukvm) .blue[**library hypervisor**] developed by IBM.

Integrated into MirageOS v3 to extend to KVM support.  Other projects (HalVM, IncludeOS) are also considering this approach.  Ongoing port to ARM64.

### Deferpanic
- &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; Web and cli tool allow to test deploy Unikernels

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td><td> .blue[20]</td> </tr> </table> </div>


---
name: section_overview
layout: false
class: inverse, middle

<center>
## Demo
</center>
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.green[IncludeOS]
- building IncludeOS unikernels
  - Native (could use Docker images)

- deploying IncludeOS on OpenStack (KVM)

.red[Past demos] include:
- .pink[deferpanic.net] with rumpkernel/Python + remark.js slideset
- .pink[runtimejs] under qemu
- .pink[MirageOS] linux build/run, ukvm run, GCE run
- .pink[OSv/capstan] tomcat



<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td><td> .blue[30]</td> </tr> </table> </div>

---
name: section_overview
layout: false
class: inverse, middle
exclude: True

## What I predicted last year ... mea culpa

## TO COMPLETE FROM Scoop.IT history ..

  - didn't really happen
    - No big Unikernel move from Docker

  - but lot's happened
    - IncludeOS made good progress, 1st deployment
    - MirageOS made good progress
    - Solo5/Ukvm support (IncludeOS, MirageOS)
    - Runtime.js stopped

---
name: section_containers
layout: false
class: left
exclude: True
## .blue[Unikernels & Containers]: .magenta[My guess ...] Snowcamp.io Feb 2017
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

.left[.footnote[.vlightgray[ @mjbright ]]]

So what about Containers? ... and why did Docker buy Unikernel Systems?

<!-- <a href="https://www.infoq.com/interviews/chaudhry-unikernels-docker" /> Info.Q / Amir, Aug 2016 </a> -->

#--

- Unikernel Systems are involved in MirageOS/Xen

- Unikernels already used as specific functions in  "*Docker for Mac*" <!-- - VPNKit, DataKit -->

#--

Guessing:
- **No-brainer**: Provide build/ship/run tools for Unikernels
  - **build**:
     - tools to facilitate building Unikernels
     - *test*: run Unikernels in containers to faciltate testing
          https://github.com/mato/docker-unikernel-runner
  - **ship**: Docker registry extended to provide Unikernel images
  - **run**: Docker Swarm orchestrates **tasks** incl. Unikernels

#--

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
name: section_overview
layout: false
class: left
## What can we expect to see in 2018?

More trials of **specialized** applications, e.g. networking components.

Unikernels becoming easier to use/deploy/debug
- Solo5: More backend support
- Unik as common unikernel compiler
- Unikraft as a tool for building Unikernels
- More Unikernel support from PaaS (kubernetes+virtlet)

IncludeOS
- Becomes production ready, trial deployments
- More capabilities around multi-thread, multi-core
- Limited bare-metal support
- More languages?

Docker / MirageOS ?
- MirageOS to support ReactML ?
- Progress on MirageSDK (part of LinuxKit)

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
---
name: section_overview
layout: false
class: left
exclude: true
## Unikernels: Usage? Baremetal?
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

#### Specific applications (network appliances - Hybrid solutions)
Well-suited for very specific applications such as target networking components
    - DNS, DHCP, NAT, Firewall, TLS, Chaff
Can be used as standalone appliances or as secure network front-end.

#### But what about Baremetal ?
Some Unikernels target baremetal, but not appropriate for all use cases
- requires **maintaining** h/w specific device drivers
- may not support more than 1 core !

You won’t want to dedicate your latest Proliant server to one Unikernel (flea on an elephant’s back), but rather to a Hypervisor running Unikernels

May be appropriate for the smallest IoT devices (webcam, sensor)

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
---
name: section_overview
layout: false
class: left
exclude: true
## Unikernels: Conclusions ...
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

A very **active research** area
- many active projects, several with commercial backers
- mostly Open Source
- healthy collaboration - common tooling possible

#--

Some projects adopt a "**Clean-Slate**" approach building up capabilities.
- impose a particular language
- smallest, most secure Unikernels
- potentially harder to develop

Other projects trade off some of the Unikernel advantages for "ease of use".

#--

We will start to hear of deployments for **specific use cases**

Unlikely to become a mainstream approach
- competition from VMs, containers, serverless
- unless someone surprises us ...

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td><td> .blue[35]</td> </tr> </table> </div>
---
name: section_overview
layout: false
class: inverse, center, middle
## Q&A
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
---
name: section_overview
layout: false
class: inverse, center, middle
## Resources
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->


<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
---
name: section_overview
layout: false
class: center, left
## Resources - General
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

<table style="width:100%; border: 1px solid black; background-color: #f1f1c1;">
  <tr> <th></th> <th>URL</th> <th></th> </tr>
<tbody text-align="true">
<tr style="background-color: #818181;"> <td>.</td><td> </td><td> </td></tr>
<tr><td> Unikernel.org </td><td> <a href="http://unikernel.org"> site </a> </td><td> </td></tr>
<tr><td> Wikipedia </td><td> <a href="https://en.wikipedia.org/wiki/Unikernel"> Wiki </a> </td><td> </td></tr>
<tr style="background-color: #818181;"> <td>.</td><td> </td><td> </td></tr>
<tr><td> Scoop.It </td><td> <a href="http://www.scoop.it/t/unikernels/"> Unikernels</a> </td><td> </td></tr>
<tr><td> Playlist </td><td> <a href="https://www.youtube.com/playlist?list=PLCDlZzVd_jn8heLw_Q10gOaEflLZKyf81"> YouTube Unikernels</a> </td><td> </td></tr>
</tbody>
</table>


<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
---
name: section_overview
layout: false
class: center, left
## Resources - Unikernel Implementations
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

<table style="width:100%; border: 1px solid black; background-color: #f1f1c1;">
  <tr> <th>Technology</th> <th>Backers</th> <th>URL</th> <th></th> </tr>
<tbody text-align="true">
<tr style="background-color: #818181;"> <td>.</td><td> </td><td> </td></tr>
<tr><td> MirageOS </td><td>Xen</td><td> <a href="http://mirage.io"> mirage.io </a> </td><td> </td></tr>
<tr><td> HalVM </td><td> Galois</td><td> <a href="https://galois.com/project/halvm/">galois.com/project/halvm</a> </td><td> </td></tr>
<tr><td> LING </td><td> </td><td> <a href="http://erlangonxen.org/">erlangonxen.org</a> </td><td> </td></tr>
<tr style="background-color: #818181;"> <td>.</td><td></td><td> </td><td> </td></tr>
<tr><td> IncludeOS </td><td>IncludeOS</td><td> <a href="http://www.includeos.org/"> includeos.org</a> </td><td> </td></tr>
<tr><td> Rumprun </td><td> NetBSD</td><td> <a href="http://rumpkernel.org/">rumpkernel.org</a> </td><td> </td></tr>
<tr><td> OSv </td><td>Cloudius</td><td> <a href="http://osv.io/">osv.io</a> </td><td> </td></tr>
<tr><td> HermitCore </td><td> Univ. Aachen</td><td> <a href="http://www.hermitcore.org/">hermitcore.org</a> </td><td> </td></tr>
<tr style="background-color: #818181;"> <td>.</td><td></td><td> </td><td> </td></tr>
<tr><td> Unik </td><td> CloudFoundry</td><td> <a href="https://github.com/cf-unik/unik">github.com/cf-unik/unik</a> </td><td> </td></tr>
<tr><td> Solo5 </td><td> IBM</td><td> <a href="https://github.com/Solo5/solo5">github.com/Solo5/solo5</a> </td><td> </td></tr>
<tr><td> Ukvm </td><td> IBM</td><td> <a href="https://github.com/Solo5/solo5/tree/master/ukvm">github.com/Solo5/solo5/tree/master/ukvm</a> </td><td> </td></tr>
</tbody>
</table>


<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>
---
name: section_overview
layout: false
class: center, left
## Resources - Unikernel Implementations (2)
<!-- .red[ TEST ]  .blue[TEST]  .green[TEST]  .yellow[TEST]  .magenta[TEST]  .cyan[TEST]  .pink[TEST] -->

<table style="width:100%; border: 1px solid black; background-color: #f1f1c1;">
  <tr> <th>Technology</th> <th>Backers</th> <th>URL</th> <th></th> </tr>
<tbody text-align="true">
<tr style="background-color: #818181;"> <td>.</td><td> </td><td> </td></tr>
<tr><td> Ultibo (Raspi) </td><td></td><td> <a href=""> </a> </td><td> </td></tr>
<tr><td> Clive (Go) </td><td></td><td> <a href=""> </a> </td><td> </td></tr>
<tr><td> Magnios </td><td></td><td> <a href=""> </a> </td><td> </td></tr>
<tr><td> ClickOS </td><td> NEC </td><td> <a href=""> </a> </td><td> </td></tr>
<tr style="background-color: #818181;"> <td>.</td><td> </td><td> </td></tr>
<tr><td> Drawbridge </td><td>Microsoft</td><td> <a href="https://www.microsoft.com/en-us/research/project/drawbridge/">project/drawbridge</a> </td><td> </td></tr>
<tr><td> </td><td></td><td> <a href=""> </a> </td><td> </td></tr>
<tr style="background-color: #818181;"> <td>.</td><td></td><td> </td><td> </td></tr>
<tr><td> DeferPanic </td><td> DeferPanic</td><td> <a href="http://www.deferpanic.net/">deferpanic.net</a> </td><td> </td></tr>
</tbody>
</table>

<div class="footnote"> <table style="color: lightgray" > <tr> <td> <img src="images/Twitter_Bird.svg" width=24 /> </td> <td>@mjbright</td> </tr> </table> </div>


