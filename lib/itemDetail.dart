import 'package:flutter/material.dart';
import './model/viewList.dart';

class Itemdetail extends StatefulWidget {
  final ViewList samples;
  const Itemdetail({super.key, required this.samples});

  @override
  State<StatefulWidget> createState() {
    return _itemDetailState();
  }
}

class _itemDetailState extends State<Itemdetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    // คำนวณราคารวม: ราคาต่อชิ้น * จำนวนจาก Slider
    double totalPrice = widget.samples.price * _sliderVal;

    return Scaffold(
      appBar: AppBar(title: const Text('Product Detail')),
      body: SafeArea(
        child: Column(
          children: [
            // แสดงรูปภาพ
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(widget.samples.imgUrl, fit: BoxFit.cover),
            ),
            const SizedBox(height: 4),
            // ชื่อเมนู
            Text(
              widget.samples.imgLable,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // คำอธิบาย
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.samples.detail,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14),
              ),
            ),
            // รายการ Slider
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: widget.samples.itemInBoxs.length,
                itemBuilder: (context, index) {
                  final itemInBoxs = widget.samples.itemInBoxs[index];
                  return Text(
                    // คำนวณจำนวนของในกล่องตาม Slider
                    '${itemInBoxs.quantity * _sliderVal} ${itemInBoxs.unit} ${itemInBoxs.name}',
                    style: const TextStyle(fontSize: 16),
                  );
                },
              ),
            ),

            // --- แสดงราคา ---
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Total Price: $totalPrice THB', // แสดงราคารวม
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),

            // Slider สำหรับปรับจำนวน
            Slider(
              min: 1,
              max: 10,
              divisions: 9,
              label: '$_sliderVal sets',
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.toInt();
                });
              },
              activeColor: Colors.orange,
              inactiveColor: Colors.black12,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
