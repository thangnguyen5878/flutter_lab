import  'package:flutter/material.dart';
import  'package:keyboard_actions/keyboard_actions.dart';


class KeyBoardActionsExample1 extends StatefulWidget {
  const KeyBoardActionsExample1({super.key});

  @override
  _KeyBoardActionsExample1State createState() => _KeyBoardActionsExample1State();
}

class _KeyBoardActionsExample1State extends State<KeyBoardActionsExample1> {
  final FocusNode _nodeText1 = FocusNode();
  final FocusNode _nodeText2 = FocusNode();
  final FocusNode _nodeText3 = FocusNode();
  final FocusNode _nodeText4 = FocusNode();
  final FocusNode _nodeText5 = FocusNode();
  final FocusNode _nodeText6 = FocusNode();

  /// Creates the [KeyboardActionsConfig] to hook up the fields
  /// and their focus nodes to our [FormKeyboardActions].
  KeyboardActionsConfig _buildConfig(BuildContext context) {
    return KeyboardActionsConfig(
      keyboardBarColor: Colors.grey[200],
      actions: <KeyboardActionsItem>[
        KeyboardActionsItem(
          focusNode: _nodeText1,
        ),
        KeyboardActionsItem(focusNode: _nodeText2, toolbarButtons: <ButtonBuilder>[
              (FocusNode node) {
            return GestureDetector(
              onTap: () => node.unfocus(),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.close),
              ),
            );
          }
        ]),
        KeyboardActionsItem(
          focusNode: _nodeText3,
          onTapAction: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: const Text('Custom Action'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () => Navigator.of(context).pop(),
                      )
                    ],
                  );
                });
          },
        ),
        KeyboardActionsItem(
          focusNode: _nodeText4,
        ),
        KeyboardActionsItem(
          focusNode: _nodeText5,
          toolbarButtons: <ButtonBuilder>[
            //button 1
                (FocusNode node) {
              return GestureDetector(
                onTap: () => node.unfocus(),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'CLOSE',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              );
            },
            //button 2
                (FocusNode node) {
              return GestureDetector(
                onTap: () => node.unfocus(),
                child: Container(
                  color: Colors.black,
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'DONE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }
          ],
        ),
        KeyboardActionsItem(
          focusNode: _nodeText6,
          footerBuilder: (_) => const PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: SizedBox(
                  height: 40,
                  child: Center(
                    child: Text('Custom Footer'),
                  ))),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: KeyboardActions(
            config: _buildConfig(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.number,
                  focusNode: _nodeText1,
                  decoration: const InputDecoration(
                    hintText: 'Input Number',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  focusNode: _nodeText2,
                  decoration: const InputDecoration(
                    hintText: 'Input Text with Custom Done Button',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  focusNode: _nodeText3,
                  decoration: const InputDecoration(
                    hintText: 'Input Number with Custom Action',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  focusNode: _nodeText4,
                  decoration: const InputDecoration(
                    hintText: 'Input Text without Done button',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  focusNode: _nodeText5,
                  decoration: const InputDecoration(
                    hintText: 'Input Number with Toolbar Buttons',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  focusNode: _nodeText6,
                  decoration: const InputDecoration(
                    hintText: 'Input Number with Custom Footer',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
