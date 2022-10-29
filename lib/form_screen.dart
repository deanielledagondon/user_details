import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FormScreenState();
  }
}


class _FormScreenState extends State<FormScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); 

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final birthdayController = TextEditingController();
  final ageController = TextEditingController();
  final sectionController = TextEditingController();
  final courseController = TextEditingController();
  final facebookController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Details'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction ,
        child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                  icon: const Icon(Icons.account_circle),
                    hintText: 'John Doe',
                    labelText: 'Name',
                    suffixIcon: nameController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                  icon: const Icon(Icons.close),
                  color: Colors.red,
                  onPressed: () => nameController.clear(), 
                          ),
                  focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                  width: 1.0,
                  color: Colors.black,
                         ),
                     ),
                ),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                      if(value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z.]+$').hasMatch(value)) {
                            return 'Please enter your name';
                          } else {

                          return null;
                             }
                          },
                        ),
                ),
              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                  icon: const Icon(Icons.email),
                        hintText: 'johndoe@gmail.com',
                        labelText: 'Email',
                        suffixIcon: emailController.text.isEmpty
                          ? Container(width: 0)
                          : IconButton(
                          icon: const Icon(Icons.close),
                          color: Colors.red,
                          onPressed: () => emailController.clear(), 
                          ),
                  focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                            width: 1.0,
                            color: Colors.black,
                            ),
                          ),
                      ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  onSaved: (String? value) {},
                  validator: (value) {
                      if(value!.isEmpty ||
                          !RegExp(r'^[\w-]+@([\w-]+\.)+[\w]{2,4}')
                              .hasMatch(value))  {
                      return 'Email is required';
                    }

                    return null;
                  },
                ),
            ),

            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                  controller: phoneController,
                    decoration: InputDecoration(
                    icon: const Icon(Icons.phone),
                    hintText: '+639 123 4567',
                    labelText: 'Phone Number',
                    suffixIcon: phoneController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                      icon: const Icon(Icons.close),
                      color: Colors.red,
                      onPressed: () => phoneController.clear(), 
                      ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 1.0,
                        color: Colors.black
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.done,
                    onSaved: (String? value) {},
                    validator: (value) {
                      if(value!.isEmpty ||
                          !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s/0-9]+$')
                              .hasMatch(value)) {
                        return 'Phone Number is required';
                      }

                      return null;

                    },
              ),
            ),
            
              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  controller: birthdayController,
                  decoration: InputDecoration(
                  icon: const Icon(Icons.calendar_month),
                  hintText: '2001-10-31',
                  labelText: 'Birthdate',
                  suffixIcon: birthdayController.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                    icon: const Icon(Icons.close),
                    color: Colors.red,
                    onPressed: () => birthdayController.clear(), 
                    ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.black,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.datetime,
                  textInputAction: TextInputAction.done,
                  onSaved: (String? value) {},
                  validator: (value) {
                      if(value!.isEmpty ||
                          !RegExp(r'^[0-9]{4}-(((0[13578]|(10|12))-(0[1-9]|[1-2][0-9]|3[0-1]))|(02-(0[1-9]|[1-2][0-9]))|((0[469]|11)-(0[1-9]|[1-2][0-9]|30)))$').hasMatch(value)) {
                      return 'Birthdate is required';
                    }

                    return null;

                  },
             ),
            ),

              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  controller: ageController,
                    decoration: InputDecoration(
                    icon: const Icon(Icons.numbers),
                    hintText: '21',
                    labelText: 'Age',
                    suffixIcon: ageController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                      icon: const Icon(Icons.close),
                      color: Colors.red,
                      onPressed: () => ageController.clear(), 
                      ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 1.0,
                        color: Colors.black,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    onSaved: (String? value) {},
                    validator: (value) {
                      if(value!.isEmpty ||
                          !RegExp(r'[0-9]+$').hasMatch(value)) {
                        return 'Age is required';
                      }

                      return null;

                    },
             ),
            ),

              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                       controller: sectionController,
                      decoration: InputDecoration(
                      icon: const Icon(Icons.class_),
                      hintText: 'IT3R1',
                      labelText: 'Section',
                      suffixIcon: sectionController.text.isEmpty
                        ? Container(width: 0)
                        : IconButton(
                        icon: const Icon(Icons.close),
                        color: Colors.red,
                        onPressed: () => sectionController.clear(), 
                        ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Colors.black
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      onSaved: (String? value) {},
                      validator: (value) {
                      if(value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z-0-9]+$').hasMatch(value)) {
                          return 'Section is required';
                        }
                        return null;
                      },
             ),
            ),

              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  controller: courseController,
                  decoration: InputDecoration(
                  icon: const Icon(Icons.category),
                  hintText: 'BSIT',
                  labelText: 'Course',
                  suffixIcon: courseController.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                    icon: const Icon(Icons.close),
                    color: Colors.red,
                    onPressed: () => courseController.clear(), 
                    ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.black
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done,
                  onSaved: (String? value) {},
                  validator: (value) {
                      if(value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z.]+$').hasMatch(value)) {
                      return 'Course is required';
                    }
                    return null;
                  },
             ),
            ),
            Container(
             padding: const EdgeInsets.all(12),
             child: TextFormField(
              controller: facebookController,
               decoration: InputDecoration(
               icon: const Icon(Icons.facebook),
                hintText: 'https://www.facebook.com/angeld.dagondon',
                labelText: 'Facebook Link',
                suffixIcon: facebookController.text.isEmpty
                          ? Container(width: 0)
                          : IconButton(
                          icon: const Icon(Icons.close),
                          color: Colors.red,
                          onPressed: () => facebookController.clear(), 
                          ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            width: 1.0,
                            color: Colors.black
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        onSaved: (String? value) {},
                        validator: (value) {
                      if(value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z/-?.]+$').hasMatch(value)) {
                            return 'Link is required';
                          }
                          return null;
                        },
                ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ), 
               onPressed: () {
                if(_formKey.currentState!.validate()) {
                  List displayDetails = <Map<String, dynamic>>[
                          {
                            'name': nameController.text,
                            'email': emailController.text,
                            'phoneNum': phoneController.text,
                            'birthDate': birthdayController.text,
                            'age': ageController.text,
                            'section': sectionController.text,
                            'course':  courseController.text,
                            'facebook': facebookController.text,
                          }
                        ];
                         Navigator.pop(context, displayDetails);
                     }
                   },
                  ),
                ),
              ],
          ),
       ),
    );
  }
}