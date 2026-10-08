import 'package:flutter/material.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100,),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: "xyz@gmail.com",
              filled: true,
              fillColor: Colors.blue.shade50,

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent,width: 1),
                borderRadius: BorderRadius.circular(12)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue,width: 1),
                borderRadius: BorderRadius.circular(12)
              ),
            ),
          ),
          TextFormField(
            controller: passwordController,
            obscureText: visibility,
            decoration: InputDecoration(
              hint: Text("***********"),
              filled: true,
              fillColor: Colors.blue.shade50,
              suffixIcon: IconButton(
                onPressed: (){
                  setState(() {
                    visibility = !visibility;
                  });
                },
                icon: Icon(visibility ? Icons.visibility : Icons.visibility_off),
              ),

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent,width: 1),
                borderRadius: BorderRadius.circular(12)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue,width: 1),
                borderRadius: BorderRadius.circular(12)
              ),

            ),
          )
        ],
      ),
    );
  }
}

