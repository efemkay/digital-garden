---
title: Mermaid Flowchart Guide
---

- #### Defining “Nodes” will help give a clean looking code, with linking done using only node id
	- ![](https://miro.medium.com/max/1400/1*-IR_3doGmXoHSvQERuhfOA.png)
		````md
		```mermaid
		graph LR  
		%% Nodes  
			1([Start])  
			2[Look for lost item]  
			3{Did I find it?}  
			4([Stop])  
		%% Node links  
			1 --> 2 --> 3 -->|Yes| 4  
			3 -.->|No| 2
		```
		````
- #### Use HTML’s `<br>` tag/element to create multi-line text
	- ![](https://miro.medium.com/max/1400/1*6hvrYLeouX6RdQTOHc6EJQ.png)
		````md
		```mermaid
		%% Nodes  
			0[Key Variable<br>Target: 100, Actual: 80]  
			1[Top Variable 1<br>Tgt: 20, Act: 20]  
			2[Top Variable 2<br>Tgt: 30, Act: 30]  
			3[Top Variable 3<br>Tgt: 50, Act: 30]  
			31[Sub Variable 1<br>Tgt: 25, Act: 25]  
			32[Sub Variable 2<br>Tgt: 25, Act: 5]  
			321[Element 1<br>Tgt: 20, Act: 1]  
			322[Element 2<br>Tgt: 5, Act: 4]
		```
		````
- #### `classDef` can be used to apply custom styling / colours
	- ![](https://miro.medium.com/max/1400/1*XiVdDXSsuKf0mLxWgUOqBw.png)
		````md
		```mermaid
		%% Defining the styles  
			classDef Red fill:#FF9999;  
			classDef Amber fill:#FFDEAD;  
			classDef Green fill:#BDFFA4;  
		  
		%% Assigning styles to nodes  
			class 3,32,321 Red;  
			class 322 Amber;  
			class 1,2,31 Green;
		```
		````
- #### Modify ‘Config’ tab in Live Editor to change the link curve style
	- not sure yet how to do this in obsidian
	- ![](https://miro.medium.com/max/1400/1*-xztgZrzC43TGOm0bB31-Q.png)
		````md
		```mermaid
			{
				"theme": "default",
				"flowchart": {
					"curve": "monotoneY"
					}
			}
		```
		````


## Full code
````md
```mermaid
graph TD

%% Adding a title to the flowchart using the SubGraph feature  
	subgraph SGTitle ["WHAT IS THE ROOT CAUSE OF THE PROBLEM? ____"]%% Nodes  
	    0[Key Variable<br>Target: 100, Actual: 80]  
	    1[Top Variable 1<br>Tgt: 20, Act: 20]  
	    2[Top Variable 2<br>Tgt: 30, Act: 30]  
	    3[Top Variable 3<br>Tgt: 50, Act: 30]  
	    31[Sub Variable 1<br>Tgt: 25, Act: 25]  
	    32[Sub Variable 2<br>Tgt: 25, Act: 5]  
	    321[Element 1<br>Tgt: 20, Act: 1]  
	    322[Element 2<br>Tgt: 5, Act: 4]
	end
%% Close title subgraph  
	
%% Links  
    0 --- 1  
    0 --- 2  
    0 --- 3  
    3 --- 31  
    3 --- 32  
    32 --- 321  
    32 --- 322
    
%% Defining node styles  
    classDef Red fill:#FF9999;  
    classDef Amber	fill:#FFDEAD;  
    classDef Green fill:#BDFFA4;
    
%% Assigning styles to nodes  
    class 3,32,321 Red;  
    class 322 Amber;  
    class 1,2,31 Green;  
      
%% Changing color of links [NOTE: Link arrows will remain black]  
    linkStyle default fill: none, stroke: grey;  
      
%% Styling the title subgraph  
    classDef Title fill:#FF99FF00, stroke-width:0, color:grey, font-weight:bold, font-size: 17px;  
    class SGTitle Title;
```
````

## References
- [Produce great looking flowcharts in seconds | by Dom Powys-Lybbe | Medium](https://dompl.medium.com/produce-great-looking-flowcharts-in-seconds-7f3bea64f2e2)

## Metadata
- topic:: [[00 Obsidian]]
- updated:: [[2022-07-27]]
- reviewed:: [[2022-07-27]]
- #Reference 
