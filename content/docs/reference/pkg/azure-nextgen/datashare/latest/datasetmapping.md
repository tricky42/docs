
---
title: "DataSetMapping"
title_tag: "Resource DataSetMapping | Module datashare/latest | Package Azure NextGen"
meta_desc: "Explore the DataSetMapping resource of the datashare/latest module, including examples, input properties, output properties, lookup functions, and supporting types. A data set mapping data transfer object."
---



<!-- WARNING: this file was generated by Pulumi Docs Generator. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->

A data set mapping data transfer object.

{{% examples %}}
## Example Usage

{{< chooser language "typescript,python,go,csharp" / >}}
### DataSetMappings_Create
{{% example csharp %}}
```csharp
using Pulumi;
using AzureNextGen = Pulumi.AzureNextGen;

class MyStack : Stack
{
    public MyStack()
    {
        var dataSetMapping = new AzureNextGen.DataShare.Latest.DataSetMapping("dataSetMapping", new AzureNextGen.DataShare.Latest.DataSetMappingArgs
        {
            AccountName = "Account1",
            DataSetMappingName = "DatasetMapping1",
            Kind = "Blob",
            ResourceGroupName = "SampleResourceGroup",
            ShareSubscriptionName = "ShareSubscription1",
        });
    }

}

```

{{% /example %}}

{{% example go %}}

```go
package main

import (
	datashare "github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/datashare/latest"
	"github.com/pulumi/pulumi/sdk/v2/go/pulumi"
)

func main() {
	pulumi.Run(func(ctx *pulumi.Context) error {
		_, err := datashare.NewDataSetMapping(ctx, "dataSetMapping", &datashare.DataSetMappingArgs{
			AccountName:           pulumi.String("Account1"),
			DataSetMappingName:    pulumi.String("DatasetMapping1"),
			Kind:                  pulumi.String("Blob"),
			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
		})
		if err != nil {
			return err
		}
		return nil
	})
}

```

{{% /example %}}

{{% example python %}}

```python
import pulumi
import pulumi_azure_nextgen as azure_nextgen

data_set_mapping = azure_nextgen.datashare.latest.DataSetMapping("dataSetMapping",
    account_name="Account1",
    data_set_mapping_name="DatasetMapping1",
    kind="Blob",
    resource_group_name="SampleResourceGroup",
    share_subscription_name="ShareSubscription1")

```

{{% /example %}}

{{% example typescript %}}

```typescript
import * as pulumi from "@pulumi/pulumi";
import * as azure_nextgen from "@pulumi/azure_nextgen";

const dataSetMapping = new azure_nextgen.datashare.latest.DataSetMapping("dataSetMapping", {
    accountName: "Account1",
    dataSetMappingName: "DatasetMapping1",
    kind: "Blob",
    resourceGroupName: "SampleResourceGroup",
    shareSubscriptionName: "ShareSubscription1",
});

```

{{% /example %}}

### DataSetMappings_SqlDB_Create
{{% example csharp %}}
```csharp
using Pulumi;
using AzureNextGen = Pulumi.AzureNextGen;

class MyStack : Stack
{
    public MyStack()
    {
        var dataSetMapping = new AzureNextGen.DataShare.Latest.DataSetMapping("dataSetMapping", new AzureNextGen.DataShare.Latest.DataSetMappingArgs
        {
            AccountName = "Account1",
            DataSetMappingName = "DatasetMapping1",
            Kind = "SqlDBTable",
            ResourceGroupName = "SampleResourceGroup",
            ShareSubscriptionName = "ShareSubscription1",
        });
    }

}

```

{{% /example %}}

{{% example go %}}

```go
package main

import (
	datashare "github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/datashare/latest"
	"github.com/pulumi/pulumi/sdk/v2/go/pulumi"
)

func main() {
	pulumi.Run(func(ctx *pulumi.Context) error {
		_, err := datashare.NewDataSetMapping(ctx, "dataSetMapping", &datashare.DataSetMappingArgs{
			AccountName:           pulumi.String("Account1"),
			DataSetMappingName:    pulumi.String("DatasetMapping1"),
			Kind:                  pulumi.String("SqlDBTable"),
			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
		})
		if err != nil {
			return err
		}
		return nil
	})
}

```

