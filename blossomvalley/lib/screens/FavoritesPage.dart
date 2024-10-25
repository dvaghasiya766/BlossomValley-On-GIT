import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            _buildFevoritesItem(
              'Indoor Jungle',
              'Indoor Plant, 26° - 30°C, Water 25%',
              'assets/images/lily.jpeg',
              '220',
              true,
            ),
            SizedBox(height: 5),
            _buildFevoritesItem(
              'Flowering Beauties',
              'Indoor Plant, 26° - 30°C, Water 25%',
              'assets/images/Flowering Beauties.jpeg',
              '200',
              true,
            ),
            SizedBox(height: 5),
            _buildFevoritesItem(
                'Succulent Selectionnnnnnnnnn',
                'Indoor Plant, 26° - 30°C, Water 25%',
                'assets/images/leaves.jpeg',
                '290',
                false),
            SizedBox(height: 5),
            _buildFevoritesItem(
              'Orchid Elegance',
              'Indoor Plant, 26° - 30°C, Water 25%',
              'assets/images/Orchid Elegance.jpeg',
              '250',
              false,
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildFevoritesItem(String plantName, String plantDesc,
      String imgAddress, String ecoPoints, bool isinbag) {
    double width = MediaQuery.of(context).size.width;
    // bool isLiked = true; // Initialize like state
    // bool isinbag =; // Initialize

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          // color: const Color(0xFFE8E8E8),
          color: const Color.fromARGB(
              255, 245, 245, 245), // Set the background color of the card here
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                height: 135,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgAddress),
                    fit: BoxFit.cover,
                  ),
                  border: Border(
                    right: BorderSide(
                      color: const Color.fromRGBO(117, 8, 23, 1),
                      width: 2.0,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width - 165,
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
                      width: width - 166,
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
                      children: [
                        Image.asset(
                          'assets/images/Plants.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 5),
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
                    SizedBox(height: 2),
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
                                  color: const Color.fromRGBO(117, 8, 23, 1),
                                ),
                              ),
                              SizedBox(
                                width: 0,
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
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.delete),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Color(0xFF750817),
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            textStyle: TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            // elevation: 2,
                          ),
                        ),
                      ],
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
