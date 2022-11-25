val x = 0
def lg(n : Int):Int ={
    if(n <= 2){
        1
    }else{
        lg(n/2) + 1
    }
}
def rekurencja(n : Int) : Int = {
    if(n == 1){
        1
    }else{
        lg(n) + rekurencja(n/2)
    }
}
rekurencja(4)
rekurencja(8)
rekurencja(32)
rekurencja(64)
rekurencja(1024)