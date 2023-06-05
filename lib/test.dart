import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.black,
        leading: MaterialButton(onPressed: (){},child: Icon(Icons.arrow_back,
          color: Colors.white,),),
        title: Container(
          child: Row(children: [
            CircleAvatar(
              radius: 19,
              backgroundImage: AssetImage("assets/person.jpg"),
            ),
            SizedBox(width: 15,),
            Text("Person",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),)
          ],),
        ),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(
            Icons.video_call,color: Colors.white,
          )),
          IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.white,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,),)
        ],),
      body: Container(
        height: 800,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/background.png"),
              fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 0, 30),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/person1.jpg"),
                  ),SizedBox(width: 20,),
                  Container(
                      width: 240,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,color: Colors.white,
                            style: BorderStyle.solid
                        ),

                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        decoration: InputDecoration(

                            hintText: "       This is My First Message",
                            hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.white
                            )

                        ),
                      ))
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(40, 20, 0, 30),
              child: Row(
                children: [

                  Container(
                      width: 240,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,color: Colors.white,
                            style: BorderStyle.solid
                        ),

                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        decoration: InputDecoration(

                            hintText: "       This is My First Message",
                            hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.white
                            )

                        ),
                      )),
                  SizedBox(width: 20,),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/person2.jpg"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 375,),

            Row(
              children: [
                Container(
                  width: 285,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,color: Colors.white,
                        style: BorderStyle.solid
                    ),

                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.tag_faces,color: Colors.white,),
                        ),
                        suffixIcon: Icon(Icons.attach_file,color: Colors.white,),
                        hintText: "Type a Message",
                        hintStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                        )

                    ),
                  ),
                ),SizedBox(width: 10,),
                Container(  decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,color: Colors.white,
                      style: BorderStyle.solid
                  ),

                  borderRadius: BorderRadius.circular(50),
                ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.mic,color: Colors.white,),
                  ),
                )
              ],
            )
          ],
        ),

      ),

    );
  }
}

