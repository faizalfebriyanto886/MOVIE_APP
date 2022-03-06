import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/screen/home/detail_movie.dart';

class PopularMovie extends StatefulWidget {
  const PopularMovie({ Key? key }) : super(key: key);

  @override
  State<PopularMovie> createState() => _PopularMovieState();
}

class _PopularMovieState extends State<PopularMovie> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CardPopular(
            onTekan: () async {
              Get.to(const DetailMovie());
            },
          ),
          const SizedBox(height: 10),
          CardPopular(
            onTekan: () async {
              Get.to(const DetailMovie());
            },
          ),
        ],
      ),
    );
  }
}

class CardPopular extends StatelessWidget {
  final void Function()? onTekan;

  const CardPopular({ 
    Key? key,
    this.onTekan,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTekan,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Image.asset('assets/images/poster-1x1.jpg', height: 100, width: 100),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "After We Fell",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),  
              )
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Rating : 7/10")
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Action, fight",
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}