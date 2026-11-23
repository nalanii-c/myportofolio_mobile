import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myportofolio_mobile/main.dart';
import 'package:myportofolio_mobile/screens/project_form.dart';

void main() {
  testWidgets('Homepage menampilkan identitas mahasiswa',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('MyPortfolio'), findsOneWidget);
    expect(find.text('2506625041'), findsOneWidget);
    expect(find.text('Khalisha Nalani Chandra'), findsOneWidget);
    expect(find.text('PBP A'), findsOneWidget);
  });

  testWidgets('Tambah Proyek membuka halaman form',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Tambah Proyek'));
    await tester.pumpAndSettle();

    expect(find.text('Add Project Form'), findsOneWidget);
  });

  testWidgets('Form menolak nama dan deskripsi kosong',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: ProjectFormPage()),
    );

    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();

    expect(find.text('Nama proyek tidak boleh kosong!'),
        findsOneWidget);
    expect(find.text('Deskripsi proyek tidak boleh kosong!'),
        findsOneWidget);
    expect(find.text('Proyek berhasil ditambahkan!'),
        findsNothing);
  });

  testWidgets('Form menolak URL yang tidak valid',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: ProjectFormPage()),
    );

    await tester.enterText(
        find.byType(TextFormField).at(0), 'My Portfolio');
    await tester.enterText(
        find.byType(TextFormField).at(1), 'Portfolio pribadi');
    await tester.enterText(
        find.byType(TextFormField).at(3), 'alamat-salah');

    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();

    expect(find.text('Masukkan URL yang valid!'),
        findsOneWidget);
    expect(find.text('Proyek berhasil ditambahkan!'),
        findsNothing);
  });

  testWidgets('Form menerima URL yang valid',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: ProjectFormPage()),
    );

    await tester.enterText(
        find.byType(TextFormField).at(0), 'My Portfolio');
    await tester.enterText(
        find.byType(TextFormField).at(1), 'Portfolio pribadi');
    await tester.enterText(
        find.byType(TextFormField).at(3), 'https://github.com');

    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();

    expect(find.text('Proyek berhasil ditambahkan!'),
        findsOneWidget);
    expect(find.text('Tautan: https://github.com'),
        findsOneWidget);
  });

  testWidgets('URL kosong diperbolehkan',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: ProjectFormPage()),
    );

    await tester.enterText(
        find.byType(TextFormField).at(0), 'My Portfolio');
    await tester.enterText(
        find.byType(TextFormField).at(1), 'Portfolio pribadi');

    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();

    expect(find.text('Proyek berhasil ditambahkan!'),
        findsOneWidget);
  });

  testWidgets('Tombol OK menutup AlertDialog',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: ProjectFormPage()),
    );

    await tester.enterText(
        find.byType(TextFormField).at(0), 'My Portfolio');
    await tester.enterText(
        find.byType(TextFormField).at(1), 'Portfolio pribadi');

    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();

    expect(find.text('Proyek berhasil ditambahkan!'),
        findsOneWidget);

    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();

    expect(find.text('Proyek berhasil ditambahkan!'),
        findsNothing);
  });

  testWidgets('Add Project dari Drawer membuka form',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Add Project'));
    await tester.pumpAndSettle();

    expect(find.text('Add Project Form'), findsOneWidget);
  });

  testWidgets('Home dari Drawer kembali ke homepage',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Tambah Proyek'));
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Home'));
    await tester.pumpAndSettle();

    expect(find.text('MyPortfolio'), findsOneWidget);
  });
}
