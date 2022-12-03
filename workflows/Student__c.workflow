<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Student_fieldupdate_rule</fullName>
        <field>Student_Status__c</field>
        <formula>if(Student_fee__c &lt; 5000,&apos;Installment candidate&apos;,&apos;Full payment&apos;)</formula>
        <name>Student fieldupdate rule</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Student email workflow</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Student__c.Student_fee__c</field>
            <operation>lessThan</operation>
            <value>5000</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Student fieldupdate rule</fullName>
        <actions>
            <name>Student_fieldupdate_rule</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Student__c.Student_fee__c</field>
            <operation>lessThan</operation>
            <value>5000</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Student wf</fullName>
        <actions>
            <name>Student_registered_with_1st_installment_5000</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Student__c.Student_fee__c</field>
            <operation>lessThan</operation>
            <value>5000</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Student_registered_with_1st_installment_5000</fullName>
        <assignedTo>seshasai.addanki@yahoo.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>hi,
Student registered with 1st installment &lt; 5000</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>Student__c.CreatedDate</offsetFromField>
        <priority>High</priority>
        <protected>true</protected>
        <status>Not Started</status>
        <subject>Student registered with 1st installment &lt; 5000</subject>
    </tasks>
</Workflow>
