<div id="header" align="center">
  <img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/qutebrowser/startpage/bluefox.png" width="200"/>
</div>

# My awesome dotfiles
Personal dotfiles

#### Window manager : AwesomeWM
#### Bar : Wibox
#### Menu : Dmenu
#### Terminal : Kitty/Gnome-Terminal [fish/bash]  
#### Browser : Qutebrowser
#### SplashScreen : Plymouth [Coustom config file]
#### Editor : Doom-eMacs
#### Music player : emms
#### Email : mu4e

## Installation 
_____________________

* Configure rc.lua files and other theme files [Mod4 + s ] for lookup the Keybindings
* Configure bashrc file for coustomize Gnome-terminal and adjust the colors
* For run Kitty configure Kitty terminal configuration file properly
* Copy Qute browser folder configure the entire data and images 
* enjoy:)

### HomeSCreen 
_______________
 <img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/Homescreen.png" >
 
 The AwesomeWM window manager was employed to effect customizations on the home screen. The title bar was configured utilizing the Wibox utility, in accordance with the established [<a href="https://awesomewm.org/doc/api/index.html">Documentation</a>]. For the purposes of satiating minimum requirements, eight active workspaces were utilized, with the option of expansion available to meet any exigencies, as per the stipulations of the [<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/rc.lua#:~:text=awful.util.tagnames%20%3D%20%7B%20%22main%22%2C%20%22http%22%2C%20%22dev%22%2C%20%22dev2%22%2C%20%22misc%22%2C%22garbage%22%2C%20%227%22%2C%228%22%20%7D">rc.lua</a>] file. The wibar was custom-fitted with a color theme that mirrored the wallpaper, and afforded flexibility for users to adjust the color schema as necessitated in the  [<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=theme.fg_normal%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3D,titlebar_fg_focus%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3D%20theme.fg_focus">theme.lua</a>] file. Both fonts and wallpaper graphics were rendered open to modification within the same [<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=theme.wallpaper,Terminus%209%22s">theme.lua</a>] file. Users were provided the capability of all-encompassing customization of the wibar, with the added benefit of permitting the installation and removal of any desired functions. We invite you to create and configure your own config files using these parameters.




Create yours own config files :yum:
<div>

Functions | Description|
---|---|
<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%3Anew()-,%2D%2D%20Textclock,),-%2D%2D%20Calendar">Clock :clock1230:</a> | Creates a clock widget |
<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20Calendar,%7D)">Calendar:date:</a> | Creates the calender widget |
<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20Mail%20IMAP,%2D%2D%5D%5D">EMail :email:</a> | Creates Email widget |
<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20MPD,%7D)">Music Player :musical_note:</a> | Creates a music player widget |
<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20MEM,%7D)">Ram :floppy_disk:</a> | Update ram usage|
<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20CPU,%7D)">Cpu :computer:</a> |update cpu usage |
<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=local%20tempicon%20%3D,%7D)">Temp :face_with_thermometer:</a> | Update cpu temperature |
<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20Battery,%7D)">Battery :hot_face:</a> | Battery status or return battery charge |
<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%7D)-,%2D%2D%20ALSA%20volume,)),-%2D%2D%20Net">Volume :ear_with_hearing_aid:</a> | return current volume and adjust the volume using keybindings |
<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20Net,%7D)">Internet 	:monocle_face:</a> | Currently uploading and downloading speed |
<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/rc.lua#:~:text=awful.layout.layouts,%7D">layouts :film_strip:</a> | Show which layout we are currently using |
</div>

all windows and its title bars are also coustomised as colorthemed :smiling_imp:

#### Personal Keybindings for the AwesomeWM 
________________________
Mod + S for see the keybindings 
 <img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/WM%20keybindings.png">

 
### Terminal [Bash/Kitty ] 
_______________________
<img src="https://img.icons8.com/office/40/7950F2/console.png"/>

* Both Kitty and Bash terminals have been customized to reflect a unified color scheme and wallpaper.
* Both terminals support Bash and Fish shells.
* The following terminal commands are specific to Bash users.

Custom Bash terminal commands have been configured to simplify frequently-used commands:
Commands | undak | kala | chambikko | foxenv | foxreq | title |
--- | --- | --- | --- |--- |--- |--- |
Orginal commands | mkdir+cd or create file | delete directory or files | For update and upgrade | Create python virtualenv | install dependencies | Set coustom title for terminal |
 <img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/Bash%20terminal.png">
 
 <img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/gifs/terminal.gif">
 


 For changing the design :<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/terminal/bash/.bashrc#:~:text=if%20%5B%20%22,unset%20color_prompt%20force_color_prompt">check</a>
 
 
 #### Personal Keybindings for the <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/kitty/kitty.conf#:~:text=kitty_mod%20ctrl%2Bshift,%23%20%7D%7D%7D" >Kitty</a>



### Browser 
________________
Browser : Qute Browser
My preferred web browser is QuteBrowser :kissing_heart:, and I have attempted to establish a minimalistic and uncluttered arrangement. A concerted effort has been made to ensure that the color themes and brand logos are coherent and interconnected. In keeping with the QuteBrowser's default vim keybindings, this feature has been a prime advantage. I personally favor vim keybindings, and therefore have not felt the need to create customized keybindings for this browser. However, in a bid to enhance the overall aesthetics and elevate the 'quteness', a few supplementary keybindings have been included, as detailed in the<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/qutebrowser/config.py#:~:text=config.bind(%27M%27%2C%20%27hint,never%3B%3B%20config%2Dcycle%20tabs.show%20always%20never%27)">[ Key-bindings]</a>. section.

 <img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/clean_browser.png">
 <img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/gifs/Browser.gif">

  
 ### Splash Screen 
 ______________
 Insted of using DM i plan to change the the spalsh screen and lock screen from the root files :upside_down_face:, Created coustom logo and animations for the splash screen. By the help of plymouth the task easily accomplished hit a try :hugs: 
 
 <img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/ezgif.com-gif-maker.gif">
 


<a href="https://github.com/vishnudas-bluefox/dotfiles/tree/master/boot_animation">Click here</a> to see the files
 
### Editor : Doom-eMacs
__________________________
Currently using a boalted emacs [Spoiler : noob dev] , Here also i try my best to maintain the color theme and connection with wallpaper. Vim key binding was also available here [Evil-mode :smiling_imp: ]. The productivity was on another level with the doom emacs
<img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/doom_emacs.png%20">
<img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/doom_emacconfig.png">
<img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/gifs/doom.gif">

##### Some cool patches
* Email Client [m4ue]
* Music player [emms] workflow video: <a href="https://youtu.be/yKGnk7SNmKg">Click Here</a>
* neotree etc...

##### Touch clicking on
* by default the awesome touchpad provide button click action for touchpad devices we need to manually enable touch click functionality

