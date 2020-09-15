
---
title: "GetSqlServer"
title_tag: "Function GetSqlServer | Module azuredata/v20190724preview | Package Azure NextGen"
meta_desc: "Explore the GetSqlServer function of the azuredata/v20190724preview module, including examples, input properties, output properties, and supporting types. "
---



<!-- WARNING: this file was generated by Pulumi Docs Generator. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->




## Using GetSqlServer {#using}

{{< chooser language "typescript,python,go,csharp" / >}}


{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">function </span>getSqlServer<span class="p">(</span><span class="nx">args</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/azure-nextgen/azuredata/v20190724preview/#GetSqlServerArgs">GetSqlServerArgs</a></span><span class="p">, </span><span class="nx">opts</span><span class="p">?:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#InvokeOptions">InvokeOptions</a></span><span class="p">): Promise&lt;<span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/azure-nextgen/azuredata/v20190724preview/#GetSqlServerResult">GetSqlServerResult</a></span>></span></code></pre></div>
{{% /choosable %}}


{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span>get_sql_server(</span><span class="nx">expand</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">resource_group_name</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">sql_server_name</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">sql_server_registration_name</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">opts</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/python/pulumi/#pulumi.InvokeOptions">Optional[InvokeOptions]</a></span> = None<span class="p">) -&gt;</span> GetSqlServerResult</code></pre></div>
{{% /choosable %}}


{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>LookupSqlServer<span class="p">(</span><span class="nx">ctx</span><span class="p"> *</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v2/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">args</span><span class="p"> *</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/azuredata/v20190724preview?tab=doc#LookupSqlServerArgs">LookupSqlServerArgs</a></span><span class="p">, </span><span class="nx">opts</span><span class="p"> ...</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v2/go/pulumi?tab=doc#InvokeOption">InvokeOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/azuredata/v20190724preview?tab=doc#LookupSqlServerResult">LookupSqlServerResult</a></span>, error)</span></code></pre></div>

> Note: This function is named `LookupSqlServer` in the Go SDK.

{{% /choosable %}}


{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public static class </span><span class="nx">GetSqlServer </span><span class="p">{</span><span class="k">
    public static </span>Task&lt;<span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.AzureNextGen/Pulumi.AzureNextGen.Azuredata/v20190724preview.GetSqlServerResult.html">GetSqlServerResult</a></span>> <span class="p">InvokeAsync(</span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.AzureNextGen/Pulumi.AzureNextGen.AzureData.V20190724Preview.GetSqlServerArgs.html">GetSqlServerArgs</a></span><span class="p"> </span><span class="nx">args<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.InvokeOptions.html">InvokeOptions</a></span><span class="p">? </span><span class="nx">opts = null<span class="p">)</span><span class="p">
}</span></code></pre></div>
{{% /choosable %}}



The following arguments are supported:



{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="resourcegroupname_csharp">
<a href="#resourcegroupname_csharp" style="color: inherit; text-decoration: inherit;">Resource<wbr>Group<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="sqlservername_csharp">
<a href="#sqlservername_csharp" style="color: inherit; text-decoration: inherit;">Sql<wbr>Server<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the SQL Server.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="sqlserverregistrationname_csharp">
<a href="#sqlserverregistrationname_csharp" style="color: inherit; text-decoration: inherit;">Sql<wbr>Server<wbr>Registration<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the SQL Server registration.{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="expand_csharp">
<a href="#expand_csharp" style="color: inherit; text-decoration: inherit;">Expand</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The child resources to include in the response.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="resourcegroupname_go">
<a href="#resourcegroupname_go" style="color: inherit; text-decoration: inherit;">Resource<wbr>Group<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="sqlservername_go">
<a href="#sqlservername_go" style="color: inherit; text-decoration: inherit;">Sql<wbr>Server<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the SQL Server.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="sqlserverregistrationname_go">
<a href="#sqlserverregistrationname_go" style="color: inherit; text-decoration: inherit;">Sql<wbr>Server<wbr>Registration<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the SQL Server registration.{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="expand_go">
<a href="#expand_go" style="color: inherit; text-decoration: inherit;">Expand</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The child resources to include in the response.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="resourcegroupname_nodejs">
<a href="#resourcegroupname_nodejs" style="color: inherit; text-decoration: inherit;">resource<wbr>Group<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="sqlservername_nodejs">
<a href="#sqlservername_nodejs" style="color: inherit; text-decoration: inherit;">sql<wbr>Server<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the SQL Server.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="sqlserverregistrationname_nodejs">
<a href="#sqlserverregistrationname_nodejs" style="color: inherit; text-decoration: inherit;">sql<wbr>Server<wbr>Registration<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the SQL Server registration.{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="expand_nodejs">
<a href="#expand_nodejs" style="color: inherit; text-decoration: inherit;">expand</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The child resources to include in the response.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="resource_group_name_python">
<a href="#resource_group_name_python" style="color: inherit; text-decoration: inherit;">resource_<wbr>group_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="sql_server_name_python">
<a href="#sql_server_name_python" style="color: inherit; text-decoration: inherit;">sql_<wbr>server_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Name of the SQL Server.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="sql_server_registration_name_python">
<a href="#sql_server_registration_name_python" style="color: inherit; text-decoration: inherit;">sql_<wbr>server_<wbr>registration_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Name of the SQL Server registration.{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="expand_python">
<a href="#expand_python" style="color: inherit; text-decoration: inherit;">expand</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The child resources to include in the response.{{% /md %}}</dd>

</dl>
{{% /choosable %}}








## GetSqlServer Result {#result}

The following output properties are available:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="name_csharp">
<a href="#name_csharp" style="color: inherit; text-decoration: inherit;">Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The name of the resource{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_csharp">
<a href="#type_csharp" style="color: inherit; text-decoration: inherit;">Type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="cores_csharp">
<a href="#cores_csharp" style="color: inherit; text-decoration: inherit;">Cores</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">int</a></span>
    </dt>
    <dd>{{% md %}}Cores of the Sql Server.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="edition_csharp">
<a href="#edition_csharp" style="color: inherit; text-decoration: inherit;">Edition</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Sql Server Edition.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="propertybag_csharp">
<a href="#propertybag_csharp" style="color: inherit; text-decoration: inherit;">Property<wbr>Bag</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Sql Server Json Property Bag.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="registrationid_csharp">
<a href="#registrationid_csharp" style="color: inherit; text-decoration: inherit;">Registration<wbr>ID</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}ID for Parent Sql Server Registration.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="version_csharp">
<a href="#version_csharp" style="color: inherit; text-decoration: inherit;">Version</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Version of the Sql Server.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="name_go">
<a href="#name_go" style="color: inherit; text-decoration: inherit;">Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The name of the resource{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_go">
<a href="#type_go" style="color: inherit; text-decoration: inherit;">Type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="cores_go">
<a href="#cores_go" style="color: inherit; text-decoration: inherit;">Cores</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#integer">int</a></span>
    </dt>
    <dd>{{% md %}}Cores of the Sql Server.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="edition_go">
<a href="#edition_go" style="color: inherit; text-decoration: inherit;">Edition</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Sql Server Edition.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="propertybag_go">
<a href="#propertybag_go" style="color: inherit; text-decoration: inherit;">Property<wbr>Bag</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Sql Server Json Property Bag.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="registrationid_go">
<a href="#registrationid_go" style="color: inherit; text-decoration: inherit;">Registration<wbr>ID</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}ID for Parent Sql Server Registration.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="version_go">
<a href="#version_go" style="color: inherit; text-decoration: inherit;">Version</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Version of the Sql Server.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="name_nodejs">
<a href="#name_nodejs" style="color: inherit; text-decoration: inherit;">name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The name of the resource{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_nodejs">
<a href="#type_nodejs" style="color: inherit; text-decoration: inherit;">type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="cores_nodejs">
<a href="#cores_nodejs" style="color: inherit; text-decoration: inherit;">cores</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/integer">number</a></span>
    </dt>
    <dd>{{% md %}}Cores of the Sql Server.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="edition_nodejs">
<a href="#edition_nodejs" style="color: inherit; text-decoration: inherit;">edition</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Sql Server Edition.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="propertybag_nodejs">
<a href="#propertybag_nodejs" style="color: inherit; text-decoration: inherit;">property<wbr>Bag</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Sql Server Json Property Bag.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="registrationid_nodejs">
<a href="#registrationid_nodejs" style="color: inherit; text-decoration: inherit;">registration<wbr>ID</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}ID for Parent Sql Server Registration.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="version_nodejs">
<a href="#version_nodejs" style="color: inherit; text-decoration: inherit;">version</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Version of the Sql Server.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="name_python">
<a href="#name_python" style="color: inherit; text-decoration: inherit;">name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The name of the resource{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_python">
<a href="#type_python" style="color: inherit; text-decoration: inherit;">type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="cores_python">
<a href="#cores_python" style="color: inherit; text-decoration: inherit;">cores</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">int</a></span>
    </dt>
    <dd>{{% md %}}Cores of the Sql Server.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="edition_python">
<a href="#edition_python" style="color: inherit; text-decoration: inherit;">edition</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Sql Server Edition.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="property_bag_python">
<a href="#property_bag_python" style="color: inherit; text-decoration: inherit;">property_<wbr>bag</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Sql Server Json Property Bag.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="registration_id_python">
<a href="#registration_id_python" style="color: inherit; text-decoration: inherit;">registration_<wbr>id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}ID for Parent Sql Server Registration.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="version_python">
<a href="#version_python" style="color: inherit; text-decoration: inherit;">version</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Version of the Sql Server.{{% /md %}}</dd>

</dl>
{{% /choosable %}}









<h2 id="package-details">Package Details</h2>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-azure-nextgen">https://github.com/pulumi/pulumi-azure-nextgen</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
</dl>
