// import 'dart:js';

// import 'package:factory_web/ui/pages/pages.dart';
// import 'package:fluro/fluro.dart';
// import 'package:flutter/cupertino.dart';

// // class Fluroroute {
// //   static final FluroRouter route = FluroRouter();

// //   static Handler _splashHandler =
// //       Handler(handlerFunc: (context, params) => SplashPage());

// //   static Handler _mainHandler = Handler(
// //       handlerFunc: (context, params) => MainPage(
// //             page: params['name']![0],
// //           ));

// //   static Handler _mainHandler2 = Handler(
// //       handlerFunc: (context, params) => MainPage(
// //             page: params['name']![0],
// //             extra: params['extra']![0],
// //           ));

// //   static void setupRouter() {
// //     route.define('/', handler: _splashHandler);
// //     route.define('/main/:name',
// //         handler: _mainHandler, transitionType: TransitionType.fadeIn);
// //     route.define('/main/:name/:extra',
// //         handler: _mainHandler, transitionType: TransitionType.fadeIn);
// //   }
// // }

// class RoutesName {
//   // ignore: non_constant_identifier_names
//   static const String homePage = '/main/home';
//   // ignore: non_constant_identifier_names
//   static const String notFoundPage = '/404-not-found';
// }

// class _GeneratePageRoute extends PageRouteBuilder {
//   final Widget? widget;
//   final String? routeName;
//   _GeneratePageRoute({this.widget, this.routeName})
//       : super(
//             settings: RouteSettings(name: routeName),
//             pageBuilder: (BuildContext context, Animation<double> animation,
//                 Animation<double> secondaryAnimation) {
//               return widget!;
//             },
//             transitionDuration: Duration(milliseconds: 500),
//             transitionsBuilder: (BuildContext context,
//                 Animation<double> animation,
//                 Animation<double> secondaryAnimation,
//                 Widget child) {
//               return SlideTransition(
//                 textDirection: TextDirection.rtl,
//                 position: Tween<Offset>(
//                   begin: Offset(1.0, 0.0),
//                   end: Offset.zero,
//                 ).animate(animation),
//                 child: child,
//               );
//             });
// }

// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case RoutesName.homePage:
//         return _GeneratePageRoute(widget: HomePage(), routeName: settings.name);
//       // case RoutesName.SECOND_PAGE:
//       //   return _GeneratePageRoute(
//       //       widget: SecondPage(), routeName: settings.name);
//       default:
//         return _GeneratePageRoute(
//             widget: NotFoundPage(), routeName: settings.name);
//     }
//   }
// }
