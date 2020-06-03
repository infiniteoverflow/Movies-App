class Movie {
  String title;
  int year;
  String released;
  int duration;
  String genre;
  String directors;
  String actors;
  String languages;
  List<String> images;
  double rating;
  String votes;

  Movie ({this.title,this.year,this.released,this.duration,this.genre,this.directors,this.actors,this.languages,this.images,this.rating,this.votes});

  static List<Movie> getMovie() => [
    Movie(
      title: "Avatar",
      year: 2009,
      released: "18 Dec 2009",
      duration: 162,
      genre: "Action, Adventure, Fantasy",
      directors: "James Cameron",
      actors: "Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang",
      languages: "English, Spanish",
      rating: 7.9,
      votes: "890,617",
      images: [
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BNzM2MDk3MTcyMV5BMl5BanBnXkFtZTcwNjg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY2ODQ3NjMyMl5BMl5BanBnXkFtZTcwODg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxOTEwNDcxN15BMl5BanBnXkFtZTcwOTg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTYxMDg1Nzk1MV5BMl5BanBnXkFtZTcwMDk0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg"
      ]
    ),

    Movie(
      title: "I Am Legend",
      year: 2007,
      released: "14 Dec 2007",
      duration: 101,
      genre: "Drama, Horror, Sci-Fi",
      directors: "Francis Lawrence",
      actors: "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
      languages: "English",
      rating: 7.2,
      votes: "533,874",
      images: [
       "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg"
      ]
    ),

    Movie(
      title: "The Avengers",
      year: 2012,
      released: "04 May 2012",
      duration: 143,
      genre: "Action, Sci-Fi, Thriller",
      directors: "Joss Whedon",
      actors: "Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth",
      languages: "English, Russian",
      rating: 8.1,
      votes: "1,003,301",
      images: [
       "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0NjY0NzE4OTReQTJeQWpwZ15BbWU3MDczODg2Nzc@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE1MzEzMjcyM15BMl5BanBnXkFtZTcwNDM4ODY3Nw@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMjMwMzM2MTg1M15BMl5BanBnXkFtZTcwNjM4ODY3Nw@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ4NzM2Mjc5MV5BMl5BanBnXkFtZTcwMTkwOTY3Nw@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc3MzQ3NjA5N15BMl5BanBnXkFtZTcwMzY5OTY3Nw@@._V1_SX1777_CR0,0,1777,999_AL_.jpg"
      ]
    ),
  ];
  
}