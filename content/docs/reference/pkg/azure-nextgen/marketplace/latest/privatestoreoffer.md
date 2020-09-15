
---
title: "PrivateStoreOffer"
title_tag: "Resource PrivateStoreOffer | Module marketplace/latest | Package Azure NextGen"
meta_desc: "Explore the PrivateStoreOffer resource of the marketplace/latest module, including examples, input properties, output properties, lookup functions, and supporting types. The privateStore offer data structure."
---



<!-- WARNING: this file was generated by Pulumi Docs Generator. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->

The privateStore offer data structure.

{{% examples %}}
## Example Usage

{{< chooser language "typescript,python,go,csharp" / >}}
### UpdatePrivateStoreOffer
{{% example csharp %}}
```csharp
using Pulumi;
using AzureNextGen = Pulumi.AzureNextGen;

class MyStack : Stack
{
    public MyStack()
    {
        var privateStoreOffer = new AzureNextGen.Marketplace.Latest.PrivateStoreOffer("privateStoreOffer", new AzureNextGen.Marketplace.Latest.PrivateStoreOfferArgs
        {
            OfferId = "marketplacetestthirdparty.md-test-third-party-2",
            PrivateStoreId = "a0e28e55-90c4-41d8-8e34-bb7ef7775406",
        });
    }

}

```

{{% /example %}}

{{% example go %}}

```go
package main

import (
	marketplace "github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/marketplace/latest"
	"github.com/pulumi/pulumi/sdk/v2/go/pulumi"
)

func main() {
	pulumi.Run(func(ctx *pulumi.Context) error {
		_, err := marketplace.NewPrivateStoreOffer(ctx, "privateStoreOffer", &marketplace.PrivateStoreOfferArgs{
			OfferId:        pulumi.String("marketplacetestthirdparty.md-test-third-party-2"),
			PrivateStoreId: pulumi.String("a0e28e55-90c4-41d8-8e34-bb7ef7775406"),
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

private_store_offer = azure_nextgen.marketplace.latest.PrivateStoreOffer("privateStoreOffer",
    offer_id="marketplacetestthirdparty.md-test-third-party-2",
    private_store_id="a0e28e55-90c4-41d8-8e34-bb7ef7775406")

```

{{% /example %}}

{{% example typescript %}}

```typescript
import * as pulumi from "@pulumi/pulumi";
import * as azure_nextgen from "@pulumi/azure_nextgen";

const privateStoreOffer = new azure_nextgen.marketplace.latest.PrivateStoreOffer("privateStoreOffer", {
    offerId: "marketplacetestthirdparty.md-test-third-party-2",
    privateStoreId: "a0e28e55-90c4-41d8-8e34-bb7ef7775406",
});

```

{{% /example %}}

{{% /examples %}}


## Create a PrivateStoreOffer Resource {#create}
{{< chooser language "typescript,python,go,csharp" / >}}


