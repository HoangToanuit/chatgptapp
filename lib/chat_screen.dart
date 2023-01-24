import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override 
  State<ChatScreen> createState() => _ChatScreenState();
}
bool isLoading =false;  
const backgroundColor = Color(0xfff343541);
const botBackgroundColor = Color(0xfff343654);
TextEditingController _textEditingController = TextEditingController();

class _ChatScreenState extends State<ChatScreen> {
  
  @override
  void initState(){
    super.initState(); //
    isLoading =false;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Center(child: Text("Chat GPT")
        ),
      backgroundColor: backgroundColor),
      backgroundColor: botBackgroundColor,
      body: Column(
        children: [
          // Expanded(child:_buidlList())
          Visibility(
            visible: isLoading,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
              children: [
                _buildInput()
                //buildSubmit();
              ],
            ),
         )
        ],
      ),
    );
    
  }

  Expanded _buildInput(){
    return Expanded(
      child:TextField(
        textCapitalization: TextCapitalization.sentences,
        style:TextStyle(
          color:Colors.white,
        ),
        controller: _textEditingController,
        decoration: InputDecoration(
          fillColor: botBackgroundColor,
          filled: true,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
        ) ,
      )
    );
  }
}