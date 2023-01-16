import 'package:mobx/mobx.dart';

import '../../../../shared/models/enums/status_enum.dart';
part 'create_brinde_store.g.dart';

class CreateBrindeStore = _CreateBrindeStoreBase with _$CreateBrindeStore;

abstract class _CreateBrindeStoreBase with Store {
  @observable
  Status status = Status.rascunho;

  @observable
  int quantity = 1;

  @action
void changeQuantity (int value){
  quantity = value;
}

  @action
void changeStatus(Status value){
  status = value;
}
}