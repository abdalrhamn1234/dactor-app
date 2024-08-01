import 'package:flutter/material.dart';

class Doctor {
  final String name;
  final String specialty;
  final String distance;
  final double rating;
  final int reviews;
  final String openingTime;
  final Color color;

  Doctor({
    required this.name,
    required this.specialty,
    required this.distance,
    required this.rating,
    required this.reviews,
    required this.openingTime,
    required this.color,
  });
}

final List<Doctor> doctors = [
  Doctor(
    name: 'Dr. Joseph Brostito',
    specialty: 'Dental Specialist',
    distance: '1.2 KM',
    rating: 4.8,
    reviews: 120,
    openingTime: '17:00',
    color: Colors.orangeAccent,
  ),
  Doctor(
    name: 'Dr. Imran Syahir',
    specialty: 'General Doctor',
    distance: '1.2 KM',
    rating: 4.5,
    reviews: 98,
    openingTime: '18:00',
    color: Colors.lightBlueAccent,
  ),
];

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const HeaderWidget(),
              const DoctorWidget(),
              const InputWidget(),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: doctors.length,
                  itemBuilder: (context, index) {
                    final doctor = doctors[index];
                    return DoctorCard(
                      name: doctor.name,
                      specialty: doctor.specialty,
                      distance: doctor.distance,
                      rating: doctor.rating,
                      reviews: doctor.reviews,
                      openingTime: doctor.openingTime,
                      color: doctor.color,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
