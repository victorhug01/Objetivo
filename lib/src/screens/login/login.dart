import 'package:flutter/material.dart';
import 'package:objetivo/src/screens/login/login_validation_mixin/login_mix_validator.dart';
import 'package:objetivo/src/screens/student/student_home/studant_home.dart';
import 'package:objetivo/src/theme/theme_class.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with ValidationMixinClass {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  IconData visibilityIcon = Icons.visibility;
  IconData visibilityOffIcon = Icons.visibility_off;
  bool isPasswordObscured = true;
  Icon passwordVisibilityIcon = const Icon(Icons.visibility_off);

  void togglePasswordVisibility() {
    setState(() {
      if (passwordVisibilityIcon.icon == visibilityIcon) {
        passwordVisibilityIcon = Icon(visibilityOffIcon);
        isPasswordObscured = true;
      } else if (passwordVisibilityIcon.icon == visibilityOffIcon) {
        passwordVisibilityIcon = Icon(visibilityIcon);
        isPasswordObscured = false;
      }
    });
  }

  InputDecoration buildInputDecoration(String labelText) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: const TextStyle(
        fontSize: 17,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      enabledBorder: inputBorderComponent,
      focusedBorder: inputBorderComponent,
      disabledBorder: inputBorderComponent,
    );
  }

  final InputBorder inputBorderComponent = OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(
      color: ColorThemeClass.colorPrimary,
      width: 2.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _keyForm,
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  child: Image.asset(
                    'assets/logo_objetivo.png',
                    width: 250,
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width < 550 ? 350 : 450,
                  child: TextFormField(
                    validator: isNotEmpyt,
                    controller: controllerEmail,
                    decoration: buildInputDecoration("Email:"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width < 550 ? 350 : 450,
                  child: TextFormField(
                    validator: isNotEmpyt,
                    controller: controllerPassword,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPasswordObscured,
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: IconButton(
                          onPressed: () {
                            togglePasswordVisibility();
                          },
                          icon: passwordVisibilityIcon,
                        ),
                      ),
                      labelText: "Senha:",
                      labelStyle: const TextStyle(
                        fontSize: 17,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder: inputBorderComponent,
                      focusedBorder: inputBorderComponent,
                      disabledBorder: inputBorderComponent,
                    ),
                  ),
                ),
                Text(
                  "Esqueceu a senha?",
                  style: TextStyle(
                    color: ColorThemeClass.linkColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width < 550 ? 220 : 320,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15.0),
                      backgroundColor: ColorThemeClass.colorPrimary,
                    ),
                    onPressed: () {
                      if (_keyForm.currentState!.validate()) {
                        if (controllerEmail.text == 'aluno@aluno' &&
                            controllerPassword.text == '123') {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (_) => const StudantHomePage(),
                            ),
                          );
                        }
                      }
                    },
                    child: Text(
                      "Avançar",
                      style: TextStyle(
                        fontSize: 18,
                        color: ColorThemeClass.colorTertiary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
