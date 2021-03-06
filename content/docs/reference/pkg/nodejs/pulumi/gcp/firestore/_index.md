---
title: "Module firestore"
title_tag: "Module firestore | Package @pulumi/gcp | Node.js SDK"
linktitle: "firestore"
meta_desc: "Explore members of the firestore module in the @pulumi/gcp package."
git_sha: "687830ffe071199872d057c29c8b0105da51c99a"
block_external_search_index: true
---

<!-- WARNING: this page was generated by a tool. Do not edit it by hand. -->
<!-- To change it, please see https://github.com/pulumi/docs/tree/master/tools/tscdocgen. -->

{{< resource-docs-alert "gcp" >}}




<h3>Resources</h3>
<ul class="api">
    <li><a href="#Index"><span class="symbol resource"></span>Index</a></li>
</ul>


<h3>Others</h3>
<ul class="api">
    <li><a href="#IndexArgs"><span class="symbol api"></span>IndexArgs</a></li>
    <li><a href="#IndexState"><span class="symbol api"></span>IndexState</a></li>
</ul>


<h2 id="resources">Resources</h2>
<h3 class="pdoc-module-header" id="Index" data-link-title="Index">
    <a href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L22">
        Resource <strong>Index</strong>
    </a>
</h3>

<pre class="highlight"><code><span class='kr'>class</span> <span class='nx'>Index</span> <span class='kr'>extends</span> <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResource'>CustomResource</a></code></pre>

Cloud Firestore indexes enable simple and complex queries against documents in a database.
 This resource manages composite indexes and not single
field indexes.

To get more information about Index, see:

