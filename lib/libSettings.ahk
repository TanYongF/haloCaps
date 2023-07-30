global keymap := Map()
global globalConfig := Map()
FilePath := "./conf.ini"
SectionName := "keys"
globalConfigSectionName := "global"


;读取键值对映射
settingsKeys := IniRead(FilePath, SectionName)
settingsKeys := RegExReplace(settingsKeys, "m`n)=.*$")
For index, keyName in StrSplit(settingsKeys, "`n") {
    value := IniRead(FilePath, SectionName, keyName)
    ; MsgBox "The " index " is " keyName " " value
    keymap[keyName] := value
}

;读取全局配置
settingsKeys := IniRead(FilePath, globalConfigSectionName)
settingsKeys := RegExReplace(settingsKeys, "m`n)=.*$")
For index, keyName in StrSplit(settingsKeys, "`n") {
    value := IniRead(FilePath, globalConfigSectionName, keyName)
    MsgBox "The " index " is " keyName " " value
    globalConfig[keyName] := value
}


globalSettins:
    autostartLink := A_StartupCommon . "\haloCaps.lnk"
    if globalConfig["autostart"] == true {
        if FileExist(autostartLink) {
            FileGetShortcut(autostartLink, &lnkTarget)
            if lnkTarget != A_ScriptFullPath {
                FileCreateShortcut(A_ScriptFullPath, autostartLink, A_WorkingDir)    
            }
        } else {
            FileCreateShortcut(A_ScriptFullPath, autostartLink, A_WorkingDir)
        }
    }else{
        FileDelete autostartLink
    }