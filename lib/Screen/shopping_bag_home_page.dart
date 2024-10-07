import 'package:flutter/material.dart';

class ShoppingBagHomePage extends StatelessWidget {
  const ShoppingBagHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Bag",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,

        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 80,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(

                      tileColor: Colors.white,
                      leading: Image.network(
                        "https://isto.pt/cdn/shop/files/Heavyweight_Black_ef459afb-ff7a-4f9a-b278-9e9621335444.webp?v=1710414950&width=1946", // Replace with a valid direct image URL
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      title: Text("Pullover",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),), // Replace with actual product name
                      subtitle: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Color: Black,   Size: M"),
                          Row(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline),color: Colors.grey,
                                    onPressed: () {

                                    },
                                  ),
                                  Text('1'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle_outline),color: Colors.grey,
                                    onPressed: () {

                                    },
                                  ),
                                ],
                              )
                            ],
                          )
                          ],
                        ),
                      ),
                      // Replace with dynamic values
                      trailing: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.more_vert,size: 16,),
                          Text("51\$",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
                flex: 15,
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Amount",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
                ),
                Text("\$124", style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),)
              ],
            )),
            Expanded(
                flex: 5,
                child: ElevatedButton(
              onPressed: (){}, child: Text("CHACK OUT", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: Size.fromWidth(double.maxFinite),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    )
                  ),
            ))
          ],
        ),
      ),
    );
  }
}
