import 'package:flutter/material.dart';
import 'package:movie_app/Model/movie.dart';

import 'movie_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Movies App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Movie> movies = Movie.getMovie();


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView.builder(
          itemBuilder: (BuildContext context,int index) {
            return Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                InkWell(
                  child: MovieList(movies[index], index),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> MovieDetailsPage(movie: movies[index],)));
                  },
                ),
                MovieListAvatar(movies[index],index)
              ],
            );
          },
          itemCount: movies.length,
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget MovieList(Movie movie,int index) {
    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      child: Card(
        margin: EdgeInsets.only(left: 80),
        child: ListTile(
          title: Text(
            "${movie.title} ( ${movie.year} )",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Text(
              "Genre : ${movie.genre}",
              style: TextStyle(
                fontSize: 15.0
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget MovieListAvatar(Movie movie, int index) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            movie.images[0]
          ),
          fit: BoxFit.cover
        ),
        shape: BoxShape.circle
      ),
    );
  }
}

