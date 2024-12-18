import 'dart:math';

import 'package:final_task/constants.dart';
import 'package:final_task/core/utils/assets.dart';
import 'package:final_task/core/utils/functions/custom_dialouge.dart';
import 'package:final_task/features/auth/data/models/user_model.dart';
import 'package:final_task/features/auth/presentation/views/sign_in_view.dart';
import 'package:final_task/features/auth/presentation/views/sign_up_view.dart';
import 'package:final_task/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:final_task/features/auth/presentation/views/widgets/logo_part.dart';
import 'package:final_task/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../../../core/utils/app_styles.dart';
import 'custom_text_form_field.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  late AutovalidateMode autovalidateMode;
  late GlobalKey<FormState> key;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    autovalidateMode = AutovalidateMode.disabled;
    key = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    emailController.dispose();
    passwordController.dispose();
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
                  const Spacer(),
                  const LogoPart(),
                  const Spacer(
                    flex: 1,
                  ),
                  CustomTextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    hint: 'Enter your Email',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(
                    controller: passwordController,
                    hint: 'Enter your password',
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    text: Text(
                      'Login',
                      style: AppStyles.styleRegularUnivia20(context),
                    ),
                    color: const Color(0xffF39200),
                    onPressed: () async {
                      if (key.currentState!.validate()) {
                        String email = login(email: emailController.text);
                        if (email == 'not found') {
                          customDialouge(
                            context,
                            title: 'Error',
                            subTitle: 'Email doesn\'t exists',
                          );
                        } else {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) {
                              return const HomeView();
                            },
                          ));
                        }
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Forget password ',
                    style: AppStyles.styleRegularInter12(context).copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    image: Assets.imagesFacebook,
                    text: Text(
                      'Continue with facebook',
                      style: AppStyles.styleRegularInter15(context)
                          .copyWith(color: Colors.white),
                    ),
                    color: const Color(0xff3975EA),
                    onPressed: () async {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    image: Assets.imagesGoogle,
                    text: Text(
                      'Continue with google',
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
                          return const SignUpView();
                        },
                      ));
                    },
                    child: Text(
                      'Sign Up',
                      style: AppStyles.styleRegularUnivia20(context)
                          .copyWith(color: const Color(0xffF39200)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Awfar is only available on alexandria',
                    style: AppStyles.styleRegularInter12(context),
                  ),
                  const Spacer(
                    flex: 1,
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
