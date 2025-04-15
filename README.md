# CPSLimiter
An AutoHotkey script that allow you to set CPS Cap, ignoring mouse clicks that surpass the cap.

For user that familiar with AutoHotkey, you can run or edit the `source_code.ahk` inside bin folder.
For user that unfamiliar with AutoHotkey, just run the `CPS Limiter.bat` file inside bin folder.

Once running, it'll ask you to put your desired CPS limit.
If you wish to change the limit, simply re-run the program again.
You can force stop the program by pressing `Ctrl+Shift+Esc` on your keyboard.

**THIS IS NOT AN AUTOCLICKER**

With this program, no matter how fast you click, the amount of clicks get passed is capped at the given limit value. It might slightly offset from the limit value if too low or too high.

For example setting the limit to 4 can result in 3 ~ 6 clicks processed, or setting the limit to 40 might result in less clicks processed.

_This program originally written to set CPS Cap when playing Minecraft on a server that has strict CPS Limitation, such as play.luckynetwork.net._
_If you want to further implement the program to have GUI, more configurable stuff, etc., feel free to clone and modify._
