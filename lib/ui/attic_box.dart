// import 'package:flutter/material.dart';
//
// class AtticBox extends StatefulWidget {
//   const AtticBox({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<AtticBox> createState() => _AtticBoxState();
// }
//
// class _AtticBoxState extends State<AtticBox> {
//   late bool _hoveringAttic;
//
//   @override
//   initState() {
//     super.initState();
//     _hoveringAttic = false;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(30.0),
//       child: SizedBox(
//         width: 800,
//         child: MouseRegion(
//           onEnter: (e) {
//             setState(() {
//               _hoveringAttic = true;
//             });
//           },
//           onExit: (e) {
//             setState(() {
//               _hoveringAttic = false;
//             });
//           },
//           child: ClipRect(
//             child: ColorFiltered(
//               colorFilter: ColorFilter.mode(
//                 Colors.black.withOpacity(_hoveringAttic ? 0 : 0.4),
//                 BlendMode.darken,
//               ),
//               child: Image.asset("assets/images/1.png", fit: BoxFit.cover,),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class AtticBox extends StatefulWidget {
  const AtticBox({
    Key? key,
  }): super(key: key);

  @override
  State<AtticBox> createState() => _AtticBoxState();
}

class _AtticBoxState extends State<AtticBox> {
  late bool _hoveringAttic;
  late double _opacity;

  @override
  initState() {
    super.initState();
    _hoveringAttic = false;
    _opacity = 0.4;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SizedBox(
        width: 800,
        child: MouseRegion(
          onEnter: (e) {
            setState(() {
              _hoveringAttic = true;
            });
            _animateOpacity(0.0);
          },
          onExit: (e) {
            setState(() {
              _hoveringAttic = false;
            });
            _animateOpacity(0.4);
          },
          child: ClipRect(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              color: Colors.black.withOpacity(_opacity),
              child: Image.asset("assets/images/1.png", fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }

  void _animateOpacity(double endOpacity) {
    setState(() {
      _opacity = endOpacity;
    });
  }
}
