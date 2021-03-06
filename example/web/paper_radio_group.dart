import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';

import 'dart:html';

@Component(
  selector: 'cmp',
  template: '<paper-radio-group bind-selected="cmp.insertOption"> <paper-radio-button name="asis" label="Insert as is"></paper-radio-button> <paper-radio-button name="duplicate" label="Insert as duplicate"></paper-radio-button> </paper-radio-group> {{cmp.insertOption}}',
  publishAs: 'cmp'
)
class Cmp {
  Object insertOption;
}

main() {
  applicationFactory()
      .addModule(new Module()..bind(Cmp))
      .run();
}
