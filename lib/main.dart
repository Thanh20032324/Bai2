import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp1());
}
class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:  'Ứng dụng của tôi',
      home: MyApp(),
    );
  }
}
final ThemeData lightTheme = ThemeData.light();
final ThemeData darkTheme = ThemeData.dark();
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;


  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bài 2 Flutter',
      theme: _isDarkMode ? darkTheme : lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Giao Diện Sáng/Tối'),
          actions: [
            IconButton(
              icon: Icon(
                _isDarkMode ? Icons.wb_sunny : Icons.brightness_2,
                color: Colors.white,
              ),
              onPressed: () {
                _toggleTheme();
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Hộp thoại'),
                        content: const Text(
                            'Bài được code by Trần Tiến Thành.',
                          style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(5.0, 5.0),
                                    blurRadius: 9,
                                    color: Colors.black
                                )
                              ]
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Đóng'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Mở Hộp Thoại'),
              ),
              SizedBox(height: 20),
              Image.asset(
                'image/01.jpg',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
             const Text(
                'Bài 2 flutter by Trần Tiến Thành.',
                style: TextStyle(
                    fontSize: 18,
                  fontFamily: 'thuphap',
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(4.0, 4.0),
                      blurRadius: 10,
                      color: Colors.black
                    )
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
