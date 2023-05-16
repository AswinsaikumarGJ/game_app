import 'package:carousel_slider/carousel_slider.dart';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool showhide = false;
  final videoURL = "https://www.youtube.com/watch?v=DApLfGbIW5g";
  late YoutubePlayerController _controller;
  int activeIndex = 0;
  int selectedindex = -1;
  final sliderimages = [
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image3.jpg"
  ];
  final categoryNames = [
    "Most Popular",
    "Playtech Live",
  ];
  final categoryImages = [
    "assets/gridimage1.jpg",
    "assets/gridimage2.jpg",
    "assets/gridimage3.jpg",
    "assets/gridimage4.jpg",
     "assets/gridimage4.jpg",
     "assets/gridimage3.jpg",
    "assets/gridimage4.jpg",
     "assets/gridimage4.jpg",
  ];
  // final expandedCategoryImages = [
  //   "assets/gridimage1.jpg",
  //   "assets/gridimage2.jpg",
  //   "assets/gridimage3.jpg",
  //   "assets/gridimage4.jpg",
  //   "assets/gridimage1.jpg",
  //   "assets/gridimage2.jpg",
  //   "assets/gridimage3.jpg",
  //   "assets/gridimage4.jpg",
  // ];
  final betPriceRange = [
   "Min.₹10 | Max.₹100k",
   "Min.₹10 | Max.₹100k",
   "Min.₹10 | Max.₹100k",
   "Min.₹10 | Max.₹100k",
   "Min.₹10 | Max.₹100k",
    "Min.₹10 | Max.₹100k",
   "Min.₹10 | Max.₹100k",
   "Min.₹10 | Max.₹100k",
  ];
  // final expandedBetPriceRange = [
  //  "Min.₹10 | Max.₹100k",
  //  "Min.₹10 | Max.₹100k",
  //  "Min.₹10 | Max.₹100k",
  //  "Min.₹10 | Max.₹100k",
  //  "Min.₹10 | Max.₹100k",
  //  "Min.₹10 | Max.₹100k",
  //  "Min.₹10 | Max.₹100k",
  //  "Min.₹10 | Max.₹100k",
  // ];
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!, flags: YoutubePlayerFlags(autoPlay: false));
      print(categoryNames.length);
      print("vbvbv");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'KHELOO',
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
              width: w * 0.35,
              child: Column(
                children: [
                  SizedBox(
                    height: 7,
                  ),
                  Icon(
                    Icons.card_giftcard,
                    color: Colors.orange,
                  ),
                  Text(
                    "Promotions".tr,
                    style: TextStyle(color: Colors.orange),
                  )
                ],
              )),
          Container(
            width: w * 0.3,
           decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.orange,Colors.yellow]
                  )
                ),
            child: Center(child: Text("Login".tr)),
          )
        ],
      ),
      body: Container(
        height: h,
        width: w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider.builder(
                  itemCount: sliderimages.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      child: Image.asset(
                        sliderimages[index],
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                  options: CarouselOptions(
                      viewportFraction: 1,
                      autoPlay: true,
                      height: 250,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      })),
              SizedBox(
                height: 20,
              ),
              AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: sliderimages.length,
                effect: SlideEffect(
                  activeDotColor: Colors.orange,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: h * 0.1,
                width: w,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    border: Border.all(
                      color: Colors.yellow, 
                      width: 5
                      )
                      ),
                child: Stack(
                  children: [
                    Positioned(
                      top: h * 0.03,
                      left: w * 0.1,
                      child: InkWell(
                        onTap: (){
                          var locale = Locale('en','US');
                          Get.updateLocale(locale);
                        },
                        child: Text(
                              "English",
                              style: TextStyle(color: Colors.orange),
                            ),
                      ),
                    ),
                       Positioned(
                      top: h * 0.032,
                      left: w * 0.28,
                      child: InkWell(
                        onTap: (){
                          var locale = Locale('ma','IN');
                          Get.updateLocale(locale);
                        },
                        child: Text(
                              "മലയാളം",
                              style: TextStyle(color: Colors.orange),
                            ),
                      ),
                    ),
                       Positioned(
                      top: h * 0.032,
                      left: w * 0.5,
                      child: InkWell(
                          onTap: (){
                          var locale = Locale('ta','IN');
                          Get.updateLocale(locale);
                        },
                        child: Text(
                              "தமிழ்",
                              style: TextStyle(color: Colors.orange),
                            ),
                      ),
                    ),
                       Positioned(
                      top: h * 0.033,
                      left: w * 0.65,
                      child: InkWell(
                        onTap: (){
                           var locale = Locale('te','IN');
                          Get.updateLocale(locale);
                        },
                        child: Text(
                              "తెలుగు",
                              style: TextStyle(color: Colors.orange),
                            ),
                      ),
                    ),
                       Positioned(
                      top: h * 0.017,
                      left: w * 0.83,
                      child: Text(
                            "...",
                            style: TextStyle(color: Colors.orange,fontSize: 25),
                          ),
                    ),
                  ],
                )
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "JACKPOT".tr,
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: w * 0.6,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Countup(
                    begin: 0,
                    end: 1000000,
                    duration: Duration(seconds: 1000000),
                    // separator: ',',
                    style: TextStyle(
                      fontSize: 36,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.orange,
                    width: 3, // Underline thickness
                  ))),
                  child: Text(
                    "LIVE WITHDRAWAL".tr,
                    style: TextStyle(
                        letterSpacing: 1.0,
                        color: Colors.orange,
                        fontSize: 22),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: h * 0.2,
                  width: w * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      border: Border.all(color: Colors.yellow, width: 5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: w * 0.03,
                        child: Container(
                          height: h * 0.1,
                          width: w * 0.1,
                          child: Image.asset("assets/personlogo.jpg"),
                        ),
                      ),
                      Positioned(
                          top: h * 0.028,
                          left: w * 0.15,
                          child: Text(
                            "Kashvi  ₹2100",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: h * 0.05,
                          left: w * 0.15,
                          child: Text(
                            "3 second ago",
                            style: TextStyle(color: Colors.grey),
                          )),
                      Positioned(
                        left: w * 0.5,
                        child: Container(
                          height: h * 0.1,
                          width: w * 0.1,
                          child: Image.asset("assets/personlogo.jpg"),
                        ),
                      ),
                      Positioned(
                          top: h * 0.028,
                          left: w * 0.62,
                          child: Text(
                            "Ayaan  ₹3500",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: h * 0.05,
                          left: w * 0.62,
                          child: Text(
                            "10 second ago",
                            style: TextStyle(color: Colors.grey),
                          )),
                      Positioned(
                        top: h * 0.08,
                        left: w * 0.03,
                        child: Container(
                          height: h * 0.1,
                          width: w * 0.1,
                          child: Image.asset("assets/personlogo.jpg"),
                        ),
                      ),
                      Positioned(
                          top: h * 0.11,
                          left: w * 0.15,
                          child: Text(
                            "Parv  ₹25935",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: h * 0.13,
                          left: w * 0.15,
                          child: Text(
                            "5 second ago",
                            style: TextStyle(color: Colors.grey),
                          )),
                      Positioned(
                        top: h * 0.08,
                        left: w * 0.5,
                        child: Container(
                          height: h * 0.1,
                          width: w * 0.1,
                          child: Image.asset("assets/personlogo.jpg"),
                        ),
                      ),
                      Positioned(
                          top: h * 0.11,
                          left: w * 0.62,
                          child: Text(
                            "Kevin  ₹1995",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: h * 0.13,
                          left: w * 0.62,
                          child: Text(
                            "4 second ago",
                            style: TextStyle(color: Colors.grey),
                          )),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                bottomActions: [
                  PlayPauseButton(
                    controller: _controller,
                  ),
                  CurrentPosition(),
                  ProgressBar(
                    isExpanded: true,
                    colors: ProgressBarColors(
                        playedColor: Colors.purple,
                        handleColor: Colors.purple),
                  ),
                  RemainingDuration(
                    controller: _controller,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.orange,
                    width: 2, // Underline thickness
                  ))),
                  child: Text(
                    "GAMES".tr,
                    style: TextStyle(
                        letterSpacing: 1.0,
                        color: Colors.orange,
                        fontSize: 28),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: categoryNames.length,
                itemBuilder: (context, index1) {
                  return Container(
                    height: index1 == selectedindex ? h * 0.76 :  h * 0.42,
                    width: w * 0.9,
                    // color: Colors.blue,
                   margin: EdgeInsets.only(bottom: 20),
                    child: Container(
                      child: Stack(
                        children: [
                          Positioned(
                            top: h * 0.03,
                            left: w * 0.03,
                            child: Container(
                              height: 50,
                              width: 10,
                              
                              decoration: BoxDecoration(
                                     gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.orange,Colors.yellow]
                  ),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Positioned(
                            top: h * 0.05,
                            left: w * 0.08,
                            child: Text("${categoryNames[index1]}",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                            ),),
                          ),
                          Positioned(
                            top: h * 0.03,
                            left: w * 0.61,
                            child: InkWell(
                              onTap: (){
                                print("cccccccc");
                                setState(() {
                                  if(selectedindex == index1){
                                    setState(() {
                                      selectedindex = index1;
                                      selectedindex = -1;
                                    });
                                  }
                                  else{
                                    setState(() {
                                      selectedindex = index1;
                                    });
                                  }
                                });
                              },
                              child: Container(
                                height: 50,
                                width: w * 0.28,
                                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.orange,Colors.yellow]
                  ),
 borderRadius: BorderRadius.circular(6)
                ),
                        
                                child:index1 == selectedindex ? Center(child: Text("Hide".tr,style: TextStyle(color: Colors.white),)) : Center(child: Text("Show More".tr,style: TextStyle(color: Colors.white),)),
                              ),
                            ),
                          ),
                          Positioned(
                            top: h * 0.12,
                            child:  Container(
                              height: h,
                              width: w * 0.9,
                              child: GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: 200,
                                            childAspectRatio: 3/2,
                                            crossAxisSpacing: 20,
                                            mainAxisSpacing: 20
                                            ),
                                        itemCount: categoryImages.length,
                                        itemBuilder: (BuildContext ctx, index2) {
                                          return Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.amber,
                                                borderRadius: BorderRadius.circular(15)),
                                            child: Column(
                                              children: [
                                                SizedBox(height: 3,),
                                                Container(
                                                  height: h * 0.1,
                                                  width: w * 0.4,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(50)
                                                  ),
                                                  child: Image.asset("${categoryImages[index2]}",fit: BoxFit.fill,)),
                                                  SizedBox(
                                                    height: 3,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.purple,
                                                      borderRadius: BorderRadius.circular(10)
                                                    ),
                                                  width: w,
                                                    child: Center(child: Text("${betPriceRange[index2]}",style: TextStyle(color: Colors.white),)))
                                              ],
                                            ),
                                          );
                                        }),
                            )
                          ), 
                        ],
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
