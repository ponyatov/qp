# \#0 Modern Embedded Systems Programming: Getting Started

https://www.youtube.com/watch?v=3V9eqvkMzHA&list=PLddc343N7YqiJvs-SrOgw6jrIOv3qIB6d

get [subs](subtitle.to/https://www.youtube.com/watch?v=3V9eqvkMzHA&list=PLddc343N7YqiJvs-SrOgw6jrIOv3qIB6d)

![[qp/About]]



The course is just beginning, so it's a good time to join. Stay tuned... About the Instructor -------------------- Dr. Miro Samek is the well known expert in the field of embedded software development and architecture. His practical books about state machines, active objects (actors), and event-driven frameworks for embedded systems are among the most popular on the market. Miro has also published dozens of technical articles, including the very popular series of in-depth articles: "Building Bare-Metal ARM Systems with GNU". His extensive industry experience ranges from safety-critical software development at GE Medical Systems through real-time embedded software design at two Silicon Valley companies specializing in GPS technologies. Software he wrote continues to power millions of products. Dr. Samek earned his Ph.D. in nuclear physics at GSI (Darmstadt, Germany). ------ End Notes: Companion web page for this video course: [https://www.state-machine.com/quickstart](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbHZNSkwta1k5ZFhyZnVWMHBmT2FCZC1rUUJTd3xBQ3Jtc0tuSmoxWmJhUGstOVh5aHlZTGNqN3g2enUwY1FxWk9hSThJOXI0MWdRVVlibWtyeTFtd01sNlhsYS1TRm5rTEp5V1g2Ym1HTmRCU2E0VGlIZmhSQnBsbWdZZHNxTmtFdkU2N0xFZVVreDV1WUtDakdOaw&q=https%3A%2F%2Fwww.state-machine.com%2Fquickstart&v=3V9eqvkMzHA) GitHub repository for projects for this video course: [https://github.com/QuantumLeaps/moder...](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbnFnSTNGSWxvRkVmbTdPeFF1VjN5QnF5ZndJZ3xBQ3Jtc0tudU1wM1FoM0tHTV9fQVhoTzVaVVpJVU5ubzZ6X1p3anhGTk9JYlNRQTg5SXp4RTNHRWZ3eGtHRTR5ekh3RU1OcmV0SUpCSG9kekcyUWxjV1p2WU9HbjBBM0VTNjNfbHd0TWdtWlFlSHU4ajVJTk5VSQ&q=https%3A%2F%2Fgithub.com%2FQuantumLeaps%2Fmodern-embedded-programming-course&v=3V9eqvkMzHA) IAR EWARM: [https://www.iar.com/products/architec...](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa0I4UkcwNFZuTzZDbmxxbFdmQnJscjVER3ZPQXxBQ3Jtc0tuLXNzaVo0eHJwNW5mWUtGQ1E5V1Viamx6TWRzMWpqbnNLYTBNN0p3eWpPQlotTm96bzVtVy10THJxU1dkV0F5ZGxMeUhpVXZ5MHFrVmZGb2I0VV95emhzNXJYUDBUSVFFbTNYZnA2amphSWpnZHFRYw&q=https%3A%2F%2Fwww.iar.com%2Fproducts%2Farchitectures%2Farm%2Fiar-embedded-workbench-for-arm%2F&v=3V9eqvkMzHA) Tiva LaunchPad board (a.k.a. EK-TM4C123GXL) with the TM4C123GH6PM microcontroller (ARM Cortex-M4 CPU) [https://www.ti.com/tool/EK-TM4C123GXL](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa2NDTHFzQ3Y4QVJSWnc5REdEbUdQUEllaVdoUXxBQ3Jtc0tsUFJheThpQ01oTlNHRUlmU3FQODdFTTlKeHBHZkUzdHlxNmtiYV9KTURJcWVDeVUydjdCTmtVaEVqNk1uVkZrQXF6X0YyYTdZbG4xNEx3Nmwwa1hmUHA3eFAwd0xkay11N2gySTRMaEljel9PZTRZdw&q=https%3A%2F%2Fwww.ti.com%2Ftool%2FEK-TM4C123GXL&v=3V9eqvkMzHA) YouTube playlist of the course: [https://www.youtube.com/playlist?list...](https://www.youtube.com/playlist?list=PLPW8O6W-1chwyTzI3BHwBLbGQoPFxPAPM)



welcome to the embedded systems programming course

my name is Miro Samek and i'd like to teach you how to program embedded microcontrollers in C

this course is structured as a series of short, focused, fast-paced hands-on lessons

in this first lesson, we will get started by installing a free embedded development toolset

development toolset 

and ordering a very inexpensive
development board

so you can actually run your code on a real microcontroller

your own embedded board is certainly a
lot of fun

but you can also follow along even
without the board because I will show

you how to use an instruction set
simulator

The C language that you are going to learn is a so-called high-level

programming language

but I will also frequently step down to the low level of machine code and

show you exactly what happens inside the
embedded process

you will actually see how the processor
executes your code, how it manipulates data

and how a computer can do things in the
real world

such as

turn on an off the L_E_D_

this deeper understanding will allow
you to use the C language more

efficiently and with greater confidence

you will gain understanding not just
what

your program does but also how this
C statements translate to machine

instructions and how fast the processor
can execute them

the processor we are going to use in
this course is called ARM Cortex-M4F 

but what you'll learn will apply to
the whole Cortex-M family starting

from Cortex-M0 through M0+, Cortex-M3 and M4

the Cortex-M processor family I've
chosen for this course is the most

popular, modern, and energy-efficient
family of processor cores you can find

in embedded microcontrollers today

and for many years to come

also familiarity with arm Cortex will
look really good on your resume

so let's get started! The first thing you
need is the embedded toolset

for this course I selected the
professional toolset from IAR

systems called EWW ARM

which stands

for embedded workbench for ARM

the commercial version of this toolset is
one of the most expensive on the market

but IAR also offers the free size-limited
but not time-limited

evaluation version of the software, which
I will show you how to download and

install in a minute

before we do this, though, I'd like to
mention that I'm not associated with

IAR or any microcontroller vendor
for that matter

I've simply selected the free evaluation
version of their toolset

because it has all the features I
needing discourse such as: state of

the art C and C++ compiler

a nice debugger

ARM instruction set simulator

to download IAR EWARM

point your browser to iar.com

select the Service Center and click
on the Downloads link

on the Download page click on the latest
size-limited version of the ARM

toolset

On the next page scroll down

and click on the download software
link

this download can take a while because
the file is over nine hundred megabytes

in size

After the download completes

show the file in folder

double click on it

and run the installer

Click on Install IAR Embedded Workbench

click next

accept the license and click next

click next

click next

click install

again this can take a while

because now you're copying files to your
hard drive

this dialog box asks if you want to
install the license dongle on your system

finally the installation completes

click finish

exit from the IAR navigation pane

when the IAR embedded workbench
comes up for the first time you will be

presented with the registration dialog
box. click register

this will open at the IAR
registration form on your browser that

you need to fill out

here the most important step is to
select the code-size limited license

type

you need to fill out all the required
fields

and finally you can click on submit
registration

the IAR installation requires a
confirmation of your email address

when you receive the email from IAR
open it and click on the registration

link

this opens a web page with your license
number which you need to copy to the

clipboard

Next, switch to the IAR Embedded Workbench, and select the Help->License

Manager menu

finally copy the license number into
the provided space and click next

click next to activate the license

alright, your license is now installed
and the tool is finally ready to use

In the last step of this lesson I will show you how to order an

inexpensive evaluation board

called Stellaris Launchpad from Texas
Instruments

i repeat that this step is optional
because you can use the ARM instruction

set simulator in the IAR toolset to follow
along in most of the upcoming

lessons

i'd also like to mention that I'm not
associated with texas instruments

or any other microcontroller vendor

i simply selected this particular TI board

because it is completely self-contained

the board is powered from a USB
connector and has a complete hardware

debugger which will enable us to look
inside the processor

the Launchpad has a thirty two-bit ARM
Cortex-M4 microcontroller

with peripherals

and bright multi-color LED

two user switches and connectors
for experimentation in future

expansion

evaluation boards like this used to cost
hundreds of dollars just a few years ago

but now TI sells this board for only
twelve ninety nine US dollars

so if you wish to order this board
point your browser to TI.com

in the search box, type Stellaris
Launchpad

click on that buy-now link

click on add to cart and proceed to
checkout

this concludes the setup part of the
course. In the next lesson you will learn

how to create your first project
in the IAR toolset

and watch it run in the simulator

and on the Launchpad board

if you have any questions or comments
about this course please visit state

machine dot com

slash quickstart

where you can find all currently
available lessons, class notes, and

projects

