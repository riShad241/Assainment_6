import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery',style: TextStyle(fontSize: 25),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(
          children: [
            Container(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text('Welcome to My Photo Gallery!',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(

                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        Text('Search'),
                      ],
                    ),
                  ),
                  border: OutlineInputBorder(),

                ),
              ),
            ),

            Wrap(
              children: [
                _buildPhotoButton(context, 'photo 1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2fBTtGWXnJ-k6eX3ZX2ByezZiJhLxn3Fufg&usqp=CAU'),
                _buildPhotoButton(context, 'photo 1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmBIgYj1yY-r7Fh2ZwHmaAfq8tGJTXxy5pEg&usqp=CAU'),
                _buildPhotoButton(context, 'photo 1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBC1F66EwirdF6kpYfY7zb292dTYqeLjzLww&usqp=CAU'),
                _buildPhotoButton(context, 'photo 1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBC1F66EwirdF6kpYfY7zb292dTYqeLjzLww&usqp=CAU'),
                _buildPhotoButton(context, 'photo 1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBC1F66EwirdF6kpYfY7zb292dTYqeLjzLww&usqp=CAU'),
                _buildPhotoButton(context, 'photo 1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBC1F66EwirdF6kpYfY7zb292dTYqeLjzLww&usqp=CAU'),

               ],
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2fBTtGWXnJ-k6eX3ZX2ByezZiJhLxn3Fufg&usqp=CAU',height: 30,width: 30,),
                  title: Text('Simple photo 1'),
                  subtitle: Text('Category 1'),
                ),
                ListTile(
                  leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2fBTtGWXnJ-k6eX3ZX2ByezZiJhLxn3Fufg&usqp=CAU',height: 30,width: 30,),
                  title: Text('Simple photo 1'),
                  subtitle: Text('Category 1'),
                ),
                ListTile(
                  leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2fBTtGWXnJ-k6eX3ZX2ByezZiJhLxn3Fufg&usqp=CAU',height: 30,width: 30,),
                  title: Text('Simple photo 1'),
                  subtitle: Text('Category 1'),
                ),
              ],
            ),
            




          ],

        ),


      ),
       floatingActionButton:  FloatingActionButton(onPressed: (){}, child: Icon(Icons.cloud_upload),),

    );
  }
}

Widget _buildPhotoButton(BuildContext context, String Craption, String imageUrl){
  return Container(
    child: ElevatedButton(
      onPressed: (){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Clicked on photo!')),
      );

    },
      style: ElevatedButton.styleFrom(
     backgroundColor: Colors.white,
      elevation: 0,
    ),
      child: Stack(
        children: [
          Image.network(imageUrl,height: 110,width: 100,),

          Positioned(
            top: 65,
            left: 20,
            right: 20,
            bottom: 30,
            child: Container(
              height: 10,
              width: 18,
              color: Colors.black45,
            ),
          ),

          Positioned(
              top: 65,
              left: 20,
              right: 20,
              bottom: 25,
              child: Text('Caption',style: TextStyle(fontSize: 12,color: Colors.white),)),
        ],
      )
    ),
  );

}
