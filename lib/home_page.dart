import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './match_book.dart';
import 'myprovider.dart';

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
      backgroundColor: Colors.white,
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
                  child: IconButton(onPressed: () async => {
                    await context.read<MyProvider>().search('el señor de los anillos'),
                  },
                  icon: Icon(Icons.search),),
                ),
              ),
            ),
          ),

          //AQUI ESTÁ EL RESULTADO DE EL GET

          Text((context.watch<MyProvider>().result['totalItems']).toString()),

          Expanded(
            child: GridView.count(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 30, //separacion <->
              mainAxisSpacing: 10, // separacion arriba a abajo
              crossAxisCount: 2,
              shrinkWrap: true,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MatchBook()));
                  },
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516"),
                          fit: BoxFit.contain,
                          ),
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
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1637008457"),
                        fit: BoxFit.contain,
                        ),
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
                              "The king of drugs",
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
                    Container(
                      decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://www.adobe.com/express/create/cover/media_181e3d2c78f153ae7bf0e19a2faeb9a76e234da30.jpeg?width=400&format=jpeg&optimize=medium"),
                        fit: BoxFit.contain,
                        ),
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
                              "Crack the code",
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
                    Container(
                      decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://www.adobe.com/express/create/cover/media_178ebed46ae02d6f3284c7886e9b28c5bb9046a02.jpeg?width=400&format=jpeg&optimize=medium"),
                        fit: BoxFit.contain,
                        ),
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
                              "Lunar Storm",
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
                    Container(
                      decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://www.designforwriters.com/wp-content/uploads/2017/10/design-for-writers-book-cover-tf-2-a-million-to-one.jpg"),
                        fit: BoxFit.contain,
                        ),
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
                              "A million to one",
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
                    Container(
                      decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://www.designforwriters.com/wp-content/uploads/2017/10/design-for-writers-book-cover-tf-2-a-million-to-one.jpg"),
                        fit: BoxFit.contain,
                        ),
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
                              "A million to one",
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
                    Container(
                      decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://www.designforwriters.com/wp-content/uploads/2017/10/design-for-writers-book-cover-tf-2-a-million-to-one.jpg"),
                        fit: BoxFit.contain,
                        ),
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
                              "A million to one",
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

  Future<void> searchBook(Future<void> context) async {
    
    print(this.bookTitle.value.text);
  }
}