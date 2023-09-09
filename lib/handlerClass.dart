import 'package:url_launcher/url_launcher.dart';

class SocialMediaLinks {
  Future launchURLGitHub() async {
    var url = Uri.parse("https://github.com/Olaore66");
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}