import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Testt extends StatefulWidget {
  @override
  _TesttState createState() => _TesttState();
}

class _TesttState extends State<Testt> {
  bool _notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue[50],
        appBarTheme: AppBarTheme(
          color: Colors.blue[800],
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.blue[900],
            fontSize: 16,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
            ),
            Divider(color: Colors.blue),
            SwitchListTile(
              title: Text(
                'Notifications',
                style: TextStyle(fontSize: 16, color: Colors.blue[800]),
              ),
              subtitle: Text(
                _notificationsEnabled
                    ? 'Notifications are enabled'
                    : 'Notifications are disabled',
                style: TextStyle(color: Colors.blue[600]),
              ),
              value: _notificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
              secondary: Icon(
                _notificationsEnabled
                    ? Icons.notifications_active
                    : Icons.notifications_off,
                color: _notificationsEnabled ? Colors.blue : Colors.grey,
              ),
            ),
            Divider(color: Colors.blue),
            ListTile(
              leading: Icon(Icons.share, color: Colors.blue[800]),
              title: Text(
                'Share',
                style: TextStyle(color: Colors.blue[800]),
              ),
              onTap: () => _showShareOptions(context),
            ),
          ],
        ),
      ),
    );
  }

  void _showShareOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Share Via', style: TextStyle(color: Colors.blue[900])),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Image.asset(
                  'asset/icon/whatsapp.png',
                  width: 24,
                  height: 24,
                ),
                title: Text('WhatsApp', style: TextStyle(color: Colors.black)),
                onTap: () => _launchWhatsApp(),
              ),
              ListTile(
                leading: Image.asset(
                  'asset/icon/gmail.png',
                  width: 24,
                  height: 24,
                ),
                title: Text('Gmail', style: TextStyle(color: Colors.black)),
                onTap: () => _launchGmail(),
              ),
              ListTile(
                leading: Icon(Icons.facebook, color: Colors.blue),
                title: Text('Facebook', style: TextStyle(color: Colors.black)),
                onTap: () => _launchFacebook(),
              ),
              ListTile(
                leading: Image.asset(
                  'asset/icon/x.png',
                  width: 24,
                  height: 24,
                ),
                title: Text('X', style: TextStyle(color: Colors.black)),
                onTap: () => _launchX(),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Cancel', style: TextStyle(color: Colors.black)),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void _launchGmail() async {
    final Uri gmailUri = Uri(
      scheme: 'https',
      host: 'mail.google.com',
      path: '/',
      queryParameters: {
        'body': 'Check out this app: https://example.com',
        'subject': 'Sharing an App',
      },
    );
    if (await canLaunchUrl(gmailUri)) {
      await launchUrl(gmailUri);
    } else {
      _showError('Could not launch Gmail');
    }
  }

  void _launchFacebook() async {
    final Uri facebookUri = Uri(
      scheme: 'https',
      host: 'www.facebook.com',
      path: 'share.php',
      queryParameters: {
        'u': 'https://example.com',
      },
    );
    if (await canLaunchUrl(facebookUri)) {
      await launchUrl(facebookUri);
    } else {
      _showError('Could not launch Facebook');
    }
  }

  void _launchX() async {
    final Uri xUri = Uri(
      scheme: 'https',
      host: 'twitter.com',
      path: 'intent/tweet',
      queryParameters: {
        'text': 'Check this out! https://example.com',
      },
    );
    if (await canLaunchUrl(xUri)) {
      await launchUrl(xUri);
    } else {
      _showError('Could not launch X');
    }
  }

  void _launchWhatsApp() async {
    final Uri whatsappUri = Uri(
      scheme: 'https',
      host: 'api.whatsapp.com',
      path: 'send',
      queryParameters: {
        'text': 'Check out this amazing app: https://example.com',
      },
    );
    if (await canLaunchUrl(whatsappUri)) {
      await launchUrl(whatsappUri);
    } else {
      _showError('Could not launch WhatsApp');
    }
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