{{% /example %}}

{{% example python %}}

```python
import pulumi
import pulumi_azure_nextgen as azure_nextgen

data_set_mapping = azure_nextgen.datashare.latest.DataSetMapping("dataSetMapping",
    account_name="Account1",
    data_set_mapping_name="DatasetMapping1",
    kind="SqlDBTable",
    resource_group_name="SampleResourceGroup",
    share_subscription_name="ShareSubscription1")

```

{{% /example %}}

{{% example typescript %}}

```typescript
import * as pulumi from "@pulumi/pulumi";
import * as azure_nextgen from "@pulumi/azure_nextgen";

const dataSetMapping = new azure_nextgen.datashare.latest.DataSetMapping("dataSetMapping", {
    accountName: "Account1",
    dataSetMappingName: "DatasetMapping1",
    kind: "SqlDBTable",
    resourceGroupName: "SampleResourceGroup",
    shareSubscriptionName: "ShareSubscription1",
});

```

{{% /example %}}

### DataSetMappings_SqlDWDataSetToAdlsGen2File_Create
{{% example csharp %}}
```csharp
using Pulumi;
using AzureNextGen = Pulumi.AzureNextGen;

class MyStack : Stack
{
    public MyStack()
    {
        var dataSetMapping = new AzureNextGen.DataShare.Latest.DataSetMapping("dataSetMapping", new AzureNextGen.DataShare.Latest.DataSetMappingArgs
        {
            AccountName = "Account1",
            DataSetMappingName = "DatasetMapping1",
            Kind = "AdlsGen2File",
            ResourceGroupName = "SampleResourceGroup",
            ShareSubscriptionName = "ShareSubscription1",
        });
    }

}

```

{{% /example %}}

{{% example go %}}

```go
package main

import (
	datashare "github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/datashare/latest"
	"github.com/pulumi/pulumi/sdk/v2/go/pulumi"
)

func main() {
	pulumi.Run(func(ctx *pulumi.Context) error {
		_, err := datashare.NewDataSetMapping(ctx, "dataSetMapping", &datashare.DataSetMappingArgs{
			AccountName:           pulumi.String("Account1"),
			DataSetMappingName:    pulumi.String("DatasetMapping1"),
			Kind:                  pulumi.String("AdlsGen2File"),
			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
		})
		if err != nil {
			return err
		}
		return nil
	})
}

```

{{% /example %}}

{{% example python %}}

```python
import pulumi
import pulumi_azure_nextgen as azure_nextgen

data_set_mapping = azure_nextgen.datashare.latest.DataSetMapping("dataSetMapping",
    account_name="Account1",
    data_set_mapping_name="DatasetMapping1",
    kind="AdlsGen2File",
    resource_group_name="SampleResourceGroup",
    share_subscription_name="ShareSubscription1")

```

{{% /example %}}

{{% example typescript %}}

```typescript
import * as pulumi from "@pulumi/pulumi";
import * as azure_nextgen from "@pulumi/azure_nextgen";

const dataSetMapping = new azure_nextgen.datashare.latest.DataSetMapping("dataSetMapping", {
    accountName: "Account1",
    dataSetMappingName: "DatasetMapping1",
    kind: "AdlsGen2File",
    resourceGroupName: "SampleResourceGroup",
    shareSubscriptionName: "ShareSubscription1",
});

```

{{% /example %}}

### DataSetMappings_SqlDW_Create
{{% example csharp %}}
```csharp
using Pulumi;
using AzureNextGen = Pulumi.AzureNextGen;

class MyStack : Stack
{
    public MyStack()
    {
        var dataSetMapping = new AzureNextGen.DataShare.Latest.DataSetMapping("dataSetMapping", new AzureNextGen.DataShare.Latest.DataSetMappingArgs
        {
            AccountName = "Account1",
            DataSetMappingName = "DatasetMapping1",
            Kind = "SqlDWTable",
            ResourceGroupName = "SampleResourceGroup",
            ShareSubscriptionName = "ShareSubscription1",
        });
    }

}

```

