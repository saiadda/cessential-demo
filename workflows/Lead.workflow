<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>lead_converted</fullName>
        <ccEmails>sai4a3@gmail.com</ccEmails>
        <description>lead converted</description>
        <protected>false</protected>
        <recipients>
            <recipient>seshasai.addanki@yahoo.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Lead_education</template>
    </alerts>
    <rules>
        <fullName>Lead Account Creation</fullName>
        <actions>
            <name>lead_converted</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Closed - Converted</value>
        </criteriaItems>
        <description>Lead Account Creation</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Mailer trigger when lead for education industry is generated</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Industry</field>
            <operation>equals</operation>
            <value>Education</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
