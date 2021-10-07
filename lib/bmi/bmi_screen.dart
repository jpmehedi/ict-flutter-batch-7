import 'package:flutter/material.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi calculator"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon( Icons.night_shelter),
          )
        ],
      ),
      drawer: Drawer(),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 10,
                    child: Container(
                      width: 150,
                      height: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Age (In Year)",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "18",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipOval(
                                child: Material(
                                  color: Colors.grey.withOpacity(0.50), // Button color
                                  child: InkWell(
                                    splashColor: Colors.red, // Splash color
                                    onTap: () {},
                                    child: Container(
                                      width: 40, height: 40, 
                                      child: Icon(Icons.remove, color: Colors.purple,)
                                    ),
                                  ),
                                ),
                              ),
                              ClipOval(
                                child: Material(
                                  color: Colors.grey.withOpacity(0.50), // Button color
                                  child: InkWell(
                                    splashColor: Colors.red, // Splash color
                                    onTap: () {},
                                    child: Container(
                                      width: 40, height: 40, 
                                      child: Icon(Icons.add, color: Colors.purple,)
                                    ),
                                  ),
                                ),
                              ) 
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: Container(
                      width: 150,
                      height: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Weight (KG)",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "50",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipOval(
                                child: Material(
                                  color: Colors.grey.withOpacity(0.50), // Button color
                                  child: InkWell(
                                    splashColor: Colors.red, // Splash color
                                    onTap: () {},
                                    child: Container(
                                      width: 40, height: 40, 
                                      child: Icon(Icons.remove, color: Colors.purple,)
                                    ),
                                  ),
                                ),
                              ),
                              ClipOval(
                                child: Material(
                                  color: Colors.grey.withOpacity(0.50), // Button color
                                  child: InkWell(
                                    splashColor: Colors.red, // Splash color
                                    onTap: () {},
                                    child: Container(
                                      width: 40, height: 40, 
                                      child: Icon(Icons.add, color: Colors.purple,)
                                    ),
                                  ),
                                ),
                              ) 
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            Card(
              elevation: 10,
              child: Container(
                height: 220,
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 30,
                          width: 150,
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(0.50),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("cm"),
                              Switch(
                                value: true, 
                                onChanged: (bool x){}
                              ),
                              Text("ft")
                            ],
                          ),
                        ),
                      ],
                    ),

                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 120,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.50)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "4",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Icon(
                                Icons.arrow_downward, 
                                size: 40
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.50)
                          ),
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '8"',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Icon(
                                Icons.arrow_downward, 
                                size: 40
                              )
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}