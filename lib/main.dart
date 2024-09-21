import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projetolista/model/pessoa.dart';
import 'package:projetolista/sextou.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Lista para Widget",
      home: Tela1(),
    );
  }
}

class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  List<Pessoa> lista = [
    Pessoa(
        nome: "Victor", idade: 37, sobrenome: "Alves", cpf: "000.000.000-00"),
    Pessoa(
        nome: "fulano2",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "fulano3",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "Victor", idade: 37, sobrenome: "Alves", cpf: "000.000.000-00"),
    Pessoa(
        nome: "fulano",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "fulano2",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "fulano3",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "Victor", idade: 37, sobrenome: "Alves", cpf: "000.000.000-00"),
    Pessoa(
        nome: "fulano",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "fulano2",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "fulano3",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "Victor", idade: 37, sobrenome: "Alves", cpf: "000.000.000-00"),
    Pessoa(
        nome: "fulano",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "fulano2",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "fulano3",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "Victor", idade: 37, sobrenome: "Alves", cpf: "000.000.000-00"),
    Pessoa(
        nome: "fulano",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "fulano2",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "fulano3",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "Victor", idade: 37, sobrenome: "Alves", cpf: "000.000.000-00"),
    Pessoa(
        nome: "fulano",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "Victor", idade: 37, sobrenome: "Alves", cpf: "000.000.000-00"),
    Pessoa(
        nome: "fulano",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
    Pessoa(
        nome: "Victor", idade: 37, sobrenome: "Alves", cpf: "000.000.000-00"),
    Pessoa(
        nome: "fulano",
        idade: 30,
        sobrenome: "sobrenome",
        cpf: "111.111.111-11"),
  ];

  //CONTROLADORES DE ENTRADA DE TEXTFIELD
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController sobrenomeController = TextEditingController();
  final TextEditingController idadeController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();

//REMOVER ITEM
  void removerItem(int index) {
    setState(() {
      lista.removeAt(index);
    });
  }



//MODAL PARA FORMULARIO
  void openModal() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                children: [
                  Text(
                    "Digite as informações necessárias",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 25),
                  //NOME
                  TextField(
                    controller: nomeController,
                    decoration: InputDecoration(label: Text("Nome")),
                  ),
                  //SOBRENOME
                  TextField(
                    controller: sobrenomeController,
                    decoration: InputDecoration(label: Text("Sobrenome")),
                  ),
                  //IDADE (*TextField com mascara apenas para números)
                  TextField(
                    controller: idadeController,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter
                          .digitsOnly, // Permite apenas dígitos
                    ],
                    decoration: InputDecoration(
                      label: Text("Idade"),
                    ),
                  ),
                  //CPF
                  TextField(
                    controller: cpfController,
                    decoration: InputDecoration(
                      label: Text("CPF"),
                    ),
                  ),
                  SizedBox(height: 35),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.blueAccent),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          minimumSize: WidgetStatePropertyAll(Size(300, 50))),
                      onPressed: () {
                        setState(() {
                          lista.add(
                            Pessoa(
                              nome: nomeController.text, 
                              idade: int.parse(idadeController.text), 
                              sobrenome: sobrenomeController.text, 
                              cpf: cpfController.text
                              )
                          );
                        });
                        //FECHAR MODAL AO INSERIR ELEMENTOS
                        Navigator.pop(context);
                        //LIMPAR INFOS DO MODAL
                        nomeController.clear();
                        sobrenomeController.clear();
                        idadeController.clear();
                        cpfController.clear();
                      },
                      child: Text("Cadastrar")),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Lista para Widget",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          //return Text(lista[index].nome);
          return Sextou(
            nome: lista[index].nome,
            sobrenome: lista[index].sobrenome,
            onRemove: () => removerItem(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openModal();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
