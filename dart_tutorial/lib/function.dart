// function which returns value
int add(int a, int b) {
  return a + b;
}

double multiply({double x = 0, double y = 0}) {
  print('x= $x , y = $y');
  return x * y;
}

sayHello([String name = 'world']) {
  print("Hello $name");
}

String getUrl(String serverName, {int port = 8080}) =>
    'http://$serverName:$port'; // one-line function

String getDateTimeString({int? day, int? month, int? year}) {
  String strDay = (day ?? 0) < 10 ? '0$day' : '$day';
// ?? means "Default value"
// ? means optional variable = nullable;
  String strMonth = (day ?? 0) < 10 ? '0$month' : '$month';
  return '$strDay-$strMonth-$year';
}
