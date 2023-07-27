;运行函数字符串
runFunc(str){
    ;如果只给了函数名，没有括号，当做是不传参直接调用函数
    if(!RegExMatch(Trim(str), "\)$"))
    {
        %str%()
        return
    }
}
