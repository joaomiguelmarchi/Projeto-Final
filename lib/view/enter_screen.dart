import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:io';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:projeto_final/model/CRUD.dart';
import 'package:projeto_final/model/cars.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  String? photo2;

  @override
  Widget build(BuildContext context) {
  final state = Provider.of<ProviderTry>(context);
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text(AppLocalizations.of(context)!.enter_screen_title),
        ),
        body: ListView(children: [
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
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: AppLocalizations.of(context)!.enter_screen_type1,
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
                    decoration:  InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: AppLocalizations.of(context)!.enter_screen_type2,
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
                                 state.image = image;
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
                                  state.image = image;
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
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SizedBox(
                                width: 200,
                                height: 250,
                                child: Image.file(image!)),
                          ),
                          Row(
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
                                     state.image = image;
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
                                      state.image = image;
                                    },
                                    icon: const Icon(
                                      Icons.add_photo_alternate_outlined,
                                      size: 60,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                const SizedBox(
                  width: 50,
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 100,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate() &&
                            Provider.of<ProviderTry>(context, listen: false)
                                    .numberOfLots >
                                Provider.of<ProviderTry>(context, listen: false)
                                    .listacars
                                    .length) {
                          CRUD().save(
                            Cars(
                              ownername: nomecontroller.text,
                              carId: placacontroller.text,
                              start: DateFormat('yyyy-MM-dd KK:mm:ss').format(DateTime.now()),
                            ),
                          );
                          Navigator.pop(context);
                        }
                      },
                      child:  Text(
                        AppLocalizations.of(context)!.enter_screen_btn1,
                        style: const TextStyle(fontSize: 22,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      );
  }
  pegarImagemGaleria() async {
    final PickedFile? imagemTemporaria =
    await imagePicker.getImage(source: ImageSource.gallery);
    if (imagemTemporaria != null) {
      setState((){
        image = File(imagemTemporaria.path);
      });
    }
  }

  pegarImagemCamera() async {
    final PickedFile? imagemTemporaria =
    await imagePicker.getImage(source: ImageSource.camera);
    if (imagemTemporaria != null) {
      setState((){
        image = File(imagemTemporaria.path);
      });
    }
  }
}
