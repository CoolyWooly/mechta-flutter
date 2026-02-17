abstract class PictureUrlConverter {
  static String getCompressed(String? url, int px) {
    if (url == null || url.isEmpty) return '';
    return '$url?type=webp&w=$px&h=$px';
  }
}
