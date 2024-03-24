import "package:flutter/material.dart";
import "package:yemeksepeti/main.dart";
import "package:yemeksepeti/screens/login_with_email_screen.dart";

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          MediaQuery.of(context).size.width * 0.85, // Özel çekmecenin genişliği
      color: Colors.white, // Özel çekmece arka plan rengi
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: InkWell(
                child: Text(
                  'Giriş Yap / Hesap Oluştur',
                  style: TextStyle(
                      color: AppTheme.appbarTextColor,
                      fontWeight: AppTheme.fontWeightw600),
                ),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginWithEmailScreen()));}
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Ana Sayfa'),
            onTap: () {
              // Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Ayarlar'),
            onTap: () {
              // Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }
}
