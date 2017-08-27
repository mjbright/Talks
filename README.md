
<!--
    This post may or may not help to figure out github markdown rules for embedded html,
     i.e. to understand which html tags are allowed through as is (whitelisted)

    https://github.com/jch/html-pipeline/blob/master/lib/html/pipeline/sanitization_filter.rb#L44-L106

    NOTE: In fact the determining factor for correct embedding of tags (whitelisted ones at least)
          is that any tagged attributes must be quoted, e.g. border="4", not border=4.
   

-->

<table>
<tbody>
<tr bgcolor="#A0A0C0" border="4"><td>
        <img width=400 src="images/waay_over_there.png" />
</td><td>
    <a href="https://twitter.com/i/videos/897352244261158912" >

    <blockquote class="twitter-video" data-lang="en">
        <p lang="en" dir="ltr">Leveraging the <a href="https://twitter.com/hashtag/Docker?src=hash">#Docker</a> Community is an important key to getting the most out of
        <a href="https://twitter.com/hashtag/DockerCon?src=hash">#DockerCon</a>!
        <a href="https://t.co/xxMG9McL5o">pic.twitter.com/xxMG9McL5o</a></p>&mdash; Docker (@Docker)
        <a href="https://twitter.com/Docker/status/897352244261158912">August 15, 2017</a>
    </blockquote>

    <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
    </a>
</td></tr>
</tbody>
</table>

<!-- <font size+=-4> -->
<table>
<tbody>
<tr bgcolor="#A0A0C0" border="4">
    <th> Event  </th>
    <th> Date      </th>
    <th> Contribution </th>
    <th> Title (URL) </th> 
    <th> PDF </th> 
    <th> -</th> 
    <th> Video <img src="images/youtube_small.jpg" /> </th> 
    <th> Speakers </th>
</tr>

<tr bgcolor="#8080C0"> <td><b>Future Talks</b></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> </tr>
<!--
<tr bgcolor="#8080C0"> <td><b> - </b></td> <td> - </td> <td> - </td> <td> - </td> <td> - </td> <td> - </td> <td> - </td> <td> - </td> </tr>
-->

<tr bgcolor="#8080C0"> <td><b> Open Source Summit, Prague</b></td> <td> 24 October </td><td> Presentation </td> <td> <a href="https://osseu17.sched.com/event/BxIz/serverless-is-it-for-your-organization-michael-bright-hpe?iframe=yes&w=100%&sidebar=yes&bg=no"> Serverless - Is It For Your Organization? </a> </td> <td> - </td> <td> - </td> <td> - </td> <td> Michael Bright </td> </tr>
<tr bgcolor="#8080C0"> <td><b> Open Source Summit, Prague</b></td> <td> 25 October </td><td> Presentation </td> <td> <a href="https://osseu17.sched.com/event/BxJr/container-orchestration-the-state-of-play-michael-bright-hpe?iframe=yes&w=100%&sidebar=yes&bg=no"> Container Orchestration: The State of Play </a></td> <td> - </td> <td> - </td> <td> - </td> <td> Michael Bright </td> </tr>
<tr bgcolor="#8080C0"> <td><b> Open Source Summit, Prague</b></td> <td> 25 October </td><td> Tutorial </td> <td> <a href="https://osseu17.sched.com/event/BxK0/container-orchestration-hands-on-with-the-technologies-michael-bright-hpe?iframe=yes&w=100%&sidebar=yes&bg=no"> Container Orchestration: Hands On with the Technologies </a></td> <td> - </td> <td> - </td> <td> - </td> <td> Michael Bright </td> </tr>

<tr bgcolor="#8080C0"> <td><b>2017</b></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> </tr>

