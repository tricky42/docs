
---
title: "GetIscsiDisk"
title_tag: "Function GetIscsiDisk | Module storsimple | Package Azure NextGen"
meta_desc: "Explore the GetIscsiDisk function of the storsimple module, including examples, input properties, output properties, and supporting types. "
---



<!-- WARNING: this file was generated by Pulumi Docs Generator. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->




## Using GetIscsiDisk {#using}

{{< chooser language "typescript,python,go,csharp" / >}}


{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">function </span>getIscsiDisk<span class="p">(</span><span class="nx">args</span><span class="p">:</span> <span class="nx">GetIscsiDiskArgs</span><span class="p">, </span><span class="nx">opts</span><span class="p">?:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#InvokeOptions">InvokeOptions</a></span><span class="p">): Promise&lt;<span class="nx">GetIscsiDiskResult</span>></span></code></pre></div>
{{% /choosable %}}


{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span>get_iscsi_disk(</span><span class="nx">device_name</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">disk_name</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">iscsi_server_name</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">manager_name</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">resource_group_name</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">opts</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/python/pulumi/#pulumi.InvokeOptions">Optional[InvokeOptions]</a></span> = None<span class="p">) -&gt;</span> GetIscsiDiskResult</code></pre></div>
{{% /choosable %}}


{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>LookupIscsiDisk<span class="p">(</span><span class="nx">ctx</span><span class="p"> *</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v2/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">args</span><span class="p"> *</span><span class="nx">LookupIscsiDiskArgs</span><span class="p">, </span><span class="nx">opts</span><span class="p"> ...</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v2/go/pulumi?tab=doc#InvokeOption">InvokeOption</a></span><span class="p">) (*<span class="nx">LookupIscsiDiskResult</span>, error)</span></code></pre></div>

> Note: This function is named `LookupIscsiDisk` in the Go SDK.

{{% /choosable %}}


{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public static class </span><span class="nx">GetIscsiDisk </span><span class="p">{</span><span class="k">
    public static </span>Task&lt;<span class="nx">GetIscsiDiskResult</span>> <span class="p">InvokeAsync(</span><span class="nx">GetIscsiDiskArgs</span><span class="p"> </span><span class="nx">args<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.InvokeOptions.html">InvokeOptions</a></span><span class="p">? </span><span class="nx">opts = null<span class="p">)</span><span class="p">
}</span></code></pre></div>
{{% /choosable %}}



The following arguments are supported:



{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="devicename_csharp">
<a href="#devicename_csharp" style="color: inherit; text-decoration: inherit;">Device<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The device name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="diskname_csharp">
<a href="#diskname_csharp" style="color: inherit; text-decoration: inherit;">Disk<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The disk name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="iscsiservername_csharp">
<a href="#iscsiservername_csharp" style="color: inherit; text-decoration: inherit;">Iscsi<wbr>Server<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The iSCSI server name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="managername_csharp">
<a href="#managername_csharp" style="color: inherit; text-decoration: inherit;">Manager<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The manager name{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="resourcegroupname_csharp">
<a href="#resourcegroupname_csharp" style="color: inherit; text-decoration: inherit;">Resource<wbr>Group<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The resource group name{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="devicename_go">
<a href="#devicename_go" style="color: inherit; text-decoration: inherit;">Device<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The device name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="diskname_go">
<a href="#diskname_go" style="color: inherit; text-decoration: inherit;">Disk<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The disk name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="iscsiservername_go">
<a href="#iscsiservername_go" style="color: inherit; text-decoration: inherit;">Iscsi<wbr>Server<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The iSCSI server name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="managername_go">
<a href="#managername_go" style="color: inherit; text-decoration: inherit;">Manager<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The manager name{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="resourcegroupname_go">
<a href="#resourcegroupname_go" style="color: inherit; text-decoration: inherit;">Resource<wbr>Group<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The resource group name{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="devicename_nodejs">
<a href="#devicename_nodejs" style="color: inherit; text-decoration: inherit;">device<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The device name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="diskname_nodejs">
<a href="#diskname_nodejs" style="color: inherit; text-decoration: inherit;">disk<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The disk name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="iscsiservername_nodejs">
<a href="#iscsiservername_nodejs" style="color: inherit; text-decoration: inherit;">iscsi<wbr>Server<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The iSCSI server name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="managername_nodejs">
<a href="#managername_nodejs" style="color: inherit; text-decoration: inherit;">manager<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The manager name{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="resourcegroupname_nodejs">
<a href="#resourcegroupname_nodejs" style="color: inherit; text-decoration: inherit;">resource<wbr>Group<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The resource group name{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="device_name_python">
<a href="#device_name_python" style="color: inherit; text-decoration: inherit;">device_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The device name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="disk_name_python">
<a href="#disk_name_python" style="color: inherit; text-decoration: inherit;">disk_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The disk name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="iscsi_server_name_python">
<a href="#iscsi_server_name_python" style="color: inherit; text-decoration: inherit;">iscsi_<wbr>server_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The iSCSI server name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="manager_name_python">
<a href="#manager_name_python" style="color: inherit; text-decoration: inherit;">manager_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The manager name{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="resource_group_name_python">
<a href="#resource_group_name_python" style="color: inherit; text-decoration: inherit;">resource_<wbr>group_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The resource group name{{% /md %}}</dd>

</dl>
{{% /choosable %}}








## GetIscsiDisk Result {#result}

The following output properties are available:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="accesscontrolrecords_csharp">
<a href="#accesscontrolrecords_csharp" style="color: inherit; text-decoration: inherit;">Access<wbr>Control<wbr>Records</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">List&lt;string&gt;</a></span>
    </dt>
    <dd>{{% md %}}The access control records.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="datapolicy_csharp">
<a href="#datapolicy_csharp" style="color: inherit; text-decoration: inherit;">Data<wbr>Policy</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The data policy.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="diskstatus_csharp">
<a href="#diskstatus_csharp" style="color: inherit; text-decoration: inherit;">Disk<wbr>Status</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The disk status.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="localusedcapacityinbytes_csharp">
<a href="#localusedcapacityinbytes_csharp" style="color: inherit; text-decoration: inherit;">Local<wbr>Used<wbr>Capacity<wbr>In<wbr>Bytes</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">int</a></span>
    </dt>
    <dd>{{% md %}}The local used capacity in bytes.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="monitoringstatus_csharp">
<a href="#monitoringstatus_csharp" style="color: inherit; text-decoration: inherit;">Monitoring<wbr>Status</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The monitoring.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="name_csharp">
<a href="#name_csharp" style="color: inherit; text-decoration: inherit;">Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The name.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="provisionedcapacityinbytes_csharp">
<a href="#provisionedcapacityinbytes_csharp" style="color: inherit; text-decoration: inherit;">Provisioned<wbr>Capacity<wbr>In<wbr>Bytes</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">int</a></span>
    </dt>
    <dd>{{% md %}}The provisioned capacity in bytes.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_csharp">
<a href="#type_csharp" style="color: inherit; text-decoration: inherit;">Type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The type.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="usedcapacityinbytes_csharp">
<a href="#usedcapacityinbytes_csharp" style="color: inherit; text-decoration: inherit;">Used<wbr>Capacity<wbr>In<wbr>Bytes</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">int</a></span>
    </dt>
    <dd>{{% md %}}The used capacity in bytes.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="description_csharp">
<a href="#description_csharp" style="color: inherit; text-decoration: inherit;">Description</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The description.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="accesscontrolrecords_go">
<a href="#accesscontrolrecords_go" style="color: inherit; text-decoration: inherit;">Access<wbr>Control<wbr>Records</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">[]string</a></span>
    </dt>
    <dd>{{% md %}}The access control records.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="datapolicy_go">
<a href="#datapolicy_go" style="color: inherit; text-decoration: inherit;">Data<wbr>Policy</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The data policy.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="diskstatus_go">
<a href="#diskstatus_go" style="color: inherit; text-decoration: inherit;">Disk<wbr>Status</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The disk status.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="localusedcapacityinbytes_go">
<a href="#localusedcapacityinbytes_go" style="color: inherit; text-decoration: inherit;">Local<wbr>Used<wbr>Capacity<wbr>In<wbr>Bytes</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#integer">int</a></span>
    </dt>
    <dd>{{% md %}}The local used capacity in bytes.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="monitoringstatus_go">
<a href="#monitoringstatus_go" style="color: inherit; text-decoration: inherit;">Monitoring<wbr>Status</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The monitoring.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="name_go">
<a href="#name_go" style="color: inherit; text-decoration: inherit;">Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The name.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="provisionedcapacityinbytes_go">
<a href="#provisionedcapacityinbytes_go" style="color: inherit; text-decoration: inherit;">Provisioned<wbr>Capacity<wbr>In<wbr>Bytes</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#integer">int</a></span>
    </dt>
    <dd>{{% md %}}The provisioned capacity in bytes.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_go">
<a href="#type_go" style="color: inherit; text-decoration: inherit;">Type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The type.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="usedcapacityinbytes_go">
<a href="#usedcapacityinbytes_go" style="color: inherit; text-decoration: inherit;">Used<wbr>Capacity<wbr>In<wbr>Bytes</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#integer">int</a></span>
    </dt>
    <dd>{{% md %}}The used capacity in bytes.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="description_go">
<a href="#description_go" style="color: inherit; text-decoration: inherit;">Description</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The description.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="accesscontrolrecords_nodejs">
<a href="#accesscontrolrecords_nodejs" style="color: inherit; text-decoration: inherit;">access<wbr>Control<wbr>Records</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string[]</a></span>
    </dt>
    <dd>{{% md %}}The access control records.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="datapolicy_nodejs">
<a href="#datapolicy_nodejs" style="color: inherit; text-decoration: inherit;">data<wbr>Policy</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The data policy.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="diskstatus_nodejs">
<a href="#diskstatus_nodejs" style="color: inherit; text-decoration: inherit;">disk<wbr>Status</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The disk status.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="localusedcapacityinbytes_nodejs">
<a href="#localusedcapacityinbytes_nodejs" style="color: inherit; text-decoration: inherit;">local<wbr>Used<wbr>Capacity<wbr>In<wbr>Bytes</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/integer">number</a></span>
    </dt>
    <dd>{{% md %}}The local used capacity in bytes.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="monitoringstatus_nodejs">
<a href="#monitoringstatus_nodejs" style="color: inherit; text-decoration: inherit;">monitoring<wbr>Status</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The monitoring.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="name_nodejs">
<a href="#name_nodejs" style="color: inherit; text-decoration: inherit;">name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The name.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="provisionedcapacityinbytes_nodejs">
<a href="#provisionedcapacityinbytes_nodejs" style="color: inherit; text-decoration: inherit;">provisioned<wbr>Capacity<wbr>In<wbr>Bytes</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/integer">number</a></span>
    </dt>
    <dd>{{% md %}}The provisioned capacity in bytes.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_nodejs">
<a href="#type_nodejs" style="color: inherit; text-decoration: inherit;">type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The type.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="usedcapacityinbytes_nodejs">
<a href="#usedcapacityinbytes_nodejs" style="color: inherit; text-decoration: inherit;">used<wbr>Capacity<wbr>In<wbr>Bytes</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/integer">number</a></span>
    </dt>
    <dd>{{% md %}}The used capacity in bytes.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="description_nodejs">
<a href="#description_nodejs" style="color: inherit; text-decoration: inherit;">description</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The description.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="access_control_records_python">
<a href="#access_control_records_python" style="color: inherit; text-decoration: inherit;">access_<wbr>control_<wbr>records</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">List[str]</a></span>
    </dt>
    <dd>{{% md %}}The access control records.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="data_policy_python">
<a href="#data_policy_python" style="color: inherit; text-decoration: inherit;">data_<wbr>policy</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The data policy.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="disk_status_python">
<a href="#disk_status_python" style="color: inherit; text-decoration: inherit;">disk_<wbr>status</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The disk status.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="local_used_capacity_in_bytes_python">
<a href="#local_used_capacity_in_bytes_python" style="color: inherit; text-decoration: inherit;">local_<wbr>used_<wbr>capacity_<wbr>in_<wbr>bytes</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">int</a></span>
    </dt>
    <dd>{{% md %}}The local used capacity in bytes.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="monitoring_status_python">
<a href="#monitoring_status_python" style="color: inherit; text-decoration: inherit;">monitoring_<wbr>status</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The monitoring.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="name_python">
<a href="#name_python" style="color: inherit; text-decoration: inherit;">name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The name.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="provisioned_capacity_in_bytes_python">
<a href="#provisioned_capacity_in_bytes_python" style="color: inherit; text-decoration: inherit;">provisioned_<wbr>capacity_<wbr>in_<wbr>bytes</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">int</a></span>
    </dt>
    <dd>{{% md %}}The provisioned capacity in bytes.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_python">
<a href="#type_python" style="color: inherit; text-decoration: inherit;">type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The type.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="used_capacity_in_bytes_python">
<a href="#used_capacity_in_bytes_python" style="color: inherit; text-decoration: inherit;">used_<wbr>capacity_<wbr>in_<wbr>bytes</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">int</a></span>
    </dt>
    <dd>{{% md %}}The used capacity in bytes.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="description_python">
<a href="#description_python" style="color: inherit; text-decoration: inherit;">description</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The description.{{% /md %}}</dd>

</dl>
{{% /choosable %}}









<h2 id="package-details">Package Details</h2>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-azure-nextgen">https://github.com/pulumi/pulumi-azure-nextgen</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
</dl>

