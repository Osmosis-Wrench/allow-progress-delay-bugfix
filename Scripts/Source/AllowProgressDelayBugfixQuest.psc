Scriptname AllowProgressDelayBugfixQuest extends Quest  
{Sets bAllowProgress to true when Dialogue Menu opens, to prevent long pause before interaction begins.}

; code

event OnInit()
    Startup()
endevent

function Startup()
    RegisterForMenu("Dialogue Menu")
endfunction

Event OnMenuOpen(String MenuName)
    UI.SetBool("Dialogue Menu", "_root.DialogueMenu_mc.bAllowProgress", true)
EndEvent
