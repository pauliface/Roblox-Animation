# Prompt History

## Previous Session (date unknown)

1. [date unknown]
what do you see in studio?

2. [date unknown]
using BigMarionette as an example, make a marionette of a red dog with movable parts like the one you started with

3. [date unknown]
change the maxactivationdistance of each dragdetector to 1000

4. [date unknown]
create a new plugin called DogMarionette. It will be for creating dogs marionettes like the one you just made. The UI should have (1) a section with 4 color picker interfaces. one to set the color of the head, one for the color of the body and tail, one for the legs, and one for the control handles of the dog (2) a UI to set sizes. One for the overall size, one for the length of the legs, and one for the length of the snout (3) a button to create a new DogMarionette using the colors and sizes in the other two sections

5. [date unknown]
I do not see any UI in the DogMarionette plugin

6. [date unknown]
it works, create the dog

7. [date unknown]
in the plugin, create the marionettes so that the feet are 1 stud above the baseplate

8. [date unknown]
push this version of the plugin to my git repository named marionettes

9. [date unknown]
https://github.com/pauliface/Marionettes.git

10. [date unknown]
can you make the color editors use sliders for r g and b values

## 2026-02-19

1. [2026-02-19, time unknown]
I do not see any change in the plugin.

2. [2026-02-19, time unknown]
maybe republish?

3. [2026-02-19, time unknown]
oh nevermind, you made a second version

4. [2026-02-19, time unknown]
remove the plugin that has the text entry and keep the one that has the sliders

5. [2026-02-19, time unknown]
push this new version to the git repo

6. [2026-02-19, time unknown]
make it so the doggies fire bullets from their snout when you click their head

7. [2026-02-19, time unknown]
The DragDetector and the ClickDetector below the head are competing to handle events. Can you leave out the clickdetector, and in the ShootBullets script, use the DragDetector onDragStart event to trigger the bullet firing instead

8. [2026-02-19, time unknown]
Can you add a trail of particles to the bullet?

9. [2026-02-19, time unknown]
why do the dogs legs go through the floor when you lower the handles?

10. [2026-02-19, time unknown]
please print all the prompts I have given you since the start of this session

11. [2026-02-19, time unknown]
you don't have any from before that?

12. [2026-02-19, time unknown]
can I see the auto-generated summary?

## 2026-02-24


&nbsp;

```
+==============================================================+
|                                                              |
|             *  BEGIN ROBLOX ANIMATION PROJECT  *             |
|                                                              |
+==============================================================+
```

&nbsp;

1. [2026-02-24, time unknown]
create a new directory named Roblox_Animation in the workspace, with a markup file describing that project. We will put a description of the project I want to make in that file.

2. [2026-02-24, time unknown]
We are going to create a library of lua modules and components to support (1) creating Curve Animations (2) creating animation assets in the Roblox cloud (3) wiring those animations to drive properties (4) a plugin for analyzing memory usage and playback speed of those animations and (5) a plugin for creating interactive triggers that start and stop the playback of those animations

3. [2026-02-24, time unknown]
initialize a git repo for this project

4. [2026-02-24, time unknown]
Whenever I ask you to clear the context, I want you to first commit any changes to the repo

5. [2026-02-24, time unknown]
show me where to look to know that you are going to peform these commits. Did you write it down in a file?

6. [2026-02-24, time unknown]
where did you put the git repository?

7. [2026-02-24, time unknown]
I want you to push this reposity to this location: https://github.com/pauliface/Roblox-Animation.git

8. [2026-02-24, time unknown]
When I said above that I wanted you to commit my changes before clearning, I meant that you should commit the changes and also push that commit to the url on github. In addition, please commit and push whenever you shut down

9. [2026-02-24, time unknown]
Also, create a new file in the repository called PromptHistory. Whenever I give you a new prompt, add it to that file. Also, please initialize the file with the prompts so far this session.

10. [2026-02-24, time unknown]
ooh, and each prompt should be preceded by the date and time

11. [2026-02-24, time unknown]
the spacing of the frame is not right. In the line with the text, the bar is left of the lines above and below it. Please fix.

12. [2026-02-24, time unknown]
Also, add a newline after the date/time, and before the text of the prompt.

13. [2026-02-24, time unknown]
Remember this formatting for the future.

14. [2026-02-24, time unknown]
clear the context

15. [2026-02-24, time unknown]
within the Roblox Animation library, create a new library called CurveAnimations

16. [2026-02-24, time unknown]
Add the above task to the first section of the README.md file you created earlier

17. [2026-02-24, time unknown]
Am I correct in saying that when you start up and look at the README.md, you will understand that you have already created the CurveAnimations library and you will not repeat that action?

18. [2026-02-24, time unknown]
can you tell me the name of a text editor on mac that I can use to look at your files, that has a reload command to update your changes without reloading? Or one that automatically reloads?

19. [2026-02-24, time unknown]
ok, I have VS Code open

20. [2026-02-24, time unknown]
I don't see all the latest prompts in PromptHistory.md
