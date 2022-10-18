const String failTestRail = "failTestRail";
const String passTestRail = "passTestRail";
const String flagSwitch = "flagSwitch";

class AppTestData {
  static bool isProductions = false;
  static bool isUser = true;
  static int idTestRun = 123;
  static String userName = "فادي";
  static String specialistsFilterFlag = "specialistsFilterFlag";
  static String blogFlag = "blogFlag";
  static String diagnosticFlag = "diagnosticFlag";
  static String emotionsFlag = "emotionsFlag";
  static String qAFlag = "qAFlag";
  static String specialistSessionTypeFlag = "specialistSessionTypeFlag";
  static String specialistCardButtonsFlag = "SpecialistCardButtonsFlag";
  static String openChatFeatureFlagCubit = "OpenChatFeatureFlagCubit";
  static String groupSessionsFeatureFlag = "GroupSessionsFeatureFlag";

  // ConfigReader.isProduction
  static String phone = "clientPhone";
  static String mobilrNumberEx = "mobilrNumberEx";
  static String password = "clientPassword";
  static String specialistName = "الأخصائي عطية";
  //static String specialistName="AddtionDataTest";
  //static String specialistName2="AddtionDataTest";
  static int packageNumber = 0;
  //static String coupon20=AppTestData.isProductions?"qa5o5qa20":"aseel20";
  static String coupon20 = "coupon20";
  static String coupon30 = "coupon30";
  static String coupon50 = "coupon50";
  static String coupon100 = "coupon100";
  static String organizationCode = "intfam";
  static String textProblem = "test problem";
  static String textDairy = "test Dairy";
  static String textEditDairy = "test Edit Dairy";

  static bool isIos = false;

  /*  String getCoupon100(){
     if(this.is)
   }*/

  static String getCoupon100() {
    if (isProductions) {
      return dataMapProduction[coupon100]!;
    } else {
      return dataMapDevelop[coupon100]!;
    }
  }

  static String getCoupon20() {
    if (isProductions) {
      return dataMapProduction[coupon20]!;
    } else {
      return dataMapDevelop[coupon20]!;
    }
  }

  static String getCoupon30() {
    if (isProductions) {
      return dataMapProduction[coupon30]!;
    } else {
      return dataMapDevelop[coupon30]!;
    }
  }

  static String getPassword() {
    if (isProductions) {
      if (isUser) {
        return dataMapProduction[password]!;
      } else {
        return mapSpecialistProduction[password]!;
      }
    } else {
      if (isUser) {
        return dataMapDevelop[password]!;
      } else {
        return mapSpecialistDevelop[password]!;
      }
    }
  }

  static String getPhone() {
    if (isProductions) {
      if (isUser) {
        return dataMapProduction[phone]!;
      } else {
        return mapSpecialistProduction[phone]!;
      }
    } else {
      if (isUser) {
        return dataMapDevelop[phone]!;
      } else {
        return mapSpecialistDevelop[phone]!;
      }
    }
  }

  static String getCoupon50() {
    if (isProductions) {
      return dataMapProduction[coupon50]!;
    } else {
      return dataMapDevelop[coupon50]!;
    }
  }

  static String getCoupon(int couponValue) {
    switch (couponValue) {
      case 100:
        {
          return getCoupon100();
        }
      case 50:
        {
          return getCoupon50();
        }
      case 30:
        {
          return getCoupon30();
        }
      case 70:
        {
          return getCoupon20();
        }
    }
    return "";
  }

  static Map<String, String> dataMapDevelop = {
    phone: "0598831327",
    mobilrNumberEx: "+966598831327",
    password: "123456",
    coupon20: "aseel20",
    coupon30: "aseel30",
    coupon50: "aseel50",
    coupon100: "aseel100",
  };
  static Map<int, int> dataMapIdTestCaseDisCount = {
    0: 2808,
    30: 2875,
    50: 2823,
    70: 2847,
    100: 2816,
  };
  static Map<int, int> dataMapIdTestCaseVerifyHideAlertAfterDeleteCoupon = {
    30: 2931,
    50: 2835,
    70: 2851,
    100: 2827,
  };
  static Map<int, int> dataMapIdTestCaseVerifyAlertCoupon = {
    30: 2871,
    50: 2819,
    70: 2843,
    100: 2812,
  };
  static Map<int, int> dataMapIdTestCaseTax = {
    0: 2809,
    30: 2885,
    50: 2824,
    70: 2849,
    100: 2817,
  };
  static Map<int, int> dataMapIdTestCasePriceSubTotal = {
    0: 2806,
    30: 2874,
    50: 2821,
    70: 2846,
    100: 2814,
  };

  static Map<int, int> dataMapIdTestCasePriceBforeTax = {
    0: 2807,
    30: 2874,
    50: 2822,
    70: 2848,
    100: 2815,
  };
  static Map<int, int> dataMapIdTestCasePriceAfterTax = {
    0: 2810,
    30: 2877,
    50: 2825,
    70: 2850,
    100: 2818,
  };

  static Map<int, int> dataMapIdTestCaseButtonPay = {
    0: 3959,
    30: 2872,
    50: 2820,
    70: 2845,
    100: 2813,
  };

  static Map<String, String> dataMapProduction = {
    phone: "0598831327",
    password: "123456",
    coupon20: "qa5o5qa20",
    coupon30: "qa5o5qa30",
    coupon50: "qa5o5qa50",
    coupon100: "qa5o5qa100",
  };

  static Map<String, String> mapSpecialistProduction = {
    phone: "0598831327",
    password: "123456",
  };
  static Map<String, String> mapSpecialistDevelop = {
    phone: "0599123321",
    password: "123456",
  };
}
