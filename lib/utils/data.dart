import 'package:class4vet/utils/category.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> categories = [
  {
    'name': 'All',
    'icon': 'assets/icons/category/all.svg',
  },
  {
    'name': 'Basic',
    'icon': 'assets/icons/category/basic_lifeguard.svg',
  },
  {
    'name': 'Advanced',
    'icon': 'assets/icons/category/advanced_lifeguard.svg',
  },
  {
    'name': 'Safety',
    'icon': 'assets/icons/category/safety_education.svg',
  },
  {
    'name': 'Legal',
    'icon': 'assets/icons/category/legal_education.svg',
  },
  {
    'name': 'Emergency',
    'icon': 'assets/icons/category/emergency_response.svg',
  },
  {
    'name': 'Equipment',
    'icon': 'assets/icons/category/equipment_management.svg',
  },
  {
    'name': 'Practice',
    'icon': 'assets/icons/category/field_practice.svg',
  },
  {
    'name': 'Cert',
    'icon': 'assets/icons/category/certification.svg',
  },
];

final List<Map<String, dynamic>> courses = [
  // Basic Training Courses
  {
    'id': '1',
    'name': 'Basic Lifeguard Training',
    'description':
        'Learn the fundamentals of lifeguarding including water safety, rescue techniques, and first aid.',
    'price': '\$299',
    'duration': '40 hours',
    'review': '4.8',
    'image':
        'https://images.unsplash.com/photo-1576678927484-cc907957088c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
    'category': 'Basic',
  },
  {
    'id': '2',
    'name': 'Pool Safety Management',
    'description':
        'Advanced course covering pool safety protocols, risk assessment, and emergency response procedures.',
    'price': '\$399',
    'duration': '60 hours',
    'review': '4.9',
    'image':
        'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
    'category': 'Advanced',
  },
  {
    'id': '3',
    'name': 'Emergency Response Specialist',
    'description':
        'Comprehensive training in emergency response, CPR, and advanced first aid techniques.',
    'price': '\$499',
    'duration': '80 hours',
    'review': '4.7',
    'image':
        'https://images.unsplash.com/photo-1581093458791-9f3c3250a8b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
    'category': 'Emergency',
  },
  {
    'id': '4',
    'name': 'Lifeguard Certification Prep',
    'description':
        'Prepare for your lifeguard certification with comprehensive training and practice tests.',
    'price': '\$349',
    'duration': '50 hours',
    'review': '4.9',
    'image':
        'https://images.unsplash.com/photo-1576678927484-cc907957088c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
    'category': 'Cert',
  },
  {
    'id': '5',
    'name': 'Pool Facility Management',
    'description':
        'Learn about pool maintenance, equipment management, and facility safety standards.',
    'price': '\$449',
    'duration': '70 hours',
    'review': '4.6',
    'image':
        'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
    'category': 'Equipment',
  },

  // Advanced Training Courses
  {
    'id': '6',
    'name': 'Advanced Rescue Techniques',
    'description': 'Advanced water rescue and emergency response',
    'price': '399.99',
    'duration': '50 hours',
    'review': '4.9',
    'image': 'https://images.unsplash.com/photo-1600965962102-9d260a71890d',
    'category': 'Advanced Training',
  },
  {
    'id': '7',
    'name': 'Team Leadership',
    'description': 'Learn to lead and coordinate rescue teams',
    'price': '349.99',
    'duration': '45 hours',
    'review': '4.8',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Advanced Training',
  },
  {
    'id': '8',
    'name': 'Advanced First Aid',
    'description': 'Advanced medical response and treatment',
    'price': '299.99',
    'duration': '40 hours',
    'review': '4.7',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Advanced Training',
  },
  {
    'id': '9',
    'name': 'Crisis Management',
    'description': 'Handle emergency situations effectively',
    'price': '279.99',
    'duration': '35 hours',
    'review': '4.6',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Advanced Training',
  },

  // Safety Education Courses
  {
    'id': '10',
    'name': 'Safety Protocol Development',
    'description': 'Create and implement safety protocols',
    'price': '249.99',
    'duration': '30 hours',
    'review': '4.8',
    'image': 'https://images.unsplash.com/photo-1584982751601-97dcc096659c',
    'category': 'Safety Education',
  },
  {
    'id': '11',
    'name': 'Risk Assessment',
    'description': 'Learn to identify and assess safety risks',
    'price': '199.99',
    'duration': '25 hours',
    'review': '4.7',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Safety Education',
  },
  {
    'id': '12',
    'name': 'Safety Training Methods',
    'description': 'Effective methods for safety training',
    'price': '229.99',
    'duration': '28 hours',
    'review': '4.6',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Safety Education',
  },
  {
    'id': '13',
    'name': 'Emergency Preparedness',
    'description': 'Prepare for various emergency scenarios',
    'price': '279.99',
    'duration': '32 hours',
    'review': '4.9',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Safety Education',
  },

  // Legal Education Courses
  {
    'id': '14',
    'name': 'Lifeguard Legal Responsibilities',
    'description': 'Understanding legal obligations and rights',
    'price': '199.99',
    'duration': '25 hours',
    'review': '4.7',
    'image': 'https://images.unsplash.com/photo-1589829545856-d10d557cf95f',
    'category': 'Legal Education',
  },
  {
    'id': '15',
    'name': 'Liability Management',
    'description': 'Managing legal risks and liabilities',
    'price': '249.99',
    'duration': '30 hours',
    'review': '4.8',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Legal Education',
  },
  {
    'id': '16',
    'name': 'Regulatory Compliance',
    'description': 'Understanding and maintaining compliance',
    'price': '229.99',
    'duration': '28 hours',
    'review': '4.6',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Legal Education',
  },
  {
    'id': '17',
    'name': 'Documentation and Records',
    'description': 'Proper documentation and record keeping',
    'price': '179.99',
    'duration': '22 hours',
    'review': '4.5',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Legal Education',
  },

  // Emergency Response Courses
  {
    'id': '18',
    'name': 'Advanced Emergency Response',
    'description': 'Advanced techniques for emergency situations',
    'price': '349.99',
    'duration': '45 hours',
    'review': '4.9',
    'image': 'https://images.unsplash.com/photo-1587745416684-47953f16f02f',
    'category': 'Emergency Response',
  },
  {
    'id': '19',
    'name': 'Medical Emergency Management',
    'description': 'Handling medical emergencies effectively',
    'price': '299.99',
    'duration': '40 hours',
    'review': '4.8',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Emergency Response',
  },
  {
    'id': '20',
    'name': 'Crisis Communication',
    'description': 'Effective communication during emergencies',
    'price': '249.99',
    'duration': '30 hours',
    'review': '4.7',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Emergency Response',
  },
  {
    'id': '21',
    'name': 'Emergency Team Coordination',
    'description': 'Coordinating teams during emergencies',
    'price': '279.99',
    'duration': '35 hours',
    'review': '4.6',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Emergency Response',
  },

  // Equipment Management Courses
  {
    'id': '22',
    'name': 'Pool Equipment Maintenance',
    'description': 'Maintaining and managing pool equipment',
    'price': '229.99',
    'duration': '28 hours',
    'review': '4.7',
    'image': 'https://images.unsplash.com/photo-1562176566-e9afd27531d4',
    'category': 'Equipment Management',
  },
  {
    'id': '23',
    'name': 'Safety Equipment Operations',
    'description': 'Operating and maintaining safety equipment',
    'price': '199.99',
    'duration': '25 hours',
    'review': '4.8',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Equipment Management',
  },
  {
    'id': '24',
    'name': 'Equipment Inventory Management',
    'description': 'Managing equipment inventory effectively',
    'price': '179.99',
    'duration': '22 hours',
    'review': '4.6',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Equipment Management',
  },
  {
    'id': '25',
    'name': 'Emergency Equipment Handling',
    'description': 'Proper handling of emergency equipment',
    'price': '249.99',
    'duration': '30 hours',
    'review': '4.9',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Equipment Management',
  },

  // Field Practice Courses
  {
    'id': '26',
    'name': 'Practical Rescue Training',
    'description': 'Hands-on rescue practice and scenarios',
    'price': '299.99',
    'duration': '40 hours',
    'review': '4.8',
    'image': 'https://images.unsplash.com/photo-1601979031925-424e53b6caaa',
    'category': 'Practice',
  },
  {
    'id': '27',
    'name': 'Real-world Scenarios',
    'description': 'Practice with real-world emergency scenarios',
    'price': '279.99',
    'duration': '35 hours',
    'review': '4.7',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Practice',
  },
  {
    'id': '28',
    'name': 'Team Practice Sessions',
    'description': 'Practice working in rescue teams',
    'price': '249.99',
    'duration': '30 hours',
    'review': '4.9',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Practice',
  },
  {
    'id': '29',
    'name': 'Emergency Response Drills',
    'description': 'Regular emergency response practice',
    'price': '229.99',
    'duration': '28 hours',
    'review': '4.6',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Practice',
  },

  // Certification Courses
  {
    'id': '30',
    'name': 'Advanced Certification Course',
    'description': 'Advanced certification preparation',
    'price': '399.99',
    'duration': '50 hours',
    'review': '4.8',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Cert',
  },
  {
    'id': '31',
    'name': 'Specialized Certifications',
    'description': 'Prepare for specialized lifeguard certifications',
    'price': '299.99',
    'duration': '40 hours',
    'review': '4.7',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Cert',
  },
  {
    'id': '32',
    'name': 'Certification Renewal',
    'description': 'Renew your existing certifications',
    'price': '199.99',
    'duration': '25 hours',
    'review': '4.6',
    'image': 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd',
    'category': 'Cert',
  },
];

