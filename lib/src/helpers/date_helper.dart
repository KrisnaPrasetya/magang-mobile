class DateHelper {

  static DateTime fromString(String? val, {bool withWIB = true}) {
    if (val == null) return DateTime.now();
    if (withWIB) {
      if (val
          .split(" ")
          .length > 1) {
        val += '+07:00';
      }
    }
    DateTime? times;
    try {
      times = DateTime
          .parse(val)
          .isUtc ? DateTime.parse(val).toLocal() : DateTime.parse(val);
    } catch (ex) {
      times = DateTime.now();
    }
    return times;
  }
}