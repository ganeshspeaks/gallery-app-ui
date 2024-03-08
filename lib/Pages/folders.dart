import 'package:flutter/material.dart';
import 'package:practice/Pages/all_images_urls.dart';
import 'package:practice/Pages/photos.dart';


class Folders extends StatefulWidget {
  const Folders({super.key});

  @override
  State<Folders> createState() => _FoldersState();
}

class _FoldersState extends State<Folders> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Folders'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
      
            // first folder
      
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>const Photos())
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.folder),
                  const Text(
                    'All Photos',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '${imageUrls.length + 1}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
      
                  ),
                ],
              ),
            ),
      
            
          ],
        ),
      ),
    );
  }
}