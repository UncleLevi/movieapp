import 'package:flutter/material.dart';
import 'package:movieapp/model/recommended_film.dart';

var informationTextStyle = const TextStyle(fontFamily: 'SfProText');

class DetailScreen extends StatelessWidget {
  final RecommendedFilm film;

  const DetailScreen({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String truncatedName =
        film.name.length > 20 ? '${film.name.substring(0, 20)}...' : film.name;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 8, 8),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 580.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        film.imageAsset,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(155, 48, 48, 48),
                      radius: 25.0,
                      child: Align(
                        alignment: const Alignment(-1.0, -1.0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            size: 35.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  bottom: 15,
                  child: SizedBox(
                    width: 125.0,
                    height: 60.0,
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.black,
                        size: 37.0,
                      ),
                      label: const Text(
                        "Play",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0.0,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                const Positioned(
                  left: 150,
                  bottom: 15,
                  child: BookmarkButton(),
                ),
                const Positioned(
                  right: 15,
                  bottom: 15,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(214, 212, 211, 211),
                    radius: 30.0,
                    child: Icon(
                      Icons.keyboard_control,
                      size: 35.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  film.year,
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'SfProText',
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  '     •     ',
                  style: TextStyle(
                    fontSize: 11.0,
                    fontFamily: 'SfProText',
                    color: Colors.grey,
                  ),
                ),
                Text(
                  film.duration,
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'SfProText',
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  '     •     ',
                  style: TextStyle(
                    fontSize: 11.0,
                    fontFamily: 'SfProText',
                    color: Colors.grey,
                  ),
                ),
                Text(
                  film.rated,
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'SfProText',
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              // height: 580.0,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 28, 28, 31),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    35.0,
                  ),
                ),
              ),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              truncatedName,
                              style: const TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'SfProDisplay',
                                color: Colors.white,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Row(
                            children: <Widget>[
                              const Icon(
                                Icons.star_rate_rounded,
                                size: 30.0,
                                color: Color.fromARGB(255, 246, 202, 42),
                              ),
                              Text(
                                film.numberRating,
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'SfProText',
                                  color: Colors.grey,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Text(
                      film.description,
                      style: const TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'SfProText',
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      bottom: 20.0,
                    ),
                    child: Text(
                      film.category,
                      style: const TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'SfProText',
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: film.imageUrls.map((url) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(url),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      film.rated,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SfProText',
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'SfProText',
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({Key? key}) : super(key: key);

  @override
  BookmarkState createState() => BookmarkState();
}

class BookmarkState extends State<BookmarkButton> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: isBookmarked
          ? Colors.yellow[400]
          : const Color.fromARGB(214, 212, 211, 211),
      radius: 30.0,
      child: Align(
        alignment: const Alignment(-0.5, -0.5),
        child: IconButton(
          icon: Icon(
            isBookmarked
                ? Icons.turned_in_rounded
                : Icons.turned_in_not_rounded,
            size: 38.0,
            color: Colors.black,
          ),
          onPressed: () {
            setState(() {
              isBookmarked = !isBookmarked;
            });
          },
        ),
      ),
    );
  }
}
