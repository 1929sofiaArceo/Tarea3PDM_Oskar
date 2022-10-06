import 'package:flutter/material.dart';

class MatchBook extends StatelessWidget {
  const MatchBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del libro'),
        backgroundColor: Color.fromARGB(255, 71, 71, 71),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image(image: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516")),
          ),
          Text("The mind of a leader", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 30)),
          SizedBox(height: 15,),
          Text("2018-08-15", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Text("Páginas: 280", style: TextStyle(fontSize: 18)),
          Text("The Fault in Our Stars es una película estadounidense de drama adolescente basada en la novela homónima escrita por John Green, dirigida por Josh Boone, con guion de Scott Neustadter y Michael H. Weber y protagonizada por Shailene Woodley y Ansel Elgort, trabajando juntos por segunda vez desde sus participaciones en la película Divergent, estrenada unos meses antes de esta película. Fue estrenada el 6 de junio de 2014 en Estados Unidos.", style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}