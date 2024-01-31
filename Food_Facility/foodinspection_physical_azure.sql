/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      DimensionalModel_new.DM1
 *
 * Date Created : Sunday, October 22, 2023 21:10:29
 * Target DBMS : Microsoft Azure SQL DB
 */

/* 
 * TABLE: dim_address 
 */

CREATE TABLE dim_address(
    AddressId                varchar(10)        NOT NULL,
    address_sk               varchar(10)        NOT NULL,
    DI_CreatedDate           datetime           NULL,
    DI_WorkflowFileName      varchar(100)       NULL,
    DI_Workflow_ProcessID    varchar(100)       NULL,
    Address                  varchar(32)        NULL,
    City                     char(17)           NULL,
    State                    varchar(2)         NULL,
    Longitude                decimal(20, 20)    NULL,
    Lattitude                decimal(20, 20)    NULL,
    ZipCode                  decimal(4, 0)      NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (AddressId)
)

go


IF OBJECT_ID('dim_address') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_address >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_address >>>'
go

/* 
 * TABLE: dim_business 
 */

CREATE TABLE dim_business(
    BusinessId               varchar(10)       NOT NULL,
    business_sk              varchar(10)       NOT NULL,
    DI_CreatedDate           datetime          NULL,
    DI_WorkflowFileName      varchar(100)      NULL,
    DI_Workflow_ProcessID    varchar(100)      NULL,
    Name                     varchar(70)       NULL,
    PhoneNumber              numeric(12, 0)    NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (BusinessId)
)

go


IF OBJECT_ID('dim_business') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_business >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_business >>>'
go

/* 
 * TABLE: dim_date 
 */

CREATE TABLE dim_date(
    Date                  date            NOT NULL,
    Date_sk               varchar(10)     NOT NULL,
    dt                    varchar(10)     NULL,
    DI_CreatedDate        datetime        NULL,
    DIWorkflowFileName    varchar(100)    NULL,
    DI_ProcessID          varchar(100)    NULL,
    Day                   date            NULL,
    Month                 date            NULL,
    Year                  date            NULL,
    Quater                date            NULL,
    isWeekday             varchar(1)      NOT NULL,
    isWeekend             varchar(1)      NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (Date)
)

go


IF OBJECT_ID('dim_date') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_date >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_date >>>'
go

/* 
 * TABLE: dim_violation 
 */

CREATE TABLE dim_violation(
    InspectionId             char(10)        NOT NULL,
    violation_sk             char(10)        NULL,
    DI_Createddate           datetime        NULL,
    DI_Workflow_Filename     char(10)        NULL,
    DI_Workflow_ProcessId    varchar(10)     NULL,
    CodeScore                varchar(100)    NULL,
    ViolationCodes           varchar(250)    NULL,
    ViolationDescriptions    varchar(254)    NULL,
    ViolationCategory        varchar(10)     NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (InspectionId)
)

go


IF OBJECT_ID('dim_violation') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_violation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_violation >>>'
go

/* 
 * TABLE: fact_foodinspection 
 */

CREATE TABLE fact_foodinspection(
    business_sk              varchar(10)     NOT NULL,
    address_sk               varchar(10)     NOT NULL,
    Date_sk                  varchar(10)     NOT NULL,
    ViolationScore           varchar(100)    NULL,
    FactInspection_sk        varchar(10)     NOT NULL,
    InspectionResult         varchar(50)     NULL,
    InspectionType           varchar(50)     NULL,
    DI_CreatedDate           datetime        NULL,
    DI_Workflow_Filename     varchar(50)     NULL,
    DI_Workflow_ProcessID    varchar(50)     NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (business_sk, address_sk, Date_sk)
)

go


IF OBJECT_ID('fact_foodinspection') IS NOT NULL
    PRINT '<<< CREATED TABLE fact_foodinspection >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fact_foodinspection >>>'
go

/* 
 * TABLE: fact_violation 
 */

CREATE TABLE fact_violation(
    violation_sk            char(10)       NOT NULL,
    FactInspection_sk       varchar(10)    NOT NULL,
    FactViolation_sk        varchar(10)    NOT NULL,
    DI_CreatedDate          datetime       NULL,
    DI_Workflow_Filename    varchar(50)    NULL,
    DI_WorkflowProcessID    varchar(50)    NULL,
    CONSTRAINT PK6_1 PRIMARY KEY NONCLUSTERED (violation_sk, FactInspection_sk)
)

go


IF OBJECT_ID('fact_violation') IS NOT NULL
    PRINT '<<< CREATED TABLE fact_violation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fact_violation >>>'
go

/* 
 * INDEX: AK2 
 */

CREATE UNIQUE INDEX AK2 ON dim_address(address_sk)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dim_address') AND name='AK2')
    PRINT '<<< CREATED INDEX dim_address.AK2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dim_address.AK2 >>>'
go

/* 
 * INDEX: AK1 
 */

CREATE UNIQUE INDEX AK1 ON dim_business(business_sk)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dim_business') AND name='AK1')
    PRINT '<<< CREATED INDEX dim_business.AK1 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dim_business.AK1 >>>'
go

/* 
 * INDEX: AK4 
 */

CREATE UNIQUE INDEX AK4 ON dim_date(Date_sk)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dim_date') AND name='AK4')
    PRINT '<<< CREATED INDEX dim_date.AK4 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dim_date.AK4 >>>'
go

/* 
 * INDEX: AK3 
 */

CREATE UNIQUE INDEX AK3 ON dim_violation(violation_sk)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dim_violation') AND name='AK3')
    PRINT '<<< CREATED INDEX dim_violation.AK3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dim_violation.AK3 >>>'
go

/* 
 * INDEX: AK5 
 */

CREATE UNIQUE INDEX AK5 ON fact_foodinspection(FactInspection_sk)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('fact_foodinspection') AND name='AK5')
    PRINT '<<< CREATED INDEX fact_foodinspection.AK5 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX fact_foodinspection.AK5 >>>'
go

/* 
 * TABLE: fact_foodinspection 
 */

ALTER TABLE fact_foodinspection ADD CONSTRAINT Refdim_business31 
    FOREIGN KEY (business_sk)
    REFERENCES dim_business(business_sk)
go

ALTER TABLE fact_foodinspection ADD CONSTRAINT Refdim_address32 
    FOREIGN KEY (address_sk)
    REFERENCES dim_address(address_sk)
go

ALTER TABLE fact_foodinspection ADD CONSTRAINT Refdim_date34 
    FOREIGN KEY (Date_sk)
    REFERENCES dim_date(Date_sk)
go


/* 
 * TABLE: fact_violation 
 */

ALTER TABLE fact_violation ADD CONSTRAINT Refdim_violation33 
    FOREIGN KEY (violation_sk)
    REFERENCES dim_violation(violation_sk)
go

ALTER TABLE fact_violation ADD CONSTRAINT Reffact_foodinspection36 
    FOREIGN KEY (FactInspection_sk)
    REFERENCES fact_foodinspection(FactInspection_sk)
go


