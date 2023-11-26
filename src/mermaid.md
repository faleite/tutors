# [Diagrams with Mermaid](http://mermaid.js.org)

## Flowchart

```mermaid
graph TB;
	A-->B;
	A-->C;
	B-->D;
	C-->D;
```
```mermaid
graph LR;
	A-->B;
	A-->C;
	B-->D;
	C-->D;
```
### Flowchart subgraphs
```mermaid
graph TB;
subgraph one
	A-->B;
	A-->C;
	B-->D;
	C-->D;
end
subgraph two
	E-->F;
	E-->G;
	F-->H;
	G-->H;
end
```

*You can use `graph` with `TB` (TB same as TD), `BT`, `RL`, `LR` to change the direction of the flowchart.* 

### Flowchart with exemplos

```mermaid
---
title: Flowchart Samples
---
graph LR;
	A[Hello]-->B;
	A-->|ipsum test|C{Text};
	B(World)-->D;
	C-->D;
	note[right of=A, title=Note] 
```

```mermaid
%%{init: {"flowchart": {"htmlLabels": false}} }%%
flowchart LR
    markdown["`This **is** _Markdown_`"]
    newLines["`Line1
    Line 2
    Line 3`"]
    markdown --> newLines
```
### Type of boxes

```mermaid
graph TB
	A[Square Rect] -- Link text -->B((Circle))
	A -.-> C(Round Rect)
	A ==> D{Rhombus}
	C --> E([Another Circle]) 
	C --- F[(Database)]
	C --> G>Query]
	F --> H{{Hexagon}}
	F ~~~ I[/Parallelogram/]
	F --> J[\Parallelogram\]
	I --> K[/Trapezoid\]
	I <-...-> L[\Trapezoid alt/]
	I --> M(((Double Circle)))
```
###  dotted or thick links 
Length | 1 | 2 | 3
------ | - | - | -
Normal | ---  | ---- | -----
Normal with arrow |	--> |	---> |	---->
Thick |	=== | ==== | =====
Thick with arrow | ==> | ===> |	====>
Dotted | -.- |	-..- |	-...-
Dotted with arrow |	-.-> |	-..-> |	-...->

## Flowchart with Subgraphs

```mermaid
flowchart TB
    c1-->a2
    subgraph one
    a1-->a2
    end
    subgraph two
    b1-->b2
    end
    subgraph three
    c1-->c2
    end
```

### Declarations with spaces between vertices
```mermaid
flowchart LR
    A[Hard edge] -->|Link text| B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
```

### Markdown Strings
```mermaid
%% Here you can write comments
%%{init: {"flowchart": {"htmlLabels": false}} }%%
flowchart LR
subgraph "One"
  a("`The **cat**
  in the hat`") -- "edge label" --> b{{"`The **dog** in the hog`"}}
end
subgraph "`**Two**`"
  c("`The **cat**
  in the hat`") -- "`Bold **edge label**`" --> d("The dog in the hog")
end
```

## Advanced Flowchart

### Sequence Diagram
```mermaid
sequenceDiagram
	participant Alice
	participant Bob
	Alice->>John: Hello John, how are you?
	loop Healthcheck
		John->>John: Fight against hypochondria
	end
	Note right of John: Rational thoughts <br/>prevail...
	John-->>Alice: Great!
	John->>Bob: How about you?
	Bob-->>John: Jolly good!
```

### Gantt Diagram

```mermaid
gantt
	title A Gantt Diagram
	dateFormat  YYYY-MM-DD
	section Section
	A task           :a1, 2014-01-01, 30d
	Another task     :after a1  , 20d
	section Another
	Task in sec      :2014-01-12  , 12d
	another task      : 24d
```

### Class Diagram

```mermaid
classDiagram
	Class01 <|-- AveryLongClass : Cool
	<<interface>> Class01
	Class03 *-- Class04
	Class05 o-- Class06
	Class07 .. Class08
	Class09 --> C2 : Where am i?
	Class09 --* C3
	Class09 --|> Class07
	Class07 : equals()
	Class07 : Object[] elementData
	Class01 : size()
	Class01 : int chimp
	Class01 : int gorilla
	Class08 <--> C2: Cool label
```

### State Diagram

```mermaid
stateDiagram-v2
	[*] --> Still
	Still --> [*]

	Still --> Moving
	Moving --> Still
	Moving --> Crash
	Crash --> [*]
```