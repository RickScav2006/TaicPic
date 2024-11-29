import 'package:flutter/material.dart';
import 'video_player_screen.dart'; // Importa a tela para exibir o vídeo

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Player App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navega para a tela de exibição do vídeo
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VideoPlayerScreen(
                  videoUrl: 'https://path/to/your/video.mp4', // Substitua pelo link do vídeo
                ),
              ),
            );
          },
          child: Text('Assistir Vídeo'),
        ),
      ),
    );
  }
}
