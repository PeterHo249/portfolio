import 'dart:js';

void launchUrl(String url) {
  context.callMethod('open', [url, '_blank']);
}