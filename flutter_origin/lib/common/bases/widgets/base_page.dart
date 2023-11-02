import 'package:flutter_origin/common/bases/blocs/page_bloc.dart';
import 'package:flutter_origin/common/bases/widgets/base_stateful_widget.dart';

abstract class BasePage<B extends PageBloc> extends BaseStatefulWidget {
  const BasePage({super.key});

  B get bloc;
}
