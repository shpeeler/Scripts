; contains:
;   full support for languages: de, en, fr, es, it, pl, tr
;   desktop switch shortcuts on Win + LStrg & Win + LAlt, WIN1-5
;   media keys:
;       strg + alt + up/down arrow for volume
;       strg + alt + left/right for previous/next track
;       strg + alt + space to pause/resume

pl_key = "pl_key"

#Persistent
SetCapsLockState, AlwaysOff

    ; HOTKEYS FOR ACCENT TOGGLES
    *a::
        if not GetKeyState("Shift")
        {
            if accent=aigu
                Send, {ASC 0225}        ; á  
            else if accent=grave
                Send, {ASC 0224}        ; à 
            else if accent=circonflexe
                Send, {ASC 0226}        ; â
            else if accent=pl_key
                SendInput {U+0105}      ; ą
        }
        else
        {
            if accent=aigu
                Send,  {ASC 0192}        ; À
            else if accent=grave
                Send, {ASC 0193}         ; Á
            else if accent=circonflexe
                Send, {ASC 0194}         ; Â 
            else if accent=pl_key
                SendInput {U+0104}       ; Ą
        }
        
        Gosub,TurnAccentsOff
    Return

    *e::
        if not GetKeyState("Shift")
        {
            if accent=aigu
                Send, {ASC 0232}        ; è
            else if accent=grave
                Send, {ASC 0233}        ; é
            else if accent=circonflexe
                Send, {ASC 0234}        ; ê
            else if accent=pl_key
                SendInput {U+0119}      ; ę
        }
        else
        {
            if accent=aigu
                Send, {ASC 0200}        ; È
            else if accent=grave
                Send, {ASC 0201}        ; É
            else if accent=circonflexe
                Send, {ASC 0202}        ; Ê
            else if accent=pl_key
                SendInput {U+0118}      ; Ę
        }

        Gosub,TurnAccentsOff
    Return

    *i::
        if not GetKeyState("Shift")
        {
            if accent=aigu
                Send, {ASC 0236}        ; ì
            else if accent=grave
                Send, {ASC 0237}        ; í
            else if accent=circonflexe
                Send, {ASC 0238}        ; î
        }
        else
        {
            if accent=aigu
                Send, {ASC 0204}        ; Ì
            else if accent=grave
                Send, {ASC 0205}        ; Í 
            else if accent=circonflexe
                Send, {ASC 0206}        ; Î
        }

        Gosub,TurnAccentsOff
    Return

    *o::
        if not GetKeyState("Shift")
        {
            if accent=aigu
                Send, {ASC 0242}        ; ò
            else if accent=grave    
                Send, {ASC 0243}        ; ó
            else if accent=circonflexe
                Send, {ASC 0244}        ; ô
        }
        else
        {
            if accent=aigu
                Send, {ASC 0210}        ; Ò
            else if accent=grave    
                Send, {ASC 0211}        ; Ó
            else if accent=circonflexe
                Send, {ASC 0212}        ; Ô
        }
        Gosub,TurnAccentsOff
    Return

    *u::
        if not GetKeyState("Shift")
        {
            if accent=aigu
                Send, {ASC 0249}        ; ù
            else if accent=grave
                Send, {ASC 0250}        ; ú
            else if accent=circonflexe
                Send, {ASC 0251}        ; û
        }
        else
        {
            if accent=aigu
                Send, {ASC 0217}        ; Ù
            else if accent=grave
                Send, {ASC 0218}        ; Ú
            else if accent=circonflexe
                Send, {ASC 0219}        ; Û
        }
        Gosub,TurnAccentsOff
    Return

    *c::
        GetKeyState, state, Shift
        if state = U
        SendInput {U+0107}              ; ć
        else Send {U+0106}              ; Ć

        Gosub,TurnAccentsOff
    Return

    *n::
        GetKeyState, state, Shift
        if state = U
        SendInput {U+0144}              ; ń
        else Send {U+0143}              ; Ń

        Gosub,TurnAccentsOff
    Return

    *s::
        GetKeyState, state, Shift
        if state = U
        SendInput {U+015b}              ; ś
        else Send {U+015a}              ; Ś

        Gosub,TurnAccentsOff
    Return

    *z::
        GetKeyState, state, Shift
        if state = U
        SendInput {U+017a}              ; ź
        else Send {U+0179}              ; Ź
        
        Gosub,TurnAccentsOff
    Return

    ; CAPSLOCK BINDS
    CapsLock & c::
        GetKeyState, state, Shift
        if state = U
        SendInput {ASC 0231}                ; ç
        else Send, {ASC 0199}               ; Ç 
    Return

    CapsLock & a::
        GetKeyState, state, Shift
        if state = U
        SendInput {ASC 0228}			    ; ä
        else Send, {ASC 0196}			    ; Ä
    return

    RCtrl & a::
        GetKeyState, state, Shift
        if state = U
        SendInput {U+00E5}			    ; å
        else Send, {U+00C5}			    ; Å
    return

    CapsLock & o::
        GetKeyState, state, Shift
        if state = U
        SendInput {ASC 0246}			    ; ö
        else Send, {ASC 0214}			    ; Ö
    return

    CapsLock & u::
        GetKeyState, state, Shift 
        if state = U 
        SendInput {ASC 0252}			    ; ü 
        else Send, {ASC 0220}			    ; Ü
    return

    CapsLock & s:: 
        GetKeyState, state, Shift
        if state = U
        SendInput {U+015F}                  ; ş
        else Send, {U+015E}                 ; Ş
    return

    CapsLock & z::
        GetKeyState, state, Shift
        if state = U
        SendInput {U+017c}                  ; ż
        else Send, {U+017b}                 ; Ż
    return

    CapsLock & l:: 
        GetKeyState, state, Shift
        if state = U
        SendInput {U+0142}                  ; ł
        else Send, {U+0141}                 ; Ł
    return

    CapsLock & n::
        GetKeyState, state, Shift
        if state = U
        SendInput {ASC 0241}                  ; ñ
        else Send, {ASC 0209}                 ; Ñ
    return

    CapsLock & g:: 
        GetKeyState, state, Shift
        if state = U
        SendInput {U+011F}                  ; ĝ
        else Send, {U+011E}                 ; Ĝ
    return

    LAlt & s:: Send {U+00DF}                ; ß
    return

    CapsLock & i:: Send, {U+0131}           ; ı
    return

    ; switch to next desktop with Windows key + Left Alt key
    #LAlt:: 
        KeyWait LAlt
        SendInput #^{Right}
    Return

    ; switch to previous desktop with Windows key + Left CTRL key
    #LCtrl:: 
        KeyWait LCtrl
        SendInput #^{Left}
    Return

    ; media-keys
    ^!Space::Send {Media_Play_Pause}
    ^!Right::Send {Media_Next}
    ^!Left::Send {Media_Prev}
    ^!Up::Send {Volume_Up}
    ^!Down::Send {Volume_Down}

    ; turn accent toggles off
    TurnAccentsOff:
        Hotkey,*a,off
        Hotkey,*e,off
        Hotkey,*i,off
        Hotkey,*o,off
        Hotkey,*u,off
        Hotkey,*c,off
        Hotkey,*n,off
        Hotkey,*s,off
        Hotkey,*z,off
    Return

    ; turn accent toggles on
    TurnAccentsOn:
        Hotkey,*a,on
        Hotkey,*e,on
        Hotkey,*i,on
        Hotkey,*o,on
        Hotkey,*u,on
        Hotkey,*c,on
        Hotkey,*n,on
        Hotkey,*s,on
        Hotkey,*z,on
    Return

    CapsLock & =::
        GetKeyState, state, Shift
        if state = U                        ; set accent to aigu
            accent=aigu
        else
            accent=grave                    ; set accent to grave
            
        Gosub,TurnAccentsOn
    Return

    CapsLock & `::
        GetKeyState, state, Shift
        if state = U
            accent=pl_key                 ; bonus hotkey for polish characters
        else
            accent=circonflexe            ; set accent to circonflexe 

        Gosub,TurnAccentsOn
    Return

    SetInputLanguage(Lang)
    {
        WinExist("A")
        ControlGetFocus, CtrlInFocus
        PostMessage, 0x50, 0, % Lang, %CtrlInFocus%
    }

    CapsLock & 2::
        SetInputLanguage(0x0422)
    Return

    CapsLock & 1::
        SetInputLanguage(0x0409)
    Return

Gosub,TurnAccentsOff