import 'dart:developer';

customPrint(String text) {
  print(text);
}

customLog(String text) {
  log(text);
  print('******$text ********');
}
