import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final bookTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Libreria free to play'),
        backgroundColor: Color.fromARGB(255, 71, 71, 71),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              controller: bookTitle,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingresa título',
                suffixIcon: Align(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: IconButton(onPressed: searchBook,icon: Icon(Icons.search),),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 30, //separacion <->
              mainAxisSpacing: 10, // separacion arriba a abajo
              crossAxisCount: 2,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Image(image: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516"), fit: BoxFit.contain,),
                      Text("The mind of a leader",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: Center(
                    child: Text("The mind of a leader"),
                  ),
                ),
                Stack(
                  children: [
                    Center(
                      child: Positioned(
                        child: Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516",fit: BoxFit.fill,),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "The mind of a leader",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                            ),
                          ),
                        )
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Center(
                      child: Positioned(
                        child: Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516",fit: BoxFit.fill,),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "The mind of a leader",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                            ),
                          ),
                        )
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Center(
                      child: Positioned(
                        child: Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516",fit: BoxFit.fill,),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "The mind of a leader",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                            ),
                          ),
                        )
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Center(
                      child: Positioned(
                        child: Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516",fit: BoxFit.fill,),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "The mind of a leader",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                            ),
                          ),
                        )
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Center(
                      child: Positioned(
                        child: Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516",fit: BoxFit.fill,),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "The mind of a leader",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                            ),
                          ),
                        )
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Center(
                      child: Positioned(
                        child: Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516",fit: BoxFit.fill,),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "The mind of a leader",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                            ),
                          ),
                        )
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Center(
                      child: Positioned(
                        child: Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516",fit: BoxFit.fill,),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "The mind of a leader",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                            ),
                          ),
                        )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text("Ingrese palabra para buscar el título"),
        ],
      )
    );
  }

  void searchBook(){
    print(this.bookTitle.value.text);
  }
}