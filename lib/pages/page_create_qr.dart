import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GeneratePage extends StatefulWidget {
  const GeneratePage({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _GeneratePage();

}

class _GeneratePage extends State<GeneratePage> {
  final controller = TextEditingController();
    @override
    Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Create QR Code'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: controller.text,
                size: 200.0,
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 40,),
              buildTextField(context),
            ],
          ),
        ),
      ),
    );

    Widget buildTextField(BuildContext context) => TextField(
      controller: controller,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      decoration: InputDecoration(
          hintText: 'Enter the data',
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary,),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.yellow),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          suffixIcon: IconButton(
            color: Theme.of(context).colorScheme.secondary,
            icon: Icon(Icons.done,size: 30),
            onPressed: () => setState(( ) {}),
          )
      ),
    );
}