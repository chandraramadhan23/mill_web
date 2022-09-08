import 'package:factory_web/bloc/page_cubit.dart';
import 'package:factory_web/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:firebase_core/firebase_core.dart'; 
// import 'package:firebase_auth/firebase_auth.dart';


void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // Fluroroute.setupRouter();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: '/',
        routes: {
          // '/main': (context) => MainPage(),
          '/profile': (context) => const ProfilePage(),
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (_) => const NotFoundPage());
        },
        // builder: (context, child) => MainPage(child: child!),
        // onGenerateRoute: Fluroroute.route.generator,
        home: const MainPage(),
      ),
    );
  }
}
