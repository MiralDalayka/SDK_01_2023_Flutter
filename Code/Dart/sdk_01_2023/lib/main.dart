import 'package:flutter/material.dart';

import 'Navigation4/Router/const_routers.dart';
import 'Navigation4/Router/router_class.dart';
//fire base main
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Prefs.init();
  runApp(const MyApp());
}

class RealTimeDatabaseApp extends StatelessWidget {
  const RealTimeDatabaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: realtimeProvider.PostProvider())
      ],
      child: MaterialApp(
        onGenerateRoute: realtime.MyRouter.generateRoute,
        initialRoute: realTimeRoute.splashRote,
//       home: AddEditPostScreen(),
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       // home: Page1(),
//       initialRoute: page1Route,
//       onGenerateRoute: MyRouter.generateRoute,
//     );
//   }
// }



//multi provider main
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(providers: [
//       ChangeNotifierProvider(
//         create: (BuildContext context) => Model1(),
//       ),
//       ChangeNotifierProvider(
//         create: (BuildContext context) => Model2(),
//       ),
//     ],
//       child:  MaterialApp(
//           title: 'Flutter Demo',
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//           ),
//           home: TestView(),
//           // initialRoute: page1Route,
//           // onGenerateRoute: MyRouter.generateRoute,
//         )
//     );
//   }
}
