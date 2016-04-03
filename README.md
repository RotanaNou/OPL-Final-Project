# Project Title: Home Automation

### Statement
Create a home automation system with a raspberry pi. System will use a desktop gui client (in racket) to POST commands and GET states (of devices) to/from an http server running on the pi. The pi will process the commands and execute them (such as switching relays on/off through the pi's GPIO to enable/disable lights, garage doors, locks or other devices).

### Analysis
Explain what approaches from class you will bring to bear on the project. Be explicit: e.g., will you use recursion? How? Will you use map/filter/reduce? How? Will you use data abstraction? Will you use object-orientation? Will you use functional approaches to processing your data? Will you use state-modification approaches? A combination?

The idea here is to identify what ideas from the class you will use in carrying out your project. 

### Data set or other source materials
Several source materials will be used in this project inluding:
* A Raspberry pi will be used as the controller to handle the logic of automating devices
* A four channel relay will be controlled via the Raspberry pi's GPIO pins
* Wireless adapter to allow the pi to communicate with the client over the network

### Deliverable and Demonstration
The demonstration/deliverables will inlcude a live interactive demo of the project. Users will be able to interact with the GUI racket client to switch devices (leds) on/off. The user will be able to Physically see the device state change.

### Evaluation of Results
The level of success of this project will be determined by the ablilty to successfully send requests from the racket client to change state of a device. Verify that the devices state has changed (view a light turn on or something) and then GET the state of the device and verify that it does in fact match the device state.

## Architecture Diagram
![Alt text](https://github.com/oplS16projects/OPL-Final-Project/blob/master/Diagram.PNG "Project Architecture")

The Client will be a Racket application that exposes a user Inerface for the user to interact with. The Client will submit POST and GET requests to an HTTP server on the raspberry pi.

The Apache HTTP server will return a table of device states on a GET request on action 1.

GET  request format: <host>/execute_command.php?action=1
body: void
return: list of json objects in the form: {"command":"<device>","state":"<state>"}

The Apache HTTP server will accepted a device state change through the form of a POST request. The HTTP server will add the state change to a table of pending state changes (MySQL DB).

POST request format: <host>/execute_command.php?action=2
body: command=<device>&state=<state>
return: void

A Daemon will periodically read the table of pending commands and go through and execute each one. For now this will just be toggling of GPIO pins on or off to switch one of the switchs on the four channel relay. 

## Schedule
Explain how you will go from proposal to finished product. 

There are three deliverable milestones to explicitly define, below.

The nature of deliverables depend on your project, but may include things like processed data ready for import, core algorithms implemented, interface design prototyped, etc. 

You will be expected to turn in code, documentation, and data (as appropriate) at each of these stages.

Write concrete steps for your schedule to move from concept to working system. 

### First Milestone (Fri Apr 15)
What exactly will be turned in on this day? 

### Second Milestone (Fri Apr 22)
What exactly will be turned in on this day? 

### Final Presentation (last week of semester)
What additionally will be done in the last chunk of time?

## Group Responsibilities
Here each group member gets a section where they, as an individual, detail what they are responsible for in this project. Each group member writes their own Responsibility section. Include the milestones and final deliverable.

**Additional instructions for teams of three:** 
* Remember that you must have prior written permission to work in groups of three (specifically, an approved `FP3` team declaration submission).
* The team must nominate a lead. This person is primarily responsible for code integration. This work may be shared, but the team lead has default responsibility.
* The team lead has full partner implementation responsibilities also.
* Identify who is team lead.

In the headings below, replace the silly names and GitHub handles with your actual ones.

### Christian Everett @ChristianEverett
will write the....

### Rotana Nou @RotanaNou
will work on...


