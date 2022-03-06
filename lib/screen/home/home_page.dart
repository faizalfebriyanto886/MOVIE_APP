import 'package:flutter/material.dart';
import 'package:movie_app/screen/component/carousel.dart';
import 'package:movie_app/screen/component/popular.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _bottomBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 60),
        child: Padding( 
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.filter_list, size: 24,),
                  const Spacer(),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset('assets/images/alevision-co-9SSJx7m_Tbs-unsplash.jpg', width: 40, height: 40,),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hello guys,",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Film yang sedang tayang.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const CarouselMovie(),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 16
                  ),  
                ),
              ),
              const PopularMovie(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Card(
        shadowColor: Colors.white60,
        child: SalomonBottomBar(
          currentIndex: _bottomBarIndex,
          onTap: (i) => setState(() => _bottomBarIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: Image.asset('assets/icons/icon_movie_purple.png', height: 20,), 
              title: const Text("Movie"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: Image.asset('assets/icons/icon_TV.png', height: 20,), 
              title: const Text("TV"),
              selectedColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