final List<Map<String, dynamic>> lessons = [
  {
    'id': '1',
    'title': 'Role and Responsibilities',
    'duration': '2 hours',
    'video': 'assets/videos/lesson1.mp4',
    'resources': [
      'assets/resources/lesson1_guide.pdf',
      'assets/resources/lesson1_quiz.pdf',
    ],
  },
  {
    'id': '2',
    'title': 'Pool Safety Basics',
    'duration': '3 hours',
    'video': 'assets/videos/lesson2.mp4',
    'resources': [
      'assets/resources/lesson2_guide.pdf',
      'assets/resources/lesson2_quiz.pdf',
    ],
  },
  {
    'id': '3',
    'title': 'Emergency Response',
    'duration': '4 hours',
    'video': 'assets/videos/lesson3.mp4',
    'resources': [
      'assets/resources/lesson3_guide.pdf',
      'assets/resources/lesson3_quiz.pdf',
    ],
  },
  {
    'id': '4',
    'title': 'Water Quality Management',
    'duration': '2 hours',
    'video': 'assets/videos/lesson4.mp4',
    'resources': [
      'assets/resources/lesson4_guide.pdf',
      'assets/resources/lesson4_quiz.pdf',
    ],
  },
  {
    'id': '5',
    'title': 'Safety Equipment Usage',
    'duration': '3 hours',
    'video': 'assets/videos/lesson5.mp4',
    'resources': [
      'assets/resources/lesson5_guide.pdf',
      'assets/resources/lesson5_quiz.pdf',
    ],
  },
  {
    'id': '6',
    'title': 'Regulations and Standards',
    'duration': '2 hours',
    'video': 'assets/videos/lesson6.mp4',
    'resources': [
      'assets/resources/lesson6_guide.pdf',
      'assets/resources/lesson6_quiz.pdf',
    ],
  },
];

