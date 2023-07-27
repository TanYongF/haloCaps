global keymap := Map()
FilePath := "./conf.ini"
SectionName := "keys"


LoadKeyMapFromConf(){
    settingsKeys := IniRead(FilePath, SectionName)
    settingsKeys:=RegExReplace(settingsKeys, "m`n)=.*$")
    For index, keyName in StrSplit(settingsKeys,"`n"){
        value := IniRead(FilePath, SectionName, keyName)
        ; MsgBox "The " index " is " keyName " " value
        keymap[keyName] := value
    }
}
