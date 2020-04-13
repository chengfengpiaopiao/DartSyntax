String srcData = "q";
void main(){
  print(srcData?? "我是占位符");
  double src = 2037.34;
  double feeRate = 0.03;
  double fee = src * feeRate;

  print(src-fee);
  
  print(_deleteTag("asdasda</bar>"));

  _testBit();
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
  print(number>>1); // 5
}