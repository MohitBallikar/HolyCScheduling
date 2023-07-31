![image](https://github.com/MohitBallikar/HolyCScheduling/assets/89613841/1277fdf1-04d9-48ba-9a06-1481be499de8)(Some if not most screenshots were taken retroactively to help with the presentational portion and for greater context)

![image](https://github.com/MohitBallikar/HolyCScheduling/assets/89613841/6de02a01-17ca-47f2-86da-6543de683850)

_Above are the three environments that I used for working through this project_


![image](https://github.com/MohitBallikar/HolyCScheduling/assets/89613841/cb541b5e-cf20-467d-8ae0-85848e316f79)
_Here is a beginning screenshot of the scheduler. Using HolyC and some assembly as well (seen later on)_



![image](https://github.com/MohitBallikar/HolyCScheduling/assets/89613841/0874a3f8-2f27-413f-9988-e7adbb293a5d)
_Here is some of that assembly that was mentioned before. I decided that if I were to simplify or change anything I'd much rather interact with the registers through a higher-level language_
_Another thing to note, despite TempleOS' scheduler using a round-robin algorithm, the utilization would still not be close to ideal with modern components. Even after changing some kernel files in display._



![image](https://github.com/MohitBallikar/HolyCScheduling/assets/89613841/5ff8d6cf-8577-4a54-b4e9-91962b18cf22)
_After spending another ~100 lines of code scrolling and deciphering the methods, it was apparent that I would need to establish a greater basis of knowledge for MIPS and other assembly languages_
_The HolyC functions that I was hoping to work with only seemed to act as helper functions. The assembly doing all the heavy lifting at the lowest levels, and the HolyC translating this upwards_
_This was disheartening to a degree as many of the programming/hacking I found online with regards to resources focused on HolyC and not the assembly directly. In addition, programming in assembly with such bottle-necked hardware utilization seemed torturous, regardless of the time-frame._


![image](https://github.com/MohitBallikar/HolyCScheduling/assets/89613841/7e2c77c2-67ad-42bb-ab5d-fed53fe15943)
_After a lot of searching and some kernel changes I could have the basic terminal running in 60 frames. Though there would still be stuttering in the cpu utilization, it was bounds better than the prior set-up_


![image](https://github.com/MohitBallikar/HolyCScheduling/assets/89613841/83bfe797-9161-4e3e-813f-96ab552978f4)
_Wrote out some basic edf code to ensure that all syntax is viable._

