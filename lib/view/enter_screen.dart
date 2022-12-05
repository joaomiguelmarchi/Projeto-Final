import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:io';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:provider/provider.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({Key? key}) : super(key: key);

  @override
  State<EnterScreen> createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  TextEditingController nomecontroller = TextEditingController();
  TextEditingController placacontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  ImagePicker imagePicker = ImagePicker();
  File? image;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Adicionar Veículo'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.cyan,
                Colors.yellow,
              ],
            ),
          ),
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 50,
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (nomecontroller.text.length > 8) {
                        return 'Nome muito grande!';
                      }
                      return null;
                    },
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
                const SizedBox(
                  width: 50,
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (placacontroller.text.length != 7) {
                        return 'Apenas 7 Digitos!';
                      }
                      return null;
                    },
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
                const SizedBox(
                  width: 50,
                  height: 50,
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
                              child: IconButton(
                                onPressed: () {
                                  pegarImagemCamera();
                                },
                                icon: const Icon(
                                  Icons.photo_camera_outlined,
                                  size: 60,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 100,
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: IconButton(
                                onPressed: () {
                                  pegarImagemGaleria();
                                },
                                icon: const Icon(
                                  Icons.add_photo_alternate_outlined,
                                  size: 60,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    : Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                            width: 200, height: 250, child: Image.file(image!)),
                      ),
                const SizedBox(
                  width: 50,
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 80,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        int index1 =
                            Provider.of<ProviderTry>(context, listen: false)
                                .index;
                        if (_formKey.currentState!.validate() &&
                            Provider.of<ProviderTry>(context, listen: false)
                                    .numberOfLots >
                                Provider.of<ProviderTry>(context, listen: false)
                                    .listacars
                                    .length) {
                          Provider.of<ProviderTry>(context, listen: false)
                              .addCar(
                            nomecontroller.text,
                            placacontroller.text,
                            image!,
                            DateFormat('yyyy-MM-dd KK:mm:ss a')
                                .format(DateTime.now())
                                .toString(),
                            index1,
                          );
                          Provider.of<ProviderTry>(context, listen: false)
                              .aumentar();
                          Navigator.pop(context);
                          print(index1);
                        }
                      },
                      child: const Text('Save', style: TextStyle(fontSize: 22),),
                    ),
                  ),
                ),
              ],
            ),
           ]
          ),
        ),
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