* [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.collectionGroups.indexes)
* How-to Guides
    * [Official Documentation](https://cloud.google.com/firestore/docs/query-data/indexing)

#### Example Usage

<h4 class="pdoc-member-header" id="Index-constructor">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L83"> <b>constructor</b></a>
</h4>


<pre class="highlight"><code><span class='kd'></span><span class='kd'>new</span> Index(name: <span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>, args: <a href='#IndexArgs'>IndexArgs</a>, opts?: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions'>pulumi.CustomResourceOptions</a>)</code></pre>


Create a Index resource with the given unique name, arguments, and options.

* `name` The _unique_ name of the resource.
* `args` The arguments to use to populate this resource&#39;s properties.
* `opts` A bag of options that control this resource&#39;s behavior.

<h4 class="pdoc-member-header" id="Index-get">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L32">method <b>get</b></a>
</h4>


<pre class="highlight"><code><span class='kd'>public static </span>get(name: <span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>, id: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#ID'>pulumi.ID</a>&gt;, state?: <a href='#IndexState'>IndexState</a>, opts?: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions'>pulumi.CustomResourceOptions</a>): <a href='#Index'>Index</a></code></pre>


Get an existing Index resource's state with the given name, ID, and optional extra
properties used to qualify the lookup.

<h4 class="pdoc-member-header" id="Index-getProvider">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L22">method <b>getProvider</b></a>
</h4>


<pre class="highlight"><code><span class='kd'></span>getProvider(moduleMember: <span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>): <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#ProviderResource'>ProviderResource</a> | <span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/undefined'>undefined</a></span></code></pre>

<h4 class="pdoc-member-header" id="Index-isInstance">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L43">method <b>isInstance</b></a>
</h4>


<pre class="highlight"><code><span class='kd'>public static </span>isInstance(obj: <span class='kd'><a href='https://www.typescriptlang.org/docs/handbook/basic-types.html#any'>any</a></span>): obj is Index</code></pre>


Returns true if the given object is an instance of Index.  This is designed to work even
when multiple copies of the Pulumi SDK have been loaded into the same process.

<h4 class="pdoc-member-header" id="Index-collection">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L53">property <b>collection</b></a>
</h4>

<pre class="highlight"><code><span class='kd'>public </span>collection: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Output'>pulumi.Output</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>&gt;;</code></pre>

The collection being indexed.

<h4 class="pdoc-member-header" id="Index-database">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L57">property <b>database</b></a>
</h4>

<pre class="highlight"><code><span class='kd'>public </span>database: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Output'>pulumi.Output</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span> | <span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/undefined'>undefined</a></span>&gt;;</code></pre>

The Firestore database id. Defaults to `"(default)"`.

<h4 class="pdoc-member-header" id="Index-fields">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L67">property <b>fields</b></a>
</h4>

<pre class="highlight"><code><span class='kd'>public </span>fields: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Output'>pulumi.Output</a>&lt;<a href='/docs/reference/pkg/nodejs/pulumi/gcp/types/output/#IndexField'>IndexField</a>[]&gt;;</code></pre>

The fields supported by this index. The last field entry is always for
the field path `__name__`. If, on creation, `__name__` was not
specified as the last field, it will be added automatically with the
same direction as that of the last field defined. If the final field
in a composite index is not directional, the `__name__` will be
ordered `"ASCENDING"` (unless explicitly specified otherwise).
Structure is documented below.

<h4 class="pdoc-member-header" id="Index-id">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L22">property <b>id</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>id: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Output'>Output</a>&lt;<a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#ID'>ID</a>&gt;;</code></pre>

id is the provider-assigned unique ID for this managed resource.  It is set during
deployments and may be missing (undefined) during planning phases.

<h4 class="pdoc-member-header" id="Index-name">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L72">property <b>name</b></a>
</h4>

<pre class="highlight"><code><span class='kd'>public </span>name: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Output'>pulumi.Output</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>&gt;;</code></pre>

A server defined name for this index. Format:
'projects/{{project}}/databases/{{database}}/collectionGroups/{{collection}}/indexes/{{server_generated_id}}'

<h4 class="pdoc-member-header" id="Index-project">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L77">property <b>project</b></a>
</h4>

<pre class="highlight"><code><span class='kd'>public </span>project: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Output'>pulumi.Output</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>&gt;;</code></pre>

The ID of the project in which the resource belongs.
If it is not provided, the provider project is used.

<h4 class="pdoc-member-header" id="Index-queryScope">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L83">property <b>queryScope</b></a>
</h4>

<pre class="highlight"><code><span class='kd'>public </span>queryScope: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Output'>pulumi.Output</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span> | <span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/undefined'>undefined</a></span>&gt;;</code></pre>

The scope at which a query is run.
Default value is `COLLECTION`.
Possible values are `COLLECTION` and `COLLECTION_GROUP`.

<h4 class="pdoc-member-header" id="Index-urn">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L22">property <b>urn</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>urn: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Output'>Output</a>&lt;<a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#URN'>URN</a>&gt;;</code></pre>

urn is the stable logical URN used to distinctly address a resource, both before and after
deployments.



<h2 id="apis">Others</h2>
<h3 class="pdoc-module-header" id="IndexArgs" data-link-title="IndexArgs">
    <a href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L172">
        interface <strong>IndexArgs</strong>
    </a>
</h3>

<pre class="highlight"><code><span class='kr'>interface</span> <span class='nx'>IndexArgs</span></code></pre>

The set of arguments for constructing a Index resource.

<h4 class="pdoc-member-header" id="IndexArgs-collection">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L176">property <b>collection</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>collection: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>&gt;;</code></pre>

The collection being indexed.

<h4 class="pdoc-member-header" id="IndexArgs-database">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L180">property <b>database</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>database?: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>&gt;;</code></pre>

The Firestore database id. Defaults to `"(default)"`.

<h4 class="pdoc-member-header" id="IndexArgs-fields">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L190">property <b>fields</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>fields: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<a href='/docs/reference/pkg/nodejs/pulumi/gcp/types/input/#IndexField'>IndexField</a>&gt;[]&gt;;</code></pre>

The fields supported by this index. The last field entry is always for
the field path `__name__`. If, on creation, `__name__` was not
specified as the last field, it will be added automatically with the
same direction as that of the last field defined. If the final field
in a composite index is not directional, the `__name__` will be
ordered `"ASCENDING"` (unless explicitly specified otherwise).
Structure is documented below.

<h4 class="pdoc-member-header" id="IndexArgs-project">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L195">property <b>project</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>project?: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>&gt;;</code></pre>

The ID of the project in which the resource belongs.
If it is not provided, the provider project is used.

<h4 class="pdoc-member-header" id="IndexArgs-queryScope">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L201">property <b>queryScope</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>queryScope?: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>&gt;;</code></pre>

The scope at which a query is run.
Default value is `COLLECTION`.
Possible values are `COLLECTION` and `COLLECTION_GROUP`.

<h3 class="pdoc-module-header" id="IndexState" data-link-title="IndexState">
    <a href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L132">
        interface <strong>IndexState</strong>
    </a>
</h3>

<pre class="highlight"><code><span class='kr'>interface</span> <span class='nx'>IndexState</span></code></pre>

Input properties used for looking up and filtering Index resources.

<h4 class="pdoc-member-header" id="IndexState-collection">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L136">property <b>collection</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>collection?: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>&gt;;</code></pre>

The collection being indexed.

<h4 class="pdoc-member-header" id="IndexState-database">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L140">property <b>database</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>database?: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>&gt;;</code></pre>

The Firestore database id. Defaults to `"(default)"`.

<h4 class="pdoc-member-header" id="IndexState-fields">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L150">property <b>fields</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>fields?: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<a href='/docs/reference/pkg/nodejs/pulumi/gcp/types/input/#IndexField'>IndexField</a>&gt;[]&gt;;</code></pre>

The fields supported by this index. The last field entry is always for
the field path `__name__`. If, on creation, `__name__` was not
specified as the last field, it will be added automatically with the
same direction as that of the last field defined. If the final field
in a composite index is not directional, the `__name__` will be
ordered `"ASCENDING"` (unless explicitly specified otherwise).
Structure is documented below.

<h4 class="pdoc-member-header" id="IndexState-name">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L155">property <b>name</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>name?: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>&gt;;</code></pre>

A server defined name for this index. Format:
'projects/{{project}}/databases/{{database}}/collectionGroups/{{collection}}/indexes/{{server_generated_id}}'

<h4 class="pdoc-member-header" id="IndexState-project">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L160">property <b>project</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>project?: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>&gt;;</code></pre>

The ID of the project in which the resource belongs.
If it is not provided, the provider project is used.

<h4 class="pdoc-member-header" id="IndexState-queryScope">
<a class="pdoc-child-name" href="https://github.com/pulumi/pulumi-gcp/blob/687830ffe071199872d057c29c8b0105da51c99a/sdk/nodejs/firestore/index_.ts#L166">property <b>queryScope</b></a>
</h4>

<pre class="highlight"><code><span class='kd'></span>queryScope?: <a href='/docs/reference/pkg/nodejs/pulumi/pulumi/#Input'>pulumi.Input</a>&lt;<span class='kd'><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String'>string</a></span>&gt;;</code></pre>

The scope at which a query is run.
Default value is `COLLECTION`.
Possible values are `COLLECTION` and `COLLECTION_GROUP`.