{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/azure-nextgen/marketplace/latest/#PrivateStoreOffer">PrivateStoreOffer</a></span><span class="p">(</span><span class="nx">name</span><span class="p">:</span> <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">args</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/azure-nextgen/marketplace/latest/#PrivateStoreOfferArgs">PrivateStoreOfferArgs</a></span><span class="p">, </span><span class="nx">opts</span><span class="p">?:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span><span class="nx"><a href="/docs/reference/pkg/python/pulumi_azure-nextgen/marketplace/latest/#pulumi_azure-nextgen.marketplace/latest.PrivateStoreOffer">PrivateStoreOffer</a></span><span class="p">(</span><span class="nx">resource_name</span><span class="p">:</span> <span class="nx">str</span><span class="p">, </span><span class="nx">opts</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/python/pulumi/#pulumi.ResourceOptions">Optional[ResourceOptions]</a></span> = None<span class="p">, </span><span class="nx">e_tag</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">offer_id</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">private_store_id</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">specific_plan_ids_limitation</span><span class="p">:</span> <span class="nx">Optional[List[str]]</span> = None<span class="p">)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/marketplace/latest?tab=doc#PrivateStoreOffer">NewPrivateStoreOffer</a></span><span class="p">(</span><span class="nx">ctx</span><span class="p"> *</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span><span class="p"> </span><span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">args</span><span class="p"> </span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/marketplace/latest?tab=doc#PrivateStoreOfferArgs">PrivateStoreOfferArgs</a></span><span class="p">, </span><span class="nx">opts</span><span class="p"> ...</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/marketplace/latest?tab=doc#PrivateStoreOffer">PrivateStoreOffer</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.AzureNextGen/Pulumi.AzureNextGen.Marketplace.Latest.PrivateStoreOffer.html">PrivateStoreOffer</a></span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span><span class="p"> </span><span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.AzureNextGen/Pulumi.AzureNextGen.Marketplace.Latest.PrivateStoreOfferArgs.html">PrivateStoreOfferArgs</a></span><span class="p"> </span><span class="nx">args<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span><span class="p">? </span><span class="nx">opts = null<span class="p">)</span></code></pre></div>
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
        <span class="property-type"><a href="/docs/reference/pkg/nodejs/pulumi/azure-nextgen/marketplace/latest/#PrivateStoreOfferArgs">PrivateStoreOfferArgs</a></span>
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
        <span class="property-type"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/marketplace/latest?tab=doc#PrivateStoreOfferArgs">PrivateStoreOfferArgs</a></span>
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
        <span class="property-type"><a href="/docs/reference/pkg/dotnet/Pulumi.AzureNextGen/Pulumi.AzureNextGen.Marketplace.Latest.PrivateStoreOfferArgs.html">PrivateStoreOfferArgs</a></span>
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

## PrivateStoreOffer Resource Properties {#properties}

To learn more about resource properties and how to use them, see [Inputs and Outputs]({{< relref "/docs/intro/concepts/programming-model#outputs" >}}) in the Programming Model docs.

### Inputs

The PrivateStoreOffer resource accepts the following [input]({{< relref "/docs/intro/concepts/programming-model#outputs" >}}) properties:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="offerid_csharp">
<a href="#offerid_csharp" style="color: inherit; text-decoration: inherit;">Offer<wbr>Id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The offer ID to update or delete{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="privatestoreid_csharp">
<a href="#privatestoreid_csharp" style="color: inherit; text-decoration: inherit;">Private<wbr>Store<wbr>Id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The store ID - must use the tenant ID{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="etag_csharp">
<a href="#etag_csharp" style="color: inherit; text-decoration: inherit;">ETag</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Identifier for purposes of race condition{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="specificplanidslimitation_csharp">
<a href="#specificplanidslimitation_csharp" style="color: inherit; text-decoration: inherit;">Specific<wbr>Plan<wbr>Ids<wbr>Limitation</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">List&lt;string&gt;</a></span>
    </dt>
    <dd>{{% md %}}Plan ids limitation for this offer{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="offerid_go">
<a href="#offerid_go" style="color: inherit; text-decoration: inherit;">Offer<wbr>Id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The offer ID to update or delete{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="privatestoreid_go">
<a href="#privatestoreid_go" style="color: inherit; text-decoration: inherit;">Private<wbr>Store<wbr>Id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The store ID - must use the tenant ID{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="etag_go">
<a href="#etag_go" style="color: inherit; text-decoration: inherit;">ETag</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Identifier for purposes of race condition{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="specificplanidslimitation_go">
<a href="#specificplanidslimitation_go" style="color: inherit; text-decoration: inherit;">Specific<wbr>Plan<wbr>Ids<wbr>Limitation</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">[]string</a></span>
    </dt>
    <dd>{{% md %}}Plan ids limitation for this offer{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="offerid_nodejs">
<a href="#offerid_nodejs" style="color: inherit; text-decoration: inherit;">offer<wbr>Id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The offer ID to update or delete{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="privatestoreid_nodejs">
<a href="#privatestoreid_nodejs" style="color: inherit; text-decoration: inherit;">private<wbr>Store<wbr>Id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The store ID - must use the tenant ID{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="etag_nodejs">
<a href="#etag_nodejs" style="color: inherit; text-decoration: inherit;">e<wbr>Tag</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Identifier for purposes of race condition{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="specificplanidslimitation_nodejs">
<a href="#specificplanidslimitation_nodejs" style="color: inherit; text-decoration: inherit;">specific<wbr>Plan<wbr>Ids<wbr>Limitation</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string[]</a></span>
    </dt>
    <dd>{{% md %}}Plan ids limitation for this offer{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="offer_id_python">
<a href="#offer_id_python" style="color: inherit; text-decoration: inherit;">offer_<wbr>id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The offer ID to update or delete{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span id="private_store_id_python">
<a href="#private_store_id_python" style="color: inherit; text-decoration: inherit;">private_<wbr>store_<wbr>id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The store ID - must use the tenant ID{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="e_tag_python">
<a href="#e_tag_python" style="color: inherit; text-decoration: inherit;">e_<wbr>tag</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Identifier for purposes of race condition{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="specific_plan_ids_limitation_python">
<a href="#specific_plan_ids_limitation_python" style="color: inherit; text-decoration: inherit;">specific_<wbr>plan_<wbr>ids_<wbr>limitation</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">List[str]</a></span>
    </dt>
    <dd>{{% md %}}Plan ids limitation for this offer{{% /md %}}</dd>

</dl>
{{% /choosable %}}






### Outputs

All [input](#inputs) properties are implicitly available as output properties. Additionally, the PrivateStoreOffer resource produces the following output properties:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="createdby_csharp">
<a href="#createdby_csharp" style="color: inherit; text-decoration: inherit;">Created<wbr>By</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Private store offer creator name{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="createddate_csharp">
<a href="#createddate_csharp" style="color: inherit; text-decoration: inherit;">Created<wbr>Date</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Private store offer created date{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the resource.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="offerdisplayname_csharp">
<a href="#offerdisplayname_csharp" style="color: inherit; text-decoration: inherit;">Offer<wbr>Display<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}It will be displayed prominently in the marketplace{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="publisherdisplayname_csharp">
<a href="#publisherdisplayname_csharp" style="color: inherit; text-decoration: inherit;">Publisher<wbr>Display<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Publisher name that will be displayed prominently in the marketplace{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_csharp">
<a href="#type_csharp" style="color: inherit; text-decoration: inherit;">Type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}The type of the resource.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="uniqueofferid_csharp">
<a href="#uniqueofferid_csharp" style="color: inherit; text-decoration: inherit;">Unique<wbr>Offer<wbr>Id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Offers unique id{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="createdby_go">
<a href="#createdby_go" style="color: inherit; text-decoration: inherit;">Created<wbr>By</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Private store offer creator name{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="createddate_go">
<a href="#createddate_go" style="color: inherit; text-decoration: inherit;">Created<wbr>Date</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Private store offer created date{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the resource.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="offerdisplayname_go">
<a href="#offerdisplayname_go" style="color: inherit; text-decoration: inherit;">Offer<wbr>Display<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}It will be displayed prominently in the marketplace{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="publisherdisplayname_go">
<a href="#publisherdisplayname_go" style="color: inherit; text-decoration: inherit;">Publisher<wbr>Display<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Publisher name that will be displayed prominently in the marketplace{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_go">
<a href="#type_go" style="color: inherit; text-decoration: inherit;">Type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}The type of the resource.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="uniqueofferid_go">
<a href="#uniqueofferid_go" style="color: inherit; text-decoration: inherit;">Unique<wbr>Offer<wbr>Id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Offers unique id{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="createdby_nodejs">
<a href="#createdby_nodejs" style="color: inherit; text-decoration: inherit;">created<wbr>By</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Private store offer creator name{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="createddate_nodejs">
<a href="#createddate_nodejs" style="color: inherit; text-decoration: inherit;">created<wbr>Date</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Private store offer created date{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the resource.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="offerdisplayname_nodejs">
<a href="#offerdisplayname_nodejs" style="color: inherit; text-decoration: inherit;">offer<wbr>Display<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}It will be displayed prominently in the marketplace{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="publisherdisplayname_nodejs">
<a href="#publisherdisplayname_nodejs" style="color: inherit; text-decoration: inherit;">publisher<wbr>Display<wbr>Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Publisher name that will be displayed prominently in the marketplace{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_nodejs">
<a href="#type_nodejs" style="color: inherit; text-decoration: inherit;">type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}The type of the resource.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="uniqueofferid_nodejs">
<a href="#uniqueofferid_nodejs" style="color: inherit; text-decoration: inherit;">unique<wbr>Offer<wbr>Id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Offers unique id{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="created_by_python">
<a href="#created_by_python" style="color: inherit; text-decoration: inherit;">created_<wbr>by</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Private store offer creator name{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="created_date_python">
<a href="#created_date_python" style="color: inherit; text-decoration: inherit;">created_<wbr>date</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Private store offer created date{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the resource.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="offer_display_name_python">
<a href="#offer_display_name_python" style="color: inherit; text-decoration: inherit;">offer_<wbr>display_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}It will be displayed prominently in the marketplace{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="publisher_display_name_python">
<a href="#publisher_display_name_python" style="color: inherit; text-decoration: inherit;">publisher_<wbr>display_<wbr>name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Publisher name that will be displayed prominently in the marketplace{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="type_python">
<a href="#type_python" style="color: inherit; text-decoration: inherit;">type</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}The type of the resource.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="unique_offer_id_python">
<a href="#unique_offer_id_python" style="color: inherit; text-decoration: inherit;">unique_<wbr>offer_<wbr>id</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Offers unique id{{% /md %}}</dd>

</dl>
{{% /choosable %}}












<h2 id="package-details">Package Details</h2>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-azure-nextgen">https://github.com/pulumi/pulumi-azure-nextgen</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
</dl>
