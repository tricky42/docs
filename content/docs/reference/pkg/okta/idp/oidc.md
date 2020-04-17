
---
title: "Oidc"
block_external_search_index: true
---



Creates an OIDC Identity Provider.

This resource allows you to create and configure an OIDC Identity Provider.

## Example Usage

```typescript
import * as pulumi from "@pulumi/pulumi";
import * as okta from "@pulumi/okta";

const example = new okta.idp.Oidc("example", {
    acsBinding: "HTTP-POST",
    acsType: "INSTANCE",
    authorizationBinding: "HTTP-REDIRECT",
    authorizationUrl: "https://idp.example.com/authorize",
    clientId: "efg456",
    clientSecret: "efg456",
    issuerUrl: "https://id.example.com",
    jwksBinding: "HTTP-REDIRECT",
    jwksUrl: "https://idp.example.com/keys",
    scopes: ["openid"],
    tokenBinding: "HTTP-POST",
    tokenUrl: "https://idp.example.com/token",
    userInfoBinding: "HTTP-REDIRECT",
    userInfoUrl: "https://idp.example.com/userinfo",
    usernameTemplate: "idpuser.email",
});
```

> This content is derived from https://github.com/articulate/terraform-provider-okta/blob/master/website/docs/r/idp_oidc.html.markdown.



## Create a Oidc Resource

