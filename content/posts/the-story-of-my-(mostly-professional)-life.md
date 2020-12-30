---
title: "The Story of My (Mostly Professional) Life"
date: 2020-11-04T15:17:15+03:00
draft: false
---

The story begins in my schooldays back in late 90s. I was very lucky to get informatics class at my 5th grade. This was pretty unusual for my school, 
all others got their first informatics class only starting from 9th grade. I've been taught Pascal and a bit of C. My teacher were married to a professional programmer,
so she tried to develop really good programming class that involved solving both olimpic programming tasks and more real life, or fun projects. 
At 8th grade I received from her new year postcard, but this was a program, that involved very simple graphics of fireworks. And she knew that this would catch my interest,
so she provided very early draft of this promram along with the final binary. So I could dig into the source code to make the postcard for her. This was hillarius for me.

The school was going mostly fine, but I was bored by general classes on human disciplines, and I decided that it's time to move on. 
Although my teacher offered me a transition to a school with deep math and phisycs education, I rejected it. How fool was I, but anyway. 
And I decided to go to the college of Aircraftsmanship to study information science and computer engineering with the major in microprocessor electonics. 
My plan was to get more hands-on with computer hardware during the college time and proceed with software engineering during the university time.
But by the time I got my college diploma, I got deeply frustrated by software development, as it was a boom of [WYSIWYG](https://en.wikipedia.org/wiki/WYSIWYG)-like programming with Delphi.

I had to find a job and I ended up as an IT support techician at Ulmart. This was the biggest online retailer in Russia, but I was mostly involved in back office IT support.
I was still studiyng computer stuff and eventually I got promoted to a somewhat system administrator specialized in computer networks.
It was quite interesting job, but it was pretty boring, as there were many manual operations and maintanance. So I tried to automate as much as I can.
Together with my collegue we developed few intranet sites to automate some stuff like printer cartige's usage tracking. It was a php spagetti code, but it worked!
And after that there were no way back to manual work. Stuff like this were the only joy in my worklife, so I decided to learn something about modern programming.

I started learning JS and Java using "Head First" book series, few youtube Java courses ([1](https://www.youtube.com/user/KharkovITCourses/playlists?view=50&sort=dd&shelf_id=12),[2](https://www.youtube.com/user/KharkovITCourses/playlists?view=50&sort=dd&shelf_id=14)), 
and decided that it's time to find new endovuer. I've started to find a new job and even got an offer
to became Java intern developer. But my manager thought that it would be bad to loose me, made a few calls to our development department and found a job for me there.
That was incredible luck for me, as back then it was very hard to find a junior level position anywhere, and it would mean a huge salary cut for me. But since it was internal transition in the company,
I was promised to not get cut at all. And I started to get tasks from them as well, although I still was mainly occupied with my main job resposibilities - networking and DC maintenance stuff.

The head of the site development was a very smart and brave guy. His approach was to hire junior-level developers, and to teach them programming as he likes. 
He also didn't make any influence on tech stack, leaving such decisions to whom develop the feature, only checking that it would be easy to maintain. 
This was very important, as there were no dedicated ops team to make site running, and we were responsible for live-site operations for the features we develop. Tecnically, we practiced DevOps/SRE before it was a hype. 

My first task was to create an event collecting system that will be used by site operations and marketing to get clearer view on what is the user behaviour from the server-side perspective.
I had to learn Spring, MongoDB, and a bit of JS to integrate it to site admin panel. In just few months it was up and running. No words can bear the enjoyment I feeled. But I also started to understand 
that I luck some fundamental knowledge about software development, so I decided to finally go to the university, after a four years break in academic study. Again, I was very lucky to find the informatics course at Politechnic university that was help on the evenening. You can think about as the evening school. By that time my old manager finally let me go to be a full-time Java junior developer.

My second task was to replace the site search engine. It was slow (mostly due to implementation details), and we decided to fresh-up the tech stack and migrate from Apache Solr to shiny modern Elasticsearch. 
Now I know that there were no particular reason to replace the Solr, and we could merely rewrite the slow parts and rethink the arcitecture a bit, but back then it sounded promising enought.
In few more month I finished this project, and it all went smooth. Except the one day, or to be presice a night, on a weekend when this sistem crashed. I remember it very well. 
I was hanging out with my friends at countryside, we were drinking wine near the fireplace, and it was beatiful. Util my PM called me at 3 AM and started excusing to bother me,
but the site is not operational and they suspect the bug in my system. This search system was a barebone for the site's catalogue, and once it started to respond 500, the entire site was useless.
It was a shock for me, but luckily I had my laptop with me, so I used mobile phone tethering to get some internet access. The bug was caused by my very poor understanding of CAP theorem and what is guaranteed by Elastic's consistency. 
I heavily missused it, but I found a way to quickly restore the search catalogue to backup. God bless the backups that can be restored. I think it was my prior ops expirience that motivated me to ensure backup-restore worked before commiting the changes to prod. After that there were no major issues, as far as I know, this system is still operating without any issues. 
But there were a huge lesson for me, and starting from that I knew I should pay attention at univeristy classes and what they can teach me.

The days passed, I got more and more expirience, and I started to work on dismalting the site monolith to more service-like architecture, we called it SoA back then. 
Kubernetes were in a very early days, the microservices were not a hype, so we invented our own service stack based on JGroups. During this work I learned even more interesting stuff, and
more importantly, I met a few very smart collegues, and with few of them I even became a friends.
One of this collegues decided to go to a startup, as he thought that there in nowhere to evolve in current company. And I got assigned to take his tasks over as well.
So we started to communicate a lot, even after he left the company, as I had millions of "why did you do it that way?" and "how did you do that?" questions. We constatly met to dring a coffee or a beer,
and discussed the tech stack they used in startup. They were Kubernetes early adopters, as well as Netflix OSS and Spring Boot users. And I already had some sort of internal cloud up and running,
but I had no other collegue with expirience in microservices, so we chatted about that a lot. I picked many interesting concepts from him and his Netflix OSS usage expirience and added it to my cloud.

My manager decided to relocate to Germany, the team was shrinked by two guys already, and I got into situation when the only one I talking to about tech is my collegue from startup.
So it was natural that one day they offered me a job at this startup, which I decided to take.  It was much simpler to talks face-to-face during the whole day instead of chatting online and meeting after work. But the Ulmart doesn't want me to step out, so I agreed to work for them on part-time basis, to not burn the bridges completely.

The transition was easy, as I already knew a lot about the starup. It was very interesting idea, we tried to make an Amazon-like expirience, 
but for very different market - the home repair and construction. Alas, even though we had a good idea and brilliant people working on this project,
we make a few crucial mistakes. We tried to develop everything from scratch instead of using some ready-to-use products and trying to compose them into working prototype.
And almost a year after that the investor's money were spend and we had to find the new job.

This time I thought that it's enough for me to work on small companies, and that I need to see some more mature development. That's why I applied for a job at outsourcing company GridDynamics.
Fun part is that I didn't know that it's outsourcing and what that is. But the company had about 500 developers by that time, so it was a perfect fit for me.
There I met many brilliant engineers, who had had a lot of professinal development, with quite good expirience in development process as well.
My team was responsible for JCPenney's transition from monolith to microservices. And somehow I had the most hands-on expirience with all the modern technologies,
so my growth were rapid. In just a year after I joined the company, I became a team lead with a team of 15 engineers that was dedicated to make replatforming of yet another part of JCP's backend.
One of them were the same guy who called me to the startup, as I knew that his expirience is even better than mine, so I offered him to my join team.

It was not my first expirience in manageral role, as I had some back in my ops days. But not on this scale, and not in development. So I had to learn, and do it fast.
And of course I made all the mistakes I could possibly did. People management is a hard task in general, and when you have so many people it's even harder. 
But I also didn't want to give up my tech tasks, so I tried to balance it to 20% development, 80% manager tasks. Now I know that it was not that wise, 
and I should've concentrated fully on one part, not trying to catch the two rabbits. At least for some period of time while the team is settling up.
Nevertheless, the project ended somewhat sucessfully, even though customer decided to use the other company's project as a barebone, 
and we had to polish it and make all the integrations. It was quite interesing as well, as we found tons of issues for our use cases, but after all,
it was up and runnign at the Black Friday, and it was a success for the both companies. For JCP it was yet another proof of our ability to deliver the requred project,
even though a lot of things went not according to initial plan, and for GD it was quite successful as well, since we were paid on time basis and bringed a lot of 
money for our work, not to mention the customer's satisfaction with the end result.

Couple of my teammates got burned out during this project, regardless of all my attempts to prevent it. And they left the company. I had a hard time as well, but luckily,
we still had a good relationships with them. So one of them invited me to their new company to join as their team lead. This was a surprise for me, 
since I thought that none of them would like me to be their team lead again, but it looks like I was wrong.
I thought "why not?" and accepted the offer. The new company called Infobip and this is a huge telecom specialized on sms and mobile messanging.
Finally I found the place with the real highload. And my team was responsible for an internal microservices framework, like Netlix OSS, but the project started long before it was opensources,
so again, it was homegrown cloud solution. I felt like a fish in a water.

This was one of the most interesting projects I ever worked on. It bringed a lot of challeges, we tried to adopt k8s and gRPC into our infrastructure while maintaining backward compatibility
with the existing solution. And I worked with the same folks I used to work already, so all manager tasks were almost no-brainer. The only thing I had to ensure is that
everyone growing their tech and soft skills. And of course make all of them happy while delivering new features. 
We established product-like approach to our work, which is not that often for an infra teams, and after a while all other infra teams adopted this approach as well.
And since our "customers" were other all other development teams, it was much easier to get constant feedback on our work. 

We did a lot of interesting things there, but after two years I realized that I'm quite willing to explore the world, and try to live in some other countries.
Unfortunalety, I couldn't do that in that company, so I started to look around.
And during the vacation at USA I spent couple of days with one of my ex-collegues from GD, who works as Microsoft.
We briefly talked that I want to relocate somewhere, but it's like a vague idea. But he took it seriously, and asked for my CV to reffer it to his manager.
Few month later I got interview invitations, and very surprisingly to me, I passed the interviews.
Unfortunately, by that time the COVID started to spread aroung the globe, and all my relocation plans were screwed. 
But fortunately I was able to join the team remotely from Russia to develop software on even larger scale. 
And now I'm about to relocate to Canada to start completely new life there. And I don't know what to expect next, but I look forward to the future and the challenges it will bring to me.

You may wonder why I'm writing this. I think I just want to share the idea that you should always be kind, open-minded, build you professional network, and with a enough luck,
it will pay you back. You can see that there was a lot of lucky situations for me, and I cannot even imagine who would I be without this luck. But the luck comes to the ones who're trying.
So, I wish you a good luck on any of your endevours!

