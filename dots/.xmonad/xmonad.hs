import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig
import XMonad.Layout.NoBorders
import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Prompt.Window
import System.IO
import qualified XMonad.StackSet as W
import XMonad.Actions.CycleWS as C

main = do
    xmoproc <- spawnPipe "/usr/bin/xmobar ~/.xmobarrc"
    xmonad $ defaultConfig {
	terminal = "urxvt",
    	modMask = mod4Mask,
        manageHook = manageDocks <+> manageHook defaultConfig,
	layoutHook = avoidStruts $ smartBorders $ layoutHook defaultConfig,
	logHook = dynamicLogWithPP xmobarPP
	  	  		   {ppOutput = hPutStrLn xmoproc,
				    ppTitle = xmobarColor "green" "" . shorten 50
				    }
 	}
	`additionalKeysP`
	[ 
          ("M-a", C.toggleWS),
          ("M-;", sendMessage ToggleStruts)
	]
    