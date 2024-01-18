import 'package:flutter/material.dart';
import 'package:leble_test_1/utils/global.colors.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ignore: avoid_print
        print('Sign In With Google');
      },
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
          border:
              Border.all(color: globalColors.textColor), // Border added here
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gambar (ganti Image.asset dengan Image.network jika menggunakan gambar dari internet)
            Image.asset(
              'assets/images/logo-google.png', // Ganti dengan path gambar Google Anda
              width: 24, // Sesuaikan dengan ukuran gambar yang diinginkan
              height: 24,
            ),
            const SizedBox(width: 8), // Jarak antara gambar dan teks
            // Teks
            Text(
              'SIGN IN WITH GOOGLE',
              style: TextStyle(
                color: globalColors.textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
