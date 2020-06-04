import 'package:flutter/material.dart';
import 'package:movie_app/Model/movie.dart';

class MovieDetailsPage extends StatelessWidget {

  final Movie movie;

  const MovieDetailsPage({Key key , this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.4,
            margin: EdgeInsets.only(top:10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  movie.images[0],
                ),
                
              ),
            ),
          ),

          SizedBox(
            height: 40,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width/4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(movie.images[1]),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
              ),


              Expanded(
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    height: 160,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text.rich(
                            TextSpan(
                              text: "Movie Name : ",
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.deepOrangeAccent,
                                fontWeight: FontWeight.bold
                              ),
                              children: [
                                TextSpan(text: '${movie.title}', style: TextStyle(fontSize: 20.0 , color: Colors.black)),
                              ]
                            )
                          ),

                          Text.rich(
                            TextSpan(
                              text: "Year : ",
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.deepOrangeAccent,
                                fontWeight: FontWeight.bold
                              ),
                              children: [
                                TextSpan(text: '${movie.year}', style: TextStyle(fontSize: 20.0 , color: Colors.black)),
                              ]
                            )
                          ),



                          Text.rich(
                            TextSpan(
                              text: "Date of Release : ",
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.deepOrangeAccent,
                                fontWeight: FontWeight.bold
                              ),
                              children: [
                                TextSpan(text: '${movie.released}', style: TextStyle(fontSize: 20.0 , color: Colors.black)),
                              ]
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(10)
            ),
            margin: EdgeInsets.all(5),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Director(s):",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.deepOrangeAccent
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text(
                      "${movie.directors}",
                      style: TextStyle(
                        fontSize: 25.0
                      ),
                    ),
                  ),

                  Text(
                    "Actors:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.deepOrangeAccent
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text(
                      "${movie.actors}",
                      style: TextStyle(
                        fontSize: 25.0
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "More Images :",
              style: TextStyle(
                fontSize:20.0,
                fontWeight:FontWeight.bold 
              ),
            ),
          ),

          Container(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context,int index) {
                return Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), 
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(movie.images[index]),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                );
              },
              itemCount: movie.images.length,
              separatorBuilder: (BuildContext context,int index) {
                return SizedBox(width:5);
              },
            ),
          )
        ],
      )
    );
  }
}