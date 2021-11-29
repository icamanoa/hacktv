class Movie {
  final int id;
  final String title;
  final String description;
  final int year;
  final String image;
  final String imagemin;
  final String imagetrailer;
  final double rating;
  final List genders;
  final List relatedmovies;

  Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.year,
    required this.image,
    required this.imagemin,
    required this.imagetrailer,
    required this.rating,
    required this.genders,
    required this.relatedmovies,
  });
}

List<Movie> movies = [
  Movie(
      id: 1,
      title: "Avenger",
      description:
          "In the film, S.H.I.E.L.D. director Nick Fury assembles Iron Man, Captain America, Hulk, Thor, Black Widow and Hawkeye to battle Thor's adoptive brother, Loki, who attempts to subjugate humanity by leading an invasion by the extraterrestrial race known as the Chitauri",
      year: 2020,
      image: "assets/images/m_avangers.png",
      imagemin:
          "https://www.themoviedb.org/t/p/original/tyKKKSvjEgDVQ6vtm8vzL5Zx06c.jpg",
      imagetrailer:
          "https://www.themoviedb.org/t/p/original/nNmJRkg8wWnRmzQDe2FwKbPIsJV.jpg",
      rating: 9.8,
      genders: [
        "Accion",
        "Fantasia"
      ],
      relatedmovies: [
        "assets/images/movies/rm_aqua.png",
        "assets/images/movies/rm_thor.png",
        "assets/images/movies/jiu_jitsu.png"
      ]),
  Movie(
      id: 1,
      title: "Knives Out",
      description:
          "Cuando el renombrado novelista de misterio Harlan Thrombey es encontrado muerto en su mansión justo después de su 85 cumpleaños, el inquisitivo y cortés detective Benoit Blanc es misteriosamente reclutado para investigar. Se moverá entre una red de pistas falsas y mentiras interesadas para tratar de descubrir la verdad tras la prematura muerte del escritor",
      year: 2019,
      image: "assets/images/m_knives_out.png",
      imagemin:
          "https://www.themoviedb.org/t/p/original/yiBgG74l20GEpotFONuDcIONV7Z.jpg",
      imagetrailer:
          "https://www.themoviedb.org/t/p/original/4HWAQu28e2yaWrtupFPGFkdNU7V.jpg",
      rating: 9.7,
      genders: [
        "Accion",
        "Fantasia"
      ],
      relatedmovies: [
        "assets/images/movies/rm_aqua.png",
        "assets/images/movies/rm_thor.png",
        "assets/images/movies/jiu_jitsu.png"
      ]),
  Movie(
      id: 3,
      title: "Onward",
      description:
          "Ambientado en un mundo de fantasía suburbana, dos hermanos elfos adolescentes, Ian y Barley Lightfood, se embarcan en una aventura en la que se proponen descubrir si existe aún algo de magia en el mundo que les permita pasar un último día con su padre, que falleció cuando ellos eran aún muy pequeños como para poder recordarlo",
      year: 2020,
      image: "assets/images/m_onward.png",
      imagemin:
          "https://www.themoviedb.org/t/p/original/sz6Ty5G6IaEvzdiCnujoT1r6Q2e.jpg",
      imagetrailer:
          "https://www.themoviedb.org/t/p/original/xFxk4vnirOtUxpOEWgA1MCRfy6J.jpg",
      rating: 9.6,
      genders: [
        "Accion",
        "Fantasia"
      ],
      relatedmovies: [
        "assets/images/movies/rm_aqua.png",
        "assets/images/movies/rm_thor.png",
        "assets/images/movies/jiu_jitsu.png"
      ]),
  Movie(
      id: 4,
      title: "Mulan",
      description:
          "El emperador de China emite un decreto para reclutar a un varón por cada familia que deberá servir en el ejército imperial para defender al país de los invasores del norte. Hua Mulán, se presenta para evitar que su anciano padre sea llamado a filas. Se hace pasar por un hombre. Mulan deberá apelar a su fuerza interior y sacar a la luz todo su potencial",
      year: 2020,
      image: "assets/images/m_mulan.png",
      imagemin:
          "https://www.themoviedb.org/t/p/original/bMQ5qjzIkHNIUupB05FnFARdHV8.jpg",
      imagetrailer:
          "https://www.themoviedb.org/t/p/original/qAKvUu2FSaDlnqznY4VOp5PmjIF.jpg",
      rating: 9.6,
      genders: [
        "Accion",
        "Fantasia"
      ],
      relatedmovies: [
        "assets/images/movies/rm_aqua.png",
        "assets/images/movies/rm_thor.png",
        "assets/images/movies/jiu_jitsu.png"
      ]),
  Movie(
      id: 5,
      title: "Birds of Prey",
      description:
          "Después de separarse del Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña del malvado rey del crimen, Máscara Negra",
      year: 2020,
      image: "assets/images/m_birds_of_prey.png",
      imagemin:
          "https://www.themoviedb.org/t/p/original/4GCqF17I2ST5M8iSkwh1jwqvi7F.jpg",
      imagetrailer:
          "https://www.themoviedb.org/t/p/original/uozb2VeD87YmhoUP1RrGWfzuCrr.jpg",
      rating: 9.6,
      genders: [
        "Accion",
        "Fantasia"
      ],
      relatedmovies: [
        "assets/images/movies/rm_aqua.png",
        "assets/images/movies/rm_thor.png",
        "assets/images/movies/jiu_jitsu.png"
      ]),
  Movie(
      id: 6,
      title: "Enola Holmes",
      description:
          "Enola Holmes, una intrépida joven que busca a su madre, utiliza su brillante instinto investigador para superar a su hermano Sherlock y ayudar a un lord en su fuga",
      year: 2020,
      image: "assets/images/m_enola_holmes.png",
      imagemin:
          "https://www.themoviedb.org/t/p/original/3CkZubHD63DS4TGwx2HSch02sIi.jpg",
      imagetrailer:
          "https://www.themoviedb.org/t/p/original/2Ldxg98mkVbhJtmTH6W48Nq5LhO.jpg",
      rating: 9.9,
      genders: [
        "Accion",
        "Fantasia"
      ],
      relatedmovies: [
        "assets/images/movies/rm_aqua.png",
        "assets/images/movies/rm_thor.png",
        "assets/images/movies/jiu_jitsu.png"
      ]),
  Movie(
      id: 7,
      title: "New You See Me",
      description:
          "Un equipo del FBI debe enfrentarse a una banda de criminales expertos en magia. Ellos son 'los cuatro jinetes', un grupo formado por los mejores ilusionistas del mundo, dedicado a realizar grandes robos contra hombres de negocios corruptos. Su gran golpe es pasar desapercibidos para hacer llover el dinero robado a su público. En un mundo de magia y espectáculo, nada es lo que parece",
      year: 2013,
      image: "assets/images/m_now_you_see_me.png",
      imagemin:
          "https://www.themoviedb.org/t/p/original/5zVNKotLJkh4ZAuH1HC2UywATl6.jpg",
      imagetrailer:
          "https://www.themoviedb.org/t/p/original/y6CiAjg1Umu4OfJ54aGEs9O3Bz2.jpg",
      rating: 9.4,
      genders: [
        "Accion",
        "Fantasia"
      ],
      relatedmovies: [
        "assets/images/movies/rm_aqua.png",
        "assets/images/movies/rm_thor.png",
        "assets/images/movies/jiu_jitsu.png"
      ]),
  Movie(
      id: 8,
      title: "Ready Player One",
      description:
          "Año 2044. Wade Watts es un adolescente al que le gusta evadirse del cada vez más sombrío mundo real a través de una popular utopía virtual a escala global llamada Oasis, hasta que su excéntrico y multimillonario creador muere. Antes de morir, ofrece su fortuna como premio a una elaborada búsqueda del tesoro a través de los rincones más inhóspitos de su creación.",
      year: 2018,
      image: "assets/images/m_ready_player_one.png",
      imagemin:
          "https://www.themoviedb.org/t/p/original/2iuVrtC5IpwLtSFSgkIIIKLs0Zq.jpg",
      imagetrailer:
          "https://www.themoviedb.org/t/p/original/5a7lMDn3nAj2ByO0X1fg6BhUphR.jpg",
      rating: 9.4,
      genders: [
        "Accion",
        "Fantasia"
      ],
      relatedmovies: [
        "assets/images/movies/rm_aqua.png",
        "assets/images/movies/rm_thor.png",
        "assets/images/movies/jiu_jitsu.png"
      ]),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
