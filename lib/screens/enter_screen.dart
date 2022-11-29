import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:projeto_final/data/provider_try.dart';
import 'package:provider/provider.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({Key? key}) : super(key: key);

  @override
  State<EnterScreen> createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  TextEditingController nomecontroller = TextEditingController();
  TextEditingController placacontroller = TextEditingController();
  ImagePicker imagePicker = ImagePicker();
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('A'),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: nomecontroller,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nome do condutor',
                        fillColor: Colors.white10,
                        filled: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.url,
                      controller: placacontroller,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Placa',
                        fillColor: Colors.white10,
                        filled: true,
                      ),
                    ),
                  ),
                  (image == null)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      pegarImagemCamera();
                                    },
                                    child:
                                        const Icon(Icons.photo_camera_outlined),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      pegarImagemGaleria();
                                    },
                                    child: const Icon(
                                        Icons.add_photo_alternate_outlined),
                                  )),
                            )
                          ],
                        )
                      : Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                              width: 150,
                              height: 150,
                              child: Image.file(image!)),
                        ),
                  SizedBox(
                    width: 80,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (Provider.of<ProviderTry>(context, listen: false)
                                .numberOfLots >
                            Provider.of<ProviderTry>(context, listen: false)
                                .listacars.length) {
                          Provider.of<ProviderTry>(context, listen: false)
                              .addCar(nomecontroller.text, placacontroller.text,
                                  image!);
                        }
                        Navigator.pop(context);
                      },
                      child: const Text('Save'),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  pegarImagemGaleria() async {
    final PickedFile? imagemTemporaria =
        await imagePicker.getImage(source: ImageSource.gallery);
    if (imagemTemporaria != null) {
      setState(() {
        image = File(imagemTemporaria.path);
      });
    }
  }

  pegarImagemCamera() async {
    final PickedFile? imagemTemporaria =
        await imagePicker.getImage(source: ImageSource.camera);
    if (imagemTemporaria != null) {
      setState(() {
        image = File(imagemTemporaria.path);
      });
    }
  }
}
