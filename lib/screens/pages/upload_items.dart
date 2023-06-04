import 'package:flutter/material.dart';

class UploadItemsScreen extends StatefulWidget {
  const UploadItemsScreen({Key? key}) : super(key: key);

  @override
  State<UploadItemsScreen> createState() => _UploadItemsScreenState();
}

class _UploadItemsScreenState extends State<UploadItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
        child: Text('Upload',style: TextStyle(color: Colors.black,fontSize: 20),),
      ),
    );
  }
}
