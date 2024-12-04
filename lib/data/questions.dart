import '../models/question.dart';

List<Question> allQuestions = [
  // Question 1
  Question(
    id: 1,
    topic: 'Cloud Migration',
    question:
        'An organization decides to migrate their on-premises environment to the cloud. They need to determine which resource components still need to be assigned ownership. Which two functions does a public cloud provider own? (Choose two.)',
    options: [
      'Hardware capacity management',
      'Hardware maintenance',
      'Fixing application security issues',
      'Infrastructure deployment automation',
      'Infrastructure architecture',
    ],
    correctAnswerIndex: 0,
    secondCorrectAnswerIndex: 1,
  ),
  // Question 2
  Question(
    id: 2,
    topic: 'Cloud Run Deployment',
    question:
        'Your company\'s development team is building an application that will be deployed on Cloud Run. You are designing a CI/CD pipeline so that any new version of the application can be deployed in the fewest number of steps possible using the CI/CD pipeline you are designing. You need to select a storage location for the images of the application after the CI part of your pipeline has built them. What should you do?',
    options: [
      'Store the images in Cloud Storage',
      'Create a Compute Engine image containing the application',
      'Store the images in Container Registry',
      'Create a Compute Engine disk containing the application',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 3
  Question(
    id: 3,
    topic: 'Storage',
    question: 'What is the difference between Standard and Coldline storage?',
    options: [
      'Standard and Coldline storage use different APIs.',
      'Coldline storage is for infrequently accessed data.',
      'Standard and Coldline storage have different durability guarantees.',
      'Coldline storage is for data for which a slow transfer rate is acceptable.',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 4
  Question(
    id: 4,
    topic: 'Machine Learning',
    question:
        'Your organization needs to categorize objects in a large group of static images using machine learning. Which Google Cloud product or service should your organization use?',
    options: [
      'AutoML Video Intelligence',
      'BigQuery ML',
      'Cloud Vision API',
      'AutoML Tables',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 5
  Question(
    id: 5,
    topic: 'Virtual Machines',
    question:
        'Your manager wants to restrict communication of all virtual machines with internet access; with resources in another network; or with a resource outside Compute Engine. It is expected that different teams will create new folders and projects in the near future. How would you restrict all virtual machines from having an external IP address?',
    options: [
      'Communicate with the different teams and agree that each time a virtual machine is created, it must be configured without an external IP address',
      'Define an organization policy on all existing projects to restrict virtual machine instances from having an external IP address',
      'Define an organization policy at the root organization node to restrict virtual machine instances from having an external IP address',
      'Define an organization policy on all existing folders to define a constraint to restrict virtual machine instances from having an external IP address',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 6
  Question(
    id: 6,
    topic: 'Cost Optimization',
    question:
        'Your organization runs many workloads in different Google Cloud projects, each linked to the same billing account. Each project\'s workload costs can vary from month to month, but the overall combined cost of all projects is relatively stable. Your organization needs to optimize its cost. What should your organization do?',
    options: [
      'Move all workloads from all different projects into one single consolidated project',
      'Turn on committed use discount sharing, and create a commitment for the combined usage',
      'Purchase a commitment per project for each project\'s usual minimum',
      'Create a billing account per project, and link each project to a different billing account',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 7
  Question(
    id: 7,
    topic: 'Support Setup',
    question:
        'Your organization is releasing its first publicly available application in Google Cloud. The application is critical to your business and customers and requires a 2-hour SLA. How should your organization set up support to minimize costs?',
    options: [
      'Enroll in Standard Support',
      'Enroll in Premium Support',
      'Enroll in Basic Support',
      'Enroll in Enhanced Support',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 8
  Question(
    id: 8,
    topic: 'Cloud Environment Setup',
    question:
        'Your organization is developing a plan for migrating to Google Cloud. What is a best practice when initially configuring your Google Cloud environment?',
    options: [
      'Define your resource hierarchy with an organization node on top',
      'Create a project via Google Cloud Console per department in your company',
      'Make every member of your company the project owner',
      'Create projects based on team members\' requests',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 9
  Question(
    id: 9,
    topic: 'User Authentication',
    question:
        'Your organization uses Active Directory to authenticate users. Users\' Google account access must be removed when their Active Directory account is terminated. How should your organization meet this requirement?',
    options: [
      'Configure single sign-on in the Google domain',
      'Configure two-factor authentication in the Google domain',
      'Remove the Google account from all IAM policies',
      'Configure BeyondCorp and Identity-Aware Proxy in the Google domain',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 10
  Question(
    id: 10,
    topic: 'Identity Management',
    question:
        'Your organization offers public mobile apps and websites. You want to migrate to a Google Cloud-based solution for checking and maintaining your users\' usernames and passwords and controlling their access to different resources based on their identity. Which should your organization choose?',
    options: [
      'Identity Platform',
      'VPN tunnels',
      'Private Google Access',
      'Compute Engine firewall rules',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 11
  Question(
    id: 11,
    topic: 'Compute Engine',
    question:
        'Your organization runs a distributed application in the Compute Engine virtual machines. Your organization needs redundancy, but it also needs extremely fast communication (less than 10 milliseconds) between the parts of the application in different virtual machines. Where should your organization locate this virtual machines?',
    options: [
      'In multiple regions, using multiple zones per region',
      'In a single zone within a single region',
      'In multiple regions, using one zone per region',
      'In different zones within a single region',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 12
  Question(
    id: 12,
    topic: 'Compliance',
    question:
        'Which Google Cloud product can report on and maintain compliance on your entire Google Cloud organization to cover multiple projects?',
    options: [
      'Security Command Center',
      'Google Cloud Armor',
      'Cloud Logging',
      'Identity and Access Management',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 13
  Question(
    id: 13,
    topic: 'Cloud Storage',
    question:
        'Your organization wants an economical solution to store data such as files, graphical images, and videos and to access and share them securely. Which Google Cloud product or service should your organization use?',
    options: [
      'Cloud SQL',
      'Cloud Storage',
      'Cloud Spanner',
      'BigQuery',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 14
  Question(
    id: 14,
    topic: 'Security',
    question:
        'Which Google Cloud product or feature makes specific recommendations based on security risks and compliance violations?',
    options: [
      'Security Command Center',
      'Google Cloud firewalls',
      'Google Cloud Armor',
      'Cloud Deployment Manager',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 15
  Question(
    id: 15,
    topic: 'Multi-Cloud',
    question:
        'Which Google Cloud product provides a consistent platform for multi-cloud application deployments and extends other Google Cloud services to your organization\'s environment?',
    options: [
      'Google Kubernetes Engine',
      'Compute Engine',
      'Anthos',
      'Virtual Public Cloud',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 16
  Question(
    id: 16,
    topic: 'Network Access',
    question:
        'Your organization runs all its workloads on Compute Engine virtual machine instances. Your organization has a security requirement: the virtual machines are not allowed to access the public internet. The workloads running on those virtual machines need to access BigQuery and Cloud Storage, using their publicly accessible interfaces, without violating the security requirement. Which Google Cloud product or feature should your organization use?',
    options: [
      'Private Google Access',
      'Cloud NAT (network address translation)',
      'VPC internal load balancers',
      'Identity-Aware Proxy',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 17
  Question(
    id: 17,
    topic: 'Database',
    question:
        'Your organization is developing an application that will capture a large amount of data from millions of different sensor devices spread all around the world. Your organization needs a database that is suitable for worldwide, high-speed data storage of a large amount of unstructured data. Which Google Cloud product should your organization choose?',
    options: [
      'Firestore',
      'Cloud Data Fusion',
      'Cloud Bigtable',
      'Cloud SQL',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 18
  Question(
    id: 18,
    topic: 'Data Loss Prevention',
    question:
        'Which Google Cloud product is designed to reduce the risks of handling personally identifiable information (PII)?',
    options: [
      'Google Cloud Armor',
      'Secret Manager',
      'Cloud Storage',
      'Cloud Data Loss Prevention',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 19
  Question(
    id: 19,
    topic: 'Machine Learning',
    question:
        'Your organization wants to predict the behavior of visitors to its public website. To do that, you have decided to build a machine learning model. Your team has database-related skills but only basic machine learning skills, and would like to use those database skills. Which Google Cloud product or feature should your organization choose?',
    options: [
      'BigQuery ML',
      'Cloud SQL',
      'TensorFlow',
      'LookML',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 20
  Question(
    id: 20,
    topic: 'Cloud Migration',
    question:
        'Your organization is running all its workloads in a private cloud on top of a hypervisor. Your organization has decided it wants to move to Google Cloud as quickly as possible. Your organization wants minimal changes to the current environment, while using the maximum amount of managed services Google offers. What should your organization do?',
    options: [
      'Migrate the workloads to Compute Engine',
      'Migrate the workloads to Google Kubernetes Engine',
      'Migrate the workloads to Google Cloud VMware Engine',
      'Migrate the workloads to Bare Metal Solution',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 21
  Question(
    id: 21,
    topic: 'Network Connectivity',
    question:
        'Your organization needs to establish private network connectivity between its on-premises network and its workloads running in Google Cloud. You need to be able to set up the connection as soon as possible. Which Google Cloud product or feature should you use?',
    options: [
      'Direct Peering',
      'Cloud Interconnect',
      'Cloud VPN',
      'Cloud CDN',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 22
  Question(
    id: 22,
    topic: 'Streaming Data Pipelines',
    question:
        'Your organization needs to build streaming data pipelines. You don\'t want to manage the individual servers that do the data processing in the pipelines. Instead, you want a managed service that will automatically scale with the amount of data to be processed. Which Google Cloud product or feature should your organization choose?',
    options: [
      'Data Catalog',
      'Dataflow',
      'Pub/Sub',
      'Dataprep by Trifacta',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 23
  Question(
    id: 23,
    topic: 'Data Migration',
    question:
        'Your organization is migrating to Google Cloud. As part of that effort, it needs to move terabytes of data from on-premises file servers to Cloud Storage. Your organization wants the migration process to be automated and to be managed by Google. Your organization has an existing Dedicated Interconnect connection that it wants to use. Which Google Cloud product or feature should your organization use?',
    options: [
      'BigQuery Data Transfer Service',
      'Transfer Appliance',
      'Storage Transfer Service',
      'Migrate for Anthos',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 24
  Question(
    id: 24,
    topic: 'Database Migration',
    question:
        'Your organization is moving an application to Google Cloud. As part of that effort, it needs to migrate the application\'s working database from another cloud provider to Cloud SQL. The database runs on the MySQL engine. The migration must cause minimal disruption to users. Data must be secured while in transit. Which should your organization use?',
    options: [
      'Database Migration Service',
      'Cloud Composer',
      'BigQuery Data Transfer Service',
      'MySQL batch insert',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 25
  Question(
    id: 25,
    topic: 'Cost Management',
    question:
        'Your organization runs an application on virtual machines in Google Cloud. This application processes incoming images. This activity takes hours to create a result for each image. The workload for this application normally stays at a certain baseline level, but at regular intervals it spikes to a much greater workload. Your organization needs to control the cost to run this application. What should your organization do?',
    options: [
      'Purchase committed use discounts for the baseline load',
      'Run the workload on preemptible VM instances',
      'Purchase committed use discounts for the expected spike load',
      'Leverage sustained use discounts for your virtual machines',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 26
  Question(
    id: 26,
    topic: 'Custom Images',
    question:
        'Your company has been using a shared facility for data storage and will be migrating to Google Cloud. One of the internal applications uses Linux custom images that need to be migrated. Which Google Cloud product should you use to maintain the custom images?',
    options: [
      'Compute Engine',
      'Google Kubernetes Engine',
      'App Engine standard environment',
      'App Engine flexible environment',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 27
  Question(
    id: 27,
    topic: 'Data Management',
    question:
        'Your organization wants to migrate its data management solutions to Google Cloud because it needs to dynamically scale up or down and to run transactional SQL queries against historical data at scale. Which Google Cloud product or service should your organization use?',
    options: [
      'BigQuery',
      'Cloud Spanner',
      'Pub/Sub',
      'Cloud Bigtable',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 28
  Question(
    id: 28,
    topic: 'Infrastructure Management',
    question:
        'Your company has recently acquired three growing startups in three different countries. You want to reduce overhead in infrastructure management and keep your costs low without sacrificing security and quality of service to your customers. How should you meet these requirements?',
    options: [
      'Host all your subsidiaries\' services on-premises together with your existing services.',
      'Host all your subsidiaries\' services together with your existing services on the public cloud.',
      'Build a homogenous infrastructure at each subsidiary, and invest in hiring more engineers.',
      'Build a homogenous infrastructure at each subsidiary, and invest in training their engineers.',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 29
  Question(
    id: 29,
    topic: 'License Optimization',
    question:
        'You are currently managing workloads running on Windows Server for which your company owns the licenses. Your workloads are only needed during working hours, which allows you to shut down the instances during the weekend. Your Windows Server licenses are up for renewal in a month, and you want to optimize your license cost. What should you do?',
    options: [
      'Renew your licenses for an additional period of 3 years. Negotiate a cost reduction with your current hosting provider wherein infrastructure cost is reduced when workloads are not in use',
      'Migrate the workloads to Compute Engine with a bring-your-own-license (BYOL) model',
      'Renew your licenses for an additional period of 2 years. Negotiate a cost reduction by committing to an automatic renewal of the licenses at the end of the 2 year period',
      'Migrate the workloads to Compute Engine with a pay-as-you-go (PAYG) model',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 30
  Question(
    id: 30,
    topic: 'Infrastructure Management',
    question:
        'Your multinational organization has servers running mission-critical workloads on its premises around the world. You want to be able to manage these workloads consistently and centrally, and you want to stop managing infrastructure. What should your organization do?',
    options: [
      'Migrate the workloads to a central office building',
      'Migrate the workloads to multiple local co-location facilities',
      'Migrate the workloads to a public cloud',
      'Migrate the workloads to multiple local private clouds',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 31
  Question(
    id: 31,
    topic: 'Service Models',
    question:
        'Each of the three cloud service models - infrastructure as a service (IaaS), platform as a service (PaaS), and software as a service (SaaS) - offers benefits between flexibility and levels of management by the cloud provider and the customer. Why would SaaS be the right choice of service model?',
    options: [
      'You want to be able to shift your emphasis between flexibility and management by the cloud provider as business needs change',
      'You want to maximize flexibility for the customer.',
      'You want a balance between flexibility for the customer and the level of management by the cloud provider',
      'You want to minimize the level of management by the customer',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 32
  Question(
    id: 32,
    topic: 'Cloud Infrastructure',
    question:
        'Your organization needs to plan its cloud infrastructure expenditures. Which should your organization do?',
    options: [
      'If your organization uses only cloud resources, infrastructure costs are no longer part of your overall budget',
      'Review cloud resource costs annually as part of planning your organization\'s overall budget',
      'Involve fewer people in cloud resource planning than your organization did for on-premises resource planning',
      'Review cloud resource costs frequently, because costs change often based on use',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 33
  Question(
    id: 33,
    topic: 'Workload Migration',
    question:
        'Your company is running the majority of its workloads in a co-located data center. The workloads are running on virtual machines (VMs) on top of a hypervisor and use either Linux or Windows server editions. As part of your company\'s transformation strategy, you need to modernize workloads as much as possible by adopting cloud-native technologies. You need to migrate the workloads into Google Cloud. What should you do?',
    options: [
      'Export the VMs into VMDK format, and import them into Compute Engine',
      'Migrate the workloads using Migrate for Compute Engine',
      'Migrate the workloads using Migrate for Anthos',
      'Export the VMs into VMDK format, and import them into Google Cloud VMware Engine',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 34
  Question(
    id: 34,
    topic: 'Cloud Availability',
    question:
        'What would provide near-unlimited availability of computing resources without requiring your organization to procure and provision new equipment?',
    options: [
      'Microservices',
      'Public cloud',
      'Private cloud',
      'Containers',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 35
  Question(
    id: 35,
    topic: 'Container-Based Applications',
    question:
        'Your organization wants to run a container-based application on Google Cloud. This application is expected to increase in complexity. You have a security need for fine-grained control of traffic between the containers. You also have an operational need to exercise fine-grained control over the application\'s scaling policies. What Google Cloud product or feature should your organization use?',
    options: [
      'Cloud Run',
      'Google Kubernetes Engine cluster',
      'Compute Engine virtual machines',
      'App Engine',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 36
  Question(
    id: 36,
    topic: 'Sensitive Data',
    question:
        'Your organization stores highly sensitive data on-premises that cannot be sent over the public internet. The data must be processed both on-premises and in the cloud. What should your organization do?',
    options: [
      'Enable Private Google Access in your Google Cloud VPC network',
      'Configure Identity-Aware Proxy (IAP) in your Google Cloud VPC network',
      'Create a Cloud VPN tunnel between Google Cloud and your data center',
      'Order a Partner Interconnect connection with your network provider',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 37
  Question(
    id: 37,
    topic: 'Security Compliance',
    question:
        'How should a multinational organization that is migrating to Google Cloud consider security and privacy regulations to ensure that it is in compliance with global standards?',
    options: [
      'Comply with data security and privacy regulations in each geographical region',
      'Comply with regional standards for data security and privacy, because they supersede all international regulations',
      'Comply with regional data security regulations, because they\'re more complex than privacy standards',
      'Comply with international standards for data security and privacy, because they supersede all regional regulations',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 38
  Question(
    id: 38,
    topic: 'Build Automation',
    question:
        'Your organization is building an application running in Google Cloud. Currently, software builds, tests, and regular deployments are done manually, but you want to reduce work for the team. Your organization wants to use Google Cloud managed solutions to automate your build, testing, and deployment process. Which Google Cloud product or feature should your organization use?',
    options: [
      'Cloud Scheduler',
      'Cloud Code',
      'Cloud Build',
      'Cloud Deployment Manager',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 39
  Question(
    id: 39,
    topic: 'Workload Isolation',
    question:
        'Your organization is developing and deploying an application on Google Cloud. Tracking your Google Cloud spending needs to stay as simple as possible. What should you do to ensure that workloads in the development environment are fully isolated from production workloads?',
    options: [
      'Associate the development resources with their own network',
      'Associate the development resources with their own billing account',
      'Put the development resources in their own project',
      'Apply a unique tag to development resources',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 40
  Question(
    id: 40,
    topic: 'Data Location',
    question:
        'You are migrating workloads to the cloud. The goal of the migration is to serve customers worldwide as quickly as possible. According to local regulations, certain data is required to be stored in a specific geographic area, and it can be served worldwide. You need to design the architecture and deployment for your workloads. What should you do?',
    options: [
      'Select a public cloud provider that is only active in the required geographic area',
      'Select a public cloud provider that guarantees data location in the required geographic area',
      'Select a private cloud provider that globally replicates data storage for fast data access',
      'Select a private cloud provider that is only active in the required geographic area',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 41
  Question(
    id: 41,
    topic: 'Cloud Platform for Mobile Apps',
    question:
        'Your organization is developing a mobile app and wants to select a fully featured cloud-based compute platform for it. Which Google Cloud product or feature should your organization use?',
    options: [
      'Firebase',
      'App Engine',
      'Cloud Functions',
      'Google Kubernetes Engine',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 42
  Question(
    id: 42,
    topic: 'Data Analytics',
    question:
        'Your organization needs to analyze data in order to gather insights into its daily operations. You only want to pay for the data you store and the queries you perform. Which Google Cloud product should your organization choose for its data analytics warehouse?',
    options: [
      'Dataproc',
      'Cloud Spanner',
      'BigQuery',
      'Cloud SQL',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 43
  Question(
    id: 43,
    topic: 'Security Vulnerabilities',
    question:
        'The operating systems of some of your organization\'s virtual machines may have a security vulnerability. How can your organization most effectively identify all virtual machines that do not have the latest security update?',
    options: [
      'View the Security Command Center to identify virtual machines running vulnerable disk images',
      'View the Compliance Reports Manager to identify and download a recent SOC 1 audit',
      'View the Security Command Center to identify virtual machines started more than 2 weeks ago',
      'View the Compliance Reports Manager to identify and download a recent PCI audit',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 44
  Question(
    id: 44,
    topic: 'Cost Efficiency',
    question:
        'Your organization needs a large amount of extra computing power within the next two weeks. After those two weeks, the need for the additional resources will end. Which is the most cost-effective approach?',
    options: [
      'Use a committed use discount to reserve a very powerful virtual machine',
      'Purchase one very powerful physical computer',
      'Purchase multiple physical computers and scale workload across them',
      'Start a very powerful virtual machine without using a committed use discount',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 45
  Question(
    id: 45,
    topic: 'Cloud Cost Optimization',
    question:
        'You are a program manager within a Software as a Service (SaaS) company that offers rendering software for animation studios. Your team needs the ability to allow scenes to be scheduled at will and to be interrupted at any time to restart later. Any individual scene rendering takes less than 12 hours to complete, and there is no service-level agreement (SLA) for the completion time for all scenes. Results will be stored in a global Cloud Storage bucket. The compute resources are not bound to any single geographical location. This software needs to run on Google Cloud in a cost-optimized way. What should you do?',
    options: [
      'Start more instances with fewer virtual centralized processing units (vCPUs) instead of fewer instances with more vCPUs',
      'Deploy the application on Compute Engine using preemptible instances',
      'Develop the application so it can run in an unmanaged instance group',
      'Create a reservation for the minimum number of Compute Engine instances you will use',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 46
  Question(
    id: 46,
    topic: 'Event-Driven Application',
    question:
        'You are a program manager for a team of developers who are building an event-driven application to allow users to follow one another\'s activities in the app. Each time a user adds himself as a follower of another user, a write occurs in the real-time database. The developers will develop a lightweight piece of code that can respond to database writes and generate a notification to let the appropriate users know that they have gained new followers. The code should integrate with other cloud services such as Pub/Sub, Firebase, and Cloud APIs to streamline the orchestration process. The application requires a platform that automatically manages underlying infrastructure and scales to zero when there is no activity. Which primary compute resource should your developers select, given these requirements?',
    options: [
      'Cloud Functions',
      'Google Kubernetes Engine',
      'Compute Engine',
      'App Engine flexible environment',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 47
  Question(
    id: 47,
    topic: 'Database Consistency',
    question:
        'Your organization is developing an application that will manage payments and online bank accounts located around the world. The most critical requirement for your database is that each transaction is handled consistently. Your organization anticipates almost unlimited growth in the amount of data stored. Which Google Cloud product should your organization choose?',
    options: [
      'Cloud SQL',
      'Firestore',
      'Cloud Spanner',
      'Cloud Storage',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 48
  Question(
    id: 48,
    topic: 'Deployment Speed',
    question:
        'As your organization increases its release velocity, the VM-based application upgrades take a long time to perform rolling updates due to OS boot times. You need to make the application deployments faster. What should your organization do?',
    options: [
      'Convert your applications into containers',
      'Increase the resources of your VMs',
      'Automate your upgrade rollouts',
      'Migrate your VMs to the cloud, and add more resources to them',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 49
  Question(
    id: 49,
    topic: 'Machine Learning',
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
  // Question 50
  Question(
    id: 50,
    topic: 'Cloud Storage Access',
    question:
        'Your organization needs to restrict access to a Cloud Storage bucket. Only employees who are based in Canada should be allowed to view the contents. What is the most effective and efficient way to satisfy this requirement?',
    options: [
      'Deploy the Cloud Storage bucket to a Google Cloud region in Canada',
      'Configure Google Cloud Armor to allow access to the bucket only from IP addresses based in Canada',
      'Create a group consisting of all Canada-based employees, and give the group access to the bucket',
      'Give each employee who is based in Canada access to the bucket',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 51
  Question(
    id: 51,
    topic: 'Cloud Migration',
    question:
        'An organization is migrating their business applications from on-premises to the cloud. How could this impact their operations and personnel costs?',
    options: [
      'Reduced cloud software licensing costs',
      'Increased cloud hardware management costs',
      'Reduced on-premises infrastructure management costs',
      'Increased on-premises hardware maintenance costs',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 52
  Question(
    id: 52,
    topic: 'Cost Optimization',
    question:
        'Your organization wants to optimize its use of Google Cloud\'s discounts on virtual machine-based workloads. You plan to use 200 CPUs constantly for the next 3 years, and you forecast that spikes of up to 300 CPUs will occur approximately 30% of the time. What should you choose?',
    options: [
      '1-year committed use discount for 200 CPUs',
      'Regular pay-as-you-go pricing',
      '3-year committed use discount for 200 CPUs',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 53
  Question(
    id: 53,
    topic: 'Machine Learning',
    question:
        'An organization is training a machine learning model to predict extreme weather events in their country. How should they collect data to maximize prediction accuracy?',
    options: [
      'Collect all weather data primarily from at-risk cities',
      'Collect all weather data evenly across all cities',
      'Collect extreme weather data primarily from at-risk cities',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 54
  Question(
    id: 54,
    topic: 'Network Traffic',
    question:
        'Your organization needs to minimize how much it pays for data traffic from the Google network to the internet. What should your organization do?',
    options: [
      'Choose the Standard network service tier.',
      'Choose the Premium network service tier.',
      'Deploy Cloud VPN.',
      'Deploy Cloud NAT.',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 55
  Question(
    id: 55,
    topic: 'Predictive Suggestions',
    question:
        'An organization wants to use all available data to offer predictive suggestions on their website that improve over time. Which method should the organization use?',
    options: [
      'Machine learning',
      'Data automation',
      'Multiple regression',
      'Trends analysis',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 56
  Question(
    id: 56,
    topic: 'Cloud SQL and Business Insights',
    question: 'How does Cloud SQL help organizations create business insights?',
    options: [
      'Generates real-time charts and intelligent analytics',
      'Generates predictions using machine learning models',
      'Integrates with business intelligence and analytics platforms',
      'Transforms business data from unstructured to structured',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 57
  Question(
    id: 57,
    topic: 'Google Cloud Resource Segmentation',
    question:
        'Your company needs to segment Google Cloud resources used by each team from the others. The teams\' efforts are changing frequently, and you need to reduce operational risk and maintain cost visibility. Which approach does Google recommend?',
    options: [
      'One project per team.',
      'One organization per team.',
      'One top-level folder per team.',
      'One project that contains all of each team\'s resources.',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 58
  Question(
    id: 58,
    topic: 'Access Control',
    question:
        'Your company security team manages access control to production systems using an LDAP directory group. How is this access control managed in the Google Cloud production project?',
    options: [
      'Assign the proper role to the Google Group in the project\'s IAM Policy.',
      'Create the project in a folder with the same name as the LDAP directory group.',
      'Grant each user the roles/iam.serviceAccountUser role on a service account that exists in the Google Group.',
      'Assign the proper role to the Service Account in the project\'s IAM Policy.',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 59
  Question(
    id: 59,
    topic: 'Customer Review Categorization',
    question:
        'An organization needs to categorize text-based customer reviews on their website using a pre-trained machine learning model. Which Google Cloud product or service should the organization use?',
    options: [
      'Cloud Natural Language API',
      'TensorFlow',
      'Dialogflow',
      'Recommendations AI',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 60
  Question(
    id: 60,
    topic: 'DevOps Automation',
    question:
        'An organization wants to leverage tooling and automation as part of its new DevOps philosophy. Which operational challenge will this resolve?',
    options: [
      'Defective technical equipment that limits innovation',
      'Distribution and supply-chain issues',
      'Time-consuming supervision of creative tasks',
      'Repetitive manual tasks that hinder workflows',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 61
  Question(
    id: 61,
    topic: 'Unstructured Data from Social Media',
    question:
        'What is an example of unstructured data that organizations can capture from social media?',
    options: [
      'Profile picture',
      'Location',
      'Tagging',
      'Post comments',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 62
  Question(
    id: 62,
    topic: 'Source Code Search',
    question:
        'An organization needs to search an application\'s source code to identify a potential issue. The application is distributed across multiple containers. Which Google Cloud product should the organization use?',
    options: [
      'Cloud Logging',
      'Cloud Trace',
      'Google Cloud Console',
      'Cloud Monitoring',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 63
  Question(
    id: 63,
    topic: 'Private and Secure Network Access',
    question:
        'Your organization recently migrated its compute workloads to Google Cloud. You want these workloads in Google Cloud to privately and securely access your large volume of on-premises data, and you also want to minimize latency. What should your organization do?',
    options: [
      'Create a VPC between your on-premises data center and your Google resources',
      'Use Transfer Appliance to securely make your data available to Google Cloud',
      'Use Storage Transfer Service to securely make your data available to Google Cloud',
      'Peer your on-premises data center to Google\'s Edge Network',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 64
  Question(
    id: 64,
    topic: 'Cloud Database for Global Transactions',
    question:
        'A global organization is developing an application to manage payments and online bank accounts in multiple regions. Each transaction must be handled consistently in their database, and they anticipate almost unlimited growth in the amount of data stored. Which Google Cloud product should the organization choose?',
    options: [
      'BigQuery',
      'Cloud Storage',
      'Cloud Spanner',
      'Cloud SQL',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 65
  Question(
    id: 65,
    topic: 'Data Storage in Relational Database',
    question:
        'An e-commerce organization is reviewing their cloud data storage. What type of raw data can they store in a relational database without any processing?',
    options: [
      'Customer chat history',
      'Instructional videos',
      'Product photographs',
      'Product inventory',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 66
  Question(
    id: 66,
    topic: 'Cloud-Native Application Development',
    question:
        'An organization wants to develop an application that can be personalized to user preferences throughout the year. Why should they build a cloud-native application instead of modernizing their existing on-premises application?',
    options: [
      'IT managers can accelerate capital expenditure planning',
      'Developers can rely on the cloud provider for all source code',
      'Developers can launch new features in an agile way',
      'IT managers can migrate existing application architecture without needing updates',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 67
  Question(
    id: 67,
    topic: 'Data Hosting for Research',
    question:
        'Your team is publishing research results and needs to make large amounts of data available to other researchers within the professional community and the public at minimum cost. How should you host the data?',
    options: [
      'Host the data on-premises, and set up a Cloud Interconnect connection to allow access to the data.',
      'Use a Cloud Storage bucket and provide Signed URLs for the data files.',
      'Use a Cloud Storage bucket and enable "Requester Pays"',
      'Use a Cloud Storage bucket and set up a Cloud Interconnect connection to allow access to the data.',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 68
  Question(
    id: 68,
    topic: 'Public Cloud vs On-Premises Solution',
    question:
        'An organization wants to digitize and share large volumes of historical text and images. Why is a public cloud a better option than an on-premises solution?',
    options: [
      'Cost-effective at scale',
      'In-house hardware management',
      'Optimizes capital expenditure',
      'Provides physical encryption key',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 69
  Question(
    id: 69,
    topic: 'Scaling On-Premises Infrastructure',
    question:
        'Why do organizations often struggle to scale their on-premises application infrastructure?',
    options: [
      'Increasing compute capacity is time-consuming and costly',
      'Scaling compute instances could breach compliance and/or regulation',
      'Their multi-cloud architecture is complex and expensive',
      'Their serverless compute functions struggle to meet the demand',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 70
  Question(
    id: 70,
    topic: 'Committed Use Discount Issue',
    question:
        'Your organization meant to purchase a 3-year Committed Use Discount, but accidentally purchased a 1-year Committed Use Discount instead. What should your organization do?',
    options: [
      'Contact your financial institution.',
      'Contact Technical Support.',
      'Contact Cloud Billing Support.',
      'Contact Trust and Safety.',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 71
  Question(
    id: 71,
    topic: 'Data Breach Preparation',
    question:
        'An organization operates their entire IT infrastructure from Google Cloud. What should they do to prepare for data breaches?',
    options: [
      'Create an incident plan to mitigate impacts',
      'Reduce reliance on multi-factor authentication',
      'Strengthen their data center perimeter security',
      'Data security is Google\'s responsibility, so preparation is minimal',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 72
  Question(
    id: 72,
    topic: 'Bug Handling in SRE',
    question:
        'After rolling out a new update, an organization found a minor bug in its online video game. How should the organization approach this bug while following SRE principles?',
    options: [
      'Accept and ignore the bug because it is only minor',
      'Document bug correction to eliminate all future bugs',
      'Accept and learn from the bug because failure is normal',
      'Hold a postmortem to reprimand the employee responsible for the bug',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 73
  Question(
    id: 73,
    topic: 'Extending Customer Support Hours',
    question:
        'An organization is making a strategic change to customer support in response to feedback. They plan to extend their helpline availability hours. Why is the organization making this change?',
    options: [
      'Users expect professional expertise',
      'Users expect always-on services',
      'Users require regional access',
      'Users require personalization',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 74
  Question(
    id: 74,
    topic: 'Migration to Cloud',
    question:
        'An organization wants to migrate legacy applications currently hosted in their data center to the cloud. The current architecture dictates that each application needs its own operating system (OS) instead of sharing an OS. Which infrastructure solution should they choose?',
    options: [
      'Open source',
      'Serverless computing',
      'Virtual machines',
      'Containers',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 75
  Question(
    id: 75,
    topic: 'Benefits of Cloud for Hotel Chains',
    question:
        'How does a large hotel chain benefit from storing their customer reservation data in the cloud?',
    options: [
      'Real-time business transaction accuracy at scale',
      'Physical hardware access during peak demand',
      'Real-time data transformation at scale within an on-premises database',
      'On-premises hardware access to transaction data',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 76
  Question(
    id: 76,
    topic: 'Hypervisor Technology',
    question:
        'Which technology allows organizations to run multiple computer operating systems on a single piece of physical hardware?',
    options: [
      'Serverless computing',
      'Hypervisor',
      'Containers',
      'Open source',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 77
  Question(
    id: 77,
    topic: 'Multi-Cloud Benefits',
    question:
        'An organization has servers running mission-critical workloads on-premises around the world. They want to modernize their infrastructure with a multi-cloud architecture. What benefit could the organization experience?',
    options: [
      'Reduced likelihood of system failure during high demand events',
      'Ability to disable regional network connectivity during cyber attacks',
      'Full management access to their regional infrastructure',
      'Ability to keep backups of their data on-premises in case of failure',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 78
  Question(
    id: 78,
    topic: 'API Management',
    question:
        'An organization wants to use Apigee to manage all their application programming interfaces (APIs). What will Apigee enable the organization to do?',
    options: [
      'Analyze application development speed',
      'Measure and track API performance',
      'Increase application privacy',
      'Market and sell APIs',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 79
  Question(
    id: 79,
    topic: 'Resource Segmentation',
    question:
        'Your organization needs to ensure that the Google Cloud resources of each of your departments are segregated from one another. Each department has several environments of its own: development, testing, and production. Which strategy should your organization choose?',
    options: [
      'Create a folder per department, and create a project per environment in each folder.',
      'Create a Cloud Identity domain per department, and create a project per environment in each domain.',
      'Create a Cloud Identity domain per environment, and create a project per department in each domain.',
      'Create a project per department, and create a folder per environment in each project.',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 80
  Question(
    id: 80,
    topic: 'API Integration in Retail',
    question:
        'A retail company stores their product inventory in a legacy system. Often, customers find products on the company\'s website and want to purchase them in-store. However, when they arrive, they discover that the products are out of stock. How could the company benefit from using an application programming interface (API)?',
    options: [
      'By manually linking each inventory system to the website on a case-by-case basis',
      'To create personalized product recommendations for customers',
      'By programmatically connecting the inventory system to their website',
      'To optimize their on-premises legacy system stability',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 81
  Question(
    id: 81,
    topic: 'Open-Source Machine Learning Platform',
    question:
        'An organization is searching for an open-source machine learning platform to build and deploy their own custom machine learning applications using TPUs. Which Google Cloud product or service should the organization use?',
    options: [
      'TensorFlow',
      'AutoML Vision',
      'Vision API',
      'BigQuery ML',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 82
  Question(
    id: 82,
    topic: 'API Usage in Modernization',
    question:
        'A hotel wants to modernize their legacy systems so that customers can make reservations through a mobile app. What\'s the benefit of using an application programming interface (API) to do this?',
    options: [
      'They do not have to develop the end-user application',
      'They do not have to rewrite the legacy system',
      'They can deprecate their legacy systems',
      'They can transform their systems to be cloud-native',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 83
  Question(
    id: 83,
    topic: 'Google Kubernetes Engine (GKE)',
    question:
        'An organization needs to run frequent updates for their business app. Why should the organization use Google Kubernetes Engine (GKE)?',
    options: [
      'Seamless changes can be made without causing any application downtime.',
      'GKE handles version control seamlessly and out of the box',
      'GKE is well suited for all monolithic applications',
      'Customer expectations can be adjusted without using marketing tools',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 84
  Question(
    id: 84,
    topic: 'Cloud Migration for Containers and VMs',
    question:
        'Your organization wants to migrate your on-premises environment to Google Cloud. The on-premises environment consists of containers and virtual machine instances. Which Google Cloud products can help to migrate the container images and the virtual machine disks?',
    options: [
      'Dataflow and BigQuery',
      'Artifact Registry and Cloud Storage',
      'Compute Engine and Filestore',
      'Pub/Sub and Cloud Storage',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 85
  Question(
    id: 85,
    topic: 'Data Processing',
    question:
        'Your organization needs to process large amounts of data from an online application that operates continuously. You do not want to be required to provision infrastructure or create server clusters. What should your organization choose?',
    options: [
      'Dataflow',
      'Dataproc',
      'Compute Engine with BigQuery',
      'Google Kubernetes Engine with Cloud Bigtable',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 86
  Question(
    id: 86,
    topic: 'Mislabeled Data in Machine Learning',
    question:
        'An organization is using machine learning to make predictions. One of their datasets mistakenly includes mislabeled data. How will the prediction be impacted?',
    options: [
      'Increased risk of inaccuracy',
      'Decreased model training time',
      'Decreased model compatibility',
      'Increased risk of privacy leaks',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 87
  Question(
    id: 87,
    topic: 'Identity and Access Management',
    question:
        'Your organization consists of many teams. Each team has many Google Cloud projects. Your organization wants to simplify the management of identity and access policies for these projects. How can you group these projects to meet this goal?',
    options: [
      'Group each team\'s projects into a separate organization node',
      'Assign labels based on the virtual machines that are part of each team\'s projects',
      'Use folders to group each team\'s projects',
      'Group each team\'s projects into a separate domain',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 88
  Question(
    id: 88,
    topic: 'Data Analytics Environment',
    question:
        'An organization wants to use BigQuery data analytics to understand their website performance, but wants to move only some data into the cloud. Which environment should the organization use?',
    options: [
      'Private cloud',
      'Multi-cloud',
      'Hybrid cloud',
      'On-premises',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 89
  Question(
    id: 89,
    topic: 'Resource Hierarchy for Cloud Projects',
    question:
        'Your organization is defining the resource hierarchy for its new application in Google Cloud. You need separate development and production environments. The production environment will be deployed in Compute Engine in two regions. Which structure should your organization choose?',
    options: [
      'Create one project for the development environment and one project for the production environment.',
      'Create a single project for all environments. Use labels to segregate resources by environment.',
      'Create two projects for the development environment and two projects for the production environment (one for each region).',
      'Create a single project for all environments. Use tags to segregate resources by environment.',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 90
  Question(
    id: 90,
    topic: 'Logging in Cloud Technology',
    question: 'What is logging within the context of cloud technology?',
    options: [
      'Recording infrastructure and hardware expenditure',
      'Tracking source code across an organization',
      'Writing application and operating system events as text',
      'Monitoring network and resource limitations',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 91
  Question(
    id: 91,
    topic: 'Cloud Data Warehouse Use',
    question:
        'An organization recently launched a virtual customer support agent, generating vast amounts of text and speech data. Why should they use a cloud data warehouse to interpret this data?',
    options: [
      'To natively visualize both types of data using a dashboard in real time',
      'To secure data transmission between cloud and on-premises environments',
      'To transform data from structured to unstructured',
      'To ingest and analyze structured and unstructured data at scale, in real time',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 92
  Question(
    id: 92,
    topic: 'Migration Tools',
    question:
        'How do Migrate for Compute Engine and Migrate for Anthos differ?',
    options: [
      'Migrate for Anthos migrates to containers, and Migrate for Compute Engine migrates to virtual machines.',
      'Migrate for Compute Engine is closed source, and Migrate for Anthos is open source.',
      'Unlike Migrate for Anthos, Migrate for Compute Engine assumes that the migration source is VMware vSphere.',
      'Migrate for Compute Engine charges for ingress, but Migrate for Anthos does not.',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 93
  Question(
    id: 93,
    topic: 'User Provisioning',
    question:
        'Your large and frequently changing organization\'s user information is stored in an on-premises LDAP database. The database includes user passwords and group and organization membership. How should your organization provision Google accounts and groups to access Google Cloud resources?',
    options: [
      'Use the Firebase Authentication REST API to create users',
      'Use the Identity Platform REST API to create users',
      'Use Google Cloud Directory Sync to create users',
      'Replicate the LDAP infrastructure on Compute Engine',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 94
  Question(
    id: 94,
    topic: 'Infrastructure for Application',
    question:
        'An organization wants to add a new function to their application. They want to write the code and let the public cloud provider handle the infrastructure. Which infrastructure solution should they use?',
    options: [
      'Virtual machines',
      'Bare Metal Solution',
      'Serverless computing',
      'Container Registry',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 95
  Question(
    id: 95,
    topic: 'IAM Policy for BigQuery',
    question:
        'Your organization needs to allow a production job to have access to a BigQuery dataset. The production job is running on a Compute Engine instance that is part of an instance group. What should be included in the IAM Policy on the BigQuery dataset?',
    options: [
      'The Compute Engine instance',
      'The Compute Engine instance group',
      'The Compute Engine service account',
      'The project that owns the Compute Engine instance',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 96
  Question(
    id: 96,
    topic: 'Cloud Expenditure Control',
    question:
        'An organization is planning its cloud expenditure. What should the organization do to control costs?',
    options: [
      'Assess cloud resources costs only when SLO is not met by their cloud provider.',
      'Review cloud resource costs frequently because costs depend on usage.',
      'Consider cloud resource costs as capital expenditure in annual planning.',
      'Use only cloud resources; they have no cloud infrastructure costs.',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 97
  Question(
    id: 97,
    topic: 'Cloud Data Storage System',
    question:
        'An organization wants to transform multiple types of structured and unstructured data in the cloud from various sources. The data must be readily accessible for analysis and insights. Which cloud data storage system should the organization use?',
    options: [
      'Private data center',
      'Relational database',
      'Data warehouse',
      'Data field',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 98
  Question(
    id: 98,
    topic: 'Cost Management Features',
    question:
        'Your organization wants to be sure that its expenditures on cloud services are in line with the budget. Which two Google Cloud cost management features help your organization gain greater visibility into its cloud resource costs? (Choose two.)',
    options: [
      'Resource labels',
      'Sustained use discounts',
      'Financial governance policies',
      'Billing dashboards',
    ],
    correctAnswerIndex: 0,
    secondCorrectAnswerIndex: 3,
  ),
  // Question 99
  Question(
    id: 99,
    topic: 'App Engine for Seasonal Sales',
    question:
        'An organization relies on online seasonal sales for the majority of their annual revenue. Why should the organization use App Engine for their customer app?',
    options: [
      'Runs maintenance during seasonal sales',
      'Recommends the right products to customers',
      'Autoscales during peaks in demand',
      'Automatically adjusts physical inventory in real time',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 100
  Question(
    id: 100,
    topic: 'Communication Between Teams',
    question:
        'An organization\'s web developers and operations personnel use different systems. How will increasing communication between the teams reduce issues caused by silos?',
    options: [
      'By increasing data encryption to strengthen workflows',
      'By assigning blame for failures and establishing consequences',
      'By combining job role responsibilities to ensure that everyone has shared access',
      'By emphasizing shared ownership of business outcomes',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 101
  Question(
    id: 101,
    topic: 'Data Security in Google Cloud',
    question:
        'How does Google Cloud ensure that customer data remains secure and private when at rest?',
    options: [
      'By providing privacy reviews for critical customer applications',
      'By aggregating training data for customers within each industry',
      'By automatically locking files containing suspicious code',
      'By auditing platform privacy practices against industry standards',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 102
  Question(
    id: 102,
    topic: 'Cloud Payment Systems',
    question:
        'An organization finds that the amount of cash in their vending machines doesn\'t match the value of items sold. They have decided to upgrade their vending machines with cloud-based mobile payment systems. How could the organization benefit from this upgrade?',
    options: [
      'They could reduce their error budget overspend.',
      'They could view data history to see transactions.',
      'They could relax data access permissions.',
      'They could improve their perimeter security.',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 103
  Question(
    id: 103,
    topic: 'Total Cost of Ownership (TCO) in Cloud',
    question:
        'When an organization adopts cloud technology, how does their total cost of ownership (TCO) shift?',
    options: [
      'Away from capital expenditure toward operational expenditure',
      'Away from operational expenditure toward cost management',
      'Away from cost management toward capital expenditure',
      'Away from operational expenditure toward capital expenditure',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 104
  Question(
    id: 104,
    topic: 'Cost Control in Cloud',
    question:
        'An organization notices that some of their cloud expenditures are too high. What should the organization do to control costs?',
    options: [
      'Streamline the hardware procurement process to reduce costs.',
      'Ensure that all cloud resources are tagged with a single tag.',
      'Change the cost model from operational expenditure to capital expenditure.',
      'Share cost views with the departments to establish more accountability.',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 105
  Question(
    id: 105,
    topic: 'Cloud Provider SLA Impact',
    question:
        'An organization\'s public cloud provider failed to meet their SLA of 99.99% availability. What is the potential impact on the organization?',
    options: [
      'All data stored in their database could be unexpectedly lost.',
      'The organization risks using up their error budget.',
      'Renegotiation of the SLA to put less emphasis on uptime could be necessary.',
      'Unexpected downtime could risk the loss of customers.',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 106
  Question(
    id: 106,
    topic: 'Cloud-Based Payment Systems',
    question:
        'A food delivery service needs access to real-time menu information from all partner restaurants. They also need to share customer order information with the restaurants in real time. What should the organization use?',
    options: [
      'Site reliability engineering (SRE)',
      'A multi-regional database',
      'A customized machine learning model',
      'An application programming interface (API)',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 107
  Question(
    id: 107,
    topic: 'On-Premises Infrastructure Issue',
    question:
        'An organization has an on-premises IT infrastructure. Their customer-facing application repeatedly fails during peak usage. What could be causing this issue?',
    options: [
      'They don\'t have enough servers to meet the demand.',
      'The application contains unclean data.',
      'A serverless compute function struggles to scale.',
      'The application is only configurable on-premises.',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 108
  Question(
    id: 108,
    topic: 'TCO Shift in Cloud Adoption',
    question:
        'When an organization adopts cloud technology, how does their total cost of ownership (TCO) shift?',
    options: [
      'Away from capital expenditure toward operational expenditure',
      'Away from operational expenditure toward cost management',
      'Away from cost management toward capital expenditure',
      'Away from operational expenditure toward capital expenditure',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 109
  Question(
    id: 109,
    topic: 'Cloud Technology for Forecasting',
    question:
        'An organization wants to use multiple marketing datasets to forecast user acquisition. How should they use cloud technology to gain new insights from the data?',
    options: [
      'Import and selectively archive the datasets in a custom data lake',
      'Import the datasets into a custom data warehouse, and then archive old data',
      'Separate the datasets and make predictions using machine learning',
      'Combine the datasets and make predictions using machine learning',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 110
  Question(
    id: 110,
    topic: 'Looker Benefits',
    question: 'How would an organization benefit from using Looker?',
    options: [
      'Robust data roll-back accuracy',
      'Leading serverless warehousing technology',
      'Optimal identity and access management',
      'Advanced business intelligence and analytics',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 111
  Question(
    id: 111,
    topic: 'Data Privacy Policy',
    question: 'Which policy helps Google Cloud keep customer data private?',
    options: [
      'Google does not allow customers to change encryption keys.',
      'Google tests the service availability of customer applications.',
      'Google migrates customer data to an offline server when a threat is detected.',
      'Google does not use customer data for advertising purposes.',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 112
  Question(
    id: 112,
    topic: 'Data Security',
    question: 'Why is data stored in Google Cloud secure and private?',
    options: [
      'Data is encrypted by the Security Command Center',
      'Data is encrypted when an appropriate tag is applied',
      'Data is encrypted by Cloud Data Loss Prevention',
      'Data is encrypted by default',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 113
  Question(
    id: 113,
    topic: 'Cloud Technology for IT Staff',
    question:
        'An organization\'s developers are growing increasingly frustrated by the limitations of their on-premises infrastructure. How would they benefit from leveraging cloud technology?',
    options: [
      'They can avoid the limitations of serverless computing.',
      'They can have new tools to innovate and optimize resource usage.',
      'They can expect 100% service availability.',
      'They can optimize maintenance for their on-premises infrastructure.',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 114
  Question(
    id: 114,
    topic: 'Transition to Cloud',
    question:
        'An organization is moving away from an on-premises infrastructure. Instead, they want to create, access, and share information virtually in the cloud. What should the organization consider?',
    options: [
      'Optimizing cost-management with a capital expenditure model',
      'Built-in security when moving their data to the cloud',
      'Replacing their perimeter security with data encryption keys',
      'Increased hardware capacity when moving their data to the cloud',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 115
  Question(
    id: 115,
    topic: 'Unstructured Data for Retail',
    question:
        'An online retail organization wants to optimize their service. What is an example of unstructured data that they can use to make decisions?',
    options: [
      'Warehouse inventory records',
      'Product sales trends',
      'Seller location coordinates',
      'Customer survey comments',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 116
  Question(
    id: 116,
    topic: 'AI and ML Accessibility',
    question:
        'How do out-of-the-box APIs make artificial intelligence and machine learning more accessible for all Google Cloud customers?',
    options: [
      'They don\'t require data input and validation.',
      'They don\'t require technical specialists.',
      'They all require custom training models.',
      'They require fewer security permissions.',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 117
  Question(
    id: 117,
    topic: 'TCO Consideration in Cloud Adoption',
    question:
        'Why should an organization consider the total cost of ownership (TCO) when moving from on-premises to the cloud?',
    options: [
      'To evaluate error budget',
      'To calculate required compute power',
      'To evaluate return on investment',
      'To understand service level availability',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 118
  Question(
    id: 118,
    topic: 'Benefit of Public Cloud for Multinational Organizations',
    question:
        'A multinational organization has decided to use public cloud services to modernize their IT infrastructure. What is one benefit of doing this?',
    options: [
      'They can expect 100% service availability in all regions.',
      'They can perform hardware maintenance outside of normal business hours.',
      'Built-in security is no longer required during data migrations.',
      'Access to data and computer resources is not tied to a geographical location.',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 119
  Question(
    id: 119,
    topic: 'Cloud Infrastructure Approach',
    question:
        'An organization wants to build an entirely new infrastructure and applications in the cloud. Which application modernization approach should the organization use?',
    options: [
      'Move the application to the cloud, and then change it.',
      'Invent in brownfield.',
      'Invent in greenfield.',
      'Change their application, and then move it to the cloud.',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 120
  Question(
    id: 120,
    topic: 'Categorizing Photographs',
    question:
        'An organization needs to categorize a large group of photographs using pre-trained machine learning. Which Google Cloud product or service should the organization use?',
    options: [
      'Looker',
      'Vision API',
      'BigQuery ML',
      'AutoML Vision',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 121
  Question(
    id: 121,
    topic: 'Service Availability in Cloud',
    question:
        'How is service availability measured in the context of cloud technology?',
    options: [
      'Number of downtime incidents',
      'Number of available regions',
      'Speed of response time',
      'Percentage of uptime',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 122
  Question(
    id: 122,
    topic: 'APIs for Loyalty Programs',
    question:
        'An organization provides a loyalty program for its customers. It recently partnered with other businesses so that customers can get loyalty points at a range of other stores. Why should the organization use application programming interfaces (APIs)?',
    options: [
      'To migrate all partner data for disaster recovery',
      'To personalize recommendations for loyalty card users',
      'To connect third-party systems to ensure up-to-date information',
      'To analyze and publish loyalty program statistics to a dashboard',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 123
  Question(
    id: 123,
    topic: 'Leading Cloud Transformation',
    question:
        'An organization wants to move from a tactical cloud adoption approach to a transformational approach. How should they adapt the way they lead the organization?',
    options: [
      'Drive cloud adoption with an individual contributor focus',
      'Shift from an operational expenditure model to capital expenditure',
      'Increase top-down visibility and foster a culture of blamelessness',
      'Invest in on-premises infrastructure to redesign relationships between IT and employees',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 124
  Question(
    id: 124,
    topic: 'Custom Application Infrastructure',
    question:
        'An organization wants full control of their virtual machine infrastructure for a custom home-grown application with a product that autoscales and automatically updates. Which Google Cloud product or solution should the organization use?',
    options: [
      'Compute Engine',
      'Cloud Run',
      'Cloud Build',
      'App Engine',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 125
  Question(
    id: 125,
    topic: 'Upskilling IT Staff',
    question:
        'An organization wants to upskill their IT staff. How can they do this in a transformational way?',
    options: [
      'Create a culture of self-motivated, isolated learning with official training materials.',
      'Prioritize training current employees instead of hiring new recruits with cloud experience.',
      'Create a culture of continuous peer-to-peer learning with official training materials.',
      'Prioritize giving privileged access to third-party partners and contractors to fill IT knowledge gaps.',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 126
  Question(
    id: 126,
    topic: 'Data Security in Google Cloud',
    question:
        'How does Google Cloud ensure that customer data remains secure and private when at rest?',
    options: [
      'By aggregating training data for customers within each industry',
      'By providing privacy reviews for critical customer applications',
      'By automatically locking files containing suspicious code',
      'By auditing platform privacy practices against industry standards',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 127
  Question(
    id: 127,
    topic: 'Artificial Intelligence Definition',
    question: 'What is artificial intelligence?',
    options: [
      'Any system capable of a task that requires smart analytics to generate predictions',
      'Any system capable of a task that normally requires human cognition',
      'Any system that automatically structures data',
      'Any system that ingests data in real time',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 128
  Question(
    id: 128,
    topic: 'Google Kubernetes Engine Benefits',
    question:
        'An organization is planning to create many new applications and needs a system for managing and orchestrating their containers. Why should they use Google Kubernetes Engine?',
    options: [
      'It optimizes virtual machine performance.',
      'It enables rapid application deployment and testing.',
      'It connects legacy systems to an application.',
      'It provides pre-written source code for application development.',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 129
  Question(
    id: 129,
    topic: 'Service Level Objective (SLO) Downtime',
    question:
        'An organization meets their service level objective (SLO) of 99.999% (`five nines`). How much downtime do their end users experience per year?',
    options: [
      '500 minutes',
      '5 days',
      '5 hours',
      '5 minutes',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 130
  Question(
    id: 130,
    topic: 'Cloud Spanner Benefits',
    question:
        'How would a global organization benefit from managing their data with Cloud Spanner?',
    options: [
      'Cloud Spanner visualizes and analyzes data in real time',
      'Cloud Spanner is optimized for cold storage',
      'Cloud Spanner replicates data across regions in real time',
      'Cloud Spanner is optimized to ingest unstructured data',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 131
  Question(
    id: 131,
    topic: 'Cloud Product for Categorizing Photographs',
    question:
        'An organization needs to train a machine learning model to categorize photographs. Which Google Cloud product or service should the organization use?',
    options: [
      'AutoML Vision',
      'BigQuery ML',
      'Video Intelligence API',
      'Looker',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 132
  Question(
    id: 132,
    topic: 'Customizing Resource Access',
    question:
        'Several departments in an organization are working together on a project. The organization wants to customize access to resources for each department. What is the quickest and most efficient way to achieve this?',
    options: [
      'By assigning IAM primitive roles to each employee',
      'By creating a single shared service account for all departments',
      'By applying "least-privilege" to roles for each employee',
      'By mapping IAM roles to job functions for each department',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 133
  Question(
    id: 133,
    topic: 'Cloud Solution for Specialized Workloads',
    question:
        'An organization needs to migrate specialized workloads to the cloud while maintaining their existing complex licensing and architecture. What Google Cloud solution should the organization use?',
    options: [
      'Compute Engine',
      'Cloud Run',
      'Cloud Functions',
      'Bare Metal Solution',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 134
  Question(
    id: 134,
    topic: 'Moving from Traditional to Cloud Technology',
    question:
        'An organization is altering their gaming product so that it is compatible with cloud technology. What can they expect when moving from traditional technology to cloud technology?',
    options: [
      'No change to existing responsibilities',
      'A shift toward using structured data',
      'A shift toward OpEx',
      'Increased hardware maintenance',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 135
  Question(
    id: 135,
    topic: 'Cloud Tool for Metrics and Dashboards',
    question:
        'An organization wants to collect metrics and metadata from their cloud applications and put them into dashboards. Which Google Cloud tool should they use?',
    options: [
      'Cloud Debugger',
      'Cloud Logging',
      'Cloud Trace',
      'Cloud Monitoring',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 136
  Question(
    id: 136,
    topic: 'Following SRE Principles for Image Recognition',
    question:
        'An organization wants to introduce a new image recognition login system. What should the organization do to follow SRE principles?',
    options: [
      'Avoid rolling out the new system because it may violate privacy policy.',
      'Avoid rolling out the new system because it may have security flaws.',
      'Roll out the new system to a subset of employees to test it out.',
      'Roll out the new system to all employees to collect as much data as possible.',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 137
  Question(
    id: 137,
    topic: 'Cybersecurity Threat - Phishing',
    question:
        'An employee receives an email from their internet service provider asking for their bank account number and password. Which cybersecurity threat is this?',
    options: [
      'Ransomware',
      'Phishing',
      'Spamming',
      'Distributed Denial of Service',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 138
  Question(
    id: 138,
    topic: 'Privacy in Cloud Technology',
    question: 'How is privacy defined in the context of cloud technology?',
    options: [
      'Procedures to authenticate user identity',
      'Compliance with regulatory standards',
      'Susceptibility to data breaches and cyber attacks',
      'Restrictions on data access and sharing',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 139
  Question(
    id: 139,
    topic: 'Healthcare Data Collection',
    question:
        'An organization delivers a proactive healthcare service. They want to efficiently and automatically collect patient data. What should the organization encourage the patients to do?',
    options: [
      'Visit a nurse who will use Internet of Things (IoT) devices to collect and upload their health data',
      'Self-assess their health data and then document and upload it in real time',
      'Use at-home health screening devices and then upload their health data daily',
      'Wear Internet of Things (IoT) devices that upload their health data in real time',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 140
  Question(
    id: 140,
    topic: 'Leveraging AI and ML with Google Cloud',
    question:
        'How does Google Cloud enable customers to leverage the power of artificial intelligence and machine learning?',
    options: [
      'With APIs and tools for users at different levels of expertise',
      'With affordable and scalable quantum computing',
      'With scalable on-premises tensor processing units',
      'With machine learning models that always require custom training',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 141
  Question(
    id: 141,
    topic: 'Managing Cloud Expenditures',
    question:
        'An organization notices that some of their cloud expenditures are too high. What should the organization do to control costs?',
    options: [
      'Share cost views with the departments to establish more accountability.',
      'Change the cost model from operational expenditure to capital expenditure.',
      'Streamline the hardware procurement process to reduce costs.',
      'Ensure that all cloud resources are tagged with a single tag.',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 142
  Question(
    id: 142,
    topic: 'Streaming Service Compliance',
    question:
        'How can a streaming service meet global compliance requirements using the cloud?',
    options: [
      'By adhering only to data policies of the country in which the head office is registered',
      'By obtaining a business license to operate in a new market',
      'By allowing users to disable two-factor authentication',
      'By automatically encrypting personally identifiable information',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 143
  Question(
    id: 143,
    topic: 'Prioritization in Cloud Operations',
    question:
        'A cloud-native organization is not meeting their service level objective (SLO) but has not exhausted their error budget. What should the organization prioritize?',
    options: [
      'Stability to avoid prolonged user downtime',
      'Innovation to improve user experience',
      'Speed to release new features',
      'Hardware reliability to improve availability',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 144
  Question(
    id: 144,
    topic: 'Application Modernization Approach',
    question:
        'An organization wants to create a new application in the cloud to replace an existing on-premises application. Which application modernization approach should the organization use?',
    options: [
      'Invent in greenfield.',
      'Invent in brownfield.',
      'Move the application to the cloud, and then change it.',
      'Change their application, and then move it to the cloud.',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 145
  Question(
    id: 145,
    topic: 'Defining Data Access Policies',
    question:
        'A manager wants to review Google Cloud data access among their employees. Who is responsible for defining data access policies?',
    options: [
      'Their organization\'s end users',
      'Their organization\'s IT team',
      'Google Cloud Customer Care team',
      'Cloud Identity',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 146
  Question(
    id: 146,
    topic: 'Cost-Effective Relational Database',
    question:
        'An organization wants a cost-effective relational database. Which Google Cloud service should the organization use?',
    options: [
      'Cloud SQL',
      'Cloud Storage',
      'BigQuery',
      'Dataflow',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 147
  Question(
    id: 147,
    topic: 'Monitoring in Cloud Operations',
    question: 'What is monitoring within the context of cloud operations?',
    options: [
      'Tracking user activities to guarantee compliance with privacy regulations',
      'Observing cloud expenditure in real time to ensure that budgets are not exceeded',
      'Tracing user location to document regional access and utilization',
      'Collecting predefined and custom metrics from applications and infrastructure',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 148
  Question(
    id: 148,
    topic: 'Cloud Debugger Benefits',
    question: 'What does Cloud Debugger help an organization do?',
    options: [
      'Inspect source code in real time without affecting user downtime.',
      'Analyze live source code during user downtime.',
      'Manage code and accelerate application development.',
      'Implement code updates in real time without affecting the service level objective (SLO).',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 149
  Question(
    id: 149,
    topic: 'Cloud Logging Benefits',
    question: 'What does Cloud Logging help an organization do?',
    options: [
      'Analyze logs and accelerate application troubleshooting.',
      'Manage storage of custom VM images.',
      'Deploy infrastructure as code.',
      'Analyze live source code and log code updates.',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 150
  Question(
    id: 150,
    topic: 'Cloud-Based Mobile Payment System Benefits',
    question:
        'An organization finds that the amount of cash in their vending machines doesn\'t match the value of items sold. They have decided to upgrade their vending machines with cloud-based mobile payment systems. How could the organization benefit from this upgrade?',
    options: [
      'They could relax data access permissions.',
      'They could reduce their error budget overspend.',
      'They could view data history to see transactions.',
      'They could improve their perimeter security.',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 151
  Question(
    id: 151,
    topic: 'Training Custom Machine Learning Model',
    question:
        'An organization needs to train a custom machine learning model to categorize customer responses from their website\'s contact form. Which Google Cloud product or service should the organization use?',
    options: [
      'Pub/Sub',
      'AutoML Natural Language',
      'Anthos',
      'Recommendations AI',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 152
  Question(
    id: 152,
    topic: 'Using APIs for Document Information',
    question:
        'An organization wants to search hundreds of scanned documents for key information like dates, names, and other specific words. Why should the organization use application programming interfaces (APIs)?',
    options: [
      'To replace the scanned documents with an online survey',
      'To create digital versions of the documents and locate key information',
      'To transform the documents into unstructured data.',
      'To ingest data in real time and encrypt unmatched words',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 153
  Question(
    id: 153,
    topic: 'Cloud Benefits Over Time',
    question:
        'How does switching from on-premises to the cloud help organizations gain value over time?',
    options: [
      'They can relax their on-premises data security protocols',
      'They can focus their efforts on solution development',
      'They can expand their internal application hosting infrastructure',
      'They can increase development of data recovery systems',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 154
  Question(
    id: 154,
    topic: 'Using APIs for Legacy System Flexibility',
    question:
        'An organization is struggling to ensure that their legacy systems meet rapidly changing IT needs. Why should the organization use application programming interfaces (APIs)?',
    options: [
      'To operate on a pay-as-you-go model so IT can scale flexibly',
      'To achieve long-term operational flexibility',
      'To completely re-architect legacy applications',
      'To expose all underlying data so third parties can make amends',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 155
  Question(
    id: 155,
    topic: 'Serverless Compute for Small Code Pieces',
    question:
        'An organization wants to write and run small pieces of code in a serverless way that respond to events like huge discounts. Which Google Cloud compute solution should the organization use?',
    options: [
      'Bare Metal Solution',
      'Compute Engine',
      'Cloud Functions',
      'Google Kubernetes Engine',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 156
  Question(
    id: 156,
    topic: 'Relational Database Functionality',
    question:
        'A retail organization has moved all of their inventory data to a relational database in the cloud. What functionality does a relational database offer?',
    options: [
      'It stores transactional data, which can then be accessed electronically',
      'It rapidly analyzes large and multi-dimensional datasets',
      'It analyzes unstructured data, which can then be accessed in multiple regions',
      'It stores large amounts of raw data in its original format',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 157
  Question(
    id: 157,
    topic: 'Business Intelligence Solution',
    question:
        'An organization is looking for a business intelligence solution that allows individual employees and end users to analyze business data and generate insights. Which Google Cloud product or service should the organization use?',
    options: [
      'Cloud Spanner',
      'BigQuery',
      'Dataflow',
      'Looker',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 158
  Question(
    id: 158,
    topic: 'Cloud Technology Benefits for Retail',
    question:
        'A large retail organization uses traditional technology for their ecommerce website. During peaks in traffic, resources are often underutilized or overprovisioned. They have decided to migrate to cloud technology. What aspect of cloud technology will benefit their ecommerce business?',
    options: [
      'Shared responsibility means that the cloud provider brings increased visibility during peaks in traffic.',
      'Operational expenditure means that their total cost of ownership is more predictable.',
      'Unlimited storage means that their website will never experience downtime.',
      'Agile infrastructure means that they only pay for what they need, when they need it.',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 159
  Question(
    id: 159,
    topic: 'Autoscaling Web Applications',
    question:
        'An organization wants to build autoscaling web applications without having to manage application infrastructure. Which Google Cloud product should they use?',
    options: [
      'App Engine',
      'Apigee',
      'Anthos',
      'AutoML',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 160
  Question(
    id: 160,
    topic: 'SQL Server Migration to Cloud',
    question:
        'An organization is running SQL Server on-premises and is struggling with capacity and management overhead. They want to modernize this database quickly by using Google products or services. What should the organization do?',
    options: [
      'Export old tables from SQL Server to Cloud Storage.',
      'Refactor applications to use a cloud-first database like Firestore.',
      'Migrate all SQL Server data to BigQuery.',
      'Perform a managed database migration to Cloud SQL.',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 161
  Question(
    id: 161,
    topic: 'Kubernetes Engine Benefits',
    question:
        'What makes Google Kubernetes Engine (GKE) an effective solution for developers working to resolve application errors?',
    options: [
      'It reduces the time needed to iterate on various solutions.',
      'It stores application code on multiple servers to facilitate collaboration across silos.',
      'It provides intelligent recommendations to optimize application development.',
      'It removes the need for containerizing applications.',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 162
  Question(
    id: 162,
    topic: 'Machine Learning for Medical Diagnosis',
    question:
        'An organization has created an application that can diagnose different medical conditions when users submit images of their affected body parts. Which Google Cloud product or service did the organization use?',
    options: [
      'Cloud Profiler',
      'Cloud Logging',
      'App Engine',
      'Machine Learning',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 163
  Question(
    id: 163,
    topic: 'OpEx Model for Cloud Security',
    question: 'What is a benefit of the OpEx model for cloud security?',
    options: [
      'Organizations do not need to configure any security settings for cloud resources.',
      'Organizations do not need to make upfront capital investments in cloud security.',
      'The cloud provider guarantees security.',
      'Organizations can deploy custom security hardware.',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 164
  Question(
    id: 164,
    topic: 'Cloud Storage for Law Firm',
    question:
        'An international law firm needs their HR application to be able to share and access varying amounts of sensitive data across their branch offices. Why would using Cloud Storage be beneficial for them?',
    options: [
      'It stores geographically dispersed copies of data to prevent loss.',
      'It has a low minimum storage amount requirement.',
      'It offers an affordable upgrade that enables data encryption.',
      'It randomly allocates data to different storage locations to protect against threats.',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 165
  Question(
    id: 165,
    topic: 'Site Reliability Engineering Best Practices',
    question:
        'An organization has been struggling to make operations more efficient. What site reliability engineering (SRE) best practice should the organization follow to increase efficiency?',
    options: [
      'Assign exclusive production ownership to developers.',
      'Decrease over-reliance on data to make decisions.',
      'Focus on increasing toil automation.',
      'Spend less time measuring outage impact.',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 166
  Question(
    id: 166,
    topic: 'Cloud Storage for Global Availability',
    question:
        'An organization is looking for a storage solution that will help them serve content to users worldwide. They need a solution that offers a high level of availability. What feature of Cloud Storage would they benefit from?',
    options: [
      'Object versioning',
      'Global metadata',
      'Data encryption',
      'Multi-regional storage',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 167
  Question(
    id: 167,
    topic: 'Optimizing Cloud Resource Usage',
    question:
        'An organization with a commissions-based business model is struggling to predict cloud costs due to fluctuating revenue. How can the organization optimize the use of their cloud resources?',
    options: [
      'By decentralizing financial decision making',
      'By applying intelligent recommendations',
      'By increasing their capital expenditure',
      'By sharing project ownership across all teams',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 168
  Question(
    id: 168,
    topic: 'Redundancy for System Reliability',
    question:
        'An organization wants to duplicate critical system components to enhance reliability and mitigate single points of failure. Which design consideration should the organization use?',
    options: [
      'Backups',
      'Redundancy',
      'Latency',
      'Security',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 169
  Question(
    id: 169,
    topic: 'Building Custom AI Models',
    question:
        'An organization needs a platform to create custom end-to-end artificial intelligence models. Which Google Cloud product or service should the organization use?',
    options: [
      'Vertex AI',
      'Compute Engine',
      'Dataproc',
      'Recommendations AI',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 170
  Question(
    id: 170,
    topic: 'Using APIs for Business Collaboration',
    question:
        'A venue with an online booking system has partnered with a catering business. How can the venue leverage application programming interfaces (APIs) to create new business value?',
    options: [
      'Use an API to connect their booking system with the partner\'s catering form',
      'Use an API to migrate all their customer data to a machine learning model to predict food requests',
      'Use an API to redesign their booking system to appeal to targeted customers',
      'Use an API to identify opportunities for new business collaboration',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 171
  Question(
    id: 171,
    topic: 'Increasing Operational Efficiency in Customer Service',
    question:
        'A customer service department wants to increase their operational efficiency while maintaining personalized dialog with their customers. What Google Cloud product or service should the organization use?',
    options: [
      'Recommendations AI',
      'Cloud Identity',
      'Contact Center AI',
      'Text-to-Speech',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 172
  Question(
    id: 172,
    topic: 'Simplifying API Usage for Developers',
    question:
        'An organization wants to ensure that their developers can easily use application programming interfaces (APIs) in future projects. Which Google product or solution should they use?',
    options: [
      'AppSheet',
      'The App Engine flexible environment',
      'Application migration',
      'Apigee',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 173
  Question(
    id: 173,
    topic: 'Serverless Execution Environment for Cloud Services',
    question:
        'An organization wants a serverless execution environment for building and connecting cloud services. They can\'t predict how many resources they\'ll need. Which Google Cloud solution should they use?',
    options: [
      'Compute Engine',
      'Bare Metal Solution for SAP',
      'Cloud Functions',
      'Google Kubernetes Engine',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 174
  Question(
    id: 174,
    topic: 'Mobile App for Customer Service',
    question:
        'An organization has decided to create a mobile app for their customer-facing service. What may have prompted this business decision?',
    options: [
      'Customers expect mobile-only access to information in the cloud era',
      'Customers expect information to be easily accessible on any device.',
      'Developers can apply increased data security on a mobile app.',
      'Developers can run different versions of the service to test features only through a mobile app.',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 175
  Question(
    id: 175,
    topic: 'Solution for Building Applications with Preferred Tools',
    question:
        'An organization is looking for a solution to help them build applications using their preferred programming language and tools. They also want to minimize time spent on infrastructure management. What solution should the organization use?',
    options: [
      'Bare Metal Solution',
      'Cloud Run',
      'Dataproc',
      'Pub/Sub',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 176
  Question(
    id: 176,
    topic: 'Structured Data in Healthcare',
    question:
        'What is an example of structured data that a healthcare facility stores in their system?',
    options: [
      'Blood pressure history',
      'Physician-written notes',
      'X-ray images',
      'Surgery video recordings',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 177
  Question(
    id: 177,
    topic: 'Modernizing Legacy Applications',
    question:
        'An organization is struggling to meet user demand for change and wants to modernize their legacy applications by moving the applications to the cloud. Why would this help the organization satisfy user expectations?',
    options: [
      'Toil automation helps make automatic updates',
      'DevOps requires that industry trends be measured and tracked',
      'Customer data can be used to offer tailored content',
      'Updates can be pushed out more quickly to repair bugs',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 178
  Question(
    id: 178,
    topic: 'Responsibilities When Migrating to the Cloud',
    question:
        'What is an organization responsible for when migrating from on-premises to the cloud?',
    options: [
      'Adapting to a pay-as-you-go cloud expenditure model',
      'Managing underlying network infrastructure',
      'Covering the cost of cloud service downtime',
      'Optimizing cloud storage systems',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 179
  Question(
    id: 179,
    topic: 'Cloud Storage for Backup Files',
    question:
        'An organization stores backup files in Cloud Storage. The files will be accessed annually to test the disaster recovery plans. Which storage class is the most cost-effective?',
    options: [
      'Standard class',
      'Coldline class',
      'Nearline class',
      'Archive class',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 180
  Question(
    id: 180,
    topic: 'Accessing Data from Legacy Systems',
    question:
        'An organization cannot afford to modernize their infrastructure, but they want to process data from their legacy system in a modern platform hosted by a business partner. What solution should the organization choose to make their data accessible?',
    options: [
      'An application programming interface',
      'Google Kubernetes Engine',
      'Anthos',
      'Compute Engine',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 181
  Question(
    id: 181,
    topic: 'Smart Analytics for Serverless Data Warehouse',
    question:
        'An international bank is looking for a serverless warehouse solution that lets them perform smart analytics. Which Google Cloud product or service should the bank use?',
    options: [
      'Cloud Spanner',
      'BigQuery',
      'Compute Engine',
      'Dataflow',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 182
  Question(
    id: 182,
    topic: 'Hybrid Cloud Architecture',
    question:
        'What kind of architecture does a hybrid cloud offer organizations?',
    options: [
      'A combination of serverless computing and public cloud services',
      'A combination of different virtualized servers',
      'A combination of multiple public cloud provider services',
      'A combination of private cloud infrastructure and public cloud services',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 183
  Question(
    id: 183,
    topic: 'Hybrid-Cloud Management Solution',
    question:
        'An organization is looking for a hybrid-cloud management solution that will help them build and run applications on-premises and in the cloud. What solution should the organization use?',
    options: [
      'Cloud Functions',
      'Compute Engine',
      'App Engine',
      'Anthos',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 184
  Question(
    id: 184,
    topic: 'Cybersecurity Threat',
    question:
        'Which cybersecurity threat can lead to information being stolen or damaged without a user ever being aware?',
    options: [
      'Malware attack',
      'Ransomware attack',
      'SLA policy violation',
      'Incomplete data input',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 185
  Question(
    id: 185,
    topic: 'Improving Machine Learning Prediction Accuracy',
    question:
        'An organization is training a machine learning model to make predictions. What could improve the prediction accuracy of their model?',
    options: [
      'An increase in training data',
      'An increase in storage capacity',
      'Faster CPU processors',
      'Higher network bandwidth',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 186
  Question(
    id: 186,
    topic: 'Google Cloud Tool for Code Behavior Analysis',
    question:
        'An organization wants to better understand the behavior of their code in production and analyze its state to identify hard-to-find programming errors. Which Google Cloud tool should the organization use?',
    options: [
      'Debugger',
      'Profiler',
      'Cloud Monitoring',
      'Trace',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 187
  Question(
    id: 187,
    topic: 'Cloud Security for Transformation',
    question:
        'An organization wants to move from a tactical cloud adoption approach to a transformational approach. How should they change their cloud security?',
    options: [
      'Emphasize strong perimeter security and trust in their private network.',
      'Provide multiple layers of network security using a zero-trust model.',
      'Emphasize three main Identity Access Management roles: owner, editor, and viewer.',
      'Provide staff identities using only Google Cloud authentication.',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 188
  Question(
    id: 188,
    topic: 'DevOps Best Practices',
    question:
        'What DevOps practice should an organization use when developing their application to help minimize disruption caused by bugs?',
    options: [
      'Prioritize fixing large bugs during production because they are easier to review',
      'Implement large changes together to make rolling back easier when bugs appear',
      'Pause production until all bugs have been eliminated',
      'Implement small changes incrementally to reduce recovery time when bugs appear',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 189
  Question(
    id: 189,
    topic: 'Cost-Effective Cloud Storage',
    question:
        'An organization needs frequent access to only a subset of their data. They want to reduce costs by depositing the rest of their data across Nearline, Coldline, and Archive repositories. Which Google Cloud product should the organization use?',
    options: [
      'Cloud Spanner',
      'Filestore',
      'Cloud Storage',
      'Data Catalog',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 190
  Question(
    id: 190,
    topic: 'Ingesting Log Data',
    question:
        'An organization wants to ingest custom log data from GKE environments, virtual machines, and Google Cloud services. Which Google Cloud tool should the organization use?',
    options: [
      'Cloud Logging',
      'Dialogflow',
      'Data Catalog',
      'Cloud SDK',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 191
  Question(
    id: 191,
    topic: 'Long-Term Data Security',
    question:
        'An organization suffers a major data leak only six months after upgrading its security system. What should the organization do to ensure long-term security?',
    options: [
      'Hire cybersecurity experts to further develop their data security plan',
      'Extend data retention policy lengths to at least seven years.',
      'Wait for a more advanced security system to be released',
      'Pay more to get the best security system available on the market.',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 192
  Question(
    id: 192,
    topic: 'SaaS Responsibility',
    question:
        'What is an organization exclusively responsible for when they access an application through a software as a service (SaaS) model?',
    options: [
      'Monitoring computer networks',
      'Maintaining customer-facing content',
      'Maintaining overall system operability',
      'Monitoring data center servers',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 193
  Question(
    id: 193,
    topic: 'Cloud SLA Violation Outcome',
    question:
        'What can customers expect if their cloud provider doesn\'t meet their service level agreement (SLA)?',
    options: [
      'Refund for service interruption',
      'Increase in subscription fees',
      'Cloud service shutdown',
      'Error budget expansion',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 194
  Question(
    id: 194,
    topic: 'Service Level Objective Performance',
    question:
        'A public cloud provider\'s service level performance has moved below the service level objective (SLO), but remains above the service level agreement (SLA). What is an outcome of this change in service level performance?',
    options: [
      'The public cloud provider is encouraged to prioritize service reliability',
      'The public cloud provider is encouraged to push out new updates',
      'End users face unexpected or prolonged downtime',
      'End users face a decrease in service latency',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 195
  Question(
    id: 195,
    topic: 'Building Applications Across Cloud Providers',
    question:
        'An organization is looking for a solution that will allow them to build new applications, modernize old ones, and run applications across different cloud providers. What solution should the organization use?',
    options: [
      'Apigee Hybrid',
      'Compute Engine',
      'Anthos',
      'Cloud Run',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 196
  Question(
    id: 196,
    topic: 'Observability in Cloud Operations',
    question:
        'What is out-of-the-box observability within the context of cloud operations?',
    options: [
      'Monitoring IT infrastructure and applications',
      'Monitoring customer satisfaction and feedback',
      'Monitoring project development timelines',
      'Monitoring cloud subscription costs',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 197
  Question(
    id: 197,
    topic: 'Legacy Infrastructure Challenges',
    question:
        'An organization is struggling to keep up with the growth of their application which is running on legacy infrastructure. What might be holding them back?',
    options: [
      'The time it takes their serverless compute function to scale',
      'The inaccessibility of their data due to perimeter security',
      'The overreliance on platform as a service',
      'The cost of provisioning hardware for peak usage',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 198
  Question(
    id: 198,
    topic: 'Managing Data for Fitness App',
    question:
        'An organization has created a medical fitness app and wants to store a very large amount of data about exercise times, activity, and calories burned for later analysis. Which data management solution should the organization use?',
    options: [
      'Data warehouse',
      'Database',
      'Data field',
      'Data lake',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 199
  Question(
    id: 199,
    topic: 'Adopting Cloud for Cloud-Native Applications',
    question:
        'An organization has started to develop cloud-native applications to replace their legacy applications. What else should the organization do to adopt the cloud?',
    options: [
      'Provide privileged cloud network access to third-party partners.',
      'Conduct maintenance on their legacy hardware.',
      'Increase CapEx on existing projects.',
      'Migrate some of their legacy infrastructure to the cloud.',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 200
  Question(
    id: 200,
    topic: 'Google Cloud AI Hub',
    question:
        'How does Google Cloud AI Hub make machine learning easy and accessible for Google Cloud customers to get started?',
    options: [
      'It includes a repository of plug-and-play artificial intelligence tools',
      'It automatically sources and prepares users’ machine learning data',
      'It deploys artificial intelligence models in real time',
      'It automatically codes users’ machine learning models',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 201
  Question(
    id: 201,
    topic: 'Defining Feature of a Non-Relational Database',
    question: 'What is a defining feature of a non-relational database?',
    options: [
      'Reporting across multiple data sources',
      'A flexible data model',
      'Queries that join multiple tables',
      'A strictly enforced schema',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 202
  Question(
    id: 202,
    topic: 'Data Encryption in Google Cloud',
    question: 'When is data automatically encrypted in Google Cloud?',
    options: [
      'When it is in transit only',
      'When it is at rest and in transit.',
      'When it is at rest only.',
      'Data is not automatically encrypted by default.',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 203
  Question(
    id: 203,
    topic: 'Site Reliability Engineering',
    question:
        'Within Google’s Site Reliability Engineering framework, which concept measures how well a system is performing?',
    options: [
      'Service-level agreement',
      'Service-level indicator',
      'Error reporting',
      'Service-level objective',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 204
  Question(
    id: 204,
    topic: 'Google Cloud AI Solutions',
    question:
        'An organization wants a purpose-built AI solution to increase efficiency and provide personalized interactions for their customer care team. Which Google Cloud AI solution should they use?',
    options: [
      'Text-to-Speech API',
      'Contact Center AI',
      'Document AI',
      'Cloud Talent Solution',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 205
  Question(
    id: 205,
    topic: 'Multi-Cloud Deployment',
    question:
        'An organization is using three cloud vendors to maximize their available deployment locations worldwide. They are using GKE Enterprise to deploy Kubernetes applications across different clouds. What type is this deployment?',
    options: [
      'Hybrid-cloud',
      'Private cloud',
      'On-premises',
      'Multi-cloud',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 206
  Question(
    id: 206,
    topic: 'Managed Services in Cloud',
    question:
        'An organization is considering the use of managed services when migrating to the cloud. Which routine tasks are typically provided automatically by a managed services platform?',
    options: [
      'Patching and upgrades',
      'Managing user access',
      'Data archiving',
      'Cost optimization',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 207
  Question(
    id: 207,
    topic: 'Streaming Analytics',
    question: 'What is a defining function of streaming analytics?',
    options: [
      'Accessing data with high latency',
      'Processing data records continuously',
      'Processing data records in batches',
      'Processing a one-off data backfill',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 208
  Question(
    id: 208,
    topic: 'Cloud Migration Paths',
    question:
        'An organization wants to migrate a workload to the cloud without changing the application code or architecture. Which migration path describes this approach?',
    options: [
      'Replatformed',
      'Reimagined',
      'Refactored',
      'Rehosted',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 209
  Question(
    id: 209,
    topic: 'Pre-trained APIs',
    question:
        'A real estate organization processes photos of properties uploaded by their agents to an internal application. They must manually check and remove photos that contain personally identifiable information like passports and credit cards. They want a solution that their developer can use to integrate with their app as quickly as possible. Which solution should they use?',
    options: [
      'AutoML',
      'Custom training',
      'BigQuery ML',
      'Pre-trained APIs',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 210
  Question(
    id: 210,
    topic: 'Sustainability in Cloud Computing',
    question:
        'An organization needs to rapidly scale its use of computing resources and honor its commitment to environmental sustainability. What should the organization do?',
    options: [
      'Refactor application software to use less energy.',
      'Purchase energy-efficient servers for an existing on-premises data center.',
      'Use a public cloud provider with energy-efficient data centers.',
      'Use a carbon-neutral energy provider for an existing on-premises data center.',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 211
  Question(
    id: 211,
    topic: 'Security in Google Cloud',
    question:
        'An organization must identify and fix security vulnerabilities in its cloud infrastructure and applications. Which Google Cloud service should they use?',
    options: [
      'Cloud Storage',
      'VPC networks',
      'Google Cloud Armor',
      'Security Command Center',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 212
  Question(
    id: 212,
    topic: 'Custom Machine Learning Models',
    question:
        'An organization wants to build custom machine learning models. They require a managed platform that provides services to gather data, build models, and then deploy and monitor those models. Which service should they use?',
    options: [
      'Natural Language API',
      'Vertex AI',
      'Kubernetes Engine',
      'Document AI',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 213
  Question(
    id: 213,
    topic: 'Domain-Specific Hardware for ML',
    question:
        'An organization needs to increase the speed at which they can train machine learning models. Which domain-specific hardware is designed for this task?',
    options: [
      'Containers',
      'Bare Metal Solution',
      'Preemptible or Spot VMs',
      'Cloud TPUs',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 214
  Question(
    id: 214,
    topic: 'Cloud Computing Transformation',
    question:
        'What does the shift toward cloud computing represent for an organization\'s transformation?',
    options: [
      'An opportunity that is limited to large enterprises',
      'An opportunity that is only relevant to the IT department',
      'An opportunity to redefine existing business processes and services',
      'An opportunity to continue business as usual with new cost savings',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 215
  Question(
    id: 215,
    topic: 'Unified Cloud Data Solution',
    question: 'What is the benefit of using a unified cloud data solution?',
    options: [
      'Data can enable innovation because it\'s no longer siloed.',
      'Data can be automatically secured from external threats.',
      'Data will always cost less to store.',
      'Data will always be backed up and cannot be lost or deleted.',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 216
  Question(
    id: 216,
    topic: 'Open Source ML Libraries',
    question:
        'An organization wants to use an open source library with a flexible ecosystem of tools to create and train its own machine learning models. Which product or solution should the organization use?',
    options: [
      'Dataflow',
      'Apache Beam',
      'TensorFlow',
      'Cloud Functions',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 217
  Question(
    id: 217,
    topic: 'Unstructured Data Example',
    question: 'What is an example of unstructured data?',
    options: [
      'Product ratings',
      'Customer orders',
      'Call center transcripts',
      'Historical stock inventory',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 218
  Question(
    id: 218,
    topic: 'Cloud Spending Behavior',
    question:
        'What is the typical cloud spending behavior of most organizations?',
    options: [
      'Centralized and variable',
      'Decentralized and variable',
      'Decentralized and fixed',
      'Centralized and fixed',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 219
  Question(
    id: 219,
    topic: 'Vendor Lock-In Mitigation',
    question:
        'An organization wants to leverage cloud technologies but is concerned about vendor lock-in. What would mitigate this concern?',
    options: [
      'Open standards',
      'Service level agreements',
      'Scalable infrastructure',
      'Database services',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 220
  Question(
    id: 220,
    topic: 'Building Data Pipelines',
    question:
        'An organization wants to build a data pipeline to transform its data so it can be reconciled in a data warehouse. The solution must be scalable and require little or no management. Which Google product or service should the organization choose?',
    options: [
      'Dataflow',
      'Pub/Sub',
      'Cloud Bigtable',
      'Cloud Storage',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 221
  Question(
    id: 221,
    topic: 'Cloud Service Models',
    question:
        'An organization wants to access a software application from a cloud vendor without the need to manage their own servers or write their own code. Which service model does this represent?',
    options: [
      'Software as a service',
      'Platform as a service',
      'Infrastructure as a service',
      'Functions as a service',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 222
  Question(
    id: 222,
    topic: 'Cloud Cost Management',
    question:
        'An organization has recently completed a migration from on-premises to Google Cloud. How has cost management been affected?',
    options: [
      'Cost management will stay the same, but the total cost of ownership (TCO) will be higher.',
      'Costs will primarily shift from OpEx to CapEx.',
      'Costs will primarily shift from CapEx to OpEx.',
      'Cost management will stay the same, but the total cost of ownership (TCO) will be lower.',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 223
  Question(
    id: 223,
    topic: 'Data Analysis Services',
    question:
        'An organization has petabytes of data gathered from a wide range of sources. They want to use the data for strategic analysis and to guide business decisions. What type of service should they use?',
    options: [
      'Hybrid cloud environment',
      'Virtual machine environment',
      'Multi-cloud environment',
      'Container environment',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 224
  Question(
    id: 224,
    topic: 'Cloud Identity Management',
    question:
        'An organization must verify the identity of a user seeking access to a system. Which aspect of cloud identity management does this action describe?',
    options: [
      'Authorization',
      'Auditing',
      'Authentication',
      'Encrypting',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 225
  Question(
    id: 225,
    topic: 'Custom Training in Vertex AI',
    question:
        'An organization has hired a team of data scientists and developers. They want to create unique value in their business by coding an advanced machine learning model in Vertex AI Workbench. Which service should the organization use to train the model?',
    options: [
      'Prebuilt APIs',
      'Custom training',
      'Compute Engine',
      'AutoML',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 226
  Question(
    id: 226,
    topic: 'Data Availability in Cloud Security',
    question:
        'In Google’s cloud security model, how does availability contribute to a robust security posture for data?',
    options: [
      'By ensuring data meets industry standards',
      'By checking that data is accurate and trustworthy',
      'By ensuring data is reliable and accessible',
      'By restricting data access to authorized users',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 227
  Question(
    id: 227,
    topic: 'Collecting and Storing Logs',
    question:
        'An organization wants to collect and store all logs generated by applications running in Google Cloud. Which service should they use?',
    options: [
      'Cloud Logging',
      'Cloud Monitoring',
      'Cloud Trace',
      'Cloud Profiler',
    ],
    correctAnswerIndex: 0,
  ),
  // Question 228
  Question(
    id: 228,
    topic: 'Serverless Data Processing',
    question:
        'What is the benefit of using a serverless data processing pipeline service?',
    options: [
      'Full control over compute resources is provided.',
      'Pipeline infrastructure is fully managed and scalable.',
      'Processed data will not require analysis.',
      'Processed data is guaranteed to be free of errors.',
    ],
    correctAnswerIndex: 1,
  ),
  // Continue with questions 229 to 286 in the same format
  // Question 229
  Question(
    id: 229,
    topic: 'Machine Learning Use Cases',
    question: 'Which scenario is a good use case for machine learning?',
    options: [
      'Solving ethical dilemmas',
      'Classifying data with no prior examples',
      'Creating customer recommendations',
      'Tasks that require human experience and intuition',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 230
  Question(
    id: 230,
    topic: 'Benefits of Serverless Computing',
    question:
        'An organization is developing a new container-based application. They do not know how popular the application will be when launched and they do not want to pay for idle infrastructure resources. Which benefit of serverless computing will address this concern?',
    options: [
      'Disaster recovery',
      'Reduced development costs',
      'Built-in security',
      'Scalability',
    ],
    correctAnswerIndex: 3,
  ),
  // Question 231
  Question(
    id: 231,
    topic: 'Generative AI',
    question: 'What is generative AI?',
    options: [
      'A machine learning model for language translation',
      'An AI model for labeling images',
      'A specific field of AI that can be used to create content',
      'An umbrella term that includes all types of machine learning algorithms',
    ],
    correctAnswerIndex: 2,
  ),
  // Question 232
  Question(
    id: 232,
    topic: 'Infrastructure as a Service',
    question:
        'An organization wants to lease the resources they need for their customized servers from a cloud provider on a pay-as-you-go basis, instead of paying one time for hardware. Which service model should they use?',
    options: [
      'Platform as a service',
      'Infrastructure as a service',
      'Hybrid cloud',
      'Software as a service',
    ],
    correctAnswerIndex: 1,
  ),
  // Question 233
  Question(
    id: 233,
    topic: 'Data Transfer from Google Cloud',
    question:
        'An organization wants to transfer some of its data from Google Cloud. Which of these statements is true?',
    options: [
      'Customer data may not be transferred out of Google Cloud.',
      'Customers have full control of their data and may transfer it at any time.',
      'A technical support ticket must be raised with the correct department.',
      'Outgoing data transfer must be enabled in the Google Cloud console.',
    ],
    correctAnswerIndex: 1,
  ),
// Question 234
  Question(
    id: 234,
    topic: 'Four Golden Signals',
    question:
        'An organization is concerned that one of their applications takes too long to return a result. According to Google’s “Four Golden Signals,” which signal measures this aspect of the application’s performance?',
    options: [
      'Traffic',
      'Latency',
      'Errors',
      'Saturation',
    ],
    correctAnswerIndex: 1,
  ),
// Question 235
  Question(
    id: 235,
    topic: 'Data Sovereignty',
    question: 'How does the legal concept of data sovereignty affect data?',
    options: [
      'Data is subject to the laws and regulations of the country where it resides.',
      'A country has the right to access the data generated within its borders.',
      'An individual has the right to control their personal data.',
      'Data must always be encrypted in transit and at rest.',
    ],
    correctAnswerIndex: 0,
  ),
// Question 236
  Question(
    id: 236,
    topic: 'Serverless Computing',
    question:
        'An organization has a small development team that has created a web application which runs in a single container. They need a simple, serverless, and scalable way to host their container. Which Google service should the organization use?',
    options: [
      'App Engine',
      'Cloud Run',
      'Compute Engine',
      'Kubernetes Engine',
    ],
    correctAnswerIndex: 1,
  ),
// Question 237
  Question(
    id: 237,
    topic: 'Shared Responsibility Model',
    question:
        'An organization has migrated all workloads to the cloud and is reviewing their cloud security posture. Who is now responsible for securing the physical infrastructure of the data centers?',
    options: [
      'The cloud service provider',
      'The organization and the cloud service provider',
      'The organization',
      'Third-party security service providers',
    ],
    correctAnswerIndex: 0,
  ),
// Question 238
  Question(
    id: 238,
    topic: 'Google Cloud Support Plans',
    question:
        'An organization is running critical workloads in production and requires a Google Cloud support service with fast response times and a dedicated Technical Account Manager. Which customer care service level should the organization choose?',
    options: [
      'Basic',
      'Premium',
      'Enhanced',
      'Standard',
    ],
    correctAnswerIndex: 1,
  ),
// Question 239
  Question(
    id: 239,
    topic: 'Data Security in Google Cloud',
    question:
        'An organization is concerned about the unlikely event that Google Cloud infrastructure is physically accessed by someone with malicious intent. How is data protected in Google Cloud?',
    options: [
      'Data is stored on quantum computers with unbreakable encryption.',
      'Data is stored in random locations around the world to prevent it being found.',
      'Data is stored using robust encryption.',
      'Data is immediately deleted whenever an intrusion is detected.',
    ],
    correctAnswerIndex: 2,
  ),
// Question 240
  Question(
    id: 240,
    topic: 'APIs and Monetization',
    question:
        'An organization stores its important industry data in a relational database. They want to create a new revenue stream by enabling third parties to use that data in their applications. Which cloud first approach should the organization choose?',
    options: [
      'Expose data through a chargeable API.',
      'Transfer data into a non-relational database.',
      'Offer chargeable downloads of archived data.',
      'Add third-party users to their database.',
    ],
    correctAnswerIndex: 0,
  ),
// Question 241
  Question(
    id: 241,
    topic: 'Resource Hierarchy and Security Policies',
    question:
        'How does the resource hierarchy in Google Cloud help organizations implement security policies?',
    options: [
      'Policies can only be applied at the organization level and affect all projects.',
      'Projects in the resource hierarchy are not affected by security policies.',
      'Policies can only be applied to individual projects.',
      'Policies can be applied at the folder level and are inherited by projects inside the folder.',
    ],
    correctAnswerIndex: 3,
  ),
// Question 242
  Question(
    id: 242,
    topic: 'NoSQL Databases',
    question:
        'An organization needs a flexible and scalable NoSQL database with strong web and mobile application support. Which Google Cloud product or service should the organization use?',
    options: [
      'Cloud Storage',
      'Cloud Spanner',
      'BigQuery',
      'Firestore',
    ],
    correctAnswerIndex: 3,
  ),
// Question 243
  Question(
    id: 243,
    topic: 'Machine Learning with BigQuery ML',
    question:
        'A vacation home rental organization wants to predict the popularity of properties in their upcoming busy season. They do not have a data science team, and want to use their in-house database administration skills to create a machine learning model. What should the organization do?',
    options: [
      'Use BigQuery ML and create models using SQL.',
      'Use custom training in Vertex AI with TensorFlow.',
      'Build a model in AutoML using labeled data.',
      'Integrate pre-trained APIs into their application.',
    ],
    correctAnswerIndex: 0,
  ),
// Question 244
  Question(
    id: 244,
    topic: 'Data Value Chain',
    question:
        'An organization is transforming their raw data into a format that can be used to derive business insights. Which step of the data value chain does this action represent?',
    options: [
      'Data storage',
      'Data processing',
      'Data collection',
      'Data analysis',
    ],
    correctAnswerIndex: 1,
  ),
// Question 245
  Question(
    id: 245,
    topic: 'Data Governance',
    question:
        'An organization has migrated several large databases to the cloud. It wants to increase the value of its data, improve cost controls and strengthen regulatory compliance. What should the organization do?',
    options: [
      'Delete data stored for over a year.',
      'Establish an effective data governance program.',
      'Export relational data to modern NoSQL databases.',
      'Create monthly reports on data access and uses.',
    ],
    correctAnswerIndex: 1,
  ),
// Question 246
  Question(
    id: 246,
    topic: 'Cloud Cost Management',
    question:
        'An organization is concerned about their cloud costs. They want to be informed when their spending exceeds a specific threshold, rather than waiting to see their bill at the end of the month. What should the organization do?',
    options: [
      'Adjust project resource quota policies.',
      'Use historical cost data to predict future overspend.',
      'Pause virtual machines during non-business hours.',
      'Configure a budget threshold rule and alert.',
    ],
    correctAnswerIndex: 3,
  ),
// Question 247
  Question(
    id: 247,
    topic: 'Cloud Monitoring and Observability',
    question:
        'An organization wants a centralized view of their cloud infrastructure in a fully managed system that includes uptime checks. Which Google Cloud service should they use?',
    options: [
      'Cloud Trace',
      'Cloud Monitoring',
      'Cloud Profiler',
      'Cloud Logging',
    ],
    correctAnswerIndex: 1,
  ),
// Question 248
  Question(
    id: 248,
    topic: 'Machine Learning with Unstructured Data',
    question:
        'Which scenario uses machine learning to unlock business value from unstructured data?',
    options: [
      'Recommending new products based on previous purchases.',
      'Monitoring financial transactions to identify potential fraud and risk.',
      'Analyzing tabular records of product defects to predict future maintenance cycles.',
      'Determining customer sentiments from call center voice recordings.',
    ],
    correctAnswerIndex: 3,
  ),
// Question 249
  Question(
    id: 249,
    topic: 'Data Preparation for Machine Learning',
    question:
        'A cinema company wants to build a model to predict customer visit patterns for the coming year. They have three years of customer visit data across 300 theaters; however, the data has been stored in different formats by different theaters. They must train the ML model. What should they do?',
    options: [
      'Choose an ML model type that can process different formats of input data.',
      'Use the last year of data so there are fewer inconsistencies for the model to handle.',
      'Group different format types and train a different model for each group.',
      'Transform the data into a consistent format.',
    ],
    correctAnswerIndex: 3,
  ),
// Question 250
  Question(
    id: 250,
    topic: 'Kubernetes Management',
    question:
        'An organization is running Kubernetes applications across multiple cloud environments. They want a consistent and centralized management platform. Which service should they choose?',
    options: [
      'GKE Enterprise',
      'Cloud Functions',
      'Cloud Run',
      'Compute Engine',
    ],
    correctAnswerIndex: 0,
  ),
// Question 251
  Question(
    id: 251,
    topic: 'Storage Solutions for Unstructured Data',
    question:
        'An organization has a large archive of unstructured data, including video and audio files. Which storage solution should the organization use?',
    options: [
      'Cloud SQL',
      'Cloud Bigtable',
      'Cloud Spanner',
      'Cloud Storage',
    ],
    correctAnswerIndex: 3,
  ),
// Question 252
  Question(
    id: 252,
    topic: 'Managed Kubernetes Services',
    question:
        'An organization is developing applications by using Kubernetes. They want their teams to spend more time developing rather than managing clusters. Which Google Cloud service should the organization choose?',
    options: [
      'GKE Autopilot',
      'GKE Standard',
      'Cloud Run',
      'Compute Engine',
    ],
    correctAnswerIndex: 0,
  ),
// Question 253
  Question(
    id: 253,
    topic: 'Sustainability with Cloud Services',
    question:
        'An organization supplies electric car chargers in a nationwide network. They store customer and charging data in BigQuery. They want to efficiently upgrade and maintain their network to reduce waste and achieve their sustainability goals. How can Google Cloud services help the organization?',
    options: [
      'Move data from BigQuery to Cloud Storage to reduce storage costs.',
      'Provide access to third-party developers by creating an API using Apigee.',
      'Create a model in BigQuery to predict future maintenance schedules.',
      'Secure data access by using Identity and Access Management.',
    ],
    correctAnswerIndex: 2,
  ),
// Question 254
  Question(
    id: 254,
    topic: 'Network Latency',
    question:
        'An organization is hosting an application in Europe, and customers in Asia are reporting slow response times despite their fast internet connection. What is the problem?',
    options: [
      'Network latency',
      'Not enough application servers',
      'Network bandwidth',
      'Misconfigured application servers',
    ],
    correctAnswerIndex: 0,
  ),
// Question 255
  Question(
    id: 255,
    topic: 'Network Security',
    question:
        'An organization wants to control what types of network traffic are allowed to enter and leave its network and access its applications. Which security measure should the organization use?',
    options: [
      'Firewall rules',
      'Privileged access',
      '2-Step Verification',
      'Encryption keys',
    ],
    correctAnswerIndex: 0,
  ),
// Question 256
  Question(
    id: 256,
    topic: 'Cloud Service Models',
    question:
        'An organization wants to run their custom application in the cloud in a flexible and scalable way without managing any infrastructure. Which service model should they use?',
    options: [
      'Infrastructure as a service',
      'Network as a service',
      'Software as a service',
      'Platform as a service',
    ],
    correctAnswerIndex: 3,
  ),
// Question 257
  Question(
    id: 257,
    topic: 'Digital Transformation',
    question:
        'An organization is using new technologies to change its business processes and culture to develop new customer experiences and adapt to market dynamics. What is the name of this approach?',
    options: [
      'Operations optimization',
      'User personalization',
      'Data center migration',
      'Digital transformation',
    ],
    correctAnswerIndex: 3,
  ),
// Question 258
  Question(
    id: 258,
    topic: 'Application Deployment Across Regions',
    question:
        'Customers are reporting very high latencies when accessing an application from the United States. The application is currently running in a single region in Europe. What should the organization do?',
    options: [
      'Set up a new billing account in the United States.',
      'Run the application in additional zones in the European region.',
      'Run the application in additional regions in Europe.',
      'Run a replica of the application in a region in the United States.',
    ],
    correctAnswerIndex: 3,
  ),
// Question 259
  Question(
    id: 259,
    topic: 'Natural Language Processing',
    question:
        'An organization has a large dataset that contains text transcripts of conversations between their customers and service representatives. They want an automated solution to identify the topics their customers care most about. Which service should the organization use?',
    options: [
      'Natural Language API',
      'Vision API',
      'Cloud Translation API',
      'Speech-to-Text API',
    ],
    correctAnswerIndex: 0,
  ),
// Question 260
  Question(
    id: 260,
    topic: 'Data Warehousing and Analytics',
    question:
        'An organization wants to analyze data in a data warehouse. How should they proceed?',
    options: [
      'Copy unstructured data into a single large object store.',
      'Choose a system to store structured and semi-structured data that supports ad-hoc analysis and custom reporting.',
      'Import data into a semi-structured time-series database.',
      'Ensure data is stored in structured tables and rows to support transactional queries and relationships.',
    ],
    correctAnswerIndex: 1,
  ),
// Question 261
  Question(
    id: 261,
    topic: 'Resource Hierarchy and IAM Policies',
    question:
        'An organization is deciding on the layout of their resource hierarchy in Google Cloud. They have several projects within a folder. What will happen when user access policies are applied to the folder?',
    options: [
      'The policy will be inherited by the projects and their resources within the folder.',
      'The policy will be applied to all folders within the organization.',
      'The policy applies to the folder only, and will not be inherited by any projects.',
      'The policy will be inherited by the projects in the folder but will not affect their resources.',
    ],
    correctAnswerIndex: 0,
  ),
// Question 262
  Question(
    id: 262,
    topic: 'Data Quality Dimensions',
    question:
        'A retail organization is training a model to recommend products to customers for an ecommerce website. The model was trained on previous purchases, but did not include demographic information on each buyer. What dimension of the data is responsible for the model\'s poor performance?',
    options: [
      'Completeness',
      'Validity',
      'Accuracy',
      'Timeliness',
    ],
    correctAnswerIndex: 0,
  ),
// Question 263
  Question(
    id: 263,
    topic: 'Customer Retention with Machine Learning',
    question:
        'A financial organization has many customers who close their accounts every year. The organization wants to use data and AI to identify at-risk customers, so they can retain customers by offering discounts and improved services. What should the organization do?',
    options: [
      'Create a report based on last year’s customer feedback.',
      'Create a survey for all customers to identify their current level of satisfaction.',
      'Create a dashboard of previous customers that have exited, and look for obvious correlations in the visualization.',
      'Create a ML model based on the demographics and activities of previous customers that exited.',
    ],
    correctAnswerIndex: 3,
  ),
// Question 264
  Question(
    id: 264,
    topic: 'Container Orchestration with Kubernetes Engine',
    question:
        'An organization is operating multiple workloads in containers and requires full control of how the workloads are configured. Which Google Cloud service should the organization use?',
    options: [
      'Kubernetes Engine',
      'Compute Engine',
      'Cloud Functions',
      'Cloud Run',
    ],
    correctAnswerIndex: 0,
  ),
// Question 265
  Question(
    id: 265,
    topic: 'Cost Optimization with Preemptible VMs',
    question:
        'An organization runs a batch data analysis workload on a virtual machine (VM). The workload can be easily restarted without losing work, and is not time critical. Organizations must choose the lowest cost option to run the workload. What option should they choose?',
    options: [
      'A Cloud Function with a small memory limit',
      'A standard VM in a pay-as-you-go model on Compute Engine',
      'A custom VM in a pay-as-you-go model on Compute Engine',
      'A Preemptible or Spot VM on Compute Engine',
    ],
    correctAnswerIndex: 3,
  ),
// Question 266
  Question(
    id: 266,
    topic: 'Google\'s Purpose-built Servers',
    question:
        'What is a benefit of Google’s purpose-built servers compared to standard servers?',
    options: [
      'They are backward compatible with legacy disk drives.',
      'They run software that cannot be deployed on standard servers.',
      'They are cheaper to build than standard servers.',
      'They are optimized for specific tasks making them more efficient.',
    ],
    correctAnswerIndex: 3,
  ),
// Question 267
  Question(
    id: 267,
    topic: 'Relational Databases',
    question:
        'An organization needs to store daily transactional data such as customer records and purchase history. The data follows a consistent schema and is cross-referenced. Which type of service should the organization use?',
    options: [
      'Data warehouse',
      'Relational database',
      'Non-relational database',
      'Data lake',
    ],
    correctAnswerIndex: 1,
  ),
// Question 268
  Question(
    id: 268,
    topic: 'APIs',
    question:
        'What is the purpose of an application programming interface (API)?',
    options: [
      'To manage multiple containerized workloads',
      'To connect networks from different cloud providers',
      'To provide a set of instructions that allow computer programs to communicate with each other',
      'To provide cloud plugins for integrated development environments',
    ],
    correctAnswerIndex: 2,
  ),
// Question 269
  Question(
    id: 269,
    topic: 'AutoML',
    question:
        'A manufacturing organization has a large collection of images labeled as intact or defective parts. They want to use this data to build a simple solution to detect faulty parts on their production line. They have no data science expertise. Which solution should they use?',
    options: [
      'Pre-trained APIs',
      'Document AI',
      'Discovery AI for Retail',
      'AutoML',
    ],
    correctAnswerIndex: 3,
  ),
// Question 270
  Question(
    id: 270,
    topic: 'Transactional Databases',
    question:
        'An organization has an ecommerce application that requires a cost-effective, transactional database. The application will only serve customers in a single region. Which service should they use?',
    options: [
      'Cloud Bigtable',
      'Cloud Spanner',
      'Cloud SQL',
      'BigQuery',
    ],
    correctAnswerIndex: 2,
  ),
// Question 271
  Question(
    id: 271,
    topic: 'Stream Processing',
    question:
        'An organization processes batch sales data at the end of every month to analyze sales trends and derive business insights. They want to improve accuracy and make near real-time decisions. What should the organization do?',
    options: [
      'Switch from batch processing to stream processing.',
      'Filter the data so reports are generated faster.',
      'Process batch reports weekly instead of monthly.',
      'Change from a relational database to a NoSQL database.',
    ],
    correctAnswerIndex: 0,
  ),
// Question 272
  Question(
    id: 272,
    topic: 'Compute Engine Discounts',
    question:
        'An organization is using Compute Engine and wants to receive sustained-use discounts. What should the organization do?',
    options: [
      'Commit to virtual machine usage for a one or three-year period.',
      'Choose preemptible or spot instances when creating virtual machines.',
      'Choose low-powered virtual machines.',
      'Nothing. Sustained use discounts are automatically applied.',
    ],
    correctAnswerIndex: 3,
  ),
// Question 273
  Question(
    id: 273,
    topic: 'VMware Migration',
    question:
        'An organization has a large VMWare environment that they want to migrate to the cloud. They want to retain existing operational processes and tools. Which Google Cloud service should the organization use?',
    options: [
      'VMWare vSphere',
      'Bare Metal Solution',
      'Compute Engine',
      'Google Cloud VMware Engine',
    ],
    correctAnswerIndex: 3,
  ),
// Question 274
  Question(
    id: 274,
    topic: 'Compliance and Certifications',
    question:
        'An information security organization must ensure that its service providers have ISO 27001 certification. They must also access supporting documentation. Which Google Cloud tool should they use?',
    options: [
      'Security Command Center',
      'Network Intelligence Center',
      'Compliance Reports Manager',
      'Cloud Monitoring',
    ],
    correctAnswerIndex: 2,
  ),
// Question 275
  Question(
    id: 275,
    topic: 'Shared Responsibility Model',
    question:
        'An organization is deploying their servers to the cloud using the infrastructure as a service model. In the shared responsibility model, what is the cloud provider responsible for?',
    options: [
      'Physical security',
      'Data access policies',
      'Security of the operating system',
      'Security of the software',
    ],
    correctAnswerIndex: 0,
  ),
// Question 276
  Question(
    id: 276,
    topic: 'Hardware Accelerators for Machine Learning',
    question:
        'An organization is building advanced machine learning models in Google Cloud by using TensorFlow. They want to develop their models faster with purpose-built hardware. Which solution should the organization use?',
    options: [
      'GPUs',
      'CPUs',
      'CPUs',
      'TPUs',
    ],
    correctAnswerIndex: 3,
  ),
// Question 277
  Question(
    id: 277,
    topic: 'BigQuery',
    question:
        'An organization has collected petabytes of historical data. They need an advanced analysis solution that is fast, scalable, and fully managed. Which Google product or service should the organization use?',
    options: [
      'BigQuery',
      'Cloud Storage',
      'Firestore',
      'Cloud SQL',
    ],
    correctAnswerIndex: 0,
  ),
// Question 278
  Question(
    id: 278,
    topic: 'Data Backup and Recovery',
    question:
        'An organization is concerned about the risk of data loss that may occur due to hardware failures or cyber attacks. They want to restore their systems to a previous state if such an event occurs. What should the organization do?',
    options: [
      'Enable autoscaling.',
      'Set service level objectives (SLOs).',
      'Use Cloud Monitoring.',
      'Back up data regularly.',
    ],
    correctAnswerIndex: 3,
  ),
// Question 279
  Question(
    id: 279,
    topic: 'Microservices Architecture',
    question:
        'An organization wants to refactor their application by using a microservices architecture when migrating to the cloud. Which benefit would this action provide?',
    options: [
      'This migration pattern provides the fastest path to the cloud.',
      'The refactored application is more efficient and scalable.',
      'No code changes will be required.',
      'The application will become PCI-DSS compliant by default.',
    ],
    correctAnswerIndex: 1,
  ),
// Question 280
  Question(
    id: 280,
    topic: 'DDoS Protection with Cloud Armor',
    question:
        'An organization needs protection against distributed denial-of-service (DDoS) attacks. Which Google Cloud service should the organization use?',
    options: [
      'Security Command Center',
      'Google Cloud Armor',
      'Cloud Build',
      'Cloud VPN',
    ],
    correctAnswerIndex: 1,
  ),
// Question 281
  Question(
    id: 281,
    topic: 'Social Engineering Threats',
    question:
        'An organization is evaluating its defenses against cyber security threats and is concerned about the risks of social engineering by cyber criminals. How might these attacks happen?',
    options: [
      'Distributed denial-of-service attacks',
      'SQL injection attacks',
      'Phishing emails',
      'Physical damage to hardware',
    ],
    correctAnswerIndex: 2,
  ),
// Question 282
  Question(
    id: 282,
    topic: 'Hybrid Cloud',
    question:
        'An organization wants to adopt the advanced machine learning capabilities of the Google Cloud. However, regulations require data to be stored in an on-premises data center. Which approach should the organization use?',
    options: [
      'A multi-cloud approach',
      'A private-cloud approach',
      'A public-cloud approach',
      'A hybrid-cloud approach',
    ],
    correctAnswerIndex: 3,
  ),
// Question 283
  Question(
    id: 283,
    topic: 'Site Reliability Engineering (SRE)',
    question:
        'What is the Site Reliability Engineering (SRE) term for an organization\'s desired level of reliability and performance?',
    options: [
      'Scalable infrastructure',
      'Service-level indicator',
      'Service-level objective',
      'Enhanced support',
    ],
    correctAnswerIndex: 2,
  ),
// Question 284
  Question(
    id: 284,
    topic: 'Data Ownership',
    question:
        'When customer data is uploaded to Google Cloud, who owns the data?',
    options: [
      'A third party',
      'The customer and Google share ownership',
      'The customer',
      'Google',
    ],
    correctAnswerIndex: 2,
  ),
// Question 285
  Question(
    id: 285,
    topic: 'Cost Estimation',
    question:
        'An organization is planning to deploy a new workload to Google Cloud. They need an accurate estimate of the likely costs of running the workload. How should the organization create this estimate?',
    options: [
      'Use historic costs of an existing similar workload.',
      'Deploy workload to test environment to observe costs.',
      'Refer to pricing information and manually calculate an estimate.',
      'Use the Google Cloud Pricing Calculator.',
    ],
    correctAnswerIndex: 3,
  ),
// Question 286
  Question(
    id: 286,
    topic: 'Principle of Least Privilege',
    question:
        'An organization wants to ensure that they grant users only the permissions they require to perform their job responsibilities. Which security principle describes this approach?',
    options: [
      'Zero-trust',
      'Cyber resilience',
      'Security by default',
      'Least privilege',
    ],
    correctAnswerIndex: 3,
  ),
];
