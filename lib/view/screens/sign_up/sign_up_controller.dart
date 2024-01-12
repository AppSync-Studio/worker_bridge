import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/global/country/phone_code_model.dart';
import 'package:worker_bridge/route/app_route.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class SignUpController extends GetxController{

  SignUpController();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  // screen initial state ------------------------------------------
  void initialState(){
    nameController.text = "";
    emailController.text = "";
    codeController.text = "";
    phoneNumberController.text = "";
    dobController.text = "";
    genderController.text = "";
    addressController.text = "";
    passwordController.text = "";
    confirmPasswordController.text = "";
  }

  // date picker for dob -------------------------------------------
  void pickDate(BuildContext context) async{
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2050),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: AppColors.primaryColor,
          )
        ),
        child: child!,
      )
    );

    if(pickedDate != null){
      dobController.text = "${pickedDate.year} - ${pickedDate.month} - ${pickedDate.day}";
    }
  }

  // gender list ---------------------------------------------------
  List<String> genderList = ["Male", "Female", "Other"];
  int selectedGender = 0;
  void pickGender(BuildContext context){
    showModalBottomSheet(
      context: context, 
      builder: (context) => SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 24),
          decoration: const BoxDecoration(
            color: AppColors.colorWhite,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Gender",
                style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const Gap(12),
              const Divider(color: AppColors.colorGrey, height: 0.5),

              const Gap(24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(genderList.length, (index) => GestureDetector(
                  onTap: () {
                    selectedGender = index;
                    genderController.text = genderList[selectedGender];
                    Get.back();
                    update();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: index == 2 ? null : const EdgeInsetsDirectional.only(bottom: 12) ,
                    padding: const EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 12),
                    decoration: BoxDecoration(
                      color: AppColors.colorWhite,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.colorBlack, width: 0.5)
                    ),
                    child: Text(genderList[index], style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 14, fontWeight: FontWeight.w400)),
                  ),
                )),
              )
            ],
          ),
        ),
      )
    );
  }

  // navigate home screen ------------------------------------------
  void gotoHomeScreen(){
    Get.offAndToNamed(AppRoute.bottomNavScreen);
  }

  // dial code -----------------------------------------------------
  List<PhoneCodeModel> phoneCodeList = [
    PhoneCodeModel(countryName: "Afghanistan", countryCode: "AF", dialCode: "+93"),
    PhoneCodeModel(countryName: "Albania", countryCode: "AL", dialCode: "+355"),
    PhoneCodeModel(countryName: "Algeria", countryCode: "DZ", dialCode: "+213"),
    PhoneCodeModel(countryName: "AmericanSamoa", countryCode: "AS", dialCode: "+1684"),
    PhoneCodeModel(countryName: "Andorra", countryCode: "AD", dialCode: "+376"),
    PhoneCodeModel(countryName: "Angola", countryCode: "AO", dialCode: "+244"),
    PhoneCodeModel(countryName: "Antigua and Barbuda", countryCode: "AG", dialCode: "+1268"),
    PhoneCodeModel(countryName: "Argentina", countryCode: "AR", dialCode: "+54"),
    PhoneCodeModel(countryName: "Armenia", countryCode: "AM", dialCode: "+374"),
    PhoneCodeModel(countryName: "Australia", countryCode: "AU", dialCode: "+61"),
    PhoneCodeModel(countryName: "Austria", countryCode: "AT", dialCode: "+43"),
    PhoneCodeModel(countryName: "Azerbaijan", countryCode: "AZ", dialCode: "+994"),
    PhoneCodeModel(countryName: "Bahamas", countryCode: "BS", dialCode: "+1242"),
    PhoneCodeModel(countryName: "Bahrain", countryCode: "BH", dialCode: "+973"),
    PhoneCodeModel(countryName: "Bangladesh", countryCode: "BD", dialCode: "+880"),
    PhoneCodeModel(countryName: "Barbados", countryCode: "BB", dialCode: "+1246"),
    PhoneCodeModel(countryName: "Belarus", countryCode: "BY", dialCode: "+375"),
    PhoneCodeModel(countryName: "Belgium", countryCode: "BE", dialCode: "+32"),
    PhoneCodeModel(countryName: "Bermuda", countryCode: "BM", dialCode: "+1441"),
    PhoneCodeModel(countryName: "Bhutan", countryCode: "BT", dialCode: "+975"),
    PhoneCodeModel(countryName: "Bolivia", countryCode: "BO", dialCode: "+591"),
    PhoneCodeModel(countryName: "Bosnia and Herzegovina", countryCode: "BA", dialCode: "+387"),
    PhoneCodeModel(countryName: "Brazil", countryCode: "BR", dialCode: "+55"),
    PhoneCodeModel(countryName: "Bulgaria", countryCode: "BG", dialCode: "+359"),
    PhoneCodeModel(countryName: "Cambodia", countryCode: "KH", dialCode: "+855"),
    PhoneCodeModel(countryName: "Cameroon", countryCode: "CM", dialCode: "+237"),
    PhoneCodeModel(countryName: "Canada", countryCode: "CA", dialCode: "+1"),
    PhoneCodeModel(countryName: "Chad", countryCode: "TD", dialCode: "+235"),
    PhoneCodeModel(countryName: "Chile", countryCode: "CL", dialCode: "+56"),
    PhoneCodeModel(countryName: "China", countryCode: "CN", dialCode: "+86"),
    PhoneCodeModel(countryName: "Colombia", countryCode: "CO", dialCode: "+57"),
    PhoneCodeModel(countryName: "Costa Rica", countryCode: "CR", dialCode: "+506"),
    PhoneCodeModel(countryName: "Cote d'Ivoire", countryCode: "CI", dialCode: "+225"),
    PhoneCodeModel(countryName: "Croatia", countryCode: "HR", dialCode: "+385"),
    PhoneCodeModel(countryName: "Cyprus", countryCode: "CY", dialCode: "+357"),
    PhoneCodeModel(countryName: "Czech Republic", countryCode: "CZ", dialCode: "+420"),
    PhoneCodeModel(countryName: "Denmark", countryCode: "DK", dialCode: "+45"),
    PhoneCodeModel(countryName: "Ecuador", countryCode: "EC", dialCode: "+593"),
    PhoneCodeModel(countryName: "Egypt", countryCode: "EG", dialCode: "+20"),
    PhoneCodeModel(countryName: "El Salvador", countryCode: "SV", dialCode: "+503"),
    PhoneCodeModel(countryName: "Eritrea", countryCode: "ER", dialCode: "+291"),
    PhoneCodeModel(countryName: "Estonia", countryCode: "EE", dialCode: "+372"),
    PhoneCodeModel(countryName: "Ethiopia", countryCode: "ET", dialCode: "+251"),
    PhoneCodeModel(countryName: "Fiji", countryCode: "FJ", dialCode: "+679"),
    PhoneCodeModel(countryName: "Fiji", countryCode: "FJ", dialCode: "+679"),
    PhoneCodeModel(countryName: "Finland", countryCode: "FI", dialCode: "+358"),
    PhoneCodeModel(countryName: "France", countryCode: "FR", dialCode: "+33"),
    PhoneCodeModel(countryName: "Georgia", countryCode: "GE", dialCode: "+995"),
    PhoneCodeModel(countryName: "Germany", countryCode: "DE", dialCode: "+49"),
    PhoneCodeModel(countryName: "Ghana", countryCode: "GH", dialCode: "+233"),
    PhoneCodeModel(countryName: "Gibraltar", countryCode: "GI", dialCode: "+350"),
    PhoneCodeModel(countryName: "Greece", countryCode: "GR", dialCode: "+30"),
    PhoneCodeModel(countryName: "Greenland", countryCode: "GL", dialCode: "+299"),
    PhoneCodeModel(countryName: "Guatemala", countryCode: "GT", dialCode: "+502"),
    PhoneCodeModel(countryName: "Haiti", countryCode: "HT", dialCode: "+509"),
    PhoneCodeModel(countryName: "Vatican City", countryCode: "VA", dialCode: "+379"),
    PhoneCodeModel(countryName: "Honduras", countryCode: "HN", dialCode: "+504"),
    PhoneCodeModel(countryName: "Hong Kong", countryCode: "HK", dialCode: "+852"),
    PhoneCodeModel(countryName: "Hungary", countryCode: "HU", dialCode: "+36"),
    PhoneCodeModel(countryName: "Iceland", countryCode: "IS", dialCode: "+354"),
    PhoneCodeModel(countryName: "India", countryCode: "IN", dialCode: "+91"),
    PhoneCodeModel(countryName: "Indonesia", countryCode: "ID", dialCode: "+62"),
    PhoneCodeModel(countryName: "Iran", countryCode: "IR", dialCode: "+98"),
    PhoneCodeModel(countryName: "Iraq", countryCode: "IQ", dialCode: "+964"),
    PhoneCodeModel(countryName: "Ireland", countryCode: "IE", dialCode: "+353"),
    PhoneCodeModel(countryName: "Italy", countryCode: "IT", dialCode: "+39"),
    PhoneCodeModel(countryName: "Jamaica", countryCode: "JM", dialCode: "+1876"),
    PhoneCodeModel(countryName: "Japan", countryCode: "JP", dialCode: "+81"),
    PhoneCodeModel(countryName: "Jordan", countryCode: "JO", dialCode: "+962"),
    PhoneCodeModel(countryName: "Kazakhstan", countryCode: "KZ", dialCode: "+77"),
    PhoneCodeModel(countryName: "Kenya", countryCode: "KE", dialCode: "+254"),
    PhoneCodeModel(countryName: "North Korea", countryCode: "KP", dialCode: "+850"),
    PhoneCodeModel(countryName: "South Korea", countryCode: "KR", dialCode: "+82"),
    PhoneCodeModel(countryName: "Kuwait", countryCode: "KW", dialCode: "+965"),
    PhoneCodeModel(countryName: "Kyrgyzstan", countryCode: "KG", dialCode: "+996"),
    PhoneCodeModel(countryName: "Latvia", countryCode: "LV", dialCode: "+371"),
    PhoneCodeModel(countryName: "Lebanon", countryCode: "LB", dialCode: "+961"),
    PhoneCodeModel(countryName: "Liberia", countryCode: "LR", dialCode: "+231"),
    PhoneCodeModel(countryName: "Libyan", countryCode: "LY", dialCode: "+218"),
    PhoneCodeModel(countryName: "Lithuania", countryCode: "LT", dialCode: "+370"),
    PhoneCodeModel(countryName: "Luxembourg", countryCode: "LU", dialCode: "+352"),
    PhoneCodeModel(countryName: "Malaysia", countryCode: "MY", dialCode: "+60"),
    PhoneCodeModel(countryName: "Maldives", countryCode: "MV", dialCode: "+960"),
    PhoneCodeModel(countryName: "Mali", countryCode: "ML", dialCode: "+223"),
    PhoneCodeModel(countryName: "Malta", countryCode: "MT", dialCode: "+356"),
    PhoneCodeModel(countryName: "Mexico", countryCode: "MX", dialCode: "+52"),
    PhoneCodeModel(countryName: "Monaco", countryCode: "MC", dialCode: "+377"),
    PhoneCodeModel(countryName: "Mongolia", countryCode: "MN", dialCode: "+976"),
    PhoneCodeModel(countryName: "Morocco", countryCode: "MA", dialCode: "+212"),
    PhoneCodeModel(countryName: "Nepal", countryCode: "NP", dialCode: "+977"),
    PhoneCodeModel(countryName: "Netherlands", countryCode: "NL", dialCode: "+31"),
    PhoneCodeModel(countryName: "New Zealand", countryCode: "NZ", dialCode: "+64"),
    PhoneCodeModel(countryName: "Nigeria", countryCode: "NG", dialCode: "+234"),
    PhoneCodeModel(countryName: "Norway", countryCode: "NO", dialCode: "+47"),
    PhoneCodeModel(countryName: "Oman", countryCode: "OM", dialCode: "+968"),
    PhoneCodeModel(countryName: "Pakistan", countryCode: "PK", dialCode: "+92"),
    PhoneCodeModel(countryName: "Palestinian", countryCode: "PS", dialCode: "+970"),
    PhoneCodeModel(countryName: "Paraguay", countryCode: "PY", dialCode: "+595"),
    PhoneCodeModel(countryName: "Peru", countryCode: "PE", dialCode: "+63"),
    PhoneCodeModel(countryName: "Philippines", countryCode: "PH", dialCode: "+63"),
    PhoneCodeModel(countryName: "Poland", countryCode: "PL", dialCode: "+48"),
    PhoneCodeModel(countryName: "Portugal", countryCode: "PT", dialCode: "+351"),
    PhoneCodeModel(countryName: "Puerto Rico", countryCode: "PR", dialCode: "+1939"),
    PhoneCodeModel(countryName: "Qatar", countryCode: "QA", dialCode: "+974"),
    PhoneCodeModel(countryName: "Romania", countryCode: "RO", dialCode: "+40"),
    PhoneCodeModel(countryName: "Russia", countryCode: "RU", dialCode: "+7"),
    PhoneCodeModel(countryName: "Saudi Arabia", countryCode: "SA", dialCode: "+966"),
    PhoneCodeModel(countryName: "Senegal", countryCode: "SN", dialCode: "+221"),
    PhoneCodeModel(countryName: "Serbia", countryCode: "RS", dialCode: "+381"),
    PhoneCodeModel(countryName: "Singapore", countryCode: "SG", dialCode: "+65"),
    PhoneCodeModel(countryName: "Slovakia", countryCode: "SK", dialCode: "+421"),
    PhoneCodeModel(countryName: "Slovenia", countryCode: "SI", dialCode: "+386"),
    PhoneCodeModel(countryName: "South Africa", countryCode: "ZA", dialCode: "+27"),
    PhoneCodeModel(countryName: "Spain", countryCode: "ES", dialCode: "+34"),
    PhoneCodeModel(countryName: "Sri Lanka", countryCode: "LK", dialCode: "+94"),
    PhoneCodeModel(countryName: "Sudan", countryCode: "SD", dialCode: "+249"),
    PhoneCodeModel(countryName: "Sweden", countryCode: "SE", dialCode: "+46"),
    PhoneCodeModel(countryName: "Switzerland", countryCode: "CH", dialCode: "+41"),
    PhoneCodeModel(countryName: "Syrian", countryCode: "SY", dialCode: "+963"),
    PhoneCodeModel(countryName: "Taiwan", countryCode: "TW", dialCode: "+886"),
    PhoneCodeModel(countryName: "Tajikistan", countryCode: "TJ", dialCode: "+992"),
    PhoneCodeModel(countryName: "Tanzania", countryCode: "TZ", dialCode: "+255"),
    PhoneCodeModel(countryName: "Thailand", countryCode: "TH", dialCode: "+66"),
    PhoneCodeModel(countryName: "Tonga", countryCode: "TO", dialCode: "+676"),
    PhoneCodeModel(countryName: "Trinidad and Tobago", countryCode: "TT", dialCode: "+1868"),
    PhoneCodeModel(countryName: "Tunisia", countryCode: "TN", dialCode: "+216"),
    PhoneCodeModel(countryName: "Turkey", countryCode: "TR", dialCode: "+90"),
    PhoneCodeModel(countryName: "Turkmenistan", countryCode: "TM", dialCode: "+993"),
    PhoneCodeModel(countryName: "Tuvalu", countryCode: "TV", dialCode: "+688"),
    PhoneCodeModel(countryName: "Uganda", countryCode: "UG", dialCode: "+256"),
    PhoneCodeModel(countryName: "Ukraine", countryCode: "UA", dialCode: "+380"),
    PhoneCodeModel(countryName: "United Arab Emirates", countryCode: "AE", dialCode: "+971"),
    PhoneCodeModel(countryName: "United States", countryCode: "US", dialCode: "+1"),
    PhoneCodeModel(countryName: "Uruguay", countryCode: "UY", dialCode: "+598"),
    PhoneCodeModel(countryName: "Uzbekistan", countryCode: "UZ", dialCode: "+998"),
    PhoneCodeModel(countryName: "Vanuatu", countryCode: "VU", dialCode: "+678"),
    PhoneCodeModel(countryName: "Venezuela", countryCode: "VE", dialCode: "+58"),
    PhoneCodeModel(countryName: "Vietnam", countryCode: "VN", dialCode: "+84"),
    PhoneCodeModel(countryName: "Virgin Islands, British", countryCode: "VG", dialCode: "+1284"),
    PhoneCodeModel(countryName: "Virgin Islands, U.S.", countryCode: "VI", dialCode: "+1340"),
    PhoneCodeModel(countryName: "Wallis and Futuna", countryCode: "WF", dialCode: "+681"),
    PhoneCodeModel(countryName: "Yemen", countryCode: "YE", dialCode: "+967"),
    PhoneCodeModel(countryName: "Zambia", countryCode: "ZM", dialCode: "+260"),
    PhoneCodeModel(countryName: "Zimbabwe", countryCode: "ZW", dialCode: "+263")
  ];

  int selectedPhoneCode = 0;
  void changePhoneCode(int index){
    selectedPhoneCode = index;
    codeController.text = phoneCodeList[selectedPhoneCode].dialCode;
    Get.back();
    update();
  }
}