final List<Map<String, dynamic>> chatInfo = [
  {
    'id': '1',
    'name': 'Sarah Kim',
    'image':
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
    'role': 'Lifeguard Training Expert',
    'lastMessage':
        'Welcome to the course! Let me know if you have any questions.',
    'time': '10:30 AM',
  },
  {
    'id': '2',
    'name': 'Michael Lee',
    'image':
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
    'role': 'Safety Education Expert',
    'lastMessage': 'Great progress on the safety protocols!',
    'time': '11:45 AM',
  },
  {
    'id': '3',
    'name': 'David Park',
    'image':
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
    'role': 'Emergency Response Expert',
    'lastMessage': 'Remember to review the emergency procedures.',
    'time': '2:15 PM',
  },
];

final Map<String, dynamic> profile = {
  'name': 'Jin Young Kim',
  'email': 'jin@class4vet.com',
  'image':
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1180&q=80',
  'role': 'Lifeguard Trainee',
  'coursesEnrolled': 3,
  'coursesCompleted': 1,
  'certificates': 2,
};

final List<Map<String, dynamic>> progressCourses = [
  {
    'id': '3',
    'name': 'Emergency Response Specialist',
    'image':
        'https://images.unsplash.com/photo-1581093458791-9f3c3250a8b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
    'progress': 0.7,
    'totalLessons': 20,
    'completedLessons': 14,
  },
];

final List<Map<String, dynamic>> completedCourses = [
  {
    'id': '4',
    'name': 'Lifeguard Certification Prep',
    'image':
        'https://images.unsplash.com/photo-1576678927484-cc907957088c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
    'completedDate': '2024-03-15',
    'certificate': 'assets/images/certificate.pdf',
  },
];
