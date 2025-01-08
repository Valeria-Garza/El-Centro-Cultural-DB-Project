# El Centro Cultural Database Project

### **Overview**
The El Centro Cultural Database Project is a comprehensive system designed to streamline the data management processes of a community center located in Cameron Park, Brownsville, Texas. The project enhances operational efficiency, improves record-keeping, and supports community welfare initiatives by organizing information about volunteers, events, resources, and partnerships.

---

### **Project Objectives**
- **Centralized Data Management**: Provide a single source of truth for community-related data, including volunteers, events, and partner organizations.
- **Improved Reporting**: Enable efficient generation of reports for stakeholders.
- **Streamlined Operations**: Enhance the ability to document and track community services and partnerships effectively.
- **Scalability**: Ensure the database design adheres to normalization principles for better scalability and reduced redundancy.

---

### **Key Features**
1. **Volunteer Management**:
   - Tracks volunteer participation, hours contributed, and roles.
   - Supports court-ordered and community-based volunteer activities.
2. **Event Coordination**:
   - Records details of community events, including type, location, and attendance.
   - Links events to partner organizations and resources.
3. **Resource Tracking**:
   - Manages donations and resources like food, clothing, and school supplies.
4. **Community Assistance**:
   - Documents applications for assistance, including income levels and specific needs.
   - Facilitates matching community members with relevant resources.
5. **Normalization**:
   - Database tables are normalized to 3rd Normal Form (3NF) to minimize redundancy and improve data integrity.

---

### **Technologies Used**
- **Database**: MySQL
- **Data Modeling**: Conceptual, Relational, and Normalized models
- **SQL**: For data definition and manipulation
- **Tools**: ERD Plus for ER diagrams

---

### **Database Design**
1. **Conceptual Model**:
   - Represents high-level relationships between key entities like volunteers, events, resources, and partner organizations.
2. **Relational Model**:
   - Breaks down the conceptual model into detailed tables with primary and foreign key constraints.
3. **Normalization**:
   - Ensures all tables meet 1NF, 2NF, and 3NF requirements to avoid data anomalies.

---

### **Sample Data**
Here are some examples of data captured by the system:

- **Volunteers**:
  | Name           | Phone Number | Hours Volunteered | Grade |
  |----------------|--------------|-------------------|-------|
  | Johan Rodriguez | (956)426-0191 | 44                | B     |
  | Laura Martinez | (956)122-4967 | 70                | A     |

- **Events**:
  | Event ID | Type               | Month       | Members Attended |
  |----------|--------------------|-------------|------------------|
  | 100      | Educational Workshop | January     | 45               |
  | 101      | Job Fair           | February    | 75               |

- **Community Members**:
  | Name          | Service Needed       | Date Requested | Date Fulfilled |
  |---------------|----------------------|----------------|----------------|
  | Maria Lopez   | Health Screening    | 02/02/2020     | 02/05/2020     |

---

### **Reports**
- **Volunteer Report**: Lists volunteers, hours contributed, and performance grades.
- **Community Member Report**: Details assistance requested and fulfilled.
- **Event Report**: Summarizes events, attendance, and services offered.
- **Partner Organization Report**: Tracks contributions and collaboration.
- **Resource Report**: Logs donated items and their distribution.

---

### **How to Use**
1. **Database Setup**:
   - Import the SQL dump provided in the `Database Implementation` section to your MySQL server.
2. **Access Data**:
   - Use the sample queries provided in the documentation to generate reports and access data.
3. **Contribute**:
   - Fork the repository, make your changes, and submit a pull request for review.

---

### **Acknowledgments**
- **Organization**: El Centro Cultural, Cameron Park, Brownsville, Texas
- **Contributor**: Valeria Garza

---
