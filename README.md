
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

