import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  TestSate createState() => TestSate();
}

class TestState {}

class TestSate extends State<Test> {
  bool isDepannageSelected = true;

  final List<Map<String, String>> locations = [
    {'code': '36-El Tarf', 'name': '37-Tindouf', 'subtitle': '38-Tissemsilt'},
    {'code': '01-Adrar', 'name': '02-Chlef', 'subtitle': '03-Laghouat'},
    {'code': '04-Oum El Bouaghi', 'name': '05-Batna', 'subtitle': '06-Béjaïa'},
    {'code': '07-Biskra', 'name': '08-Béchar', 'subtitle': '09-Blida'},
    {'code': '10-Bouira', 'name': '11-Tamanrasset', 'subtitle': '12-Tébessa'},
    {'code': '13-Tlemcen', 'name': '14-Tiaret', 'subtitle': '15-Tizi Ouzou'},
    {'code': '16-Alger', 'name': '17-Djelfa', 'subtitle': '18-Jijel'},
    {'code': '19-Sétif', 'name': '20-Saïda', 'subtitle': '21-Skikda'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // Header Text
              Text(
                'Un problème avec votre véhicule ?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                'Trouver le service de dépannage de votre région .',
                style: TextStyle(fontSize: 18, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),

              // Toggle Section
              Row(
                children: [
                  // Dépannage auto button
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isDepannageSelected = true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          color:
                              isDepannageSelected
                                  ? Colors.yellow[400]
                                  : Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.local_shipping,
                              color: Colors.black,
                              size: 24,
                            ),
                            SizedBox(width: 12),
                            Text(
                              'Dépannage auto',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 16),

                  // Toggle Switch
                  Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: Duration(milliseconds: 200),
                          left: isDepannageSelected ? 4 : 26,
                          top: 4,
                          child: Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Colors.yellow[400],
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 16),

                  // Atelier mécanique button
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isDepannageSelected = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          color:
                              !isDepannageSelected
                                  ? Colors.yellow[400]
                                  : Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.build, color: Colors.black, size: 24),
                            SizedBox(width: 12),
                            Text(
                              'Atelier mécanique',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Scrollable Yellow Frame
              Expanded(
                child: Row(
                  children: [
                    // Scrollable List
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow[400],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.all(16),
                          itemCount: locations.length,
                          itemBuilder: (context, index) {
                            final location = locations[index];
                            return Container(
                              margin: EdgeInsets.only(bottom: 12),
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.yellow[300],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    location['code']!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    location['name']!,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    location['subtitle']!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    SizedBox(width: 12),

                    // Arrow Button
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.yellow[400],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.keyboard_double_arrow_right,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
