import 'package:flutter/material.dart';
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

  testWidgets('Education dapat dibuka dari kartu Home', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Education'));
    await tester.pumpAndSettle();

    expect(find.text('Education Form'), findsOneWidget);
    expect(find.text('Nama Institusi'), findsOneWidget);
  });

  testWidgets('Education dapat dibuka dari Drawer', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Education').last);
    await tester.pumpAndSettle();

    expect(find.text('Education Form'), findsOneWidget);
  });

  testWidgets('Validasi Education menolak input kosong', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Education'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Simpan'));
    await tester.pumpAndSettle();

    expect(find.text('Nama institusi wajib diisi!'), findsOneWidget);
    expect(find.text('Program studi wajib diisi!'), findsOneWidget);
    expect(find.text('Tahun wajib diisi!'), findsNWidgets(2));
  });

  testWidgets('Education menampilkan ringkasan setelah input valid', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Education'));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextFormField).at(0), 'Universitas Indonesia');
    await tester.enterText(find.byType(TextFormField).at(1), 'Sistem Informasi');
    await tester.enterText(find.byType(TextFormField).at(2), '2025');
    await tester.enterText(find.byType(TextFormField).at(3), '2029');

    await tester.tap(find.text('Simpan'));
    await tester.pumpAndSettle();

    expect(find.text('Ringkasan Pendidikan'), findsOneWidget);
    expect(find.text('Institusi: Universitas Indonesia'), findsOneWidget);
    expect(find.text('Jenjang: SMA/SMK'), findsOneWidget);
    expect(find.text('Program Studi: Sistem Informasi'), findsOneWidget);
    expect(find.text('Tahun Mulai: 2025'), findsOneWidget);
    expect(find.text('Tahun Selesai: 2029'), findsOneWidget);

    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();

    expect(find.text('Ringkasan Pendidikan'), findsNothing);
    expect(find.text('Education Form'), findsOneWidget);
  });

  testWidgets('Home dari Drawer membawa kembali ke halaman utama', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Education'));
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Home'));
    await tester.pumpAndSettle();

    expect(find.text('MyPortfolio'), findsOneWidget);
    expect(find.text('Education Form'), findsNothing);
  });
}
