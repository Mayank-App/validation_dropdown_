import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/Yuvraj2.webp"),
                          radius: 19,
                        ),
                      ),
                      const SizedBox(width: 7,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Yuvraj,12",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          Row(
                            children: [
                              Icon(Icons.circle_rounded,color: Colors.red,size: 12,),
                              SizedBox(width: 5),
                              Text("Online",style: TextStyle(fontSize: 12,color: Colors.black),)
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 7,),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Icon(Icons.check_circle,size: 20,color: Colors.blue.shade700,),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const Icon(Icons.location_on,color: Colors.green,size: 22,),
                      const SizedBox(width: 12,),
                      Text("5 miles",style: TextStyle(color: Colors.grey.shade900),)
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Icon(Icons.location_city,color: Colors.green,size: 22,),
                      const SizedBox(width: 12,),
                      Text("Mumbai",style: TextStyle(color: Colors.grey.shade900),),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Icon(Icons.yard,color: Colors.green,size: 22,),
                      const SizedBox(width: 12,),
                      Text("38 Yr",style: TextStyle(color: Colors.grey.shade900),),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Icon(Icons.sports_cricket,color: Colors.green,size: 22,),
                      const SizedBox(width: 12,),
                      Text("+ 8",style: TextStyle(color: Colors.grey.shade900),),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Icon(Icons.gite_rounded,color: Colors.green,size: 22,),
                      const SizedBox(width: 12,),
                      Text("Noida Cricket Course,Sector 47,Noida ",style: TextStyle(color: Colors.grey.shade900),),
                    ],
                  ),
                  const SizedBox(height: 35,),
                  const Text("Gender",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                  const SizedBox(height: 10,),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.green),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Center(child: Text("Male")),
                  ),
                  const SizedBox(height: 20,),
                  const Text("My Interest",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.green),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green

                        ),
                        child: const Center(child: Text("Music",style: TextStyle(color: Colors.white),)),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.green),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text("Foood & Drinks")),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.green),
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: const Center(child: Text("Nature")),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.green),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green

                        ),
                        child: const Center(child: Text("Philanthropist",style: TextStyle(color: Colors.white),)),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.green),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text("Travel & Places")),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  const Text("Instagram Photos",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/Yuvraj6.jpeg",fit: BoxFit.cover,),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/Yuvraj7.jpeg",fit: BoxFit.cover,),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/Yuvraj4.jpeg",fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),

                ]
            ),

          ),
        ),
        Container(height: 2,
          color: Colors.green,),
        const SizedBox(height: 15,),
        Center(
          child: Column(
            children: [
              Text("SHARE ANNIKA'S PROFILE",style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold,fontSize: 18),),
              const SizedBox(height: 5,),
              Text("SEE WHAT A FRIEND THINKS",style: TextStyle(color: Colors.grey.shade500,fontSize: 16),),

            ],
          ),
        ),
        const SizedBox(height: 15,),
        Container(height: 2,
          color: Colors.green,),
        const SizedBox(height: 15,),
        Center(child: Text("REPORT YUVRAJ",style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold,fontSize: 18),)),
        const SizedBox(height: 15,),
        Container(height: 2,
          color: Colors.green,),
        const SizedBox(height: 20,),
        const Row(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.red
              ,child: Icon(Icons.close,color: Colors.white,size: 50,),
            ),
            SizedBox(width: 12,),
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green
              ,child: Icon(Icons.star,color: Colors.white,size: 50,),
            ),
            SizedBox(width: 12,),
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green
              ,child: Icon(Icons.sports_cricket_outlined,color: Colors.white,size: 50,),
            ),
          ],
        ),
        const SizedBox(height: 100,)
      ],
    );
  }

}