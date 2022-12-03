<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Closed_won_alert</fullName>
        <ccEmails>kasulukumar@gmail.com</ccEmails>
        <description>Closed won alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>seshasai.addanki@yahoo.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/CustomerPortalChangePwdEmail</template>
    </alerts>
    <rules>
        <fullName>Closed won Greeting mailer</fullName>
        <actions>
            <name>Closed_won_alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
