Scriptname AllowProgressDelayBugfixScript extends ReferenceAlias  
{Sets bAllowProgress to true when Dialogue Menu opens, to prevent long pause before interaction begins.}

; code

event OnInit()
    Startup()
endevent

event OnPlayerLoadGame()
    Startup()
endevent

function Startup()
    ((self.GetOwningQuest()) as AllowProgressDelayBugfixQuest).Startup()
endfunction