<tr bgcolor="#C0C0C0">
    <td> RMLL, St-Etienne </td>
    <td> 3 July 2017 </td>
    <td>   Presentation   </td>
    <td> Unikernels: What Usage? </td>
    <td> <a href="2017-Jul-RMLL-Unikernels-WhatUsage/2017-Jul-RMLL-Unikernels-WhatUsage.pdf"> PDF </a> 
         <hr/>
         <a href="https://mjbright.github.io/Talks/2017-Jul-RMLL-Unikernels-WhatUsage/#1"> Slides online </a>
    </td>
    <td> <a href="https://github.com/mjbright/Talks/tree/master/2017-Jul-RMLL-Unikernels-WhatUsage"> Slides source </a> </td> 
    <td> </td> 
    <td>Michael Bright</td>
</tr>

<tr bgcolor="#C0C0C0">
    <td> RMLL, St-Etienne </td>
    <td> 3 July 2017 </td>
    <td>   Tutorial   </td>
    <td> Docker and Python, Python and Docker </td>
    <td> <a href="2017-Jul-RMLL-Docker-Python/2017-Jul-RMLL-Docker-Python.pdf"> PDF </a>
         <hr/>
         <a href="https://mjbright.github.io/Talks/2017-Jul-RMLL-Docker-Python/#1"> Slides online </a>
   </td>
    <td>
        <a href="https://github.com/mjbright/Talks/tree/master/2017-Jul-RMLL-Docker-Python"> Slides source </a> 
         <hr/>
        <a href="https://github.com/mjbright/Talks/blob/master/2017-Jul-RMLL-Docker-Python/2017-July-3-RMLL-Python_and_Docker.ipynb"> SRC notebook </a>
    </td> 
    <td> </td> 
    <td>Michael Bright</td>
</tr>

<tr bgcolor="#C0C0C0">
    <td> PyCon US </td>
    <td> 17 May 2017 </td>
    <td>   Tutorial   </td>
    <td> <a href="https://us.pycon.org/2017/schedule/presentation/5/" >Container Orchestration</a> </td>
    <td> </td>
    <td> <a href="https://github.com/ContainerOrchestration/Labs"> SRC </a> </td> 
    <td> </td> 
    <td>Michael Bright, Haikel Guemar</td>
</tr>

<tr bgcolor="#C0C0C0">
    <td> PyCon US </td>
    <td> 18 May 2017 </td>
    <td>   Tutorial   </td>
    <td> <a href="https://us.pycon.org/2017/schedule/presentation/184/" > IPython and Jupyter in Depth: High productivity, interactive Python </a> </td>
    <td> </td>
    <td> <a href="https://github.com/ipython/ipython-in-depth"> SRC </a> </td> 
    <td> </td> 
    <td>Michael Bright, Matthias Buissonier, Min RK</td>
</tr>

<tr>
    <td> DockerCon US </td>
    <td> 19 Apr 2017 </td>
    <td>   Talk   </td>
    <td> Lightning Talk: Unikernel Technologies </td>
    <td> <a href="https://www.slideshare.net/MichaelBright3/lightning-talk-unikernels"> PDF </a> </td>
    <td> </td> 
    <td> <a href="https://www.youtube.com/watch?v=24rvIB4_v4U" >Youtube Video</a> </td>
    <td>Michael Bright</td>
</tr>

<tr>
    <td> HPE TES </td>
    <td> 22 Mar 2017 </td>
    <td>   Talk   </td>
    <td> Unikernel Technologies </td>
    <td> <a href="2017-Mar-UnikernelTechnologies/2017-Mar-UnikernelTechnologies.md.html" > HTML Slides </a> </td>
    <td> -</td> 
    <td> </td> 
    <td>Michael Bright</td>
</tr>

<tr>
    <td> Snowcamp.io </td>
    <td> 10 Feb 2017 </td>
    <td>   Talk   </td>
    <td> <a href="https://mjbright.github.io/Talks/2017-Feb-10_Snowcamp.io_Unikernels/2017-Feb-10_Snowcamp.io_Unikernels.md.html" >Unikernels: The Next Big Little Thing?</a> </td>
    <td> </td>
    <td> -</td> 
    <td> </td> 
    <td>Michael Bright</td>
