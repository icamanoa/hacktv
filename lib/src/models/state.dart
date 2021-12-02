class StateList {
  final int id;
  final String author;
  final String content;
  final String image;

  StateList({
    required this.id,
    required this.author,
    required this.content,
    required this.image,
  });
}

List<StateList> states = [
  StateList(
      id: 1,
      author: "@laura",
      content:
          "Esta pelicula me parece genial, con mucha argumentación.",
      image: "assets/images/logo.png",
  ),

  StateList(
    id: 2,
    author: "@Jose",
    content:
    "Esta pelicula me parece genial, con mucha argumentación.",
    image: "assets/images/logo.png",
  ),

  StateList(
    id: 3,
    author: "@Ryan",
    content:
    "Esta pelicula me parece genial, con mucha argumentación.",
    image: "assets/images/logo.png",
  ),

  StateList(
    id: 4,
    author: "@David",
    content:
    "Esta pelicula me parece genial, con mucha argumentación.",
    image: "assets/images/logo.png",
  ),

  StateList(
    id: 5,
    author: "@leonor",
    content:
    "Esta pelicula me parece genial, con mucha argumentación.",
    image: "assets/images/logo.png",
  ),



];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
