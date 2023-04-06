import 'app.dart';
import 'bootstrap.dart';
import 'config/flavor.dart';

void main() async {
  await bootstrap(
    const Flavor.production(),
    () => const App(),
  );
}
