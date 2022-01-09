import 'package:band_names/src/services/socket_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);

    //socketService.socket.emit(event);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Server Status: ${socketService.serverStatus}')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message),
          onPressed: () {
            //Emitur {nombre: 'Flutter',  mensaje: 'Desde flutter'}
            socketService.emit('emitir-mensaje',
                {'nombre': 'Flutter', 'mensaje': 'Desde flutter'});
          }),
    );
  }
}
