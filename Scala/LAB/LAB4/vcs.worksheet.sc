sealed trait snapshot 
    case class Create(str:String) extends snapshot
    case class Append(str:String,i:Int) extends snapshot
    case class AppendToEnd(str:String) extends snapshot
    case class Delete(i:Int,j:Int) extends snapshot
    case class Insert(i:Int,j:Int) extends snapshot

sealed trait snapTree
    case class Empty() extends snapTree
    case class Snap(snap:snapshot,tree:snapTree) extends snapTree



def append(strMain:String,strToAppend:String,i:Int) =
    val length = strMain.length()
    if i>length || i<0 then throw new Exception("dsa") else
        if i == 0 then strToAppend+strMain
        else if i == length then strMain+strToAppend
        else
            def appendHelp(n:Int,isAppend:Int):String =
                if (n == length && isAppend == 0) then strToAppend
                else if n == length then ""
                else if n==i then strToAppend+(strMain(n).toString())+appendHelp(n+1,1)
                else (strMain(n).toString())+appendHelp(n+1,isAppend)
            appendHelp(0,0)

def split(str:String,len:Int) =
    def splitHelp(n:Int):List[String] =
        if n<len then str(n).toString()::splitHelp(n+1)
        else Nil
    splitHelp(0)

def delete(str:String,i:Int,j:Int) = 
    
    val length = str.length()
    if j>length || i<0 then throw new Exception("dsa") else
        val list = split(str,length)
        def deleteHelp(l:List[String],n:Int):String =
            l match
                case head :: next => if (n >= i && n<=j) then deleteHelp(next,n+1) else head+deleteHelp(next,n+1)
                case Nil => ""
        deleteHelp(list,0)

def insert(str:String,i:Int,j:Int) =
    val length = str.length()
    if j>length || i<0 then throw new Exception("dsa") else
        val toInsert = str(i).toString()
        def insertHelp(i:Int,j:Int,n:Int):String =
            if n==length then ""
            else if n == i then insertHelp(i,j,n+1)
            else if (j>i && n==(j+1))  then (str(n).toString())+toInsert + insertHelp(i,j,n+1)
            else if (j<i && n==j) then toInsert +(str(n).toString())+ insertHelp(i,j,n+1)
            else str(n).toString()+insertHelp(i,j,n+1)
        insertHelp(i,j,0)




def review(st:snapTree) = 
    def build(st:snapTree):String =
        st match
            case Empty() => ""
            case Snap(snap, next) => snap match
                case Create(str) => if next == Empty() then str else throw new Exception("snapshot fail")
                case Append(str,i) => append(build(next),str,i)
                case AppendToEnd(str) => build(next)+str
                case Delete(i, j) => delete(build(next),i,j)
                case Insert(i, j) =>insert(build(next),i,j)
    try{Some(build(st))} catch {case ex:Exception=> None}

val sample = Snap(AppendToEnd(" kota"),Snap(Append(" ma",3),Snap(Create("Ala"),Empty())))
val sample2 = Snap(Insert(3,5),Snap(Insert(3,5),Snap(Insert(3,5),Snap(Create("Wladyslaw"),Empty()))))
val sample3 = Snap(Append("Piekna ",0),Snap(AppendToEnd(" duzego"),sample))
val sample4 = Snap(Delete(3,6),Snap(Create("0123456789"),Empty()))
val sample5 = Snap(AppendToEnd("111"),Snap(AppendToEnd("mam"),Snap(Create("222"),Empty())))
val sample6 = Snap(Insert(8,0),Snap(Insert(8,0),Snap(Insert(8,0),sample5)))
val sample7 = Snap(Delete(3,5),sample6)
val sample8 = Snap(Delete(1,999),sample)
val sample9 = Snap(Create("test"),sample)

review (sample)
review (sample2)
review (sample3)
review (sample4)
review (sample5)
review (sample6)
review (sample7)
review (sample8)
review (sample9)
             
            
        
            