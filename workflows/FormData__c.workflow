<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>HI_Approved</fullName>
        <description>HI Approved</description>
        <protected>false</protected>
        <recipients>
            <recipient>kentman.test1@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>seshasai.addanki@yahoo.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Lead_education</template>
    </alerts>
    <alerts>
        <fullName>emailto</fullName>
        <description>emailto</description>
        <protected>false</protected>
        <recipients>
            <field>Email_Id__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Lead_education</template>
    </alerts>
    <fieldUpdates>
        <fullName>Counter_Increment</fullName>
        <field>Counter__c</field>
        <formula>Counter__c + 1</formula>
        <name>Counter Increment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Flag_field_Updation</fullName>
        <field>FlagUp__c</field>
        <literalValue>1</literalValue>
        <name>Flag field Updation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Flag Updation</fullName>
        <actions>
            <name>Counter_Increment</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Flag_field_Updation</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>FormData__c.User_Name__c</field>
            <operation>equals</operation>
            <value>saas</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
