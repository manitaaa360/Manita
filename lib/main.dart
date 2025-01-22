import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:onlineddb_manita/showproductgrid.dart';
import 'addproduct.dart';
import 'showproducttype.dart';

//Method หลักทีRun
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAO7rmCTZpA32kZUw_Yj8W7SshbKZ0-eh0",
            authDomain: "onlinefirebase-c0ab1.firebaseapp.com",
            databaseURL:
                "https://onlinefirebase-c0ab1-default-rtdb.asia-southeast1.firebasedatabase.app",
            projectId: "onlinefirebase-c0ab1",
            storageBucket: "onlinefirebase-c0ab1.firebasestorage.app",
            messagingSenderId: "498338300349",
            appId: "1:498338300349:web:b83d1c41acf6e3812ed2d4",
            measurementId: "G-CBKQCDY4JH"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

//Class stateless สั่
class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Main(),
    );
  }
}

//Class stateful เรียกใช้การทํางานแบบโต้ตอบ
class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Main> {
//ส่วนเขียน Code ภาษา dart เพื่อรับค่าจากหน้าจอมาคํานวณหรือมาทําบางอย่างและส่งค่ากลับไป

//ส่วนการออกแบบหน้าจอ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'เมนูหลัก',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("assets/logo.png"),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Text(
                  'แอปโกดังสินค้า',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 80,
                height: 80,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => addproduct(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.download_sharp,
                    color: Color(0xFF0077FF),
                  ),
                  style: IconButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(
                      color: Color(0xFF0077FF),
                      width: 2.5,
                    ),
                  ),
                  iconSize: 30,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'บันทึกข้อมูล',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 80,
                height: 80,
                child: IconButton(
                  onPressed: () {
                    // นําทางไปยังหน้าอื่น (เปลี่ยน AddProduct() เป็ นหน้าอื่น)
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShowProduct()),
                    );
                  },
                  icon: Icon(
                    Icons.store,
                    color: Color(0xFF0077FF),
                  ),
                  style: IconButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(
                      color: Color(0xFF0077FF),
                      width: 2.5,
                    ),
                  ),
                  iconSize: 30,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'แสดงข้อมูล',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 80,
                height: 80,
                child: IconButton(
                  onPressed: () {
                    // นําทางไปยังหน้าอื่น (เปลี่ยน AddProduct() เป็ นหน้าอื่น)
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => showproducttype()),
                    );
                  },
                  icon: Icon(
                    Icons.widgets_rounded,
                    color: Color(0xFF0077FF),
                  ),
                  style: IconButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(
                      color: Color(0xFF0077FF),
                      width: 2.5,
                    ),
                  ),
                  iconSize: 30,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'ประเภทสินค้า',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
