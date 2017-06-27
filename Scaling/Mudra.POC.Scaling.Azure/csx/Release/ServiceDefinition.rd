<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Mudra.POC.Scaling.Azure" generation="1" functional="0" release="0" Id="dd35940d-caf8-4f34-8ec9-670f52fa2fc1" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="Mudra.POC.Scaling.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="Mudra.POC.Scaling:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/LB:Mudra.POC.Scaling:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/LB:Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/MapCertificate|Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/MapMudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/MapMudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/MapMudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/MapMudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/MapMudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/MapMudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </maps>
        </aCS>
        <aCS name="Mudra.POC.ScalingInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/MapMudra.POC.ScalingInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:Mudra.POC.Scaling:Endpoint1">
          <toPorts>
            <inPortMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapCertificate|Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapMudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapMudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapMudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapMudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapMudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapMudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </setting>
        </map>
        <map name="MapMudra.POC.ScalingInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.ScalingInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="Mudra.POC.Scaling" generation="1" functional="0" release="0" software="D:\Work\Projects\BuildUpOn\Mudra.POC.Scaling\Scaling\Mudra.POC.Scaling.Azure\csx\Release\roles\Mudra.POC.Scaling" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/SW:Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Mudra.POC.Scaling&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Mudra.POC.Scaling&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.ScalingInstances" />
            <sCSPolicyUpdateDomainMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.ScalingUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.ScalingFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="Mudra.POC.ScalingUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="Mudra.POC.ScalingFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="Mudra.POC.ScalingInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="d80f2fcb-8758-47f4-90f6-917419d179a0" ref="Microsoft.RedDog.Contract\ServiceContract\Mudra.POC.Scaling.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="2f0899c6-494f-4e3e-b24b-1c73499227da" ref="Microsoft.RedDog.Contract\Interface\Mudra.POC.Scaling:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="37c6edb0-d148-4dc0-bb67-6ca5cf373624" ref="Microsoft.RedDog.Contract\Interface\Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/Mudra.POC.Scaling.Azure/Mudra.POC.Scaling.AzureGroup/Mudra.POC.Scaling:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>