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
 AwesomeWM manager used here to coustomize the home screen.The title bar was configured with Wibox [<a href="https://awesomewm.org/doc/api/index.html">Documentation</a>] We use 8 active workspaces for satisfying the minimal needs :innocent:, we are able to increase the workspaces if needed [<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/rc.lua#:~:text=awful.util.tagnames%20%3D%20%7B%20%22main%22%2C%20%22http%22%2C%20%22dev%22%2C%20%22dev2%22%2C%20%22misc%22%2C%22garbage%22%2C%20%227%22%2C%228%22%20%7D">rc.lua</a>]. The wibar was color themed for the wallpaper, the user can adjust the colors if needed [<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=theme.fg_normal%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3D,titlebar_fg_focus%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3D%20theme.fg_focus">theme.lua</a>], Fonts and wallpaper are also customizable [<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=theme.wallpaper,Terminus%209%22s">theme.lua</a>]. The wibar was completely customizable for all kind of users users can add or remove functions if needed



##### Don't copy paste [ not judging, copy paste idea maybe won't works for you ]
Create yours own config files :yum:
<div>
- Clock :clock1230: : <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%3Anew()-,%2D%2D%20Textclock,),-%2D%2D%20Calendar">theme.lua</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
- Calendar:date: : <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20Calendar,%7D)">theme.lua</a> <br>
- EMail :email: : <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20Mail%20IMAP,%2D%2D%5D%5D">theme.lua</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
- Music Player :musical_note:	 : <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20MPD,%7D)">theme.lua</a><br>
- Ram :floppy_disk: : <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20MEM,%7D)">theme.lua</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
- Cpu :computer: : <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20CPU,%7D)">theme.lua</a><br>
- Temp :face_with_thermometer: : <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=local%20tempicon%20%3D,%7D)">theme.lua</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
- Battery :hot_face: : <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20Battery,%7D)">theme.lua</a><br>
- Volume :ear_with_hearing_aid: : <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%7D)-,%2D%2D%20ALSA%20volume,)),-%2D%2D%20Net">theme.lua</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
- Internet 	:monocle_face: : <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/themes/powerarrow-dark/theme.lua#:~:text=%2D%2D%20Net,%7D)">theme.lua</a> <br>
- layouts :film_strip: : <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/awesome/rc.lua#:~:text=awful.layout.layouts,%7D">rc.lua</a>
</div>

all windows and its title bars are also coustomised as colorthemed :smiling_imp:

#### Personal Keybindings for the AwesomeWM 
________________________
Mod + S for see the keybindings 
 <img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/WM%20keybindings.png">

 
### Terminal [Bash/Kitty ] 
_______________________
<img src="https://img.icons8.com/office/40/7950F2/console.png"/>
Both terminals Kitty, and Bash are customly configured for the color theme and wallpaper . Bash/fish is supported by both terminals


* The followig terminal commands are only applicable for the bash terminal users 

Coustom terminal commands for bash user for simplifying the frequent used terminal commands:

Commands | undak | kala | chambikko | foxenv | foxreq | title |
--- | --- | --- | --- |--- |--- |--- |
Orginal commands | mkdir+cd or create file | delete directory or files | For update and upgrade | Create python virtualenv | install dependencies | Set coustom title for terminal |
 <img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/Bash%20terminal.png">
 
 For changing the design :<a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/terminal/bash/.bashrc#:~:text=if%20%5B%20%22,unset%20color_prompt%20force_color_prompt">check</a>
 
 
 #### Personal Keybindings for the <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/kitty/kitty.conf#:~:text=kitty_mod%20ctrl%2Bshift,%23%20%7D%7D%7D" >Kitty</a>



### Browser 
________________
Browser : Qute Browser
* My personal favourite browser now :kissing_heart: 
 I try to create a minimal and clean <a href="https://github.com/vishnudas-bluefox/dotfiles/tree/master/qutebrowser/startpage" >start page </a> for the browser. I tried my best to maintain the connection between the color themes and brand logo. The default vim keybindings was the most efficient part for the qute-browser.I love vim keybindings coustom key bindings isn't needed for this browser but i added few key bindings for increasing the quteness <a href="https://github.com/vishnudas-bluefox/dotfiles/blob/master/qutebrowser/config.py#:~:text=config.bind(%27M%27%2C%20%27hint,never%3B%3B%20config%2Dcycle%20tabs.show%20always%20never%27)">[ Key-bindings]</a>.
 <img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/clean_browser.png">
 
 ### Splash Screen 
 ______________
 Insted of using DM i plan to change the the spalsh screen and lock screen from the root files :upside_down_face:, Created coustom logo and animations for the splash screen. By the help of plymouth the task easily accomplished hit a try :hugs: 
 
 <img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/ezgif.com-gif-maker.gif">
 


<a href="https://github.com/vishnudas-bluefox/dotfiles/tree/master/boot_animation">Click here</a> to see the files
 
### Editor : Doom-eMacs
Currently using a boalted emacs [Spoiler : noob dev] , Here also i try my best to maintain the color theme and connection with wallpaper. Vim key binding was also available here [Evil-mode :smiling_imp: ]. The productivity was on another level with the doom emacs
<img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/doom_emacs.png%20">
<img src="https://github.com/vishnudas-bluefox/dotfiles/blob/master/screenshots/doom_emacconfig.png">
##### Some cool patches
* Email Client [m4ue]
* Music player [emms]
* neotree etc...