{{< chooser language "javascript,typescript,python,go,csharp" / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/okta/idp/#Oidc">Oidc</a></span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">args</span>: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/okta/idp/#OidcArgs">OidcArgs</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span><span class="nf">Oidc</span><span class="p">(resource_name, opts=None, </span>account_link_action=None<span class="p">, </span>account_link_group_includes=None<span class="p">, </span>acs_binding=None<span class="p">, </span>acs_type=None<span class="p">, </span>authorization_binding=None<span class="p">, </span>authorization_url=None<span class="p">, </span>client_id=None<span class="p">, </span>client_secret=None<span class="p">, </span>deprovisioned_action=None<span class="p">, </span>groups_action=None<span class="p">, </span>groups_assignments=None<span class="p">, </span>groups_attribute=None<span class="p">, </span>groups_filters=None<span class="p">, </span>issuer_mode=None<span class="p">, </span>issuer_url=None<span class="p">, </span>jwks_binding=None<span class="p">, </span>jwks_url=None<span class="p">, </span>max_clock_skew=None<span class="p">, </span>name=None<span class="p">, </span>profile_master=None<span class="p">, </span>protocol_type=None<span class="p">, </span>provisioning_action=None<span class="p">, </span>request_signature_algorithm=None<span class="p">, </span>request_signature_scope=None<span class="p">, </span>response_signature_algorithm=None<span class="p">, </span>response_signature_scope=None<span class="p">, </span>scopes=None<span class="p">, </span>status=None<span class="p">, </span>subject_match_attribute=None<span class="p">, </span>subject_match_type=None<span class="p">, </span>suspended_action=None<span class="p">, </span>token_binding=None<span class="p">, </span>token_url=None<span class="p">, </span>user_info_binding=None<span class="p">, </span>user_info_url=None<span class="p">, </span>username_template=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>NewOidc<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">args</span> <span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-okta/sdk/go/okta/idp?tab=doc#OidcArgs">OidcArgs</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-okta/sdk/go/okta/idp?tab=doc#Oidc">Oidc</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Okta/Pulumi.Okta.Idp.Oidc.html">Oidc</a></span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Okta/Pulumi.Okta.Idp.OidcArgs.html">OidcArgs</a></span> <span class="nx">args<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language nodejs %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resource.</dd>
    <dt class="property-optional" title="Optional">
        <span>args</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The arguments to use to populate this resource's properties.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>

{{% /choosable %}}

{{% choosable language python %}}
<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resource.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>
{{% /choosable %}}

{{% choosable language go %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resource.</dd>
    <dt class="property-optional" title="Optional">
        <span>args</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The arguments to use to populate this resource's properties.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>

{{% /choosable %}}

{{% choosable language csharp %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resource.</dd>
    <dt class="property-optional" title="Optional">
        <span>args</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The arguments to use to populate this resource's properties.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>

{{% /choosable %}}

#### Resource Arguments




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Acs<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making an ACS request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Authorization<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making an authorization request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Authorization<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to request consent from the user and obtain an authorization code grant.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Client<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Unique identifier issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Client<wbr>Secret</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Client secret issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Issuer<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}URI that identifies the issuer.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Jwks<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making a request for the OIDC JWKS. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Jwks<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Endpoint where the signer of the keys publishes its keys in a JWK Set.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Scopes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}The scopes of the IdP.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Token<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making a token request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Token<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to exchange the authorization code grant for an access token.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Account<wbr>Link<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies the account linking action for an IdP user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Account<wbr>Link<wbr>Group<wbr>Includes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Group memberships to determine link candidates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Acs<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of ACS. Default is `"INSTANCE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Deprovisioned<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Action for a previously deprovisioned IdP user during authentication. Can be `"NONE"` or `"REACTIVATE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provisioning action for IdP user's group memberships. It can be `"NONE"`, `"SYNC"`, `"APPEND"`, or `"ASSIGN"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Assignments</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}List of Okta Group IDs to add an IdP user as a member with the `"ASSIGN"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP user profile attribute name (case-insensitive) for an array value that contains group memberships.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Filters</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Whitelist of Okta Group identifiers that are allowed for the `"APPEND"` or `"SYNC"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Issuer<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL. It can be `"ORG_URL"` or `"CUSTOM_URL"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Max<wbr>Clock<wbr>Skew</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Maximum allowable clock-skew when processing messages from the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Application's display name.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Profile<wbr>Master</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines if the IdP should act as a source of truth for user profile attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Protocol<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of protocol to use. It can be `"OIDC"` or `"OAUTH2"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Provisioning<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provisioning action for an IdP user during authentication.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Request<wbr>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Request<wbr>Signature<wbr>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Response<wbr>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Response<wbr>Signature<wbr>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Status of the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Match<wbr>Attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Okta user profile attribute for matching transformed IdP username. Only for matchType `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Match<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username. By default it is set to `"USERNAME"`. It can be set to `"USERNAME"`, `"EMAIL"`, `"USERNAME_OR_EMAIL"` or `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Suspended<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Action for a previously suspended IdP user during authentication. Can be set to `"NONE"` or `"UNSUSPEND"`
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Info<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Info<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Protected resource endpoint that returns claims about the authenticated user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Username<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Okta EL Expression to generate or transform a unique username for the IdP user.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Acs<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making an ACS request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Authorization<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making an authorization request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Authorization<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to request consent from the user and obtain an authorization code grant.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Client<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Unique identifier issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Client<wbr>Secret</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Client secret issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Issuer<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}URI that identifies the issuer.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Jwks<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making a request for the OIDC JWKS. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Jwks<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Endpoint where the signer of the keys publishes its keys in a JWK Set.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Scopes</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}The scopes of the IdP.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Token<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making a token request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Token<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to exchange the authorization code grant for an access token.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Account<wbr>Link<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies the account linking action for an IdP user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Account<wbr>Link<wbr>Group<wbr>Includes</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Group memberships to determine link candidates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Acs<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of ACS. Default is `"INSTANCE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Deprovisioned<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Action for a previously deprovisioned IdP user during authentication. Can be `"NONE"` or `"REACTIVATE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provisioning action for IdP user's group memberships. It can be `"NONE"`, `"SYNC"`, `"APPEND"`, or `"ASSIGN"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Assignments</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}List of Okta Group IDs to add an IdP user as a member with the `"ASSIGN"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP user profile attribute name (case-insensitive) for an array value that contains group memberships.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Filters</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Whitelist of Okta Group identifiers that are allowed for the `"APPEND"` or `"SYNC"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Issuer<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL. It can be `"ORG_URL"` or `"CUSTOM_URL"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Max<wbr>Clock<wbr>Skew</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Maximum allowable clock-skew when processing messages from the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Application's display name.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Profile<wbr>Master</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines if the IdP should act as a source of truth for user profile attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Protocol<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of protocol to use. It can be `"OIDC"` or `"OAUTH2"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Provisioning<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provisioning action for an IdP user during authentication.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Request<wbr>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Request<wbr>Signature<wbr>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Response<wbr>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Response<wbr>Signature<wbr>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Status of the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Match<wbr>Attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Okta user profile attribute for matching transformed IdP username. Only for matchType `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Match<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username. By default it is set to `"USERNAME"`. It can be set to `"USERNAME"`, `"EMAIL"`, `"USERNAME_OR_EMAIL"` or `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Suspended<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Action for a previously suspended IdP user during authentication. Can be set to `"NONE"` or `"UNSUSPEND"`
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Info<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Info<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Protected resource endpoint that returns claims about the authenticated user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Username<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Okta EL Expression to generate or transform a unique username for the IdP user.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>acs<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making an ACS request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>authorization<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making an authorization request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>authorization<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to request consent from the user and obtain an authorization code grant.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>client<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Unique identifier issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>client<wbr>Secret</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Client secret issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>issuer<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}URI that identifies the issuer.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>jwks<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making a request for the OIDC JWKS. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>jwks<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Endpoint where the signer of the keys publishes its keys in a JWK Set.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>scopes</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}The scopes of the IdP.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>token<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making a token request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>token<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to exchange the authorization code grant for an access token.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>account<wbr>Link<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies the account linking action for an IdP user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>account<wbr>Link<wbr>Group<wbr>Includes</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Group memberships to determine link candidates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>acs<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of ACS. Default is `"INSTANCE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>deprovisioned<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Action for a previously deprovisioned IdP user during authentication. Can be `"NONE"` or `"REACTIVATE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provisioning action for IdP user's group memberships. It can be `"NONE"`, `"SYNC"`, `"APPEND"`, or `"ASSIGN"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups<wbr>Assignments</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}List of Okta Group IDs to add an IdP user as a member with the `"ASSIGN"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups<wbr>Attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP user profile attribute name (case-insensitive) for an array value that contains group memberships.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups<wbr>Filters</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Whitelist of Okta Group identifiers that are allowed for the `"APPEND"` or `"SYNC"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>issuer<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL. It can be `"ORG_URL"` or `"CUSTOM_URL"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>max<wbr>Clock<wbr>Skew</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}Maximum allowable clock-skew when processing messages from the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Application's display name.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>profile<wbr>Master</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Determines if the IdP should act as a source of truth for user profile attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>protocol<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of protocol to use. It can be `"OIDC"` or `"OAUTH2"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>provisioning<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provisioning action for an IdP user during authentication.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>request<wbr>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>request<wbr>Signature<wbr>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>response<wbr>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>response<wbr>Signature<wbr>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Status of the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject<wbr>Match<wbr>Attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Okta user profile attribute for matching transformed IdP username. Only for matchType `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject<wbr>Match<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username. By default it is set to `"USERNAME"`. It can be set to `"USERNAME"`, `"EMAIL"`, `"USERNAME_OR_EMAIL"` or `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>suspended<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Action for a previously suspended IdP user during authentication. Can be set to `"NONE"` or `"UNSUSPEND"`
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Info<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Info<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Protected resource endpoint that returns claims about the authenticated user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>username<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Okta EL Expression to generate or transform a unique username for the IdP user.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>acs_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The method of making an ACS request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>authorization_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The method of making an authorization request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>authorization_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to request consent from the user and obtain an authorization code grant.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>client_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Unique identifier issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>client_<wbr>secret</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Client secret issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>issuer_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}URI that identifies the issuer.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>jwks_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The method of making a request for the OIDC JWKS. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>jwks_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Endpoint where the signer of the keys publishes its keys in a JWK Set.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>scopes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}The scopes of the IdP.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>token_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The method of making a token request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>token_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to exchange the authorization code grant for an access token.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>account_<wbr>link_<wbr>action</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Specifies the account linking action for an IdP user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>account_<wbr>link_<wbr>group_<wbr>includes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Group memberships to determine link candidates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>acs_<wbr>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The type of ACS. Default is `"INSTANCE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>deprovisioned_<wbr>action</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Action for a previously deprovisioned IdP user during authentication. Can be `"NONE"` or `"REACTIVATE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups_<wbr>action</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Provisioning action for IdP user's group memberships. It can be `"NONE"`, `"SYNC"`, `"APPEND"`, or `"ASSIGN"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups_<wbr>assignments</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}List of Okta Group IDs to add an IdP user as a member with the `"ASSIGN"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups_<wbr>attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}IdP user profile attribute name (case-insensitive) for an array value that contains group memberships.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups_<wbr>filters</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Whitelist of Okta Group identifiers that are allowed for the `"APPEND"` or `"SYNC"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>issuer_<wbr>mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL. It can be `"ORG_URL"` or `"CUSTOM_URL"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>max_<wbr>clock_<wbr>skew</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}Maximum allowable clock-skew when processing messages from the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Application's display name.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>profile_<wbr>master</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines if the IdP should act as a source of truth for user profile attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>protocol_<wbr>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The type of protocol to use. It can be `"OIDC"` or `"OAUTH2"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>provisioning_<wbr>action</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Provisioning action for an IdP user during authentication.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>request_<wbr>signature_<wbr>algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>request_<wbr>signature_<wbr>scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>response_<wbr>signature_<wbr>algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>response_<wbr>signature_<wbr>scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>status</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Status of the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject_<wbr>match_<wbr>attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Okta user profile attribute for matching transformed IdP username. Only for matchType `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject_<wbr>match_<wbr>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username. By default it is set to `"USERNAME"`. It can be set to `"USERNAME"`, `"EMAIL"`, `"USERNAME_OR_EMAIL"` or `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>suspended_<wbr>action</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Action for a previously suspended IdP user during authentication. Can be set to `"NONE"` or `"UNSUSPEND"`
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>info_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>info_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Protected resource endpoint that returns claims about the authenticated user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>username_<wbr>template</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Okta EL Expression to generate or transform a unique username for the IdP user.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}







