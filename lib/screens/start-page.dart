import 'package:bmi_calculator/screens/components/male-female-conatanier.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

bool checkedMale = false;
bool checkedFemale = false;
double value = 0.5;
int age = 1;
double weight = 50;


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            height: height,
            width: width,
            child: Column(
              children: [
                const Text(
                  'BMI Calculator',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          checkedMale = !checkedMale;
                          checkedFemale = false;
                        });
                      },
                      child: Gender(
                        checked: checkedMale,
                        gender: 'Male',
                        genderIcon: Icons.male,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          checkedFemale = !checkedFemale;
                          checkedMale = false;
                        });
                      },
                      child: Gender(
                        checked: checkedFemale,
                        gender: 'Female',
                        genderIcon: Icons.female,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: const Color.fromARGB(255, 71, 159, 231),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Height',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${value.toInt()} cm',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Slider(
                          min: 0,
                          max: 200,
                          value: value,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          }),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: width / 2.3,
                      color: const Color.fromARGB(255, 71, 159, 231),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              age.toString(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (age == 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'please enter a non negative value',
                                            ),
                                          ),
                                        );
                                      } else {
                                        age--;
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Icon(Icons.minimize),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Icon(Icons.add),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: width / 2.3,
                      color: const Color.fromARGB(255, 71, 159, 231),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              weight.toString(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (weight == 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'please enter a non negative value',
                                            ),
                                          ),
                                        );
                                      } else {
                                        weight--;
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Icon(Icons.minimize_outlined),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Icon(Icons.add),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    if (checkedFemale == false && checkedMale == false) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Please select you gender',
                          ),
                        ),
                      );
                    } else {
                      double bmi = weight / ((value.toDouble()) / 100 * (value.toDouble()) / 100);
                      String category;
                      if (bmi < 18.5) {
                        category = 'Underweight';
                      } else if (bmi >= 18.5 && bmi < 25) {
                        category = 'Normal weight';
                      } else if (bmi >= 25 && bmi < 30) {
                        category = 'Overweight';
                      } else {
                        category = 'Obese';
                      }
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => Dialog(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                'Your BMI is',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                bmi.toInt().toString(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                category,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Try again'),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 71, 159, 231),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Calculate',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
