//ValueNotifier: hold the data
//ValueListenablPeBuilder: Listen to the data  (Don"t use the setstate)

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(true);

