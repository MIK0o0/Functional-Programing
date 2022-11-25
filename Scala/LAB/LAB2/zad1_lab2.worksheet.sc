def find[A](list:List[A],ele:A) = {

    def findRec[A](list:List[A],ele:A,n:Int):List[Int]={
        (list,ele) match
            case (Nil,_) => Nil
            case (hd::tl,x) if hd == x => n :: findRec(tl,ele,n+1)
            case (hd::tl,x) => findRec(tl,ele,n+1) 
    }
    findRec(list,ele,0)
}
find(List(1,2,3,2),2)
find(List(1,7,3,2),8)
find(Nil,2)
find(List(1,1,1,1,1,1),1)
find(List(1,2,3,2),"2")

def find123[A](ele:A) = find(List(1,2,3),ele)
find123(3)
def find787878[A](ele:A) = find(List(7,8,7,8,7,8),ele)
find787878(8)






        