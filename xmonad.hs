import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeysP)
import System.IO

main = do
    spawn "feh --bg-fill /home/josh/Pictures/background.jpg"
    xmproc <- spawnPipe "xmobar /home/josh/.xmobarrc"
    xmonad $ defaultConfig {
            manageHook = manageDocks <+> manageHook defaultConfig,
            layoutHook = avoidStruts $ layoutHook defaultConfig,
            modMask = mod4Mask
        } `additionalKeysP` [
            ("M-S-l", spawn "gnome-screensaver-command -l")
        ]
