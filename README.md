# flutter_splashscreen

### Type 1
```dart
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
```

```dart
...
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(title: 'Flutter Demo Home Page')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashUI(),
    );
  }
}
```

```dart
class SplashUI extends StatelessWidget {
  const SplashUI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Splash Screen",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
```

### Type 2
```dart
dependencies:

  animated_splash_screen: ^1.1.0
```

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      ...
      home: AnimatedSplashScreen(
        splash: SplashUI(),
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.blue,
        nextScreen: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
```

---

```
Copyright 2021 M. Fadli Zein
```