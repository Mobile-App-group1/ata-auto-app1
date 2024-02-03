import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const showSnackBar = false;
const expandChildrenOnReady = true;

class TreeViewFile extends StatelessWidget {
  TreeViewFile({super.key});

  TreeViewController? _controller;
  final sampleTree = TreeNode.root()
    ..addAll(([
      TreeNode(key: 'B1')
        ..addAll([
          TreeNode(key: "A1")..add(TreeNode(key: "1A1")),
          TreeNode(key: "A2")
            ..addAll([
              TreeNode(key: "0C1A"),
              TreeNode(key: "0C1B"),
              TreeNode(key: "0C1C")
                ..addAll([
                  TreeNode(key: "0C1C2A")
                    ..addAll([
                      TreeNode(key: "0C1C2A3A"),
                      TreeNode(key: "0C1C2A3B"),
                      TreeNode(key: "0C1C2A3C"),
                    ]),
                ]),
            ]),
          TreeNode(key: "0D")..addAll([TreeNode(key: '')]),
          TreeNode(key: "0E"),
          TreeNode(key: "0F"),
          TreeNode(key: "0H"),
          TreeNode(key: 'B1')
            ..addAll([
              TreeNode(key: "A1")..add(TreeNode(key: "1A1")),
              TreeNode(key: "A2")
                ..addAll([
                  TreeNode(key: "0C1A"),
                  TreeNode(key: "0C1B"),
                  TreeNode(key: "0C1C")
                    ..addAll([
                      TreeNode(key: "0C1C2A")
                        ..addAll([
                          TreeNode(key: "0C1C2A3A"),
                          TreeNode(key: "0C1C2A3B"),
                          TreeNode(key: "0C1C2A3C"),
                        ]),
                    ]),
                ]),
              TreeNode(key: "0D")..addAll([TreeNode(key: '')]),
              TreeNode(key: "0E"),
              TreeNode(key: "0F"),
              TreeNode(key: "0H"),
            ]),
        ])
    ]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TreeView.simple(
          tree: sampleTree,
          showRootNode: true,
          expansionIndicatorBuilder: (context, node) =>
              ChevronIndicator.rightDown(
            tree: node,
            color: Colors.blue[700],
            padding: const EdgeInsets.all(8),
          ),
          indentation: const Indentation(style: IndentStyle.squareJoint),
          onItemTap: (item) {
            if (kDebugMode) print("Item tapped: ${item.key}");

            if (showSnackBar) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Item tapped: ${item.key}"),
                  duration: const Duration(milliseconds: 750),
                ),
              );
            }
          },
          onTreeReady: (controller) {
            _controller = controller;
            if (expandChildrenOnReady) controller.expandAllChildren(sampleTree);
          },
          builder: (context, node) => Card(
            child: ListTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.folder,
                    color: Colors.amber,
                  ),
                  Text("Folder ${node.level}-${node.key}"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