{{% /example %}}

{{% example go %}}

```go
package main

import (
	datashare "github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/datashare/latest"
	"github.com/pulumi/pulumi/sdk/v2/go/pulumi"
)

func main() {
	pulumi.Run(func(ctx *pulumi.Context) error {
		_, err := datashare.NewDataSetMapping(ctx, "dataSetMapping", &datashare.DataSetMappingArgs{
			AccountName:           pulumi.String("Account1"),
			DataSetMappingName:    pulumi.String("DatasetMapping1"),
			Kind:                  pulumi.String("SqlDWTable"),
			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
		})
		if err != nil {
			return err
		}
		return nil
	})
}

```

{{% /example %}}

{{% example python %}}

```python
import pulumi
import pulumi_azure_nextgen as azure_nextgen

data_set_mapping = azure_nextgen.datashare.latest.DataSetMapping("dataSetMapping",
    account_name="Account1",
    data_set_mapping_name="DatasetMapping1",
    kind="SqlDWTable",
    resource_group_name="SampleResourceGroup",
    share_subscription_name="ShareSubscription1")

```

{{% /example %}}

{{% example typescript %}}

```typescript
import * as pulumi from "@pulumi/pulumi";
import * as azure_nextgen from "@pulumi/azure_nextgen";

const dataSetMapping = new azure_nextgen.datashare.latest.DataSetMapping("dataSetMapping", {
    accountName: "Account1",
    dataSetMappingName: "DatasetMapping1",
    kind: "SqlDWTable",
    resourceGroupName: "SampleResourceGroup",
    shareSubscriptionName: "ShareSubscription1",
});

```

{{% /example %}}

{{% /examples %}}


## Create a DataSetMapping Resource {#create}
{{< chooser language "typescript,python,go,csharp" / >}}


