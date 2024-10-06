import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  static const String secondpageroute = 'secondpageroute';
const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Row(
          children: [
            const SizedBox(
              height: 10,
              width: 15,
            ),
            Container(
          width: 32,
          height: 35,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 0.2),
            borderRadius: BorderRadius.circular(10)),
          child: IconButton(icon: const Icon(Icons.arrow_back_ios),
          iconSize: 20,
          alignment: Alignment.center,
          color: Colors.white,
          onPressed: (){
            Navigator.of(context).pop();
          },),
        ),
          ],
        ),
        
        title: const Center(
          child: Text('Scanning...',
          style: TextStyle(fontWeight: FontWeight.bold,),),
        ),
        
        actions: const [
          CircularProgressIndicator(color: Colors.white,),
          SizedBox(
              height: 20,
              width: 20,
            ),
        ],
      ),
      body: 
          SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/Street.jpg'),
                fit: BoxFit.cover)
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 802.9,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              height: 20,
                              width: 20,
                            ),
                            Container(
                              width: 270,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: SizedBox(
                                      height: 70,
                                      width: 70,
                                      child: Image.asset('assets/Hotel1.jpg',
                                      fit: BoxFit.cover,
                                      )
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                    width: 20,
                                  ),
                                  const Column(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('  Royal Albert Hotel',
                                          style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14),
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.star_rate_rounded, color: Color(0xff3ABBE2),),
                                              Icon(Icons.star_rate_rounded, color: Color(0xff3ABBE2),),
                                              Icon(Icons.star_rate_rounded, color: Color(0xff3ABBE2),),
                                              Icon(Icons.star_rate_rounded, color: Color(0xff3ABBE2),),
                                              Icon(Icons.star_rate_rounded, color: Colors.grey,),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                    ],
                    )
                  )
                  ]
              )
            ),
          )
          );
  }
}
