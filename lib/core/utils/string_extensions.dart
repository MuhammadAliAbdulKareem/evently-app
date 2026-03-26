extension StringExtensions on String {
  String get replaceArabicNumber {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const arabic = [
      '٠', // 0
      '١', // 1
      '٢', // 2
      '٣', // 3
      '٤', // 4
      '٥', // 5
      '٦', // 6
      '٧', // 7
      '٨', // 8
      '٩', // 9
    ];

    String input = this;
    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(english[i], arabic[i]);
    }
    return input;
  }
}
