import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text("Cars" ,style:  TextStyle(color: Colors.red , fontSize: 25),),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        actions: [
          IconButton(
              onPressed:(){},
              icon: const Icon(Icons.notifications_none , color: Colors.redAccent,)
          ),
          IconButton(
              onPressed:(){},
              icon: const Icon(Icons.shopping_cart , color: Colors.redAccent,)
          ),
        ],

      ),
      body: SingleChildScrollView(
        child: Container(
         padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // #cotegories
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All"),
                    singleTab(false, "Red"),
                    singleTab(false, "Blue"),
                    singleTab(false, "Green"),
                    singleTab(false, "Yellow"),
                    singleTab(false, "White"),
                    singleTab(false, "Black"),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              // #caritems #makeItem
            makeItem("assets/images/im_car4.png"),
            makeItem("assets/images/im_car5.jpg"),
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
            ],
          ),
        ),
      ),
    );
  }
  // #singleTap
  Widget singleTab(bool type, String text){
    return AspectRatio(
        aspectRatio: 2.2/1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color:type ?  Colors.red : Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: type ? Colors.white : Colors.black,
              fontSize: type ? 18 : 15,
            ),
          )
        ),
       ),
    );
    
  }

  // #makeItem
  Widget makeItem(String image){
   return Container(
     height: 250,
     width: double.infinity,
     margin:const EdgeInsets.only(bottom: 20),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),
       image: DecorationImage(
         image: AssetImage(image),
         fit: BoxFit.cover,
       ),
       boxShadow: [
         BoxShadow(
         color: Colors.grey[400]!,
         blurRadius: 10,
         offset:const Offset(0, 10,),
       ),
     ],
    ),
     child: Container(
       padding: EdgeInsets.all(20),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         gradient: LinearGradient(
           begin: Alignment.bottomRight,
           colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.1),
         ],
         ),
       ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                const Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("PDP Car" , style: TextStyle(color: Colors.white, fontSize: 25),),
                       SizedBox(width: 10,),
                       Text("100\$" , style: TextStyle(color: Colors.white, fontSize: 25),),
                     ],
                   ),
               const SizedBox(width: 10,),
               Column(
                 children: [
                   Container(
                     margin: const EdgeInsets.only(top: 4),
                     child: const Text(
                       "Electric",
                       style: TextStyle(color: Colors.red, fontSize: 20),
                     ),
                   ),
                 ],
               )
             ],
           ),
           Container(
             width: 35,
             height: 35,
             decoration: const BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.red
             ),
             child: const Center(
               child: Icon(Icons.favorite_border_outlined,size: 20, color: Colors.white,),
             ),
           ),

         ],
       ),
     ),
   );
  }
}
