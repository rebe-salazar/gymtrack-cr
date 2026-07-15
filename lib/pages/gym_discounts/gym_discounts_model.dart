import '/components/promo_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'gym_discounts_widget.dart' show GymDiscountsWidget;
import 'package:flutter/material.dart';

class GymDiscountsModel extends FlutterFlowModel<GymDiscountsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PromoCard.
  late PromoCard2Model promoCardModel1;
  // Model for PromoCard.
  late PromoCard2Model promoCardModel2;
  // Model for PromoCard.
  late PromoCard2Model promoCardModel3;
  // Model for PromoCard.
  late PromoCard2Model promoCardModel4;

  @override
  void initState(BuildContext context) {
    promoCardModel1 = createModel(context, () => PromoCard2Model());
    promoCardModel2 = createModel(context, () => PromoCard2Model());
    promoCardModel3 = createModel(context, () => PromoCard2Model());
    promoCardModel4 = createModel(context, () => PromoCard2Model());
  }

  @override
  void dispose() {
    promoCardModel1.dispose();
    promoCardModel2.dispose();
    promoCardModel3.dispose();
    promoCardModel4.dispose();
  }
}