</tr>

<tr>
    <td> DevConf.cz </td>
    <td> 27 Jan 2017 </td>
    <td>   Lab   </td>
    <td> Container Orchestration </td>
    <td> </td>
    <td> <a href="https://github.com/ContainerOrchestration/Labs"> SRC </a> </td> 
    <td> Video </td> 
    <td>Michael Bright, Mario Loriedo</td>
</tr>
<tr>
    <td> DevConf.cz </td>
    <td> 29 Jan 2017 </td>
    <td>   Talk   </td>
    <td> <a href="https://mjbright.github.io/Talks/2017-Jan-29_Devconf.cz_Unikernels/2017-Jan-29_Devconf.cz_Unikernels.md.html" >Unikernels: The Next Big Little Thing?</a> </td>
    <td> </td>
    <td> -</td> 
    <td> <a href="https://www.youtube.com/watch?v=6R68_Qm8n34&t=36s"> <b>Video</b> </a> </td> 
    <td>Michael Bright</td>
</tr>
<tr bgcolor="#8080C0"> <td><b>2016</b></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> </tr>
<tr>
    <td> Linux/ContainerConEurope </td>
    <td>  5 Oct 2016 </td>
    <td>   Lab   </td>
    <td> <a href="" > Container Orchestration: Lab (Swarm, Kubernetes, Mesos) </a> </td>
    <td><a href="http://www.slideshare.net/MichaelBright3/container-coneu2016-lab"> PDF </a> </td>
    <td> -</td> 
    <td> </td> 
    <td>Michael Bright, Haikel Guemar, Mario Loriedo</td>
</tr>
<tr>
    <td> Linux/ContainerConEurope </td>
    <td>  4 Oct 2016 </td>
    <td>   Talk   </td>
    <td> <a href="https://mjbright.github.io/LinuxConEU-ContainerOrchestration/ContainerConEU2016_Pres_remark.html#1" > Container Orchestration: Which Conductor? </a> </td>
    <td><a href="http://www.slideshare.net/MichaelBright3/container-con-europe-2016-container-orchestration-which-conductor" > PDF </a> </td>
    <td> -</td> 
    <td> </td> 
    <td>Michael Bright, Haikel Guemar, Mario Loriedo</td>
</tr>
<tr>
    <td> EuroPython 2016 </td>
    <td> 22 Jul 2016 </td>
    <td>  Talk   </td>
    <td> <a href="" > Jupyter for Everything Else </a> </td>
    <td><a href=""> PDF </a> </td>
    <td> -</td> 
    <td> <a href="https://www.youtube.com/watch?v=wG6u51uuXEA"> <b>Video</b> </a> </td> 
    <td>Michael Bright</td>
</tr>
<tr>
    <td> EuroPython 2016 </td>
    <td> 18 Jul 2016 </td>
    <td>   Lab   </td>
    <td> <a href="" > Ipython in Depth Tutorial </a> </td>
    <td><a href=""> PDF </a> </td>
    <td> -</td> 
    <td> </td> 
    <td>Michael Bright</td>
</tr>
<tr bgcolor="#8080C0"> <td><b>2015</b></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> </tr>
<tr>
    <td> Pyconfr, Pau 2015 </td>
    <td>   Oct 2015  </td>
    <td>  Talk   </td>
    <td> IPython vers Jupyter </a> </td>
    <td><a href="http://fr.slideshare.net/mbright1/2015-oct17-pyconfrpauipythonversjupyter"> PDF </a> </td>
    <td> </td> 
    <td> <a href="https://www.youtube.com/watch?v=0Uy5jS1wgzs"> <b>Video</b> </a> </td> 
    <td>Michael Bright</td>
</tr>

</tbody>
</table>
<!-- </font> -->



