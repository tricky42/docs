
---
title: "ListDomainRecommendations"
title_tag: "Function ListDomainRecommendations | Module domainregistration/latest | Package Azure NextGen"
meta_desc: "Explore the ListDomainRecommendations function of the domainregistration/latest module, including examples, input properties, output properties, and supporting types. "
---



<!-- WARNING: this file was generated by Pulumi Docs Generator. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->




## Using ListDomainRecommendations {#using}

{{< chooser language "typescript,python,go,csharp" / >}}


{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">function </span>listDomainRecommendations<span class="p">(</span><span class="nx">args</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/azure-nextgen/domainregistration/latest/#ListDomainRecommendationsArgs">ListDomainRecommendationsArgs</a></span><span class="p">, </span><span class="nx">opts</span><span class="p">?:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#InvokeOptions">InvokeOptions</a></span><span class="p">): Promise&lt;<span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/azure-nextgen/domainregistration/latest/#ListDomainRecommendationsResult">ListDomainRecommendationsResult</a></span>></span></code></pre></div>
{{% /choosable %}}


{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span>list_domain_recommendations(</span><span class="nx">keywords</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">max_domain_recommendations</span><span class="p">:</span> <span class="nx">Optional[int]</span> = None<span class="p">, </span><span class="nx">opts</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/python/pulumi/#pulumi.InvokeOptions">Optional[InvokeOptions]</a></span> = None<span class="p">) -&gt;</span> ListDomainRecommendationsResult</code></pre></div>
{{% /choosable %}}


{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>ListDomainRecommendations<span class="p">(</span><span class="nx">ctx</span><span class="p"> *</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v2/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">args</span><span class="p"> *</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/domainregistration/latest?tab=doc#ListDomainRecommendationsArgs">ListDomainRecommendationsArgs</a></span><span class="p">, </span><span class="nx">opts</span><span class="p"> ...</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v2/go/pulumi?tab=doc#InvokeOption">InvokeOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/domainregistration/latest?tab=doc#ListDomainRecommendationsResult">ListDomainRecommendationsResult</a></span>, error)</span></code></pre></div>

{{% /choosable %}}


{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public static class </span><span class="nx">ListDomainRecommendations </span><span class="p">{</span><span class="k">
    public static </span>Task&lt;<span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.AzureNextGen/Pulumi.AzureNextGen.Domainregistration/latest.ListDomainRecommendationsResult.html">ListDomainRecommendationsResult</a></span>> <span class="p">InvokeAsync(</span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.AzureNextGen/Pulumi.AzureNextGen.DomainRegistration.Latest.ListDomainRecommendationsArgs.html">ListDomainRecommendationsArgs</a></span><span class="p"> </span><span class="nx">args<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.InvokeOptions.html">InvokeOptions</a></span><span class="p">? </span><span class="nx">opts = null<span class="p">)</span><span class="p">
}</span></code></pre></div>
{{% /choosable %}}



The following arguments are supported:



{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span id="keywords_csharp">
<a href="#keywords_csharp" style="color: inherit; text-decoration: inherit;">Keywords</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Keywords to be used for generating domain recommendations.{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="maxdomainrecommendations_csharp">
<a href="#maxdomainrecommendations_csharp" style="color: inherit; text-decoration: inherit;">Max<wbr>Domain<wbr>Recommendations</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">int</a></span>
    </dt>
    <dd>{{% md %}}Maximum number of recommendations.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span id="keywords_go">
<a href="#keywords_go" style="color: inherit; text-decoration: inherit;">Keywords</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Keywords to be used for generating domain recommendations.{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="maxdomainrecommendations_go">
<a href="#maxdomainrecommendations_go" style="color: inherit; text-decoration: inherit;">Max<wbr>Domain<wbr>Recommendations</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#integer">int</a></span>
    </dt>
    <dd>{{% md %}}Maximum number of recommendations.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span id="keywords_nodejs">
<a href="#keywords_nodejs" style="color: inherit; text-decoration: inherit;">keywords</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Keywords to be used for generating domain recommendations.{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="maxdomainrecommendations_nodejs">
<a href="#maxdomainrecommendations_nodejs" style="color: inherit; text-decoration: inherit;">max<wbr>Domain<wbr>Recommendations</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/integer">number</a></span>
    </dt>
    <dd>{{% md %}}Maximum number of recommendations.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span id="keywords_python">
<a href="#keywords_python" style="color: inherit; text-decoration: inherit;">keywords</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Keywords to be used for generating domain recommendations.{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span id="max_domain_recommendations_python">
<a href="#max_domain_recommendations_python" style="color: inherit; text-decoration: inherit;">max_<wbr>domain_<wbr>recommendations</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">int</a></span>
    </dt>
    <dd>{{% md %}}Maximum number of recommendations.{{% /md %}}</dd>

</dl>
{{% /choosable %}}








## ListDomainRecommendations Result {#result}

The following output properties are available:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="nextlink_csharp">
<a href="#nextlink_csharp" style="color: inherit; text-decoration: inherit;">Next<wbr>Link</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Link to next page of resources.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="value_csharp">
<a href="#value_csharp" style="color: inherit; text-decoration: inherit;">Value</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#nameidentifierresponse">List&lt;Pulumi.<wbr>Azure<wbr>Next<wbr>Gen.<wbr>Domain<wbr>Registration.<wbr>Latest.<wbr>Outputs.<wbr>Name<wbr>Identifier<wbr>Response&gt;</a></span>
    </dt>
    <dd>{{% md %}}Collection of resources.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="nextlink_go">
<a href="#nextlink_go" style="color: inherit; text-decoration: inherit;">Next<wbr>Link</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Link to next page of resources.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="value_go">
<a href="#value_go" style="color: inherit; text-decoration: inherit;">Value</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#nameidentifierresponse">[]Name<wbr>Identifier<wbr>Response</a></span>
    </dt>
    <dd>{{% md %}}Collection of resources.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="nextlink_nodejs">
<a href="#nextlink_nodejs" style="color: inherit; text-decoration: inherit;">next<wbr>Link</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Link to next page of resources.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="value_nodejs">
<a href="#value_nodejs" style="color: inherit; text-decoration: inherit;">value</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#nameidentifierresponse">Name<wbr>Identifier<wbr>Response[]</a></span>
    </dt>
    <dd>{{% md %}}Collection of resources.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="next_link_python">
<a href="#next_link_python" style="color: inherit; text-decoration: inherit;">next_<wbr>link</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Link to next page of resources.{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span id="value_python">
<a href="#value_python" style="color: inherit; text-decoration: inherit;">value</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#nameidentifierresponse">List[Name<wbr>Identifier<wbr>Response]</a></span>
    </dt>
    <dd>{{% md %}}Collection of resources.{{% /md %}}</dd>

</dl>
{{% /choosable %}}








## Supporting Types


<h4 id="nameidentifierresponse">Name<wbr>Identifier<wbr>Response</h4>
{{% choosable language nodejs %}}
> See the   <a href="/docs/reference/pkg/nodejs/pulumi/azure-nextgen/types/output/#NameIdentifierResponse">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the   <a href="https://pkg.go.dev/github.com/pulumi/pulumi-azure-nextgen/sdk/go/azure-nextgen/domainregistration/latest?tab=doc#NameIdentifierResponse">output</a> API doc for this type.
{{% /choosable %}}
{{% choosable language csharp %}}
> See the   <a href="/docs/reference/pkg/dotnet/Pulumi.AzureNextGen/Pulumi.AzureNextGen.DomainRegistration.Latest.Outputs.NameIdentifierResponse.html">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span id="name_csharp">
<a href="#name_csharp" style="color: inherit; text-decoration: inherit;">Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the object.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span id="name_go">
<a href="#name_go" style="color: inherit; text-decoration: inherit;">Name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://golang.org/pkg/builtin/#string">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the object.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span id="name_nodejs">
<a href="#name_nodejs" style="color: inherit; text-decoration: inherit;">name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span>
    </dt>
    <dd>{{% md %}}Name of the object.{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span id="name_python">
<a href="#name_python" style="color: inherit; text-decoration: inherit;">name</a>
</span> 
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://docs.python.org/3/library/stdtypes.html">str</a></span>
    </dt>
    <dd>{{% md %}}Name of the object.{{% /md %}}</dd>

</dl>
{{% /choosable %}}









<h2 id="package-details">Package Details</h2>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-azure-nextgen">https://github.com/pulumi/pulumi-azure-nextgen</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
</dl>
