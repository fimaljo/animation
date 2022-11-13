import 'package:animation/screens/login/signup.page.dart';
import 'package:animation/utils/colors.dart';
import 'package:animation/widgets/already_have_an_account_check.dart';
import 'package:animation/widgets/rounded_input_field.dart';
import 'package:animation/widgets/rounded_password_field.dart';
import 'package:animation/widgets/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

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
//             child: Center(child: Text("Sign in")),
//           ),
//           GestureDetector(
//             onTap: () {
//               // Navigator.of(context).push(
//               //   MaterialPageRoute(
//               //     builder: (context) => ForgotPasswordPage(),
//               //   ),
//               // );
//             },
//             child: const Text(
//               'Forgot password?',
//               style: TextStyle(color: secondary),
//             ),
//           ),
//           SizedBox(
//             height: size.height * 0.03,
//           ),
//           AlreadyHaveAnAccountCheck(
//             press: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => RegisterView(),
//                 ),
//               );
//             },
//             login: true,
//           )
//         ],
//       ),
//     );
//   }
// }
class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: size.width,
                        height: 45,
                        child: MaterialButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              _login();
                            }
                          },
                          color: Colors.black,
                          child: Text(
                            'Login',
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
                          Text('Don\'t have an account?'),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            child: Text(
                              'Register',
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

  Future _login() async {
    final sharedPreferences = await SharedPreferences.getInstance();

    final result = await GetIt.I.get<SupabaseClient>().auth.signIn(
        email: _emailController.text, password: _passwordController.text);

    if (result.data != null) {
      await sharedPreferences.setString(
          'user', result.data!.persistSessionString);
      Navigator.pushReplacementNamed(context, '/home');
    } else if (result.error?.message != null) {
      _showDialog(context, title: 'Error', message: result.error?.message);
    }
  }
}

void _showDialog(context, {String? title, String? message}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // retorna um objeto do tipo Dialog
      return AlertDialog(
        title: Text(title ?? ''),
        content: Text(message ?? ''),
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
