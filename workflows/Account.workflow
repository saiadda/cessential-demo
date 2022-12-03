<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Source_Captured</fullName>
        <description>Source Captured</description>
        <protected>false</protected>
        <recipients>
            <recipient>seshasai.addanki@yahoo.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Lead_education</template>
    </alerts>
    <fieldUpdates>
        <fullName>Account_owner_Update</fullName>
        <field>OwnerId</field>
        <lookupValue>seshasai.addanki@yahoo.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Account owner Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <outboundMessages>
        <fullName>test_outbount_message1</fullName>
        <apiVersion>46.0</apiVersion>
        <endpointUrl>https://www.google.com</endpointUrl>
        <fields>AccountSource</fields>
        <fields>AnnualRevenue</fields>
        <fields>BillingCity</fields>
        <fields>BillingCountry</fields>
        <fields>Discount_Offered__c</fields>
        <fields>Duration__c</fields>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>seshasai.addanki@yahoo.com</integrationUser>
        <name>test outbount message1</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Account owner Update</fullName>
        <actions>
            <name>Account_owner_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>$Profile.Name = &apos;System Administrator&apos;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Time dependendt</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.AccountSource</field>
            <operation>equals</operation>
            <value>Web</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Source_Captured</name>
                <type>Alert</type>
            </actions>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
