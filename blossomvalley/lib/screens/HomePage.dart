import 'package:blossomvalley/screens/CategoriesPage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width, // Full screen width
                height: 169.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/Onboard.jpg'), // Set background image
                    fit: BoxFit
                        .cover, // Make sure the image covers the entire container
                  ),
                  border: Border(
                    bottom: BorderSide(
                      color: const Color.fromRGBO(
                          117, 8, 23, 1), // Set the color of the bottom border
                      width: 2.0, // Set the width of the bottom border
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Categories",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'K2D',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CategoriesPage(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.chevron_right,
                            size: 35,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CategoriesPage(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Workshop.png',
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Workshop",
                                style: TextStyle(
                                  fontFamily: 'K2D',
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(117, 8, 23, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CategoriesPage(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Plants.png',
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Plants",
                                style: TextStyle(
                                  fontFamily: 'K2D',
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(117, 8, 23, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CategoriesPage(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Fertilizer.png',
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Fertilizer",
                                style: TextStyle(
                                  fontFamily: 'K2D',
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(117, 8, 23, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CategoriesPage(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Home_Decors.png',
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Decors",
                                style: TextStyle(
                                  fontFamily: 'K2D',
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(117, 8, 23, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New Arrival",
                          style: TextStyle(
                            color: Colors.black,
                            // color: const Color.fromRGBO(117, 8, 23, 1),
                            fontFamily: 'K2D',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildNewArrivals(
                          'Orchid Elegance',
                          'Indoor Plant, 26° - 30°C, Water 25%',
                          'assets/images/Orchid Elegance.jpeg',
                          '250',
                          true,
                        ),
                        _buildNewArrivals(
                          'Succulent Selectionnnnnnnnnn',
                          'Indoor Plant, 26° - 30°C, Water 25%',
                          'assets/images/leaves.jpeg',
                          '290',
                          false,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Our Branding",
                          style: TextStyle(
                            color: Colors.black,
                            // color: const Color.fromRGBO(117, 8, 23, 1),
                            fontFamily: 'K2D',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildNewArrivals(
                              'BV Mug',
                              'Indoor Plant, 26° - 30°C, Water 25%',
                              'assets/images/Blossom Valley_Mug.jpeg',
                              '100',
                              true,
                            ),
                            _buildNewArrivals(
                              'BV Cap',
                              'Indoor Plant, 26° - 30°C, Water 25%',
                              'assets/images/Blossom Valley_Cap.jpeg',
                              '20',
                              false,
                            ),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildNewArrivals(
                              'Blossom Valley T-shirt1',
                              'Indoor Plant, 26° - 30°C, Water 25%',
                              // 'assets/images/Blossom Valley_T-shirt1.jpeg',
                              'assets/images/Blossom Valley_T-shirt2.jpeg',
                              '200',
                              true,
                            ),
                            _buildNewArrivals(
                              'BV Water bottle',
                              'Indoor Plant, 26° - 30°C, Water 25%',
                              'assets/images/Blossom Valley_Water bottle.jpeg',
                              '20',
                              false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildNewArrivals(String plantName, String plantDesc,
      String imgAddress, String ecoPoints, bool isinbag) {
    double width = MediaQuery.of(context).size.width;
    // bool isLiked = true; // Initialize like state
    // bool isinbag = false; // Initialize

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width * 0.5 - 10,
                height: 135,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgAddress),
                    fit: BoxFit.cover,
                  ),
                  border: Border(
                    bottom: BorderSide(
                      color: const Color.fromRGBO(117, 8, 23, 1),
                      width: 2.0,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    // bottomLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    // bottomRight: Radius.circular(5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1), // Shadow color
                      blurRadius: 2.0, // Amount of blur
                      offset: Offset(
                          2, 2), // Horizontal and vertical offset of shadow
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width * 0.5 - 20,
                      child: Text(
                        plantName,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'K2D',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      width: width * 0.5 - 30,
                      child: Text(
                        plantDesc,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontFamily: 'K2D',
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/Plants.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 10),
                        Text(
                          ecoPoints,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'K2D',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isinbag = !isinbag; // Toggle bag state
                            });
                          },
                          child: Row(
                            children: [
                              Text(
                                "Add to Bag ",
                                style: TextStyle(
                                    // color: Colors.white,
                                    ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Image.asset(
                                isinbag
                                    ? 'assets/images/bag f.png'
                                    : 'assets/images/bag o.png',
                                width: 24,
                                height: 24,
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Color(0xFF750817),
                            backgroundColor: Colors.white, // #750817
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            textStyle: TextStyle(fontSize: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
