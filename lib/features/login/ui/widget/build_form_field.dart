import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/app_regex.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/widget/app_text_form_field.dart';
import 'package:icon_tech_task/features/login/logic/cubit/login_cubit.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';

class BuildFormFieldEmailAndPassword extends StatefulWidget {
  const BuildFormFieldEmailAndPassword({super.key});

  @override
  State<BuildFormFieldEmailAndPassword> createState() =>
      _BuildFormFieldEmailAndPasswordState();
}

class _BuildFormFieldEmailAndPasswordState
    extends State<BuildFormFieldEmailAndPassword> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: AppString.phone,
            controller: context.read<LoginCubit>().emailTextEditingController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return "Please Enter Your Email";
              }
            },
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: AppString.password,
            controller:
                context.read<LoginCubit>().passwordTextEditingController,
            isObscureText: isObscureText,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Your Password";
              }
            },
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: isObscureText
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
            ),
          ),
          verticalSpace(18),
          Align(
            alignment: AlignmentDirectional.center,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyles.font13BlueRegular.copyWith(
                  color: ColorsManager.mainBlue,
                  fontSize: 12.sp,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
