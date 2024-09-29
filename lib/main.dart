import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Data Diri'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    String nama = 'ridho novan imanda';
    String alamat = 'Purwodadi';
    int tanggalLahir = 08;
    String bulanLahir = 'Desember';
    int tahunLahir = 2002;
    double tinggiBadan = 175.4;
    List hoby = ['membaca, menulis, ngopi, ngoding'];
    bool statusMenikah = true;
    Map pendidikan = {
      'sd'  : 'SDN 12 Purwodadi',
      'SMP' : 'SMP N 3 Purwodadi',
      'SMA' : 'SMK Cordova'      
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              nama,
            ),
            Text(
              alamat,
            ),
            Text(
               'tanggalLahir: $tanggalLahir,$bulanLahir-$tahunLahir',
            ),
            Text(
               'Tinggi Badan : $tinggiBadan',
            ),
            Text(
               'Hobi : $hoby',
            ),
            Text(
               'Status : $statusMenikah',
            ),
            Text(
               'Jenjang Pendidikan : $pendidikan',
            ),
            
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
