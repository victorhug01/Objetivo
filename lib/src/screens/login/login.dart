import 'package:flutter/material.dart';
import 'package:objetivo/src/theme/theme_class.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  IconData iconeVisibility = Icons.visibility;
  IconData iconeVisibilityOff = Icons.visibility_off;
  bool obscureTextValidation = true;
  Icon teste = Icon(Icons.visibility_off);

  void obscureFunction() {
    if (teste.icon == iconeVisibility) {
      setState(() {
        teste = Icon(iconeVisibilityOff);
        obscureTextValidation = true;
      });
    } else if (teste.icon == iconeVisibilityOff) {
      setState(() {
        teste = Icon(iconeVisibility);
        obscureTextValidation = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width < 550 ? 350 : 450,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email:",
                    labelStyle: const TextStyle(
                      fontSize: 17,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: ColorThemeClass.colorPrimary,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: ColorThemeClass.colorPrimary,
                        width: 2.0,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: ColorThemeClass.colorPrimary,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width < 550 ? 350 : 450,
                height: 50,
                child: TextFormField(
                  obscureText: obscureTextValidation,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: IconButton(
                        onPressed: () {
                          obscureFunction();
                        },
                        icon: teste,
                      ),
                    ),
                    labelText: "Senha:",
                    labelStyle: const TextStyle(
                      fontSize: 17,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: ColorThemeClass.colorPrimary,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: ColorThemeClass.colorPrimary,
                        width: 2.0,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: ColorThemeClass.colorPrimary,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Esqueceu a senha?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorThemeClass.linkColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(30.0),
                width: MediaQuery.of(context).size.width < 550 ? 200 : 300,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorThemeClass.colorPrimary
                  ),
                  onPressed: () {},
                  child: Text(
                    "Avançar",
                    style: TextStyle(
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
    );
  }
}
