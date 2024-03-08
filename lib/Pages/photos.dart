import 'package:flutter/material.dart';
import 'package:practice/Pages/all_images_urls.dart';

class Photos extends StatefulWidget {
  const Photos({super.key});

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('All Photos'),
      ),
      body: GridView.builder(
        itemCount: imageUrls.length,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
        ), 
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> FullSizeImages(imageurl: imageUrls[index]))
              );
            },

            child: AspectRatio(
              aspectRatio: 1.0,
              child: Image.network(
                imageUrls[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        }
      ),
    );
  }
}

class FullSizeImages extends StatelessWidget {
  final String imageurl;
  const FullSizeImages({super.key, required this.imageurl});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Photo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.network(
                imageurl,
                fit: BoxFit.cover,
                // width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}