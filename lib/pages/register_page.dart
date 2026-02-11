import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {

  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25,),

            /// App Title
            Text("Let's Create An Account For You", style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.inversePrimary,
            ),),
            const SizedBox(height: 25,),

            /// Email
            MyTextField(controller: emailController, hintText: "Email", obscureText: false),
            const SizedBox(height: 10,),

            /// Password
            MyTextField(controller: passwordController, hintText: "Password", obscureText: true),
            const SizedBox(height: 10,),

            /// Confirm Password
            MyTextField(controller: confirmPasswordController, hintText: "Confirm Password", obscureText: true),
            const SizedBox(height: 10,),

            /// Register Button
            MyButton(text: "Register", onTap: () {}),
            const SizedBox(height: 25,),

            /// Already A Member
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already a member?", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                const SizedBox(width: 4,),
                GestureDetector(onTap: widget.onTap,child: Text("Login Now", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontWeight:  FontWeight.bold), )),
              ],
            ),

          ],
        ),
      ),
    );
  }
}