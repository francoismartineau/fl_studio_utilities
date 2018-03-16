;À FAIRE
;------> fais des raccourcis qui font apparaître une fenêtre, clique à la bonne
;        place et charge des trucs précis. Choisir des choses que je veux me mettre à faire plus souvent.


;Voir les autres patterns à travers le pattern courant (piano roll)
;Voir un sample dans la playlist à travers le pattern courant (piano roll)
;
;Split pattern by channel groups (not by channels)
;Merge patterns
;Double pattern length by duplicating its content
;
;Make envelope without release, hold, decay, low sustain
;------------------------------------------------------------------------


;GENERAL
;   Move view                       Shift + Right drag
;   Delete                          Wheel click 
;   Rename                          /

;RECORDING
;   Input microphone                F12 + Alt
;   Input stereo mix                F12 + Ctrl


;WINDOWS
;   Playlist                        F1
;   Pattern                         F2
;   Piano Roll                      F3
;   Mixer                           F4

;GROUPS
;   Group channels                  Alt + G
;   Move channel up down            Alt + arrows
;   Scroll channel groups           Fn +  arrows

;TOOLS
;   Cut                             Q
;   Brush                           W
;   Pencil                          A
;   Slide (native)                  S

;PATTERNS
;   1                               Pattern down
;   2                               Pattern up
;   Shift -                         Insert pattern
;   Alt =                           Duplicate pattern

;Step edit mode                     Ctrl+E
;   Next                            }] key
;   Previous                        {[ key


;----------------------------------------------------------------
;Diminuer l'utilisation du CPU
;
;   -Arme une track du mixer et exporte la
;           .fais une selection temporelle dans la toune
;           .solo des tracks de playlist
;   -Diminuer la polyphonie
;   -Triple buffer pis l'autre buffer option pour Asio. Si finalement ça sert à rien, désactive les.





#UseHook
#NoTrayIcon
Gui,+ToolWindow
#IfWinActive, ahk_class TFruityLoopsMainForm 
{
1::NumpadSub
2::NumpadAdd
^VKDD::NumpadMult   ;}] key
^VKDB::NumpadDiv    ;{[ key
!s::Send {f3}{Left}{Down}{Down}{Down}{Down}{Right}
+!s::Send {f3}{Down}{Right}{Down}{Down}{Right}
q::Send c
w::Send b
a::Send p

~mbutton::Delete
+-::+^Insert
!=::
    Send {Shift down}
    Send {Ctrl down}
    Send C
    Send {Shift up}
    Send {Ctrl up}
    return

/::F2

F1:: F5
F2:: F6
F3::F7
F4::F9
F12:: Run "C:\Users\ffran\scripts\fl_studio\fl_studio_f12.vbs"
!F12:: Run "C:\Users\ffran\scripts\fl_studio\set_microphone.bat"
+F12:: Run "C:\Users\ffran\scripts\fl_studio\set_stereo_mix.bat"
}
