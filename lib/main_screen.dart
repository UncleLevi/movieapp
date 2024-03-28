import 'package:flutter/material.dart';
import 'dart:math';
import 'package:movieapp/detail_screen.dart';
import 'package:movieapp/model/recommended_film.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 8, 8),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  'images/kiminonawa.jpg',
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Container(
                    height: 585.0,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black],
                        stops: [0, 1],
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(
                              Icons.menu_rounded,
                              color: Colors.white,
                              size: 43.0,
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Donjuan+',
                              style: TextStyle(
                                fontSize: 45,
                                fontFamily: 'Waltograph',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 96.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 13.0), // Adjust the top padding as needed
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/profilepic.jpg'),
                              radius: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 140,
                  bottom: 90,
                  child: SizedBox(
                    width: 125.0,
                    height: 60.0,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text(
                        'Play',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                        ),
                      ),
                      icon: const Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.black,
                        size: 37.0,
                      ),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                40), // Adjust the radius here
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white), // Set the background color to white
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 5.0),
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Everything',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'SfProDisplay',
                            color: Colors.white,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.arrow_drop_down_rounded,
                            size: 45.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 93.0,
                    ),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 58, 58, 58),
                          child: IconButton(
                            icon: const Icon(
                              Icons.search_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 58, 58, 58),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_downward_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0, top: 40.0, bottom: 5.0),
              child: const Text(
                'Continue Watching',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'SfProText',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index >= 5) {
                    return const SizedBox.shrink();
                  }
                  final RecommendedFilm film = recommendedFilmList[index];
                  double randomDouble = Random().nextDouble();
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(film: film);
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(film.imageAsset),
                          ),
                          Positioned(
                            left: 11.0, // Adjust the left position as needed
                            right: 11.0, // Adjust the right position as needed
                            bottom: 12.0,
                            child: LinearProgressIndicator(
                              value: randomDouble,
                              backgroundColor: Colors.grey,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.white),
                            ), // Adjust the bottom position as needed
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: min(recommendedFilmList.length, 5),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0, top: 25.0, bottom: 5.0),
              child: const Text(
                'Recommended  For You',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'SfProText',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index < 5) {
                    return const SizedBox.shrink();
                  }
                  final RecommendedFilm film = recommendedFilmList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(film: film);
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(film.imageAsset),
                      ),
                    ),
                  );
                },
                itemCount: recommendedFilmList.length,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0, top: 25.0, bottom: 5.0),
              child: const Text(
                'Trending Now',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'SfProText',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final RecommendedFilm film = recommendedFilmList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(film: film);
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(film.imageAsset),
                      ),
                    ),
                  );
                },
                itemCount: recommendedFilmList.length,
              ),
            ),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}