## Oidc Output Properties

The following output properties are available:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Type of OIDC IdP.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Type of OIDC IdP.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Type of OIDC IdP.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Type of OIDC IdP.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}








## Look up an Existing Oidc Resource

Get an existing Oidc resource's state with the given name, ID, and optional extra properties used to qualify the lookup.

{{< chooser language "javascript,typescript,python,go,csharp  " / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">public static </span><span class="nf">get</span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">id</span>: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#ID">Input&lt;ID&gt;</a></span><span class="p">, </span><span class="nx">state</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/okta/idp/#OidcState">OidcState</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">): </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/okta/idp/#Oidc">Oidc</a></span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">static </span><span class="nf">get</span><span class="p">(resource_name, id, opts=None, </span>account_link_action=None<span class="p">, </span>account_link_group_includes=None<span class="p">, </span>acs_binding=None<span class="p">, </span>acs_type=None<span class="p">, </span>authorization_binding=None<span class="p">, </span>authorization_url=None<span class="p">, </span>client_id=None<span class="p">, </span>client_secret=None<span class="p">, </span>deprovisioned_action=None<span class="p">, </span>groups_action=None<span class="p">, </span>groups_assignments=None<span class="p">, </span>groups_attribute=None<span class="p">, </span>groups_filters=None<span class="p">, </span>issuer_mode=None<span class="p">, </span>issuer_url=None<span class="p">, </span>jwks_binding=None<span class="p">, </span>jwks_url=None<span class="p">, </span>max_clock_skew=None<span class="p">, </span>name=None<span class="p">, </span>profile_master=None<span class="p">, </span>protocol_type=None<span class="p">, </span>provisioning_action=None<span class="p">, </span>request_signature_algorithm=None<span class="p">, </span>request_signature_scope=None<span class="p">, </span>response_signature_algorithm=None<span class="p">, </span>response_signature_scope=None<span class="p">, </span>scopes=None<span class="p">, </span>status=None<span class="p">, </span>subject_match_attribute=None<span class="p">, </span>subject_match_type=None<span class="p">, </span>suspended_action=None<span class="p">, </span>token_binding=None<span class="p">, </span>token_url=None<span class="p">, </span>type=None<span class="p">, </span>user_info_binding=None<span class="p">, </span>user_info_url=None<span class="p">, </span>username_template=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>GetOidc<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">id</span> <span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#IDInput">IDInput</a></span><span class="p">, </span><span class="nx">state</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-okta/sdk/go/okta/idp?tab=doc#OidcState">OidcState</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-okta/sdk/go/okta/idp?tab=doc#Oidc">Oidc</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public static </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Okta/Pulumi.Okta.Idp.Oidc.html">Oidc</a></span><span class="nf"> Get</span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.Input.html">Input&lt;string&gt;</a></span> <span class="nx">id<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Okta/Pulumi.Okta.Idp.OidcState.html">OidcState</a></span>? <span class="nx">state<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language nodejs %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resulting resource.</dd>
    <dt class="property-required" title="Required">
        <span>id</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The <em>unique</em> provider ID of the resource to lookup.</dd>
    <dt class="property-optional" title="Optional">
        <span>state</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>Any extra arguments used during the lookup.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>

{{% /choosable %}}

{{% choosable language python %}}
<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>resource_name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resulting resource.</dd>
    <dt class="property-required" title="Optional">
        <span>id</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The <em>unique</em> provider ID of the resource to lookup.</dd>
</dl>
{{% /choosable %}}

{{% choosable language go %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resulting resource.</dd>
    <dt class="property-required" title="Required">
        <span>id</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The <em>unique</em> provider ID of the resource to lookup.</dd>
    <dt class="property-optional" title="Optional">
        <span>state</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>Any extra arguments used during the lookup.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>

{{% /choosable %}}

{{% choosable language csharp %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resulting resource.</dd>
    <dt class="property-required" title="Required">
        <span>id</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The <em>unique</em> provider ID of the resource to lookup.</dd>
    <dt class="property-optional" title="Optional">
        <span>state</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>Any extra arguments used during the lookup.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>

{{% /choosable %}}

The following state arguments are supported:



{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Account<wbr>Link<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies the account linking action for an IdP user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Account<wbr>Link<wbr>Group<wbr>Includes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Group memberships to determine link candidates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Acs<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making an ACS request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Acs<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of ACS. Default is `"INSTANCE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorization<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making an authorization request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorization<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to request consent from the user and obtain an authorization code grant.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Client<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Unique identifier issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Client<wbr>Secret</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Client secret issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Deprovisioned<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Action for a previously deprovisioned IdP user during authentication. Can be `"NONE"` or `"REACTIVATE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provisioning action for IdP user's group memberships. It can be `"NONE"`, `"SYNC"`, `"APPEND"`, or `"ASSIGN"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Assignments</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}List of Okta Group IDs to add an IdP user as a member with the `"ASSIGN"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP user profile attribute name (case-insensitive) for an array value that contains group memberships.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Filters</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Whitelist of Okta Group identifiers that are allowed for the `"APPEND"` or `"SYNC"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Issuer<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL. It can be `"ORG_URL"` or `"CUSTOM_URL"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Issuer<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}URI that identifies the issuer.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Jwks<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making a request for the OIDC JWKS. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Jwks<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Endpoint where the signer of the keys publishes its keys in a JWK Set.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Max<wbr>Clock<wbr>Skew</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Maximum allowable clock-skew when processing messages from the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Application's display name.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Profile<wbr>Master</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines if the IdP should act as a source of truth for user profile attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Protocol<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of protocol to use. It can be `"OIDC"` or `"OAUTH2"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Provisioning<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provisioning action for an IdP user during authentication.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Request<wbr>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Request<wbr>Signature<wbr>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Response<wbr>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Response<wbr>Signature<wbr>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scopes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}The scopes of the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Status of the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Match<wbr>Attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Okta user profile attribute for matching transformed IdP username. Only for matchType `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Match<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username. By default it is set to `"USERNAME"`. It can be set to `"USERNAME"`, `"EMAIL"`, `"USERNAME_OR_EMAIL"` or `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Suspended<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Action for a previously suspended IdP user during authentication. Can be set to `"NONE"` or `"UNSUSPEND"`
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Token<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making a token request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Token<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to exchange the authorization code grant for an access token.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Type of OIDC IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Info<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Info<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Protected resource endpoint that returns claims about the authenticated user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Username<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Okta EL Expression to generate or transform a unique username for the IdP user.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Account<wbr>Link<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies the account linking action for an IdP user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Account<wbr>Link<wbr>Group<wbr>Includes</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Group memberships to determine link candidates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Acs<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making an ACS request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Acs<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of ACS. Default is `"INSTANCE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorization<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making an authorization request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorization<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to request consent from the user and obtain an authorization code grant.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Client<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Unique identifier issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Client<wbr>Secret</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Client secret issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Deprovisioned<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Action for a previously deprovisioned IdP user during authentication. Can be `"NONE"` or `"REACTIVATE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provisioning action for IdP user's group memberships. It can be `"NONE"`, `"SYNC"`, `"APPEND"`, or `"ASSIGN"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Assignments</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}List of Okta Group IDs to add an IdP user as a member with the `"ASSIGN"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP user profile attribute name (case-insensitive) for an array value that contains group memberships.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups<wbr>Filters</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Whitelist of Okta Group identifiers that are allowed for the `"APPEND"` or `"SYNC"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Issuer<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL. It can be `"ORG_URL"` or `"CUSTOM_URL"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Issuer<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}URI that identifies the issuer.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Jwks<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making a request for the OIDC JWKS. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Jwks<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Endpoint where the signer of the keys publishes its keys in a JWK Set.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Max<wbr>Clock<wbr>Skew</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Maximum allowable clock-skew when processing messages from the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Application's display name.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Profile<wbr>Master</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines if the IdP should act as a source of truth for user profile attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Protocol<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of protocol to use. It can be `"OIDC"` or `"OAUTH2"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Provisioning<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provisioning action for an IdP user during authentication.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Request<wbr>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Request<wbr>Signature<wbr>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Response<wbr>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Response<wbr>Signature<wbr>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scopes</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}The scopes of the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Status of the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Match<wbr>Attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Okta user profile attribute for matching transformed IdP username. Only for matchType `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Match<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username. By default it is set to `"USERNAME"`. It can be set to `"USERNAME"`, `"EMAIL"`, `"USERNAME_OR_EMAIL"` or `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Suspended<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Action for a previously suspended IdP user during authentication. Can be set to `"NONE"` or `"UNSUSPEND"`
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Token<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making a token request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Token<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to exchange the authorization code grant for an access token.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Type of OIDC IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Info<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Info<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Protected resource endpoint that returns claims about the authenticated user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Username<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Okta EL Expression to generate or transform a unique username for the IdP user.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>account<wbr>Link<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies the account linking action for an IdP user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>account<wbr>Link<wbr>Group<wbr>Includes</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Group memberships to determine link candidates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>acs<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making an ACS request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>acs<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of ACS. Default is `"INSTANCE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorization<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making an authorization request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorization<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to request consent from the user and obtain an authorization code grant.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>client<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Unique identifier issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>client<wbr>Secret</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Client secret issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>deprovisioned<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Action for a previously deprovisioned IdP user during authentication. Can be `"NONE"` or `"REACTIVATE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provisioning action for IdP user's group memberships. It can be `"NONE"`, `"SYNC"`, `"APPEND"`, or `"ASSIGN"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups<wbr>Assignments</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}List of Okta Group IDs to add an IdP user as a member with the `"ASSIGN"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups<wbr>Attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP user profile attribute name (case-insensitive) for an array value that contains group memberships.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups<wbr>Filters</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Whitelist of Okta Group identifiers that are allowed for the `"APPEND"` or `"SYNC"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>issuer<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL. It can be `"ORG_URL"` or `"CUSTOM_URL"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>issuer<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}URI that identifies the issuer.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>jwks<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making a request for the OIDC JWKS. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>jwks<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Endpoint where the signer of the keys publishes its keys in a JWK Set.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>max<wbr>Clock<wbr>Skew</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}Maximum allowable clock-skew when processing messages from the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Application's display name.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>profile<wbr>Master</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Determines if the IdP should act as a source of truth for user profile attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>protocol<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of protocol to use. It can be `"OIDC"` or `"OAUTH2"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>provisioning<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provisioning action for an IdP user during authentication.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>request<wbr>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>request<wbr>Signature<wbr>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>response<wbr>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>response<wbr>Signature<wbr>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scopes</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}The scopes of the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Status of the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject<wbr>Match<wbr>Attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Okta user profile attribute for matching transformed IdP username. Only for matchType `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject<wbr>Match<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username. By default it is set to `"USERNAME"`. It can be set to `"USERNAME"`, `"EMAIL"`, `"USERNAME_OR_EMAIL"` or `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>suspended<wbr>Action</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Action for a previously suspended IdP user during authentication. Can be set to `"NONE"` or `"UNSUSPEND"`
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>token<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The method of making a token request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>token<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to exchange the authorization code grant for an access token.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Type of OIDC IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Info<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Info<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Protected resource endpoint that returns claims about the authenticated user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>username<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Okta EL Expression to generate or transform a unique username for the IdP user.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>account_<wbr>link_<wbr>action</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Specifies the account linking action for an IdP user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>account_<wbr>link_<wbr>group_<wbr>includes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Group memberships to determine link candidates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>acs_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The method of making an ACS request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>acs_<wbr>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The type of ACS. Default is `"INSTANCE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorization_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The method of making an authorization request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorization_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to request consent from the user and obtain an authorization code grant.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>client_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Unique identifier issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>client_<wbr>secret</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Client secret issued by AS for the Okta IdP instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>deprovisioned_<wbr>action</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Action for a previously deprovisioned IdP user during authentication. Can be `"NONE"` or `"REACTIVATE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups_<wbr>action</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Provisioning action for IdP user's group memberships. It can be `"NONE"`, `"SYNC"`, `"APPEND"`, or `"ASSIGN"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups_<wbr>assignments</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}List of Okta Group IDs to add an IdP user as a member with the `"ASSIGN"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups_<wbr>attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}IdP user profile attribute name (case-insensitive) for an array value that contains group memberships.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups_<wbr>filters</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Whitelist of Okta Group identifiers that are allowed for the `"APPEND"` or `"SYNC"` `groups_action`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>issuer_<wbr>mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL. It can be `"ORG_URL"` or `"CUSTOM_URL"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>issuer_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}URI that identifies the issuer.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>jwks_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The method of making a request for the OIDC JWKS. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>jwks_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Endpoint where the signer of the keys publishes its keys in a JWK Set.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>max_<wbr>clock_<wbr>skew</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}Maximum allowable clock-skew when processing messages from the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Application's display name.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>profile_<wbr>master</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines if the IdP should act as a source of truth for user profile attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>protocol_<wbr>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The type of protocol to use. It can be `"OIDC"` or `"OAUTH2"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>provisioning_<wbr>action</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Provisioning action for an IdP user during authentication.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>request_<wbr>signature_<wbr>algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>request_<wbr>signature_<wbr>scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>response_<wbr>signature_<wbr>algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign requests
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>response_<wbr>signature_<wbr>scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}algorithm to use to sign response
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scopes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}The scopes of the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>status</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Status of the IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject_<wbr>match_<wbr>attribute</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Okta user profile attribute for matching transformed IdP username. Only for matchType `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject_<wbr>match_<wbr>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username. By default it is set to `"USERNAME"`. It can be set to `"USERNAME"`, `"EMAIL"`, `"USERNAME_OR_EMAIL"` or `"CUSTOM_ATTRIBUTE"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>suspended_<wbr>action</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Action for a previously suspended IdP user during authentication. Can be set to `"NONE"` or `"UNSUSPEND"`
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>token_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The method of making a token request. It can be set to `"HTTP-POST"` or `"HTTP-REDIRECT"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>token_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}IdP Authorization Server (AS) endpoint to exchange the authorization code grant for an access token.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Type of OIDC IdP.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>info_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>info_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Protected resource endpoint that returns claims about the authenticated user.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>username_<wbr>template</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Okta EL Expression to generate or transform a unique username for the IdP user.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}











<h3>Package Details</h3>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-okta">https://github.com/pulumi/pulumi-okta</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
    
</dl>
