the following checklist is for *explanatory figures* (including tables), which is a special class of figures. other kinds of figures include "exploratory" and "schematic", which have somewhat different guidelines, and will be discussed elsewhere.



### crucial

1. Does the main point of the figure "pop-out" to your audience (note: answering this question successfully requires knowing precisely what the main point is, and who your audience is.)?
2. Is there any way to reduce cognitive load for the audience, and still make the same point?

### clutter:

1. unnecessary borders?
2. unnecessary gridlines?
3. unnecessary data markers?
4. axis labels as simple as possible?
5. data labeled directly if possible?
6. is there sufficient whitespace?

### color:

1. is color use consistent (within and across figures?
2. can colorblind people see it (use colororacle.org)?
4. is brand palette being used appropriately?
5. is each different color use justified?

### affordances:

1. is all data present critical?
2. can any data present be summarized effectively?
3. can anything be removed?
4. is anything that is not primary in the background?



### text:

1. Are all axes are labeled?
2. Do all axis labels have units?
3. Are all font sizes at least the size of the text font in the of the document?
4. Are all lines labeled? If so, can they be labeled directly, rather than in a legend?
5. Is your method named something other than ‘proposed method’ or 'our method’? If not, name it and use it throughout.
6. Are all the letters/numbers fully visible (i.e., not obscured by part of the figure)?
7. Can the language be simplified?
8. Is there a title? does it provide context (rather than naming the axes again, eg, the name of the dataset or simulation)?
9. Is everything that is "latexable" (like greek letters, subscripts, etc.) "latexed" (in other words, did you remove things like "alpha" or "_")?

### caption:

1. Does the caption begin with a sentence (fragment) stating what the figure is demonstrating (i.e., why it is there)?  
2. Does the caption define all acronyms used in the figure (especially if they are not used anywhere else)?
3. Does the caption end by pointing out particularly interesting aspects of the figure that one should note?
4. Is each panel explicitly mentioned/explained?
5. Is the caption below the figure (or above the table)?
6. If its a log scale, axis label say so?

### basics:

3. If there is 1 color, is it the default color (probably gray, so that black can be used for emphasis)? 
4. If there are multiple lines/dots, is each a different line style and color?
5. Are all lines sufficiently thick? (If you used matlab, and they are the default thickness, the answer is no.)
6. Are all markers clearly different?
7. Are the colors clearly different?
10. If errorbars make sense, are they there?  If there, does the caption explain whether they are standard error? If they are not there, is there a good justification provided for that?
12. Are you axes 'tight’ (that is, are the bounds of the axes just larger than the max and min of what you want to show)? If not, do you have good reason for the excess?
13. Are all graphics that can be vector graphics actually vector graphics? 
15. Is the aspect ratio correct? (Hint: if you rescaled both the width and height separately, it is probably not.)
16. If the data are 2D, are you displaying it in 2D? (If not, remove that additional 3rd dimension, it is just confusing and obfuscatory.)
17. Is anything not aligned that could be aligned?
14. Are the number of significant digits reasonable (eg, usually 2 is reasonable, 3 is not, in biology)?
18. If its a bar chart, does the y-axis start at zero (if it is a log axis, the answer is no)?  
19. If its a pie chart, can you replace it with a stacked barchart (or something else)?
20.  If you are comparing multiple approaches across multiple settings, are you grouping by the key comparison (eg, usually group by setting to make comparisons easier)?


### Multipanel figures

20. Can certain axes/labels be removed because they are redundant?
21. Does the caption specifically mention each?
22. Are the captions for each collected together in the overall figure caption?

### Table

23. Can it be converted to a figure? If so, do it (put table in appendix if you are scared of losing the information)!
24. Are the rows sorted in a reasonable fashion (ie, according to the most important column)?
14. Are the number of significant digits reasonable (eg, usually 2 is reasonable, 3 is not, in biology)?



### Issues to make:

- good/bad example for:
	- line plot
	- 2D scatter plot
	- "distributions" plot
	- heatmap