import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:up_invest/app/modules/auth/widgets/custom_auth_scaffold.dart';
import 'package:up_invest/app/modules/user/avatar_model.dart';

import '../../core/constants.dart';

import 'widgets/sing_up_form.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  final avatarList = AvatarModel().avatarList;
  late var avatarImage = avatarList[1];
  int index = 1;

  void _changeAvatar(key) {
    setState(() {
      if (index < avatarList.length - 1 && key == 'FowardButton') {
        index++;
      }
      if (index > 1 && key == 'BackButton') {
        index--;
      }
      avatarImage = avatarList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final systemBarSize = MediaQuery.of(context).viewPadding.top;
    final bottomBarSize = MediaQuery.of(context).viewPadding.bottom;
    final appBarSize = AppBar().preferredSize.height;
    return CustomAuthScaffold(
      onPressed: () => Modular.to.navigate('/auth'),
      widget: (Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height - appBarSize - bottomBarSize - systemBarSize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Preencha os seus dados',
                    style: TextStyle(
                        color: Constants.peachColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                const Text('Você poderá edita-los mais tarde!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 25),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                              backgroundColor: Constants.secondaryColor,
                              radius: 90,
                              backgroundImage: AssetImage(avatarImage)),
                          Positioned(
                            top: 140,
                            left: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color:
                                      const Color.fromRGBO(178, 177, 194, 0.7)),
                              child: IconButton(
                                  onPressed: () => _changeAvatar('BackButton'),
                                  icon: const Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Color.fromRGBO(95, 95, 95, 1),
                                  )),
                            ),
                          ),
                          Positioned(
                            top: 140,
                            left: 130,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color:
                                      const Color.fromRGBO(178, 177, 194, 0.7)),
                              child: IconButton(
                                  onPressed: () =>
                                      _changeAvatar('FowardButton'),
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromRGBO(95, 95, 95, 1),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const SingUpForm(),
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      )),
    );
  }
}
