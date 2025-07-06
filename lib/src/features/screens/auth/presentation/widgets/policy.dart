import 'package:flutter/material.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';

class Policy extends StatelessWidget {
  const Policy({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Flexible(
      child: RichText(text: TextSpan(
        children: [
          TextSpan(text:"I agree to EVPoint",
          style: textStyle.bodyMedium!.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColorScheme.onPrimary,
          )
          ),
          TextSpan(text: " Public Agreement, Terms, Privacy Policy, ",
           style: textStyle.bodyMedium!.copyWith(
            fontWeight: FontWeight.w500,
            color: Color(0xff7ED957)
          )
          
          ),
          TextSpan(text: "and confirm that I am over 17 years old.",
          style: textStyle.bodyMedium!.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColorScheme.onPrimary,
          )
          
          )
        ]
      ) ),
    );
  }
}