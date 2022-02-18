
## API Reference

#### Get all items


**[1. Inkwell](https://api.flutter.dev/flutter/material/InkWell-class.html)**


```
@override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: sideLength,
      width: sideLength,
      duration: const Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Material(
        color: Colors.yellow,
        child: InkWell(
          onTap: () {
            setState(() {
              sideLength == 50 ? sideLength = 100 : sideLength = 50;
            });
          },
        ),
      ),
    );
  }
  ```

**[2. Animated Container](https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html)**
  
Animated version of Container that gradually changes its values over a period of time.
The AnimatedContainer will automatically animate between the old and new values of properties when they change using the provided curve and duration. Properties that are null are not animated. Its child and descendants are not animated.
```
@override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.red : Colors.blue,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: const FlutterLogo(size: 75),
        ),
      ),
    );
  }
```

**[3. Fitted Box](https://www.geeksforgeeks.org/fittedbox-in-flutter/)**

FittedBox is a very useful widget that scales and positions its child within itself according to fit and alignment. Consider an app, in which, you have to take input from the user and in a certain scenario, the user enters a large input that overflows and scatters other widgets. As many of the widgets are dynamic, which means they can grow and shrink in size, according to their child widget’s size. So, in this case, the user interface wouldn’t be adaptive. In order to overcome this problem, we can use the FittedBox widget.

FittedBox restricts its child widgets from growing its size beyond a certain limit. It re-scales them according to the size available. For instance, if the text is displayed inside a container, and the text is to be entered by the user. If the user enters a large string of text, then the container would grow beyond its allocated size. But, if we wrap it with FittedBox, then it would fit the text according to the size available. For large string, it would shrink its size, hence would fit in the container. 

```
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Try"),
      ),
      body: Container(
        width: 120,
        height: 30,
        color: ColorNoob.light_purple,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Text("Hare Krsna"),
        ),
      ),
    );
  }
```

**[4. Rich Text](https://medium.com/flutter-community/make-text-styling-more-effective-with-richtext-widget-b0e0cb4771ef)**

The style property of text widget is used to apply various styles to a text, but a limitation of it is, the style gets applied to the entire text irrespective of whether the text is a single line or multiline. Consider below snippet to render a single line of text on screen:
```
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Try"),
      ),
      body: Container(
        child: Column(
          children: [
            RichText(
              text: const TextSpan(
                text: 'Hello ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'bold',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' world!'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
```

**[5. Flexible]**

Using a Flexible widget gives a child of a Row, Column, or Flex the flexibility to expand to fill the available space in the main axis (e.g., horizontally for a Row or vertically for a Column)

```
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Try"),
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.amberAccent,
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
```

**[6. Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html)**

Using an Expanded widget makes a child of a Row, Column, or Flex expand to fill the available space along the main axis
```
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Try"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue.shade500,
                height: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
```

**[7. Wraps]()**

A widget that displays its children in multiple horizontal or vertical runs.

A Wrap lays out each child and attempts to place the child adjacent to the previous child in the main axis, given by direction, leaving spacing space in between. If there is not enough space to fit the child, Wrap creates a new run adjacent to the existing children in the cross axis.

After all the children have been allocated to runs, the children within the runs are positioned according to the alignment in the main axis and according to the crossAxisAlignment in the cross axis.

The runs themselves are then positioned in the cross axis according to the runSpacing and runAlignment.

```
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Try"),
      ),
      body: Container(
        child: Column(
          children: [
            Wrap(
              children: [
                Container(
                  color: Colors.blue.shade700,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade800,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade900,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade100,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade200,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade700,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade800,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade500,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade600,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade400,
                  width: 50,
                  height: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
```