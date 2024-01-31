# food_facility_inspection
 
![image](https://github.com/manya-reddy/food_facility_inspection/assets/113812925/b2f0a21d-f65b-4bb3-adc5-d203f69528bb)

In this document we’re going to look at the process followed to accomplish the deliverables


Deliverable 1 – 
1. Data Profiling on Alteryx 

Alteryx Workflow – Midterm Team Project – Food Inspection Facility Data 

<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/22426103-a070-4861-8ccc-ab07c7f07ca8">


 


-	Let’s Describe data inconsistencies and missing data values -
-	and How we tackled the problems with Alteryx Tools - Appened Alteryx document in main folder
<img width="361" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/f9126a25-4f6d-4ae8-9055-1c6f3298f170">
<img width="348" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/7bc5afe5-da53-4d8c-b91f-6ecac575b54e">


2. Start time of Job to run - 

 
<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/ba22728a-fe77-4294-92e3-71b2ce5560fe">

<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/affcb612-fb29-475c-93f0-3b34d7f091b3">


<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/0c4f1db4-2690-4530-be94-45fa697f278d">
<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/2c4fe545-f9c0-4168-98fa-4e197bfda6d1">
<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/72ae8ddb-1fce-475e-a97c-4773a861a89d">
<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/3feeece2-a938-4716-b151-b318c7b584a9">


<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/2ce37d5e-3659-4d20-8ba3-425c6e14fdf2">



<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/4b4dfcfd-f6ac-48c0-9752-da1d5e1675b3">

        
<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/b96def91-9fb3-4ea5-9bab-640379577bde">
<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/9554aea4-5623-42e1-adbb-3bd8faa68d46">

  
3 . Relevant DDL scripts - 

DDL Azure


SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [manyareddy].[foodfacility](

    [BusinessId] [varchar](9) NULL,
    
    [Name] [varchar](70) NULL,
    
    [Address] [varchar](32) NULL,
    
    [City] [varchar](17) NULL,
    
    [State] [varchar](2) NULL,
    
    [ZipCode] [varchar](15) NULL,
    
    [PhoneNumber] [varchar](12) NULL,
    
    [InspectionId] [varchar](9) NULL,
    
    [Date] [datetime] NULL,
    
    [InspectionType] [varchar](9) NULL,
    
    [ViolationCodes] [varchar](4) NULL,
    
    [ViolationDescriptions] [varchar](1000) NULL,
    
    [Location] [varchar](100) NULL,
    
    [DI_WorkflowFileName] [varchar](100) NULL,
    
    [DI_CreatedDate] [datetime] NULL,
    
    [DI_Workflow_ProcessID] [varchar](100) NULL
    
) ON [PRIMARY]

GO


DDL script for MySQL

'CREATE TABLE `stg_foodfacility` (

  `BusinessId` varchar(9) DEFAULT NULL,
  
  `Name` varchar(70) DEFAULT NULL,
  
  `Address` varchar(32) DEFAULT NULL,
  
  `City` varchar(17) DEFAULT NULL,
  
  `State` varchar(2) DEFAULT NULL,
  
  `ZipCode` varchar(15) DEFAULT NULL,
  
  `PhoneNumber` varchar(12) DEFAULT NULL,
  
  `InspectionId` varchar(9) DEFAULT NULL,
  
  `Date` datetime DEFAULT NULL,
  
  `InspectionType` varchar(9) DEFAULT NULL,
  
  `ViolationCodes` varchar(4) DEFAULT NULL,
  
  `ViolationDescriptions` varchar(1000) DEFAULT NULL,
  
  `Location` varchar(100) DEFAULT NULL,
  
  `DI_CreatedDate` datetime DEFAULT NULL,
  
  `DI_Workflow_ProcessID` varchar(100) DEFAULT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'





Deliverable  – 2 
ER Diagram and Physical Model
 
 

<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/ea379fdc-9e95-4605-b4e9-c5198836c4f4">
<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/375d08af-1508-45c9-bd40-19bf44cbbb18">



Deliverable 4 –

Power Bi visualisations and Tablaeu visualisations
    

 <img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/0a60bdd5-6af8-4ccc-9bde-97c5a7a35ec5">
<img width="452" alt="image" src="https://github.com/manya-reddy/food_facility_inspection/assets/113812925/d8223e62-b98c-4399-8afc-89d0f3574990">


 

  




    



