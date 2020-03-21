.assembly ILConsole {}
.class private auto ansi Program extends [mscorlib]System.Object
{
    .method public hidebysig static void Run() il managed
    {
        .entrypoint
        .locals ([0] class [mscorlib]System.Exception)
        .try
        {
            ldstr "a string"
			throw
            leave.s exit
        }
        catch [mscorlib]System.Exception
        {
            stloc.0
            ldstr   "Cought Exception"
            call    void [mscorlib]System.Console::Write(class System.String)
            leave.s exit
        }
        catch System.String
        {
            stloc.0
            ldstr    "Cought String"
            call    void [mscorlib]System.Console::Write(class System.String)
            leave.s exit
        }
 
        exit: ret
    }
}