import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizzy/views/experiment.dart';
import 'package:quizzy/views/otp.dart';
import 'package:quizzy/views/register.dart';
import 'package:quizzy/views/signin.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(new MyApp());
    });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
    );
  }
}
