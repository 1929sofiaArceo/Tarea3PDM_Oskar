import 'package:flutter/material.dart';

class MatchBook extends StatefulWidget {
  const MatchBook({super.key,required this.book});
  final Map book;

  @override
  State<MatchBook> createState() => _MatchBookState();
}

class _MatchBookState extends State<MatchBook> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del libro'),
        backgroundColor: Color.fromARGB(255, 71, 71, 71),
      ),
      body: Column(
        children: [
          // Text(widget.book.toString()),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image(image: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516")),
          ),
          
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Text(widget.book['volumeInfo']['title'], style: TextStyle(fontWeight: FontWeight.w200, fontSize: 30)),
                SizedBox(height: 15,),
                Text(widget.book['volumeInfo']['publishedDate'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Text(widget.book['volumeInfo']['pageCount'].toString(), style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Text(widget.book['volumeInfo']['description'] == null? 'descripcion ausente': widget.book['volumeInfo']['description'], style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}