{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/azure-nextgen/datashare/latest/#DataSetMapping">DataSetMapping</a></span><span class="p">(</span><span class="nx">name</span><span class="p">:</span> <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">args</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/azure-nextgen/datashare/latest/#DataSetMappingArgs">DataSetMappingArgs</a></span><span class="p">, </span><span class="nx">opts</span><span class="p">?:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span><span class="nx"><a href="/docs/reference/pkg/python/pulumi_azure-nextgen/datashare/latest/#pulumi_azure-nextgen.datashare/latest.DataSetMapping">DataSetMapping</a></span><span class="p">(</span><span class="nx">resource_name</span><span class="p">:</span> <span class="nx">str</span><span class="p">, </span><span class="nx">opts</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/python/pulumi/#pulumi.ResourceOptions">Optional[ResourceOptions]</a></span> = None<span class="p">, </span><span class="nx">account_name</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">data_set_mapping_name</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">kind</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">resource_group_name</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">share_subscription_name</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/datashare/latest?tab=doc#DataSetMapping">NewDataSetMapping</a></span><span class="p">(</span><span class="nx">ctx</span><span class="p"> *</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span><span class="p"> </span><span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">args</span><span class="p"> </span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/datashare/latest?tab=doc#DataSetMappingArgs">DataSetMappingArgs</a></span><span class="p">, </span><span class="nx">opts</span><span class="p"> ...</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/datashare/latest?tab=doc#DataSetMapping">DataSetMapping</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.AzureNextGen/Pulumi.AzureNextGen.DataShare.Latest.DataSetMapping.html">DataSetMapping</a></span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span><span class="p"> </span><span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.AzureNextGen/Pulumi.AzureNextGen.DataShare.Latest.DataSetMappingArgs.html">DataSetMappingArgs</a></span><span class="p"> </span><span class="nx">args<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span><span class="p">? </span><span class="nx">opts = null<span class="p">)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language nodejs %}}

<dl class="resources-properties">
  
    <dt
        class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>
      The unique name of the resource.
    </dd>
  
    <dt
        class="property-required" title="Required">
        <span>args</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="/docs/reference/pkg/nodejs/pulumi/azure-nextgen/datashare/latest/#DataSetMappingArgs">DataSetMappingArgs</a></span>
    </dt>
    <dd>
      The arguments to resource properties.
    </dd>
  
    <dt
        class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span>
    </dt>
    <dd>
      Bag of options to control resource&#39;s behavior.
    </dd>
  

</dl>

{{% /choosable %}}

{{% choosable language python %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>resource_name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>The unique name of the resource.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
        <span class="property-type">
            <a href="/docs/reference/pkg/python/pulumi/#pulumi.ResourceOptions">ResourceOptions</a>
        </span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>
{{% /choosable %}}

{{% choosable language go %}}

<dl class="resources-properties">
  
    <dt
        class="property-optional" title="Optional">
        <span>ctx</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span>
    </dt>
    <dd>
      Context object for the current deployment.
    </dd>
  
    <dt
        class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>
      The unique name of the resource.
    </dd>
  
    <dt
        class="property-required" title="Required">
        <span>args</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/datashare/latest?tab=doc#DataSetMappingArgs">DataSetMappingArgs</a></span>
    </dt>
    <dd>
      The arguments to resource properties.
    </dd>
  
    <dt
        class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span>
    </dt>
    <dd>
      Bag of options to control resource&#39;s behavior.
    </dd>
  

</dl>

{{% /choosable %}}

{{% choosable language csharp %}}

<dl class="resources-properties">
  
    <dt
        class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>
      The unique name of the resource.
    </dd>
  
    <dt
        class="property-required" title="Required">
        <span>args</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="/docs/reference/pkg/dotnet/Pulumi.AzureNextGen/Pulumi.AzureNextGen.DataShare.Latest.DataSetMappingArgs.html">DataSetMappingArgs</a></span>
    </dt>
    <dd>
      The arguments to resource properties.
    </dd>
  
    <dt
        class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>
    </dt>
    <dd>
      Bag of options to control resource&#39;s behavior.
    </dd>
  

</dl>

{{% /choosable %}}

## DataSetMapping Resource Properties {#properties}

To learn more about resource properties and how to use them, see [Inputs and Outputs]({{< relref "/docs/intro/concepts/programming-model#outputs" >}}) in the Programming Model docs.

### Inputs

The DataSetMapping resource accepts the following [input]({{< relref "/docs/intro/concepts/programming-model#outputs" >}}) properties:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="accountname_csharp">
<a href="#accountname_csharp" style="color: inherit; text-decoration: inherit;">Account<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The name of the share account.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="datasetmappingname_csharp">
<a href="#datasetmappingname_csharp" style="color: inherit; text-decoration: inherit;">Data<wbr>Set<wbr>Mapping<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The name of the data set mapping to be created.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="kind_csharp">
<a href="#kind_csharp" style="color: inherit; text-decoration: inherit;">Kind</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Kind of data set mapping.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="resourcegroupname_csharp">
<a href="#resourcegroupname_csharp" style="color: inherit; text-decoration: inherit;">Resource<wbr>Group<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The resource group name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="sharesubscriptionname_csharp">
<a href="#sharesubscriptionname_csharp" style="color: inherit; text-decoration: inherit;">Share<wbr>Subscription<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The name of the share subscription which will hold the data set sink.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="accountname_go">
<a href="#accountname_go" style="color: inherit; text-decoration: inherit;">Account<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The name of the share account.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="datasetmappingname_go">
<a href="#datasetmappingname_go" style="color: inherit; text-decoration: inherit;">Data<wbr>Set<wbr>Mapping<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The name of the data set mapping to be created.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="kind_go">
<a href="#kind_go" style="color: inherit; text-decoration: inherit;">Kind</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Kind of data set mapping.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="resourcegroupname_go">
<a href="#resourcegroupname_go" style="color: inherit; text-decoration: inherit;">Resource<wbr>Group<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The resource group name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="sharesubscriptionname_go">
<a href="#sharesubscriptionname_go" style="color: inherit; text-decoration: inherit;">Share<wbr>Subscription<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The name of the share subscription which will hold the data set sink.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="accountname_nodejs">
<a href="#accountname_nodejs" style="color: inherit; text-decoration: inherit;">account<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The name of the share account.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="datasetmappingname_nodejs">
<a href="#datasetmappingname_nodejs" style="color: inherit; text-decoration: inherit;">data<wbr>Set<wbr>Mapping<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The name of the data set mapping to be created.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="kind_nodejs">
<a href="#kind_nodejs" style="color: inherit; text-decoration: inherit;">kind</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Kind of data set mapping.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="resourcegroupname_nodejs">
<a href="#resourcegroupname_nodejs" style="color: inherit; text-decoration: inherit;">resource<wbr>Group<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The resource group name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="sharesubscriptionname_nodejs">
<a href="#sharesubscriptionname_nodejs" style="color: inherit; text-decoration: inherit;">share<wbr>Subscription<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The name of the share subscription which will hold the data set sink.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="account_name_python">
<a href="#account_name_python" style="color: inherit; text-decoration: inherit;">account_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The name of the share account.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="data_set_mapping_name_python">
<a href="#data_set_mapping_name_python" style="color: inherit; text-decoration: inherit;">data_<wbr>set_<wbr>mapping_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The name of the data set mapping to be created.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="kind_python">
<a href="#kind_python" style="color: inherit; text-decoration: inherit;">kind</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Kind of data set mapping.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="resource_group_name_python">
<a href="#resource_group_name_python" style="color: inherit; text-decoration: inherit;">resource_<wbr>group_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The resource group name.{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="share_subscription_name_python">
<a href="#share_subscription_name_python" style="color: inherit; text-decoration: inherit;">share_<wbr>subscription_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The name of the share subscription which will hold the data set sink.{{% /md %}}</dd>

</dl>
{{% /choosable %}}






### Outputs

All [input](#inputs) properties are implicitly available as output properties. Additionally, the DataSetMapping resource produces the following output properties:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="id_csharp">
<a href="#id_csharp" style="color: inherit; text-decoration: inherit;">Id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The provider-assigned unique ID for this managed resource.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="name_csharp">
<a href="#name_csharp" style="color: inherit; text-decoration: inherit;">Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the azure resource{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_csharp">
<a href="#type_csharp" style="color: inherit; text-decoration: inherit;">Type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Type of the azure resource{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="id_go">
<a href="#id_go" style="color: inherit; text-decoration: inherit;">Id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The provider-assigned unique ID for this managed resource.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="name_go">
<a href="#name_go" style="color: inherit; text-decoration: inherit;">Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the azure resource{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_go">
<a href="#type_go" style="color: inherit; text-decoration: inherit;">Type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Type of the azure resource{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="id_nodejs">
<a href="#id_nodejs" style="color: inherit; text-decoration: inherit;">id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The provider-assigned unique ID for this managed resource.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="name_nodejs">
<a href="#name_nodejs" style="color: inherit; text-decoration: inherit;">name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the azure resource{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_nodejs">
<a href="#type_nodejs" style="color: inherit; text-decoration: inherit;">type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Type of the azure resource{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="id_python">
<a href="#id_python" style="color: inherit; text-decoration: inherit;">id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The provider-assigned unique ID for this managed resource.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="name_python">
<a href="#name_python" style="color: inherit; text-decoration: inherit;">name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Name of the azure resource{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_python">
<a href="#type_python" style="color: inherit; text-decoration: inherit;">type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Type of the azure resource{{% /md %}}</dd>

</dl>
{{% /choosable %}}












<h2 id="package-details">Package Details</h2>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-azure-nextgen">https://github.com/pulumi/pulumi-azure-nextgen</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
</dl>
