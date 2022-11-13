import 'package:animation/utils/colors.dart';
import 'package:animation/widgets/rounded_input_field.dart';
import 'package:animation/widgets/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// class SignUpPage extends StatelessWidget {
//   const SignUpPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController emailController = TextEditingController();
//     TextEditingController passwordController = TextEditingController();
//     TextEditingController nameController = TextEditingController();
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 40),
//             child: Align(
//                 alignment: Alignment.centerLeft, child: Text("Email address")),
//           ),
//           RoundedInputField(
//             hintText: "Email Adress",
//             controller: emailController,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 40),
//             child: Align(
//                 alignment: Alignment.centerLeft, child: Text("Your Password")),
//           ),
//           RoundedPasswordField(controller: passwordController),
//           Container(
//             margin: EdgeInsets.symmetric(vertical: 10),
//             width: size.width * 0.8,
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//             decoration: BoxDecoration(
//               color: secondary,
//             ),
//             child: Center(child: Text("Sign up")),
//           ),
//         ],
//       ),
//     );
//   }
// }

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
      backgroundColor: Color(0XFF181818),
    );
  }

  Widget _buildBody(context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          // Container(
          //     child: Image.network(
          //   'https://supabase.io/new/images/logo-dark.png',
          //   width: 300,
          // )),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Card(
              elevation: 1,
              child: Container(
                padding: EdgeInsets.only(bottom: 40),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller: _emailController,
                          cursorColor: Colors.black,
                          style: TextStyle(),
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty || !value.contains('@')) {
                              return 'Invalid e-mail';
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller: _passwordController,
                          cursorColor: Colors.black,
                          obscureText: true,
                          style: TextStyle(),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Invalid password';
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          cursorColor: Colors.black,
                          obscureText: true,
                          style: TextStyle(),
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty ||
                                value != _passwordController.text) {
                              return 'Passwords don\'t match';
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: size.width,
                        height: 45,
                        child: MaterialButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              _register();
                            }
                          },
                          color: Colors.black,
                          child: Text(
                            'Register',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future _register() async {
    final result = await GetIt.instance<SupabaseClient>()
        .auth
        .signUp(_emailController.text, _passwordController.text);

    if (result.data != null) {
      Navigator.pushReplacementNamed(context, '/login');
      _showDialog(context, title: 'Success', message: 'Register Successful');
    } else if (result.error?.message != null) {
      _showDialog(context, title: 'Error', message: result.error?.message);
    }

    setState(() {
      // just for simplicity reasons (clean the textfields)
    });
  }

  void _showDialog(context, {String? title, String? message}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // retorna um objeto do tipo Dialog
        return AlertDialog(
          title: new Text(title ?? ''),
          content: new Text(message ?? ''),
          actions: <Widget>[
            // define os botões na base do dialogo
            new MaterialButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
