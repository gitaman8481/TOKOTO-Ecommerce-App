import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:soni_store_app/providers/providers.dart';
import 'package:soni_store_app/providers/user_provider_try.dart';
import 'package:soni_store_app/resources/services/auth/auth_service.dart';
import 'package:soni_store_app/wrapper.dart';

import 'helper/locator.dart';

class EcommerceApp extends StatefulWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  State<EcommerceApp> createState() => _EcommerceAppState();
}

class _EcommerceAppState extends State<EcommerceApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => locator<UserProvider>()),
        ChangeNotifierProvider(create: (_) => locator<AuthProvider>()),
        ChangeNotifierProvider(create: (_) => locator<ProductProvider>()),
        ChangeNotifierProvider(create: (_) => locator<CartProvider>()),
        ChangeNotifierProvider(create: (_) => locator<CategoryProvider>()),
        ChangeNotifierProvider(create: (_) => locator<OrderProvider>()),
        ChangeNotifierProvider(create: (_) => locator<PaymentProvider>()),
        ChangeNotifierProvider(create: (_) => locator<ProfileProvider>()),
        ChangeNotifierProvider(create: (_) => locator<UserProviderTry>()),
      ],
      child: GetMaterialApp(
        title: 'SnapCart Ecommerce App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.deepOrange,
        ),
        home: const Wrapper(),
        // home: StreamBuilder(
        //   stream: FirebaseAuth.instance.authStateChanges(),
        //   builder: (BuildContext context, snapshot) {
        //     if (snapshot.connectionState == ConnectionState.active) {
        //       if (snapshot.hasData) {
        //         return const HomeScreen();
        //       }
        //       return const SplashScreen();
        //     }
        //     if (snapshot.connectionState == ConnectionState.waiting) {
        //       return const Center(child: CircularProgressIndicator());
        //     }
        //     return const SplashScreen();
        //   },
        // ),
      ),
    );
  }
}
