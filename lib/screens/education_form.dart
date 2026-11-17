import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/widgets/left_drawer.dart';

class EducationFormPage extends StatefulWidget {
  const EducationFormPage({super.key});

  @override
  State<EducationFormPage> createState() => _EducationFormPageState();
}

class _EducationFormPageState extends State<EducationFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _institution = '';
  String _degree = 'SMA/SMK';
  String _major = '';
  String _startYear = '';
  String _endYear = '';

  final List<String> _degrees = [
    'SMA/SMK',
    'Diploma',
    'S1',
    'S2',
    'S3',
  ];

  String? _validateYear(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Tahun wajib diisi!';
    }
    if (!RegExp(r'^\d{4}$').hasMatch(value.trim())) {
      return 'Masukkan tahun dengan 4 digit!';
    }
    final year = int.parse(value.trim());
    if (year < 1900 || year > 2100) {
      return 'Tahun harus antara 1900 dan 2100!';
    }
    return null;
  }

  void _saveEducation() {
    if (!_formKey.currentState!.validate()) return;

    if (int.parse(_endYear) < int.parse(_startYear)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Tahun selesai tidak boleh sebelum tahun mulai!'),
        ),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Ringkasan Pendidikan'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Institusi: $_institution'),
            Text('Jenjang: $_degree'),
            Text('Program Studi: $_major'),
            Text('Tahun Mulai: $_startYear'),
            Text('Tahun Selesai: $_endYear'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Education Form',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nama Institusi',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) => _institution = value.trim(),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nama institusi wajib diisi!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                initialValue: _degree,
                decoration: const InputDecoration(
                  labelText: 'Jenjang Pendidikan',
                  border: OutlineInputBorder(),
                ),
                items: _degrees.map((degree) {
                  return DropdownMenuItem(
                    value: degree,
                    child: Text(degree),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() => _degree = value);
                  }
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Program Studi / Jurusan',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) => _major = value.trim(),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Program studi wajib diisi!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Tahun Mulai',
                  hintText: 'Contoh: 2022',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) => _startYear = value.trim(),
                validator: _validateYear,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Tahun Selesai',
                  hintText: 'Contoh: 2026',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) => _endYear = value.trim(),
                validator: _validateYear,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _saveEducation,
                child: const Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
