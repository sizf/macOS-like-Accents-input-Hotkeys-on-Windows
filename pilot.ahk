SendMode Input

grave := { "diacritical" : "{U+0060}" ; `
         , "lowercase_a" : "à" ; this is a test commentg
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


sendSpecialCharacter(character, key) {
    Send % character
    KeyWait % key ; Prevent continous inputs.
    return
}

sendAccent(accents) {
    Send % accents["diacritical"]
    Input, userInput, B L1
    if (userInput = " ") {
    }
    else if (userInput = "{Backspace}") {
        Send {Backspace}
    }
    else if (userInput == "a") {
        Send % "{Backspace}" accents["lowercase_a"]
    }
    else if (userInput == "A") {
        Send % "{Backspace}" accents["uppercase_a"]
    }
    else if (userInput == "e" && accents["diacritical"] != "˜") {
        Send % "{Backspace}" accents["lowercase_e"]
    }
    else if (userInput == "E" && accents["diacritical"] != "˜") {
        Send % "{Backspace}" accents["uppercase_e"]
    }
    else if (userInput == "i" && accents["diacritical"] != "˜") {
        Send % "{Backspace}" accents["lowercase_i"]
    }
    else if (userInput == "I" && accents["diacritical"] != "˜") {
        Send % "{Backspace}" accents["uppercase_i"]
    }
    else if (userInput == "o") {
        Send % "{Backspace}" accents["lowercase_o"]
    }
    else if (userInput == "O") {
        Send % "{Backspace}" accents["uppercase_o"]
    }
    else if (userInput == "u" && accents["diacritical"] != "˜") {
        Send % "{Backspace}" accents["lowercase_u"]
    }
    else if (userInput == "U" && accents["diacritical"] != "˜") {
        Send % "{Backspace}" accents["uppercase_u"]
    }
    else if (userInput == "n" && accents["diacritical"] = "˜") {
        Send % "{Backspace}" accents["lowercase_n"]
    }
    else if (userInput == "N" && accents["diacritical"] = "˜") {
        Send % "{Backspace}" accents["uppercase_n"]
    }
    else {
        Send % userInput
    }
    return
}


!`::sendAccent(grave)
!1::Send ¡
!2::Send ™
!3::Send £
!4::Send ¢
!5::Send ∞
!6::Send §
!7::Send ¶
!8::Send •
!9::sendSpecialCharacter("ª", "9")
!0::sendSpecialCharacter("º", "0")
!-::Send –
!=::Send ≠
!Backspace:: Send ^{Backspace}
!q::sendSpecialCharacter("œ", "q")
!w::Send ∑
!e::sendAccent(acute)
!r::Send ®
!t::Send †
!y::Send ¥
!u::sendAccent(diaeresis)
!i::sendAccent(circumflex)
!o::sendSpecialCharacter("ø", "o")
!p::sendSpecialCharacter("π", "p")
![::Send “
!]::Send ‘
!\::Send «
!a::sendSpecialCharacter("å", "a")
!s::sendSpecialCharacter("ß", "s")
!d::Send ∂
!f::sendSpecialCharacter("ƒ", "f")
!g::Send ©
!h::Send ˙
!j::Send ∆
!k::Send ˚
!l::Send ¬
!;::Send …
!'::sendSpecialCharacter("æ", "'")
!z::sendSpecialCharacter("Ω", "z")
!x::Send ≈
!c::sendSpecialCharacter("ç", "c")
!v::Send √
!b::Send ∫
!n::sendAccent(tilde)
!m::sendSpecialCharacter("µ", "m")
!,::Send ≤
!.::Send ≥
!/::Send ÷
!Space::Send {Space}


!+`::Send {U+0060} ; `
!+1::Send ⁄
!+2::Send €
!+3::Send ‹
!+4::Send ›
!+5::sendSpecialCharacter("ﬁ", "5")
!+6::sendSpecialCharacter("ﬂ", "6")
!+7::Send ‡
!+8::Send °
!+9::Send ·
!+0::Send ‚
!+-::Send —
!+=::Send ±
!+Backspace:: Send ^{Backspace}
!+q::sendSpecialCharacter("Œ", "q")
!+w::Send „
!+e::Send ´
!+r::Send ‰
!+t::sendSpecialCharacter("ˇ", "t")
!+y::sendSpecialCharacter("Á", "y")
!+u::Send ¨
!+i::sendSpecialCharacter("ˆ", "i")
!+o::sendSpecialCharacter("Ø", "o")
!+p::Send ∏
!+[::Send ”
!+]::Send ’
!+\::Send »
!+a::sendSpecialCharacter("Å", "a")
!+s::sendSpecialCharacter("Í", "s")
!+d::sendSpecialCharacter("Î", "d")
!+f::sendSpecialCharacter("Ï", "f")
!+g::Send ˝
!+h::sendSpecialCharacter("Ó", "h")
!+j::sendSpecialCharacter("Ô", "j")
!+k::Send ⌘
!+l::sendSpecialCharacter("Ò", "l")
!+;::sendSpecialCharacter("Ú", ";")
!+'::sendSpecialCharacter("Æ", "'")
!+z::Send ¸
!+x::Send ˛
!+c::sendSpecialCharacter("Ç", "c")
!+v::Send ◊
!+b::sendSpecialCharacter("ı", "b")
!+n::Send ˜
!+m::sendSpecialCharacter("Â", "m")
!+,::Send ¯
!+.::Send ˘
!+/::Send ¿
!+Space::Send {Space}