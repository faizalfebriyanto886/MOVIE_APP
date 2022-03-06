import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class DetailMovie extends StatefulWidget {
  const DetailMovie({ Key? key }) : super(key: key);

  @override
  State<DetailMovie> createState() => _DetailMovieState();
}

class _DetailMovieState extends State<DetailMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: const Icon(Icons.arrow_back_ios)
                  ),
                  const Text(
                    "Fast & furious 6", 
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                    ),
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Colors.amber,
                  )
                ],
              ),
              const SizedBox(height: 30),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.asset('assets/images/samuel-regan-asante-wMkaMXTJjlQ-unsplash.jpg', height: 300,)
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingBar.builder(
                    initialRating: 7,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 10,
                    itemSize: 20,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 0.1),
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ), 
                    onRatingUpdate: (rating) {
                      // ignore: avoid_print
                      print(rating);
                    },
                  ),
                  const SizedBox(width: 5,),
                  const Text("7.5")
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "27",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),  
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Tanggal",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          ),  
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          "14:10",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),  
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Jam",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          ),  
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          "Pilih kursi",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),  
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Kursi no",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          ),  
                        )
                      ],
                    ),
                    Image.asset("assets/icons/arrow_kanan.png", width: 15,)
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Synopsis",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
              
                  ),  
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.",
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Harga",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "50.000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 15
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Booking",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}