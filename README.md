# HolyCScheduling

The original goal of this project was to implement scheduling algorithms within the TempleOS environment.
After some built up proficiency and navigation skills, learning and implementing the language was not terrible.
Issues at hand mostly arose from tooling. Error trouble-shooting was spent the most time on with research being close and actual programming/analyzation being a lot easier to work through.
Learning/understanding HolyC was not as complicated as I imagined due to many syntactical features borrowing from C and C++. Compiling and structuring this in accordance to the compiler in TempleOS took the majority of this "programming" time.

There were a few solutions (as mentioned in resources) that decoupled the compiler an allowed for HolyC compilation in a linux environment. Setting these up were quite a bit of trouble. Due to lack of updates, very-specific dependencies, and an overall lack-of-understanding from me.
Linux programming was something I was fairly familiar with due to prior classes, but setting up and manipulating environments was quite tiresome, especially when there is a bit of guesswork due to the documentation not being fully updated.

In terms of physical, hard accomplishments, the scheduling algorithms (EDD and EDF) were the main take-aways. In implementing and replacing the already existing round-robin algorithm used by the TempleOS scheduler would take a longer period of time to crack at. For the time being, assuming the logic used in either algorithm when used in conjunction with the queue data structure employed within Terry's scheduling code should be applicable in theory (along with ensuring all register and assembly is connected appropriately to this new behavior).
For knowledge/tool-based knowledge, I gained a lot of hands-on experience with TempleOS, Arch-Linux, and Ubuntu. Researching information for HolyC and Terry's method for implementing TempleOS was also quite interesting and useful in contextualizing everything.

For closing remarks/statements, I would advise future students who would want to crack at this project to have a large amount of time dedicated to it. In addition understanding virtual machine set-up and setting up environments can also expedite the workflow in case recovery is needed. Flexibility with closed systems like TempleOS can be annoying as well, due to the entire system operating on the kernel-level without any restrictions, a lot can go wrong. Furthermore, the system being air-gapped (the clip-board functionality was a little wacky as well for me), removes any ability to connect to online resources, so virtualization is essentially your most flexible approach, though there are probably a few others that I am not aware of.
In summation, TempleOS and its processes are very interesting though frustrating at some times. Regardless, it must have taken an immense amount of effort and genius to create a comprehensive system and language as an individual.
