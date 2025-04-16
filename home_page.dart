import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/file_opener.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void openTelegram() {
    launchUrl(Uri.parse("https://t.me/CRAZYHKR"), mode: LaunchMode.externalApplication);
  }

  void openWhatsApp() {
    launchUrl(Uri.parse("https://wa.me/212600000000"), mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRAZY HK CHANNELS"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text("روابط التواصل", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: const Text("تلغرام"),
              onTap: openTelegram,
            ),
            ListTile(
              title: const Text("واتساب"),
              onTap: openWhatsApp,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            FileOpenerButton(
              label: "ملف انوي 🌟 6",
              assetPath: "assets/files/CRAZY_INWI_6SSH.hc",
            ),
            const SizedBox(height: 16),
            FileOpenerButton(
              label: "وين باي انوي واتصالات المغرب 0 درهم ip 100",
              assetPath: "assets/files/ALL_NETWORK.hc",
            ),
          ],
        ),
      ),
    );
  }
}
