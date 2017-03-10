```mermaid
graph LR;
  main[main] --> |"string[] args"| getArgs{getArgs}
  getArgs --> |ArgState argState| main
  main --> |ArgState argState| getInp(getInp)
  getInp --> printHelp(printHelp)
  getInp --> |ArgState argState| readInput{readInput}
  readInput --> |"ulong[] numbs"| getInp
  getInp --> |ArgState argState| readFile{readFile}
  readFile --> |"ulong[] numbs"| getInp
  getInp --> |"ulong[] numbs"| main
  main --> |"ulong[] numbs, ArgState argState"| printOut[printOut]
  printOut --> |"ulong[] numbs"| lcmOf{lcmOf}
  lcmOf --> |"ulong[] numbs"| findBig{findBig}
  findBig --> |"ulong cand"| lcmOf
  lcmOf --> |"ulong lcm"| printOut
  printOut --> |"ulong[] numbs"| gcfOf{gcfOf}
  gcfOf --> |"ulong[] numbs"| findSmall{findSmall}
  findSmall --> |"ulong cand"| gcfOf
  gcfOf --> |"ulong lcm"| printOut
  printOut --> |"ulong[] numbs"| findBig{findBig}
  findBig --> |"ulong cand"| printOut
  printOut --> |"ulong[] numbs"| findSmall{findSmall}
  findSmall --> |"ulong cand"| printOut
  printOut --> |"ulong[] numbs, 0, numbs.length-1"| quicksort{quicksort}
  quicksort --> |"ulong[] numbs"| printOut
  
```

```
main
 |
 +-getArgs-+
 |         |
 +---------+
 |
 +-getInp-+-printHelp
 |        |
 |        +-readInput-+
 |        |           |
 |        +-----------+
 |        |
 |        +-readFile-+
 |        |          |
 |        +----------+
 |        |
 +--------+
 |
 +-printOut-+-lcmOf-+-findBig-+
 |          |       |         |
 |          |       +---------+
 |          |       |
 |          +-------+
 |          |
 |          +-gcfOf-+-findSmall-+
 |          |       |           |
 |          |       +-----------+
 |          |       |
 |          +-------+
 |          |
 |          +-findBig-+
 |          |         |
 |          +---------+
 |          |
 |          +-findSmall-+
 |          |           |
 |          +-----------+
 |
 +```
