<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Birthday_email_alert</fullName>
        <ccEmails>atchut007@gmail.com</ccEmails>
        <ccEmails>sai4a3@gmail.com</ccEmails>
        <description>Birthday email alert</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Birthday_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>Check_Status</fullName>
        <field>Checked_Status__c</field>
        <literalValue>Check IN</literalValue>
        <name>Check Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Birthday Wish Workflow</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This workflow is used to send email on birthday</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Birthday_email_alert</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Check_Status</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Contact.Birthdate</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Mailer triggered to Guest when the checked status Changes to check out</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Checked_Status__c</field>
            <operation>equals</operation>
            <value>Check OUT</value>
        </criteriaItems>
        <description>Mailer triggered to Guest when the checked status Changes to check out</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
