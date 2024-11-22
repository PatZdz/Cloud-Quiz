import '../models/question.dart';

List<Question> allQuestions = [
  // Question 1
  Question(
    id: 1,
    topic: 'Migration to Cloud',
    question:
        'You are migrating workloads to the cloud with the goal of serving customers worldwide as quickly as possible. Local regulations require certain data to be stored in a specific geographic area, while allowing it to be served worldwide. What should you do?',
    options: [
      'Select a public cloud provider that is only active in the required geographic area',
      'Select a private cloud provider that globally replicates data storage for fast data access',
      'Select a public cloud provider that guarantees data location in the required geographic area',
      'Select a private cloud provider that is only active in the required geographic area',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 2
  Question(
    id: 2,
    topic: 'Resource Scaling',
    question:
        'Your organization needs a large amount of extra computing power for two weeks. After those two weeks, the need for additional resources will end. Which is the most cost-effective approach?',
    options: [
      'Use a committed use discount to reserve a very powerful virtual machine',
      'Purchase one very powerful physical computer',
      'Start a very powerful virtual machine without using a committed use discount',
      'Purchase multiple physical computers and scale workload across them',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 3
  Question(
    id: 3,
    topic: 'Cloud Cost Management',
    question:
        'Your organization needs to plan its cloud infrastructure expenditures. What should your organization do?',
    options: [
      'Review cloud resource costs frequently, because costs change often based on use',
      'Review cloud resource costs annually as part of planning your organization’s overall budget',
      'If your organization uses only cloud resources, infrastructure costs are no longer part of your overall budget',
      'Involve fewer people in cloud resource planning than your organization did for on-premises resource planning',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 4
  Question(
    id: 4,
    topic: 'Security Management',
    question:
        'The operating systems of some of your organization’s virtual machines may have a security vulnerability. How can your organization most effectively identify all virtual machines that do not have the latest security update?',
    options: [
      'View the Security Command Center to identify virtual machines running vulnerable disk images',
      'View the Compliance Reports Manager to identify and download a recent PCI audit',
      'View the Security Command Center to identify virtual machines started more than 2 weeks ago',
      'View the Compliance Reports Manager to identify and download a recent SOC 1 audit',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 5
  Question(
    id: 5,
    topic: 'Licensing Optimization',
    question:
        'You are managing workloads running on Windows Server for which your company owns the licenses. Your workloads are needed only during working hours, allowing you to shut down the instances during the weekend. Your Windows Server licenses are up for renewal in a month, and you want to optimize your license cost. What should you do?',
    options: [
      'Renew your licenses for an additional period of 3 years and negotiate reduced infrastructure costs for downtime',
      'Renew your licenses for an additional period of 2 years and negotiate a cost reduction for automatic renewal',
      'Migrate the workloads to Compute Engine with a bring-your-own-license (BYOL) model',
      'Migrate the workloads to Compute Engine with a pay-as-you-go (PAYG) model',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 6
  Question(
    id: 6,
    topic: 'Redundancy and Fast Communication',
    question:
        'Your organization runs a distributed application in Compute Engine virtual machines. It needs redundancy and extremely fast communication (less than 10 milliseconds) between the virtual machines. Where should your organization locate these virtual machines?',
    options: [
      'In a single zone within a single region',
      'In different zones within a single region',
      'In multiple regions, using one zone per region',
      'In multiple regions, using multiple zones per region',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 7
  Question(
    id: 7,
    topic: 'Ownership in Public Cloud',
    question:
        'An organization is migrating its on-premises environment to the cloud and needs to determine which resource components the public cloud provider owns. Which two functions does a public cloud provider own? (Choose two.)',
    options: [
      'Hardware maintenance',
      'Infrastructure architecture',
      'Infrastructure deployment automation',
      'Hardware capacity management',
      'Fixing application security issues',
    ],
    correctAnswerIndex: -1, // Since there are two correct answers, we need to handle this differently
  ),
  // Question 8
  Question(
    id: 8,
    topic: 'Cost-Optimized Computing',
    question:
        'You manage rendering software for animation studios. Scenes need to be scheduled at will and can be interrupted and restarted later. Each scene rendering takes less than 12 hours, and there is no SLA for the completion time. Results will be stored in a global Cloud Storage bucket. Compute resources are not location-bound. What should you do?',
    options: [
      'Deploy the application on Compute Engine using preemptible instances',
      'Develop the application so it can run in an unmanaged instance group',
      'Create a reservation for the minimum number of Compute Engine instances you will use',
      'Start more instances with fewer virtual CPUs (vCPUs) instead of fewer instances with more vCPUs',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 9
  Question(
    id: 9,
    topic: 'Restricting External IP Access',
    question:
        'Your manager wants to restrict all virtual machines from having external IP addresses, including future projects and folders. How would you enforce this restriction?',
    options: [
      'Define an organization policy at the root organization node to restrict virtual machine instances from having an external IP address',
      'Define an organization policy on all existing folders to restrict virtual machine instances from having an external IP address',
      'Define an organization policy on all existing projects to restrict virtual machine instances from having an external IP address',
      'Communicate with teams to configure virtual machines without external IP addresses during creation',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 10
  Question(
    id: 10,
    topic: 'Managing Mission-Critical Workloads',
    question:
        'Your multinational organization wants to centrally manage mission-critical workloads across global on-premises servers while stopping infrastructure management. What should your organization do?',
    options: [
      'Migrate the workloads to a public cloud',
      'Migrate the workloads to a central office building',
      'Migrate the workloads to multiple local co-location facilities',
      'Migrate the workloads to multiple local private clouds',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 11
  Question(
    id: 11,
    topic: 'Sensitive Data Processing',
    question:
        'Your organization stores highly sensitive data on-premises that cannot be sent over the public internet. The data must be processed both on-premises and in the cloud. What should your organization do?',
    options: [
      'Configure Identity-Aware Proxy (IAP) in your Google Cloud VPC network',
      'Create a Cloud VPN tunnel between Google Cloud and your data center',
      'Order a Partner Interconnect connection with your network provider',
      'Enable Private Google Access in your Google Cloud VPC network',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 12
  Question(
    id: 12,
    topic: 'CI/CD for Cloud Run',
    question:
        'Your company’s development team is building an application to be deployed on Cloud Run. You are designing a CI/CD pipeline to deploy new versions of the application in the fewest steps. Where should the application images be stored after the CI part of your pipeline has built them?',
    options: [
      'Create a Compute Engine image containing the application',
      'Store the images in Container Registry',
      'Store the images in Cloud Storage',
      'Create a Compute Engine disk containing the application',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 13
  Question(
    id: 13,
    topic: 'Cloud Service Models',
    question:
        'Each of the three cloud service models (IaaS, PaaS, SaaS) balances flexibility and levels of management. Why would SaaS be the right choice of service model?',
    options: [
      'You want a balance between flexibility for the customer and the level of management by the cloud provider',
      'You want to minimize the level of management by the customer',
      'You want to maximize flexibility for the customer',
      'You want to be able to shift your emphasis between flexibility and management by the cloud provider as business needs change',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 14
  Question(
    id: 14,
    topic: 'Faster Application Deployments',
    question:
        'As your organization increases its release velocity, VM-based application upgrades take a long time due to OS boot times. How can you make application deployments faster?',
    options: [
      'Migrate your VMs to the cloud, and add more resources to them',
      'Convert your applications into containers',
      'Increase the resources of your VMs',
      'Automate your upgrade rollouts',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 15
  Question(
    id: 15,
    topic: 'User Authentication and Deprovisioning',
    question:
        'Your organization uses Active Directory for authentication. Users’ Google account access must be removed when their Active Directory account is terminated. How should your organization meet this requirement?',
    options: [
      'Configure two-factor authentication in the Google domain',
      'Remove the Google account from all IAM policies',
      'Configure BeyondCorp and Identity-Aware Proxy in the Google domain',
      'Configure single sign-on in the Google domain',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 16
  Question(
    id: 16,
    topic: 'Managing Subsidiaries’ Infrastructure',
    question:
        'Your company has acquired three startups in different countries. You want to reduce infrastructure management overhead and keep costs low while maintaining security and service quality. How should you meet these requirements?',
    options: [
      'Host all your subsidiaries’ services on-premises together with your existing services.',
      'Host all your subsidiaries’ services together with your existing services on the public cloud.',
      'Build a homogenous infrastructure at each subsidiary, and invest in training their engineers.',
      'Build a homogenous infrastructure at each subsidiary, and invest in hiring more engineers.',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 17
  Question(
    id: 17,
    topic: 'Storage Classes',
    question:
        'What is the difference between Standard and Coldline storage?',
    options: [
      'Coldline storage is for data for which a slow transfer rate is acceptable.',
      'Standard and Coldline storage have different durability guarantees.',
      'Standard and Coldline storage use different APIs.',
      'Coldline storage is for infrequently accessed data.',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 18
  Question(
    id: 18,
    topic: 'Computing Resources',
    question:
        'What would provide near-unlimited availability of computing resources without requiring your organization to procure and provision new equipment?',
    options: [
      'Public cloud',
      'Containers',
      'Private cloud',
      'Microservices',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 19
  Question(
    id: 19,
    topic: 'Event-Driven Application Development',
    question:
        'You are managing the development of an event-driven application that generates notifications based on real-time database writes. The application must integrate with other cloud services and automatically manage infrastructure while scaling to zero during inactivity. Which primary compute resource should your developers select?',
    options: [
      'Google Kubernetes Engine',
      'Cloud Functions',
      'App Engine flexible environment',
      'Compute Engine',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 20
  Question(
    id: 20,
    topic: 'Database for Sensor Data',
    question:
        'Your organization is developing an application to capture large amounts of data from millions of sensors worldwide. The database must support high-speed storage of unstructured data globally. Which Google Cloud product should your organization choose?',
    options: [
      'Firestore',
      'Cloud Data Fusion',
      'Cloud SQL',
      'Cloud Bigtable',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 21
  Question(
    id: 21,
    topic: 'Streaming Data Pipelines',
    question:
        'Your organization needs to build streaming data pipelines but does not want to manage individual servers for data processing. You require a managed service that automatically scales with the data volume. Which Google Cloud product should your organization choose?',
    options: [
      'Pub/Sub',
      'Dataflow',
      'Data Catalog',
      'Dataprep by Trifacta',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 22
  Question(
    id: 22,
    topic: 'Automating Build, Testing, and Deployment',
    question:
        'Your organization is building an application in Google Cloud, and software builds, tests, and deployments are currently manual. You want to automate these processes using Google Cloud managed solutions. Which Google Cloud product should your organization use?',
    options: [
      'Cloud Scheduler',
      'Cloud Code',
      'Cloud Build',
      'Cloud Deployment Manager',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 23
  Question(
    id: 23,
    topic: 'Compliance Reporting and Maintenance',
    question:
        'Which Google Cloud product can report on and maintain compliance across your entire Google Cloud organization, covering multiple projects?',
    options: [
      'Cloud Logging',
      'Identity and Access Management',
      'Google Cloud Armor',
      'Security Command Center',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 24
  Question(
    id: 24,
    topic: 'Private Network Connectivity',
    question:
        'Your organization needs to establish private network connectivity between its on-premises network and Google Cloud workloads as soon as possible. Which Google Cloud product should you use?',
    options: [
      'Cloud Interconnect',
      'Direct Peering',
      'Cloud VPN',
      'Cloud CDN',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 25
  Question(
    id: 25,
    topic: 'Mobile App Development Platform',
    question:
        'Your organization is developing a mobile app and wants to select a fully featured cloud-based compute platform for it. Which Google Cloud product should your organization use?',
    options: [
      'Google Kubernetes Engine',
      'Firebase',
      'Cloud Functions',
      'App Engine',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 26
  Question(
    id: 26,
    topic: 'Migrating Custom Linux Images',
    question:
        'Your company has been using a shared facility for data storage and is migrating to Google Cloud. One of the internal applications uses Linux custom images that need to be migrated. Which Google Cloud product should you use to maintain the custom images?',
    options: [
      'App Engine flexible environment',
      'Compute Engine',
      'App Engine standard environment',
      'Google Kubernetes Engine',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 27
  Question(
    id: 27,
    topic: 'Scalable Data Management Solutions',
    question:
        'Your organization wants to migrate its data management solutions to Google Cloud to dynamically scale up or down and run transactional SQL queries against historical data at scale. Which Google Cloud product should your organization use?',
    options: [
      'BigQuery',
      'Cloud Bigtable',
      'Pub/Sub',
      'Cloud Spanner',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 28
  Question(
    id: 28,
    topic: 'Image Categorization with Machine Learning',
    question:
        'Your organization needs to categorize objects in a large group of static images using machine learning. Which Google Cloud product should your organization use?',
    options: [
      'BigQuery ML',
      'AutoML Video Intelligence',
      'Cloud Vision API',
      'AutoML Tables',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 29
  Question(
    id: 29,
    topic: 'Secure Access to Publicly Accessible Interfaces',
    question:
        'Your organization runs workloads on Compute Engine virtual machine instances with a security requirement: the VMs must not access the public internet. These workloads need to access BigQuery and Cloud Storage via publicly accessible interfaces without violating the security requirement. Which Google Cloud product should your organization use?',
    options: [
      'Identity-Aware Proxy',
      'Cloud NAT (network address translation)',
      'VPC internal load balancers',
      'Private Google Access',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 30
  Question(
    id: 30,
    topic: 'Handling Personally Identifiable Information (PII)',
    question:
        'Which Google Cloud product is designed to reduce the risks of handling personally identifiable information (PII)?',
    options: [
      'Cloud Storage',
      'Google Cloud Armor',
      'Cloud Data Loss Prevention',
      'Secret Manager',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 31
  Question(
    id: 31,
    topic: 'Data Migration to Cloud Storage',
    question:
        'Your organization is migrating to Google Cloud and needs to move terabytes of data from on-premises file servers to Cloud Storage. The migration should be automated, managed by Google, and use an existing Dedicated Interconnect connection. Which Google Cloud product should your organization use?',
    options: [
      'Storage Transfer Service',
      'Migrate for Anthos',
      'BigQuery Data Transfer Service',
      'Transfer Appliance',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 32
  Question(
    id: 32,
    topic: 'Data Analytics Warehouse',
    question:
        'Your organization needs to analyze data to gather insights into daily operations, paying only for the data stored and queries performed. Which Google Cloud product should your organization choose?',
    options: [
      'Cloud SQL',
      'Dataproc',
      'Cloud Spanner',
      'BigQuery',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 33
  Question(
    id: 33,
    topic: 'Container-Based Applications',
    question:
        'Your organization wants to run a container-based application on Google Cloud with increasing complexity. You require fine-grained control of traffic between containers and over the application’s scaling policies. What Google Cloud product should your organization use?',
    options: [
      'Google Kubernetes Engine cluster',
      'App Engine',
      'Cloud Run',
      'Compute Engine virtual machines',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 34
  Question(
    id: 34,
    topic: 'Security and Compliance Recommendations',
    question:
        'Which Google Cloud product makes specific recommendations based on security risks and compliance violations?',
    options: [
      'Google Cloud firewalls',
      'Security Command Center',
      'Cloud Deployment Manager',
      'Google Cloud Armor',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 35
  Question(
    id: 35,
    topic: 'Multi-Cloud Application Deployments',
    question:
        'Which Google Cloud product provides a consistent platform for multi-cloud application deployments and extends other Google Cloud services to your organization’s environment?',
    options: [
      'Google Kubernetes Engine',
      'Virtual Public Cloud',
      'Compute Engine',
      'Anthos',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 36
  Question(
    id: 36,
    topic: 'Global Payment Application Database',
    question:
        'Your organization is developing an application to manage payments and online bank accounts worldwide. The database’s critical requirement is to handle each transaction consistently while anticipating unlimited data growth. Which Google Cloud product should your organization choose?',
    options: [
      'Cloud SQL',
      'Cloud Storage',
      'Firestore',
      'Cloud Spanner',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 37
  Question(
    id: 37,
    topic: 'Economical Data Storage',
    question:
        'Your organization wants an economical solution to store data such as files, graphical images, and videos, and to access and share them securely. Which Google Cloud product should your organization use?',
    options: [
      'Cloud Storage',
      'Cloud SQL',
      'Cloud Spanner',
      'BigQuery',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 38
  Question(
    id: 38,
    topic: 'Machine Learning with Database Skills',
    question:
        'Your organization wants to predict visitor behavior on its public website by building a machine learning model. Your team has database-related skills but only basic machine learning knowledge. Which Google Cloud product should your organization choose?',
    options: [
      'BigQuery ML',
      'LookML',
      'TensorFlow',
      'Cloud SQL',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 39
  Question(
    id: 39,
    topic: 'Restricting Access to Cloud Storage Bucket',
    question:
        'Your organization needs to restrict access to a Cloud Storage bucket so only employees based in Canada can view its contents. What is the most effective and efficient way to satisfy this requirement?',
    options: [
      'Deploy the Cloud Storage bucket to a Google Cloud region in Canada',
      'Configure Google Cloud Armor to allow access only from IP addresses based in Canada',
      'Give each employee based in Canada access to the bucket',
      'Create a group consisting of all Canada-based employees and give the group access to the bucket',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 40
  Question(
    id: 40,
    topic: 'Database Migration to Cloud SQL',
    question:
        'Your organization is moving an application to Google Cloud and needs to migrate its working database, running on the MySQL engine, from another cloud provider to Cloud SQL. The migration must minimize disruption to users, and data must be secured in transit. What should your organization use?',
    options: [
      'BigQuery Data Transfer Service',
      'MySQL batch insert',
      'Database Migration Service',
      'Cloud Composer',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 41
  Question(
    id: 41,
    topic: 'Isolating Development and Production Workloads',
    question:
        'Your organization is developing and deploying an application on Google Cloud, and you want to keep tracking spending simple. How can you ensure that development workloads are fully isolated from production workloads?',
    options: [
      'Apply a unique tag to development resources',
      'Associate the development resources with their own network',
      'Associate the development resources with their own billing account',
      'Put the development resources in their own project',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 42
  Question(
    id: 42,
    topic: 'Modernizing Workloads with Cloud-Native Technologies',
    question:
        'Your company runs workloads in a co-located data center on virtual machines using Linux or Windows. To modernize these workloads, you want to adopt cloud-native technologies and migrate to Google Cloud. What should you do?',
    options: [
      'Export the VMs into VMDK format, and import them into Compute Engine',
      'Export the VMs into VMDK format, and import them into Google Cloud VMware Engine',
      'Migrate the workloads using Migrate for Compute Engine',
      'Migrate the workloads using Migrate for Anthos',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 43
  Question(
    id: 43,
    topic: 'Moving Workloads to Google Cloud with Minimal Changes',
    question:
        'Your organization runs workloads in a private cloud on a hypervisor and wants to move to Google Cloud quickly with minimal changes while using managed services. What should your organization do?',
    options: [
      'Migrate the workloads to Google Cloud VMware Engine',
      'Migrate the workloads to Compute Engine',
      'Migrate the workloads to Bare Metal Solution',
      'Migrate the workloads to Google Kubernetes Engine',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 44
  Question(
    id: 44,
    topic: 'Setting Up Support for Critical Applications',
    question:
        'Your organization is releasing its first critical public application in Google Cloud, which requires a 2-hour SLA. How should your organization set up support to minimize costs?',
    options: [
      'Enroll in Premium Support',
      'Enroll in Enhanced Support',
      'Enroll in Standard Support',
      'Enroll in Basic Support',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 45
  Question(
    id: 45,
    topic: 'User Identity and Access Management',
    question:
        'Your organization offers public mobile apps and websites. You want to migrate to a Google Cloud-based solution for managing usernames, passwords, and access control based on identity. What should your organization choose?',
    options: [
      'VPN tunnels',
      'Identity Platform',
      'Compute Engine firewall rules',
      'Private Google Access',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 46
  Question(
    id: 46,
    topic: 'Building Machine Learning Models with SQL',
    question:
        'Which Google Cloud service or feature lets you build machine learning models using Standard SQL and data in a data warehouse?',
    options: [
      'BigQuery ML',
      'TensorFlow',
      'AutoML Tables',
      'Cloud Bigtable ML',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 47
  Question(
    id: 47,
    topic: 'Cost Control for Image Processing Workload',
    question:
        'Your organization runs an image processing application on virtual machines in Google Cloud. The workload stays at a baseline level but regularly spikes. It takes hours to process each image. How can your organization control costs for this application?',
    options: [
      'Purchase committed use discounts for the baseline load',
      'Purchase committed use discounts for the expected spike load',
      'Leverage sustained use discounts for your virtual machines',
      'Run the workload on preemptible VM instances',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 48
  Question(
    id: 48,
    topic: 'Best Practices for Initial Google Cloud Configuration',
    question:
        'Your organization is developing a plan for migrating to Google Cloud. What is a best practice when initially configuring your Google Cloud environment?',
    options: [
      'Create a project via Google Cloud Console per department in your company',
      'Define your resource hierarchy with an organization node on top',
      'Create projects based on team members’ requests',
      'Make every member of your company the project owner',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 49
  Question(
    id: 49,
    topic: 'Cost Optimization Across Projects',
    question:
        'Your organization runs workloads in different Google Cloud projects, all linked to the same billing account. Workload costs vary, but the combined cost is stable. How can your organization optimize costs?',
    options: [
      'Purchase a commitment per project for each project’s usual minimum',
      'Create a billing account per project, and link each project to a different billing account',
      'Turn on committed use discount sharing, and create a commitment for the combined usage',
      'Move all workloads from all different projects into one single consolidated project',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 50
  Question(
    id: 50,
    topic: 'Compliance with Security and Privacy Regulations',
    question:
        'How should a multinational organization migrating to Google Cloud consider security and privacy regulations to ensure compliance with global standards?',
    options: [
      'Comply with data security and privacy regulations in each geographical region',
      'Comply with regional standards for data security and privacy, because they supersede all international regulations',
      'Comply with international standards for data security and privacy, because they supersede all regional regulations',
      'Comply with regional data security regulations, because they’re more complex than privacy standards',
    ],
    correctAnswerIndex: 0,
  ),
];