String srcData = "q";
void main(){
  print(srcData?? "我是占位符");
  double src = 2037.34;
  double feeRate = 0.03;
  double fee = src * feeRate;

  print(src-fee);
  
  print(_deleteTag("asdasda</bar>"));

  _testBit();

  double srcDouble = 0.99;
//  print(srcDouble.toString().indexOf("."));
//  print(srcDouble.toString().substring(1,4));
  print(_regxDouble(srcDouble));

  String srcStr = "20200424\\bb473e51608e480b8c26a0327e8b8496.png";
  var replaceAll = srcStr.replaceAll("\\", "/");
  print(replaceAll);
}


String _regxDouble(double srcDouble){
    if(srcDouble.toString().indexOf(".") > 0){
      //小数位数大于2
      if(srcDouble.toString().substring(srcDouble.toString().indexOf("."),srcDouble.toString().length).length > 2){
        return srcDouble.toString().substring(0,srcDouble.toString().indexOf(".") + 3);
      }
    }
    return srcDouble.toStringAsFixed(2);
}

String _deleteTag(htmlStr){
  final newString = htmlStr.replaceAllMapped(new RegExp(r'<[^>]*>'), (match) {
    return '';
  });
  return newString;
}

void _testBit(){
  int number = 10;
  print(number<<1); // 20
  print(number<<1|1); //21
  print(number<<1&1); //21
  print(number>>1); // 5
  print(number>>1); //

  number = 4;
  print(number<<1|1); //9
  print(number<<1&1); //0
}