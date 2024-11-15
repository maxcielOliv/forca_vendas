import 'package:forca_vendas/src/data/models/clients.dart';
import 'package:forca_vendas/src/data/models/repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RepositorySupa extends Repository {
  @override
  Future<List<Client>> get() async {
    final clients = <Client>[];
    final res = await Supabase.instance.client.from('table').select();

    return clients;
  }
}
