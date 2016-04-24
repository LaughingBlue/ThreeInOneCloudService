<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="ThreeInOneCloudService" generation="1" functional="0" release="0" Id="a1112409-2c41-456b-a852-89c99f7ce2fd" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="ThreeInOneCloudServiceGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="WebRole1:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/LB:WebRole1:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="WebRole2:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/LB:WebRole2:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="WebRole3:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/LB:WebRole3:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="WebRole1:APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="">
          <maps>
            <mapMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/MapWebRole1:APPINSIGHTS_INSTRUMENTATIONKEY" />
          </maps>
        </aCS>
        <aCS name="WebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/MapWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WebRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/MapWebRole1Instances" />
          </maps>
        </aCS>
        <aCS name="WebRole2:APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="">
          <maps>
            <mapMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/MapWebRole2:APPINSIGHTS_INSTRUMENTATIONKEY" />
          </maps>
        </aCS>
        <aCS name="WebRole2:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/MapWebRole2:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WebRole2Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/MapWebRole2Instances" />
          </maps>
        </aCS>
        <aCS name="WebRole3:APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="">
          <maps>
            <mapMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/MapWebRole3:APPINSIGHTS_INSTRUMENTATIONKEY" />
          </maps>
        </aCS>
        <aCS name="WebRole3:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/MapWebRole3:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WebRole3Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/MapWebRole3Instances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:WebRole1:Endpoint1">
          <toPorts>
            <inPortMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole1/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:WebRole2:Endpoint1">
          <toPorts>
            <inPortMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole2/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:WebRole3:Endpoint1">
          <toPorts>
            <inPortMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole3/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapWebRole1:APPINSIGHTS_INSTRUMENTATIONKEY" kind="Identity">
          <setting>
            <aCSMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole1/APPINSIGHTS_INSTRUMENTATIONKEY" />
          </setting>
        </map>
        <map name="MapWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole1/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWebRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole1Instances" />
          </setting>
        </map>
        <map name="MapWebRole2:APPINSIGHTS_INSTRUMENTATIONKEY" kind="Identity">
          <setting>
            <aCSMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole2/APPINSIGHTS_INSTRUMENTATIONKEY" />
          </setting>
        </map>
        <map name="MapWebRole2:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole2/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWebRole2Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole2Instances" />
          </setting>
        </map>
        <map name="MapWebRole3:APPINSIGHTS_INSTRUMENTATIONKEY" kind="Identity">
          <setting>
            <aCSMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole3/APPINSIGHTS_INSTRUMENTATIONKEY" />
          </setting>
        </map>
        <map name="MapWebRole3:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole3/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWebRole3Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole3Instances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WebRole1" generation="1" functional="0" release="0" software="D:\BlueKnight\workspace\visual studio 2015\Projects\ThreeInOneCloudService\ThreeInOneCloudService\csx\Release\roles\WebRole1" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WebRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WebRole2&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WebRole3&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole1Instances" />
            <sCSPolicyUpdateDomainMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole1UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole1FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="WebRole2" generation="1" functional="0" release="0" software="D:\BlueKnight\workspace\visual studio 2015\Projects\ThreeInOneCloudService\ThreeInOneCloudService\csx\Release\roles\WebRole2" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="8080" />
            </componentports>
            <settings>
              <aCS name="APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WebRole2&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WebRole2&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WebRole3&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole2Instances" />
            <sCSPolicyUpdateDomainMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole2UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole2FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="WebRole3" generation="1" functional="0" release="0" software="D:\BlueKnight\workspace\visual studio 2015\Projects\ThreeInOneCloudService\ThreeInOneCloudService\csx\Release\roles\WebRole3" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="8081" />
            </componentports>
            <settings>
              <aCS name="APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WebRole3&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WebRole2&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WebRole3&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole3Instances" />
            <sCSPolicyUpdateDomainMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole3UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole3FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="WebRole1UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="WebRole2UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="WebRole3UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="WebRole1FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="WebRole2FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="WebRole3FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="WebRole1Instances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="WebRole2Instances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="WebRole3Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="24952086-9cec-43c9-a9c2-80dde3f56796" ref="Microsoft.RedDog.Contract\ServiceContract\ThreeInOneCloudServiceContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="d8e78195-f77e-4453-b267-36561dac4aad" ref="Microsoft.RedDog.Contract\Interface\WebRole1:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole1:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="05c688ce-7d56-4d57-853b-ed1a7d6bbb57" ref="Microsoft.RedDog.Contract\Interface\WebRole2:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole2:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="4fddc23a-4bd6-4fbd-937e-61872b1616f7" ref="Microsoft.RedDog.Contract\Interface\WebRole3:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/ThreeInOneCloudService/ThreeInOneCloudServiceGroup/WebRole3:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>