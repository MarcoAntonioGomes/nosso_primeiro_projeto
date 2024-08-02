import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';
import 'package:nosso_primeiro_projeto/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.lightBlue,
        title: const Text('Tarefas'),
      ),
      body: ListView(
        children: const [
          Task(
            nome: 'Aprender Flutter',
            foto:
            'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
            dificuldade: 3,

          ),
          Task(
              nome: 'Andar de Bike',
              foto:
              'https://blog.verdenbikes.com/wp-content/uploads/2018/01/boy_on_bike_1050x700-e1516369384111-780x520.jpg'
              ,
              dificuldade: 2
          ),
          Task(
              nome: 'Meditar',
              foto:
              'https://organicsnewsbrasil.com.br/wp-content/uploads/2016/04/benef%C3%ADcios-da-ioga-696x465.jpg'
              ,
              dificuldade: 5
          ),
          Task(
              nome: 'Relaxar',
              foto:
              'https://blog.artelasse.com.br/wp-content/uploads/2022/05/tecnicas-de-relaxamento.jpg'
              ,
              dificuldade: 2
          ),
          Task(
              nome: 'Correr',
              foto:
              'https://media.starlightcms.io/workspaces/pague-menos/portal-sempre-bem/optimized/como-comecar-a-correr-nohs7ix0z7.jpeg'
              ,
              dificuldade: 3
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => FormScreen()));
        },
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}