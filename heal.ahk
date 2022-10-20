SendMode Input
SetWorkingDir, %A_ScriptDir%
SetBatchLines -1
#SingleInstance, Force
#NoEnv
#Include %A_ScriptDir%\lib\findtext.ahk
#Include %A_ScriptDir%\lib\notify.ahk
; Gui


; Binds

F8::

t1:=A_TickCount, Text:=X:=Y:=""
Text:="|<>*132$8.zwC1aNaNbtyTYN6NaNaNUQLzU"
if (ok:=FindText(X, Y, 900-150000, 541-150000, 900+150000, 541+150000, 0, 0, Text))
{
    SendInput {G}
    MouseMove, 1117, 452
    Sleep 100
    MouseMove, 1035, 284
    Click
    Sleep 600
    t1:=A_TickCount, Text:=X:=Y:=""
    Text:="|<>*122$173.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzU7zzzzzzzzzzzzzzzzzzzzzzzzzzz07zzzzzzzzzzzzzzzzzzzzzzzzzzyTDzzzzzzzzzzzzzzzzzzzzzzzzzzwyQzDw30AwNlnDC3nwzU70w1kCSQ7sstyTk20NknXaQM3Xlz0A0s30Ask7k3nwzbgsnVb7AlXX7XyQTlnaSNX77X3U9yDtla3CCM7Da67wszXb8wkCTDDX8HwTnX86QQkCTA8Dtlk6CE0UMyST6Q7szb62AstUQyN2TnX2AQXz0twwyAtDtvCAANlnAMsmAzb6QNtbyMlls0tWTk0QMsk06QM3aNy040Xn0Ask7k3kAzk1sllU0AwMDDns0A17b0tskTzzzzzzzzzzzzzzzzzznyTzzzzzzzzzzzzzzzzzzzzzzzzzzbwzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
    if (ok:=FindText(X, Y, 960-150000, 1036-150000, 960+150000, 1036+150000, 0, 0, Text))
    {
        Notify.AddWindow("Не могу начать реанимацию",{Animate:"Blend",ShowDelay:100,Title:"Warning",TitleSize:16,Size:14,Time:3000,Background:"0x171717",Radius:20,Color:"0xffffff",TitleColor:"0xff3d3d"})
        Return
    }
    Notify.AddWindow("Реанимация начата",{Animate:"Blend",ShowDelay:100,Title:"Notify",TitleSize:20,Size:16,Time:4000,Background:"0x171717",Radius:20,Color:"0x04e300",TitleColor:"0xffffff"})
    Reanimation()
    Sleep 10
    Notify.AddWindow("Реанимация закончена",{Animate:"Blend",ShowDelay:100,Title:"Notify",TitleSize:20,Size:16,Time:4000,Background:"0x171717",Radius:20,Color:"0x04e300",TitleColor:"0xffffff"})
} else {
    Notify.AddWindow("Не могу открыть меню взаимодействия",{Animate:"Blend",ShowDelay:100,Title:"Warning",TitleSize:16,Size:14,Time:3000,Background:"0x171717",Radius:20,Color:"0xffffff",TitleColor:"0xff3d3d"})
    Return
}

Return

; Functions

Reanimation() {
    SendInput, {F6}
    Sleep 100
    SendInput, /do Медицинская сумка висит на плече.{Enter}
    Sleep 1100
    SendInput, {F6}
    Sleep 100
    SendInput, /me проверил пульс и дыхание пациента{Enter}
    Sleep 1100
    SendInput, {F6}
    Sleep 100
    SendInput, /me достал прокладку из бинта, наложив на рот пациента{Enter}
    Sleep 1100
    SendInput, {F6}
    Sleep 100
    SendInput, /do Бинт наложен.{Enter}
    Sleep 1100
    SendInput, {F6}
    Sleep 100
    SendInput, /me проводит искусственное дыхание{Enter}
    Sleep 1100
    SendInput, {F6}
    Sleep 100
    SendInput, /do Пациент очнулся.{Enter}
}