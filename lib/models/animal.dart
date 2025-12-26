class Animal {
  final String id;
  final String name;
  final String breed;
  final DateTime dateOfBirth;
  final double weight;
  final double milkProduction; // liters per day
  final double healthScore; // 1-100
  final String status; // active, retired, sold
  final double totalValue;
  final double availableShares; // percentage
  final double sharePrice;
  final List<Map<String, dynamic>> healthHistory;
  final List<Map<String, dynamic>> milkProductionHistory;

  Animal({
    required this.id,
    required this.name,
    required this.breed,
    required this.dateOfBirth,
    required this.weight,
    required this.milkProduction,
    required this.healthScore,
    required this.status,
    required this.totalValue,
    required this.availableShares,
    required this.sharePrice,
    required this.healthHistory,
    required this.milkProductionHistory,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'breed': breed,
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'weight': weight,
      'milkProduction': milkProduction,
      'healthScore': healthScore,
      'status': status,
      'totalValue': totalValue,
      'availableShares': availableShares,
      'sharePrice': sharePrice,
      'healthHistory': healthHistory,
      'milkProductionHistory': milkProductionHistory,
    };
  }

  factory Animal.fromMap(Map<String, dynamic> map) {
    return Animal(
      id: map['id'],
      name: map['name'],
      breed: map['breed'],
      dateOfBirth: DateTime.parse(map['dateOfBirth']),
      weight: map['weight'],
      milkProduction: map['milkProduction'],
      healthScore: map['healthScore'],
      status: map['status'],
      totalValue: map['totalValue'],
      availableShares: map['availableShares'],
      sharePrice: map['sharePrice'],
      healthHistory: List<Map<String, dynamic>>.from(map['healthHistory']),
      milkProductionHistory: List<Map<String, dynamic>>.from(map['milkProductionHistory']),
    );
  }
}