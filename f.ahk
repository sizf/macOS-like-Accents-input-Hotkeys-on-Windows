SendMode Input


grave := { "diacritical" : "{U+0060}" ;`
         , "lowercase_a" : "à"
         , "lowercase_e" : "è"
         , "lowercase_i" : "ì"
         , "lowercase_o" : "ò"
         , "lowercase_u" : "ù"
         , "uppercase_a" : "À"
         , "uppercase_e" : "È"
         , "uppercase_i" : "Ì"
         , "uppercase_o" : "Ò"
         , "uppercase_u" : "Ù" }

acute := { "diacritical" : "´"
         , "lowercase_a" : "á"
         , "lowercase_e" : "é"
         , "lowercase_i" : "í"
         , "lowercase_o" : "ó"
         , "lowercase_u" : "ú"
         , "uppercase_a" : "Á"
         , "uppercase_e" : "É"
         , "uppercase_i" : "Í"
         , "uppercase_o" : "Ó"
         , "uppercase_u" : "Ú" }

diaeresis := { "diacritical" : "¨"
             , "lowercase_a" : "ä"
             , "lowercase_e" : "ë"
             , "lowercase_i" : "ï"
             , "lowercase_o" : "ö"
             , "lowercase_u" : "ü"
             , "uppercase_a" : "Ä"
             , "uppercase_e" : "Ë"
             , "uppercase_i" : "Ï"
             , "uppercase_o" : "Ö"
             , "uppercase_u" : "Ü" }

circumflex := { "diacritical" : "ˆ"
             , "lowercase_a" : "â"
             , "lowercase_e" : "ê"
             , "lowercase_i" : "î"
             , "lowercase_o" : "ô"
             , "lowercase_u" : "û"
             , "uppercase_a" : "Â"
             , "uppercase_e" : "Ê"
             , "uppercase_i" : "Î"
             , "uppercase_o" : "Ô"
             , "uppercase_u" : "Û" }

tilde := { "diacritical" : "˜"
             , "lowercase_a" : "ã"
             , "lowercase_n" : "ñ"
             , "lowercase_o" : "õ"
             , "uppercase_a" : "Ã"
             , "uppercase_n" : "Ñ"
             , "uppercase_o" : "Õ" }


!`::sendAccent(grave)
!1::Send ¡
!2::Send ™
!3::Send £
!4::Send ¢
!5::Send ∞
!6::Send §
!7::Send ¶
!8::Send •
!9::Send ª
!0::Send º
!-::Send –
!=::Send ≠
!q::Send œ
!w::Send ∑
!e::sendAccent(acute)
!r::Send ®
!t::Send †
!y::Send ¥
!u::sendAccent(diaeresis)
!i::sendAccent(circumflex)
!o::Send ø
!p::Send π
![::Send “
!]::Send ‘
!\::Send «
!a::Send å
!s::Send ß
!d::Send ∂
!f::Send ƒ
!g::Send ©
!h::Send ˙
!j::Send ∆
!k::Send ˚
!l::Send ¬
!;::Send …
!'::Send æ
!z::Send Ω
!x::Send ≈
!c::Send ç
!v::Send √
!b::Send ∫
!n::sendAccent(tilde)
!m::Send µ
!,::Send ≤
!.::Send ≥
!/::Send ÷


!+`::Send {U+0060} ;`
!+1::Send ⁄
!+2::Send €
!+3::Send ‹
!+4::Send ›
!+5::Send ﬁ
!+6::Send ﬂ
!+7::Send ‡
!+8::Send °
!+9::Send ·
!+0::Send ‚
!+-::Send —
!+=::Send ±
!+q::Send Œ
!+w::Send „
!+e::Send ´
!+r::Send ‰
!+t::Send ˇ
!+y::Send Á
!+u::Send ¨
!+i::Send ˆ
!+o::Send Ø
!+p::Send ∏
!+[::Send ”
!+]::Send ’
!+\::Send »
!+a::Send Å
!+s::Send Í
!+d::Send Î
!+f::Send Ï
!+g::Send ˝
!+h::Send Ó
!+j::Send Ô
!+k::Send ⌘
!+l::Send Ò
!+;::Send Ú
!+'::Send Æ
!+z::Send ¸
!+x::Send ˘
!+c::Send Ç
!+v::Send ◊
!+b::Send ı
!+n::Send ˜
!+m::Send Â
!+,::Send ¯
!+.::Send ˘
!+/::Send ¿


sendAccent(accents) {
    Send % accents["diacritical"]
    hook := InputHook("B C L1")
    hook.Start()
    hook.Wait()
    hook.Stop()
    if (hook.Input == "a")
    {
        Send % "{Backspace}" accents["lowercase_a"]
    }
    else if (hook.Input == "A")
    {
        Send % "{Backspace}" accents["uppercase_a"]
    }
    else if (hook.Input == "e")
    {
        if (accents["diacritical"] = "˜")
        {
            Send % hook.Input
        }
        else
        {
            Send % "{Backspace}" accents["lowercase_e"]
        }
    }
    else if (hook.Input == "E")
    {
        if (accents["diacritical"] = "˜")
        {
            Send % hook.Input
        }
        else
        {
            Send % "{Backspace}" accents["uppercase_e"]
        }
    }
    else if (hook.Input == "i")
    {
        if (accents["diacritical"] = "˜")
        {
            Send % hook.Input
        }
        else
        {
            Send % "{Backspace}" accents["lowercase_i"]
        }
    }
    else if (hook.Input == "I")
    {
        if (accents["diacritical"] = "˜")
        {
            Send % hook.Input
        }
        else
        {
            Send % "{Backspace}" accents["uppercase_i"]
        }
    }
    else if (hook.Input == "o")
    {
        Send % "{Backspace}" accents["lowercase_o"]
    }
    else if (hook.Input == "O")
    {
        Send % "{Backspace}" accents["uppercase_o"]
    }
    else if (hook.Input == "u")
    {
        if (accents["diacritical"] = "˜")
        {
            Send % hook.Input
        }
        else
        {
            Send % "{Backspace}" accents["lowercase_u"]
        }
    }
    else if (hook.Input == "U")
    {
        if (accents["diacritical"] = "˜")
        {
            Send % hook.Input
        }
        else
        {
            Send % "{Backspace}" accents["uppercase_u"]
        }
    }
    else if (hook.Input == "n")
    {
        if (!accents["diacritical"] = "˜")
        {
            Send % hook.Input
        }
        else
        {
            Send % "{Backspace}" accents["lowercase_n"]
        }
    }
    else if (hook.Input == "N")
    {
        if (!accents["diacritical"] = "˜")
        {
            Send % hook.Input
        }
        else
        {
            Send % "{Backspace}" accents["uppercase_n"]
        }
    }
    else
    {
        Send % hook.Input
    }
    hook.Stop()
    return
}