import 'package:flutter_test/flutter_test.dart';
import 'package:myportofolio_mobile/main.dart';

void main() {
  testWidgets('Homepage menampilkan identitas mahasiswa', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('MyPortfolio'), findsOneWidget);
    expect(find.text('2506625041'), findsOneWidget);
    expect(find.text('Khalisha Nalani Chandra'), findsOneWidget);
    expect(find.text('PBP A'), findsOneWidget);
  });

  testWidgets('Tambah Proyek membuka halaman form', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Tambah Proyek'));
    await tester.pumpAndSettle();

    expect(find.text('Add Project Form'), findsOneWidget);

    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();

    expect(find.text('Nama proyek tidak boleh kosong!'), findsOneWidget);
    expect(find.text('Deskripsi proyek tidak boleh kosong!'), findsOneWidget);
  });
}
