import 'package:gap/gap.dart';

extension GapExtension on double {

  Gap get sectionToSectionGap {
    return Gap(this);
  }

  Gap get sectionToContentGap {
    return Gap(this);
  }

  Gap get contentToContentGap {
    return Gap(this);
  }
}