# Smiths Industries Horizontal Situation Indicator

![HSI Overview](./images/HSI_overview.jpg)

## Connections

| 32 pin | function                  |  | 55 pin | function                 |
| ------ | ------------------------- |--| ------ | ------------------------ |
| A      | Red-Pointer-a             |  | A      | NAV flag a               |
| B      | Red-Pointer-b             |  | B      | ARINC ip a (white)       |
| C      | Red-Pointer-c             |  | C      | Chassis b                |
| D      | 115 vac a                 |  | D      | ARINC ip b (red)         |
| E      | ?                         |  | E      | ?                        |
| F      | Compass-Card-a            |  | F      | DG solenoid +ve          |
| G      | Compass-Card-b            |  | G      | ARINC mode ip            |
| H      | n/c                       |  | H      | n/c                      |
| J      | (Red drive) Jg-18.5       |  | J      | n/c                      |
| K      | Green-Pointer-a           |  | K      | n/c                      |
| L      | Green-Pointer-b           |  | L      | n/c                      |
| M      | (Green drive) Com-Mg-487  |  | M      | n/c                      |
| N      | n/c                       |  | N      | n/c                      |
| P      | Rot-Heading G 26v a       |  | P      | ?                        |
| R      | Rot-Heading G 26v b       |  | R      | ?                        |
| S      | OP-Course-a               |  | S      | Resolver R1              |
| T      | ?                         |  | T      | Resolver R3              |
| U      | n/c                       |  | U      | Resolver R2              |
| V      | 115 vac b                 |  | V      | GS galv a                |
| W      | Com-Wg-476                |  | W      | NAV flag b               |
| X      | (C.Card error) Com-Xg-483 |  | X      | ?                        |
| Y      | Compass-Card-c            |  | Y      | ?                        |
| Z      | ?                         |  | Z      | ?                        |
| a      | Green-Pointer-c           |  | a      | ?                        |
| b      | ?                         |  | b      | DG solenoid -ve          |
| c      | (Green error) com-cg-18.5 |  | c      | (Course knob) com-gc-17  |
| d      | OP-Course-b               |  | d      | (Course knob) com-gd-475 |
| e      | OP-Course-c               |  | e      | ARINC gnd (black)        |
| f      | (C.Card drive) com-fg-476 |  | f      | (Course knob) com-gf-194 |
| g      | Common-?                  |  | g      | OP-Bug Y a               |
| h      | Chassis-a                 |  | h      | OP-Bug Y b               |
| j      | ?                         |  | I      | n/c                      |
|        |                           |  | j      | n/c                      |
|        |                           |  | k      | GS galv b                |
|        |                           |  | m      | Resolver S4              |
|        |                           |  | n      | Resolver S1              |
|        |                           |  | p      | CD galv a                |
|        |                           |  | q      | To-From galv a           |
|        |                           |  | r      | ?                        |
|        |                           |  | s      | ?                        |
|        |                           |  | t      | IP-Course a              |
|        |                           |  | u      | IP-Course b              |
|        |                           |  | v      | IP-Course c              |
|        |                           |  | w      | ?                        |
|        |                           |  | x      | Main Flag solenoid +ve   |
|        |                           |  | y      | Main Flag solenoid -ve   |
|        |                           |  | z      | CD galv b                |
|        |                           |  | AA     | Resolver S3              |
|        |                           |  | BB     | Resolver S2              |
|        |                           |  | CC     | To-From galv b           |
|        |                           |  | DD     | Lamps a, 26v DC          |
|        |                           |  | EE     | Lamps b, 26v DC          |
|        |                           |  | FF     | Chassis                  |
|        |                           |  | GG     | GS flag a                |
|        |                           |  | HH     | GS flag b                |
|        |                           |  |        |                          |
|        |                           |  |        |                          |

![55 way connector](./images/HSI-Connector-55-way.png) ![32 way connector](./images/HSI-Connector-32-way.png)


### Synchro device identification

| System Rotating Devices | Location | Purpose            |  | Pins              | Colour band |
| ----------------------- | -------- | ------------------ |--| ----------------- | ----------- |
| SYNCHRO CONTROL         | 1)       | Course Knob/Bug    |  | S,d,e,(P,R)       | Green       |
| MOTOR GEN               | 2)       | Heading/Card motor |  | Int.Amp           | ?           |
| SYNCHRO CONTROL         | 3)       | Green Arrow input  |  | K,L,a             | Orange      |
| SERVO MOTOR             | 4)       | Green Arrow motor  |  | Int.Amp           | ?           |
| SERVO MOTOR             | 5)       | Red Arrow motor    |  | Int.Amp           | ?           |
| SYNCHRO CONTROL         | 6)       | Red Arrow input    |  | A,B,C             | Brown       |
| CONTROL TRANSFORMER     | 7)       | Heading/Card input |  | F,G,Y,(g,h)       | Yellow      |
| 30HZ RESOLVER           | 8)       | Course output      |  | S,U,T,(n,BB,AA,m) | mauve wires |
| SYNCHRO CONTROL         | 9)       | Course input       |  | t,u,v             | Black       |
| SYNCHRO CONTROL         | 10)      | Diff heading?      |  |                   | ?           |
| GENERATOR               | 11)      | ???                |  | Int.Amp           | ?           |

## Tests

## [ARINC Encoder](https://github.com/DavidJRichards/Aviation_ARINC_Encoder/blob/main/README.md)

## [Firmata exercise](./Firmata-exercise.md)

## [Synchro control](./Synchro-control.md)

# Additional information

### [Henk Gooijen's Viperpit HSI webpage](https://www.pdp-11.nl/viperpit/hsi/hsi.html)

### [Henk Gooijen's HSI on Github](https://github.com/PDP11Henk/PDP11Henk/tree/master/F-16%20HSI)

### [Henk Gooijen's HSI on Youtube](https://www.youtube.com/watch?v=7HDIuwM6Voc&t=13s&ab_channel=HenkGooijen)



