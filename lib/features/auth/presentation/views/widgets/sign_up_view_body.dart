import 'package:final_task/constants.dart';
import 'package:final_task/core/utils/app_styles.dart';
import 'package:final_task/core/utils/assets.dart';
import 'package:final_task/core/utils/functions/custom_dialouge.dart';
import 'package:final_task/features/auth/data/models/user_model.dart';
import 'package:final_task/features/auth/presentation/views/sign_in_view.dart';
import 'package:final_task/features/auth/presentation/views/widgets/logo_part.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'custom_button.dart';
import 'custom_text_form_field.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  late AutovalidateMode autovalidateMode;
  late GlobalKey<FormState> key;
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    autovalidateMode = AutovalidateMode.disabled;
    key = GlobalKey<FormState>();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Form(
              key: key,
              autovalidateMode: autovalidateMode,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: SizedBox(
                      height: 15,
                    ),
                  ),
                  const LogoPart(),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Great Courses Ahead',
                    style: AppStyles.styleLightUnivia28(context),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  CustomTextFormField(
                    controller: nameController,
                    hint: 'Your name',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    hint: 'Your Email',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(
                    controller: passwordController,
                    hint: 'Password',
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(
                    controller: confirmPasswordController,
                    hint: 'Re-enter password',
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    text: Text(
                      'Get Started',
                      style: AppStyles.styleRegularUnivia20(context),
                    ),
                    color: const Color(0xffF39200),
                    onPressed: () async {
                      if (key.currentState!.validate()) {
                        if (passwordController.text !=
                            confirmPasswordController.text) {
                          customDialouge(
                            context,
                            title: 'Error',
                            subTitle: 'Passwords don\'t match',
                          );
                        } else {
                          String email = login(email: emailController.text);
                          if (email == 'not found') {
                            var notesBox = Hive.box<UserModel>(kUserBox);
                            await notesBox.add(UserModel(nameController.text,
                                emailController.text, passwordController.text));
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Registered Successfully')));
                          } else {
                            customDialouge(
                              context,
                              title: 'Error',
                              subTitle: 'This email already exists',
                            );
                          }
                        }
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    image: Assets.imagesFacebook,
                    text: Text(
                      'Continue With Facebook',
                      style: AppStyles.styleRegularInter15(context)
                          .copyWith(color: Colors.white),
                    ),
                    color: const Color(0xff3975EA),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    image: Assets.imagesGoogle,
                    text: Text(
                      'Continue With google',
                      style: AppStyles.styleRegularInter15(context)
                          .copyWith(color: Colors.white),
                    ),
                    color: const Color(0xff4183F3),
                    onPressed: () async {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Or',
                    style: AppStyles.styleRegularUnivia20(context)
                        .copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) {
                          return const SignInView();
                        },
                      ));
                    },
                    child: Text(
                      'Sign In',
                      style: AppStyles.styleRegularUnivia20(context)
                          .copyWith(color: const Color(0xffF39200)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Awfar is Only available on alexandria",
                    style: AppStyles.styleRegularInter12(context),
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  String login({required String email}) {
    var notesBox = Hive.box<UserModel>(kUserBox);
    List<UserModel> users = notesBox.values.toList();

    for (var element in users) {
      if (element.email == email) {
        return element.password;
      }
    }
    return 'not found';
  }
}
