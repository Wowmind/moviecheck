import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final height =  MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80,),
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/viktor.jpeg'),
                    radius: 25,
                  ),
                  const SizedBox(width: 10,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Hello Viktor ',
                            style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                          Text('What would you like to do today? ',
                            style: TextStyle(color: Colors.orangeAccent, fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(width: 50,),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert_outlined, color: Colors.white,))
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                height: 50,
                width: 340,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white24
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.search, size: 30,color: Colors.white,),
                    ),
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      color: Colors.white70, fontSize: 14,fontWeight: FontWeight.bold,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.vpn_key, size: 15,color: Colors.white,),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),

              const Text('Categories ',
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 50,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    myItems('Movie'),
                    myItems('Tv Series'),
                    myItems('Animation'),
                    myItems('My List'),
                    myItems('Favorite')
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text('Now Trending',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Row(
                    children: [
                      const Text('See all',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward, color: Colors.white,size: 20,)),
                    ],
                  )
                ],
              ),

              Container(
                height: 340,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    myMove('assets/arcanee.jpg', 'Arcane', '6, November 2021', '4.9'),
                    myMove('assets/squid.jpeg', 'Squid Game', '1, november 2021', '4.9'),
                    myMove('assets/he.jpg', 'Money Heist', '3, December 2021', '4.8'),
                  ],
                ),
              )



            ],
          ),
        ),
      ),
    );
  }

  Widget myItems(String name){
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 35,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red,
      ),
      child: Center(
        child: Text(name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  Widget myMove(String img, String word, String wordd, String num){
    return Container(
      margin: const EdgeInsets.only(right: 20),
      height: 150,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              bottom: 2,
              child: Container(
                height: 80,
                width: 280,
                color: Colors.black38,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(word,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(height: 20,),
                    Text(wordd,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 40,
              right: 2,
              child: Container(
                height: 40,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.star, color: Colors.black,),
                    Text(num,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.black),
                    )
                  ],
                ),

              ))
        ],
      ),

    );
  }
}
