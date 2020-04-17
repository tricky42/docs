
---
title: "Saml"
block_external_search_index: true
---



Creates an SAML Application.

This resource allows you to create and configure an SAML Application.

## Example Usage

```typescript
import * as pulumi from "@pulumi/pulumi";
import * as okta from "@pulumi/okta";

const example = new okta.app.Saml("example", {
    attributeStatements: [{
        filterType: "REGEX",
        filterValue: ".*",
        name: "groups",
        type: "GROUP",
    }],
    audience: "http://example.com/audience",
    authnContextClassRef: "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport",
    destination: "http://example.com",
    digestAlgorithm: "SHA256",
    honorForceAuthn: false,
    label: "example",
    recipient: "http://example.com",
    responseSigned: true,
    signatureAlgorithm: "RSA_SHA256",
    ssoUrl: "http://example.com",
    subjectNameIdFormat: "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress",
    subjectNameIdTemplate: "${user.userName}",
});
```

> This content is derived from https://github.com/articulate/terraform-provider-okta/blob/master/website/docs/r/app_saml.html.markdown.



## Create a Saml Resource

{{< chooser language "javascript,typescript,python,go,csharp" / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/okta/app/#Saml">Saml</a></span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">args</span>: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/okta/app/#SamlArgs">SamlArgs</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span><span class="nf">Saml</span><span class="p">(resource_name, opts=None, </span>accessibility_error_redirect_url=None<span class="p">, </span>accessibility_login_redirect_url=None<span class="p">, </span>accessibility_self_service=None<span class="p">, </span>app_settings_json=None<span class="p">, </span>assertion_signed=None<span class="p">, </span>attribute_statements=None<span class="p">, </span>audience=None<span class="p">, </span>authn_context_class_ref=None<span class="p">, </span>auto_submit_toolbar=None<span class="p">, </span>default_relay_state=None<span class="p">, </span>destination=None<span class="p">, </span>digest_algorithm=None<span class="p">, </span>features=None<span class="p">, </span>groups=None<span class="p">, </span>hide_ios=None<span class="p">, </span>hide_web=None<span class="p">, </span>honor_force_authn=None<span class="p">, </span>idp_issuer=None<span class="p">, </span>key_name=None<span class="p">, </span>key_years_valid=None<span class="p">, </span>label=None<span class="p">, </span>preconfigured_app=None<span class="p">, </span>recipient=None<span class="p">, </span>request_compressed=None<span class="p">, </span>response_signed=None<span class="p">, </span>signature_algorithm=None<span class="p">, </span>sp_issuer=None<span class="p">, </span>sso_url=None<span class="p">, </span>status=None<span class="p">, </span>subject_name_id_format=None<span class="p">, </span>subject_name_id_template=None<span class="p">, </span>user_name_template=None<span class="p">, </span>user_name_template_suffix=None<span class="p">, </span>user_name_template_type=None<span class="p">, </span>users=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>NewSaml<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">args</span> <span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-okta/sdk/go/okta/app?tab=doc#SamlArgs">SamlArgs</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-okta/sdk/go/okta/app?tab=doc#Saml">Saml</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Okta/Pulumi.Okta.App.Saml.html">Saml</a></span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Okta/Pulumi.Okta.App.SamlArgs.html">SamlArgs</a></span> <span class="nx">args<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
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
        <span>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}label of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Accessibility<wbr>Error<wbr>Redirect<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Custom error page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Accessibility<wbr>Login<wbr>Redirect<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Custom login page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Accessibility<wbr>Self<wbr>Service</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable self service.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>App<wbr>Settings<wbr>Json</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Application settings in JSON format.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Assertion<wbr>Signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML assertion is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Attribute<wbr>Statements</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samlattributestatement">List&lt;Saml<wbr>Attribute<wbr>Statement<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}List of SAML Attribute statements.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Audience</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Audience restriction.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authn<wbr>Context<wbr>Class<wbr>Ref</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML authentication context class for the assertion’s authentication statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Auto<wbr>Submit<wbr>Toolbar</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Display auto submit toolbar.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Default<wbr>Relay<wbr>State</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies a specific application resource in an IDP initiated SSO scenario.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Destination</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the location where the SAML response is intended to be sent inside of the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Digest<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Determines the digest algorithm used to digitally sign the SAML assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Features</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}features enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Groups associated with the application
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Hide<wbr>Ios</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Do not display application icon on mobile app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Hide<wbr>Web</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Do not display application icon to users
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Honor<wbr>Force<wbr>Authn</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Prompt user to re-authenticate if SP asks for it.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Idp<wbr>Issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}SAML issuer ID.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Certificate name. This modulates the rotation of keys. New name == new key.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Years<wbr>Valid</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Number of years the certificate is valid.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Preconfigured<wbr>App</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}name of application from the Okta Integration Network, if not included a custom app will be created.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Recipient</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The location where the app may present the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Request<wbr>Compressed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Denotes whether the request is compressed or not.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Response<wbr>Signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML auth response message is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Signature algorithm used ot digitally sign the assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sp<wbr>Issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}SAML service provider issuer.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sso<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Single Sign on Url.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}status of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Name<wbr>Id<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML processing rules.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Name<wbr>Id<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Template for app user's username when a user is assigned to the app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Name<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Name<wbr>Template<wbr>Suffix</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template suffix.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Name<wbr>Template<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template type.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samluser">List&lt;Saml<wbr>User<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}Users associated with the application
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}label of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Accessibility<wbr>Error<wbr>Redirect<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Custom error page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Accessibility<wbr>Login<wbr>Redirect<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Custom login page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Accessibility<wbr>Self<wbr>Service</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable self service.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>App<wbr>Settings<wbr>Json</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Application settings in JSON format.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Assertion<wbr>Signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML assertion is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Attribute<wbr>Statements</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samlattributestatement">[]Saml<wbr>Attribute<wbr>Statement</a></span>
    </dt>
    <dd>{{% md %}}List of SAML Attribute statements.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Audience</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Audience restriction.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authn<wbr>Context<wbr>Class<wbr>Ref</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML authentication context class for the assertion’s authentication statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Auto<wbr>Submit<wbr>Toolbar</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Display auto submit toolbar.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Default<wbr>Relay<wbr>State</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies a specific application resource in an IDP initiated SSO scenario.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Destination</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the location where the SAML response is intended to be sent inside of the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Digest<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Determines the digest algorithm used to digitally sign the SAML assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Features</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}features enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Groups associated with the application
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Hide<wbr>Ios</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Do not display application icon on mobile app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Hide<wbr>Web</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Do not display application icon to users
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Honor<wbr>Force<wbr>Authn</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Prompt user to re-authenticate if SP asks for it.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Idp<wbr>Issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}SAML issuer ID.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Certificate name. This modulates the rotation of keys. New name == new key.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Years<wbr>Valid</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Number of years the certificate is valid.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Preconfigured<wbr>App</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}name of application from the Okta Integration Network, if not included a custom app will be created.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Recipient</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The location where the app may present the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Request<wbr>Compressed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Denotes whether the request is compressed or not.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Response<wbr>Signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML auth response message is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Signature algorithm used ot digitally sign the assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sp<wbr>Issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}SAML service provider issuer.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sso<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Single Sign on Url.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}status of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Name<wbr>Id<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML processing rules.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Name<wbr>Id<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Template for app user's username when a user is assigned to the app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Name<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Name<wbr>Template<wbr>Suffix</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template suffix.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Name<wbr>Template<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template type.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samluser">[]Saml<wbr>User</a></span>
    </dt>
    <dd>{{% md %}}Users associated with the application
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}label of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>accessibility<wbr>Error<wbr>Redirect<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Custom error page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>accessibility<wbr>Login<wbr>Redirect<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Custom login page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>accessibility<wbr>Self<wbr>Service</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Enable self service.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>app<wbr>Settings<wbr>Json</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Application settings in JSON format.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>assertion<wbr>Signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML assertion is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>attribute<wbr>Statements</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samlattributestatement">Saml<wbr>Attribute<wbr>Statement[]</a></span>
    </dt>
    <dd>{{% md %}}List of SAML Attribute statements.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>audience</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Audience restriction.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authn<wbr>Context<wbr>Class<wbr>Ref</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML authentication context class for the assertion’s authentication statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>auto<wbr>Submit<wbr>Toolbar</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Display auto submit toolbar.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>default<wbr>Relay<wbr>State</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies a specific application resource in an IDP initiated SSO scenario.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>destination</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the location where the SAML response is intended to be sent inside of the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>digest<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Determines the digest algorithm used to digitally sign the SAML assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>features</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}features enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Groups associated with the application
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>hide<wbr>Ios</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Do not display application icon on mobile app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>hide<wbr>Web</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Do not display application icon to users
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>honor<wbr>Force<wbr>Authn</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Prompt user to re-authenticate if SP asks for it.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>idp<wbr>Issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}SAML issuer ID.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Certificate name. This modulates the rotation of keys. New name == new key.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key<wbr>Years<wbr>Valid</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}Number of years the certificate is valid.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>preconfigured<wbr>App</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}name of application from the Okta Integration Network, if not included a custom app will be created.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>recipient</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The location where the app may present the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>request<wbr>Compressed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Denotes whether the request is compressed or not.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>response<wbr>Signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML auth response message is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Signature algorithm used ot digitally sign the assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sp<wbr>Issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}SAML service provider issuer.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sso<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Single Sign on Url.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}status of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject<wbr>Name<wbr>Id<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML processing rules.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject<wbr>Name<wbr>Id<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Template for app user's username when a user is assigned to the app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Name<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Name<wbr>Template<wbr>Suffix</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template suffix.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Name<wbr>Template<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template type.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>users</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samluser">Saml<wbr>User[]</a></span>
    </dt>
    <dd>{{% md %}}Users associated with the application
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}label of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>accessibility_<wbr>error_<wbr>redirect_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Custom error page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>accessibility_<wbr>login_<wbr>redirect_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Custom login page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>accessibility_<wbr>self_<wbr>service</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable self service.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>app_<wbr>settings_<wbr>json</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Application settings in JSON format.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>assertion_<wbr>signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML assertion is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>attribute_<wbr>statements</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samlattributestatement">List[Saml<wbr>Attribute<wbr>Statement]</a></span>
    </dt>
    <dd>{{% md %}}List of SAML Attribute statements.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>audience</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Audience restriction.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authn_<wbr>context_<wbr>class_<wbr>ref</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML authentication context class for the assertion’s authentication statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>auto_<wbr>submit_<wbr>toolbar</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Display auto submit toolbar.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>default_<wbr>relay_<wbr>state</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Identifies a specific application resource in an IDP initiated SSO scenario.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>destination</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Identifies the location where the SAML response is intended to be sent inside of the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>digest_<wbr>algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Determines the digest algorithm used to digitally sign the SAML assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>features</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}features enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Groups associated with the application
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>hide_<wbr>ios</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Do not display application icon on mobile app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>hide_<wbr>web</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Do not display application icon to users
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>honor_<wbr>force_<wbr>authn</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Prompt user to re-authenticate if SP asks for it.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>idp_<wbr>issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}SAML issuer ID.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key_<wbr>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Certificate name. This modulates the rotation of keys. New name == new key.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key_<wbr>years_<wbr>valid</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}Number of years the certificate is valid.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>preconfigured_<wbr>app</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}name of application from the Okta Integration Network, if not included a custom app will be created.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>recipient</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The location where the app may present the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>request_<wbr>compressed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Denotes whether the request is compressed or not.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>response_<wbr>signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML auth response message is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>signature_<wbr>algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Signature algorithm used ot digitally sign the assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sp_<wbr>issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}SAML service provider issuer.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sso_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Single Sign on Url.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>status</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}status of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject_<wbr>name_<wbr>id_<wbr>format</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML processing rules.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject_<wbr>name_<wbr>id_<wbr>template</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Template for app user's username when a user is assigned to the app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>name_<wbr>template</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Username template.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>name_<wbr>template_<wbr>suffix</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Username template suffix.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>name_<wbr>template_<wbr>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Username template type.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>users</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samluser">List[Saml<wbr>User]</a></span>
    </dt>
    <dd>{{% md %}}Users associated with the application
{{% /md %}}</dd>

</dl>
{{% /choosable %}}







## Saml Output Properties

The following output properties are available:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>Certificate</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The raw signing certificate.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Entity<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Entity ID, the ID portion of the `entity_url`.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Entity<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Entity URL for instance http://www.okta.com/exk1fcia6d6EMsf331d8.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Http<wbr>Post<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Post` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Http<wbr>Redirect<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Key<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Certificate key ID.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The raw SAML metadata in XML.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the attribute statement.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Sign<wbr>On<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Sign on mode of application.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>Certificate</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The raw signing certificate.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Entity<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Entity ID, the ID portion of the `entity_url`.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Entity<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Entity URL for instance http://www.okta.com/exk1fcia6d6EMsf331d8.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Http<wbr>Post<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Post` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Http<wbr>Redirect<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Key<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Certificate key ID.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The raw SAML metadata in XML.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the attribute statement.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Sign<wbr>On<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Sign on mode of application.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>certificate</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The raw signing certificate.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>entity<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Entity ID, the ID portion of the `entity_url`.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>entity<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Entity URL for instance http://www.okta.com/exk1fcia6d6EMsf331d8.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>http<wbr>Post<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Post` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>http<wbr>Redirect<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>key<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Certificate key ID.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The raw SAML metadata in XML.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the attribute statement.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>sign<wbr>On<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Sign on mode of application.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>certificate</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The raw signing certificate.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>entity_<wbr>key</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Entity ID, the ID portion of the `entity_url`.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>entity_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Entity URL for instance http://www.okta.com/exk1fcia6d6EMsf331d8.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>http_<wbr>post_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Post` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>http_<wbr>redirect_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>key_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Certificate key ID.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The raw SAML metadata in XML.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name of the attribute statement.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>sign_<wbr>on_<wbr>mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Sign on mode of application.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}








## Look up an Existing Saml Resource

Get an existing Saml resource's state with the given name, ID, and optional extra properties used to qualify the lookup.

{{< chooser language "javascript,typescript,python,go,csharp  " / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">public static </span><span class="nf">get</span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">id</span>: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#ID">Input&lt;ID&gt;</a></span><span class="p">, </span><span class="nx">state</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/okta/app/#SamlState">SamlState</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">): </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/okta/app/#Saml">Saml</a></span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">static </span><span class="nf">get</span><span class="p">(resource_name, id, opts=None, </span>accessibility_error_redirect_url=None<span class="p">, </span>accessibility_login_redirect_url=None<span class="p">, </span>accessibility_self_service=None<span class="p">, </span>app_settings_json=None<span class="p">, </span>assertion_signed=None<span class="p">, </span>attribute_statements=None<span class="p">, </span>audience=None<span class="p">, </span>authn_context_class_ref=None<span class="p">, </span>auto_submit_toolbar=None<span class="p">, </span>certificate=None<span class="p">, </span>default_relay_state=None<span class="p">, </span>destination=None<span class="p">, </span>digest_algorithm=None<span class="p">, </span>entity_key=None<span class="p">, </span>entity_url=None<span class="p">, </span>features=None<span class="p">, </span>groups=None<span class="p">, </span>hide_ios=None<span class="p">, </span>hide_web=None<span class="p">, </span>honor_force_authn=None<span class="p">, </span>http_post_binding=None<span class="p">, </span>http_redirect_binding=None<span class="p">, </span>idp_issuer=None<span class="p">, </span>key_id=None<span class="p">, </span>key_name=None<span class="p">, </span>key_years_valid=None<span class="p">, </span>label=None<span class="p">, </span>metadata=None<span class="p">, </span>name=None<span class="p">, </span>preconfigured_app=None<span class="p">, </span>recipient=None<span class="p">, </span>request_compressed=None<span class="p">, </span>response_signed=None<span class="p">, </span>sign_on_mode=None<span class="p">, </span>signature_algorithm=None<span class="p">, </span>sp_issuer=None<span class="p">, </span>sso_url=None<span class="p">, </span>status=None<span class="p">, </span>subject_name_id_format=None<span class="p">, </span>subject_name_id_template=None<span class="p">, </span>user_name_template=None<span class="p">, </span>user_name_template_suffix=None<span class="p">, </span>user_name_template_type=None<span class="p">, </span>users=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>GetSaml<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">id</span> <span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#IDInput">IDInput</a></span><span class="p">, </span><span class="nx">state</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-okta/sdk/go/okta/app?tab=doc#SamlState">SamlState</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-okta/sdk/go/okta/app?tab=doc#Saml">Saml</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public static </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Okta/Pulumi.Okta.App.Saml.html">Saml</a></span><span class="nf"> Get</span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.Input.html">Input&lt;string&gt;</a></span> <span class="nx">id<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Okta/Pulumi.Okta.App.SamlState.html">SamlState</a></span>? <span class="nx">state<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
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
        <span>Accessibility<wbr>Error<wbr>Redirect<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Custom error page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Accessibility<wbr>Login<wbr>Redirect<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Custom login page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Accessibility<wbr>Self<wbr>Service</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable self service.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>App<wbr>Settings<wbr>Json</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Application settings in JSON format.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Assertion<wbr>Signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML assertion is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Attribute<wbr>Statements</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samlattributestatement">List&lt;Saml<wbr>Attribute<wbr>Statement<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}List of SAML Attribute statements.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Audience</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Audience restriction.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authn<wbr>Context<wbr>Class<wbr>Ref</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML authentication context class for the assertion’s authentication statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Auto<wbr>Submit<wbr>Toolbar</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Display auto submit toolbar.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Certificate</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The raw signing certificate.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Default<wbr>Relay<wbr>State</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies a specific application resource in an IDP initiated SSO scenario.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Destination</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the location where the SAML response is intended to be sent inside of the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Digest<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Determines the digest algorithm used to digitally sign the SAML assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Entity<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Entity ID, the ID portion of the `entity_url`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Entity<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Entity URL for instance http://www.okta.com/exk1fcia6d6EMsf331d8.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Features</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}features enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Groups associated with the application
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Hide<wbr>Ios</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Do not display application icon on mobile app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Hide<wbr>Web</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Do not display application icon to users
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Honor<wbr>Force<wbr>Authn</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Prompt user to re-authenticate if SP asks for it.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Http<wbr>Post<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Post` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Http<wbr>Redirect<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Idp<wbr>Issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}SAML issuer ID.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Certificate key ID.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Certificate name. This modulates the rotation of keys. New name == new key.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Years<wbr>Valid</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Number of years the certificate is valid.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}label of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The raw SAML metadata in XML.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the attribute statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Preconfigured<wbr>App</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}name of application from the Okta Integration Network, if not included a custom app will be created.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Recipient</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The location where the app may present the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Request<wbr>Compressed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Denotes whether the request is compressed or not.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Response<wbr>Signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML auth response message is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sign<wbr>On<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Sign on mode of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Signature algorithm used ot digitally sign the assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sp<wbr>Issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}SAML service provider issuer.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sso<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Single Sign on Url.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}status of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Name<wbr>Id<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML processing rules.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Name<wbr>Id<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Template for app user's username when a user is assigned to the app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Name<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Name<wbr>Template<wbr>Suffix</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template suffix.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Name<wbr>Template<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template type.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samluser">List&lt;Saml<wbr>User<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}Users associated with the application
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Accessibility<wbr>Error<wbr>Redirect<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Custom error page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Accessibility<wbr>Login<wbr>Redirect<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Custom login page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Accessibility<wbr>Self<wbr>Service</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable self service.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>App<wbr>Settings<wbr>Json</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Application settings in JSON format.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Assertion<wbr>Signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML assertion is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Attribute<wbr>Statements</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samlattributestatement">[]Saml<wbr>Attribute<wbr>Statement</a></span>
    </dt>
    <dd>{{% md %}}List of SAML Attribute statements.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Audience</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Audience restriction.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authn<wbr>Context<wbr>Class<wbr>Ref</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML authentication context class for the assertion’s authentication statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Auto<wbr>Submit<wbr>Toolbar</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Display auto submit toolbar.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Certificate</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The raw signing certificate.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Default<wbr>Relay<wbr>State</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies a specific application resource in an IDP initiated SSO scenario.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Destination</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the location where the SAML response is intended to be sent inside of the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Digest<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Determines the digest algorithm used to digitally sign the SAML assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Entity<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Entity ID, the ID portion of the `entity_url`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Entity<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Entity URL for instance http://www.okta.com/exk1fcia6d6EMsf331d8.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Features</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}features enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Groups associated with the application
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Hide<wbr>Ios</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Do not display application icon on mobile app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Hide<wbr>Web</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Do not display application icon to users
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Honor<wbr>Force<wbr>Authn</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Prompt user to re-authenticate if SP asks for it.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Http<wbr>Post<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Post` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Http<wbr>Redirect<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Idp<wbr>Issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}SAML issuer ID.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Certificate key ID.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Certificate name. This modulates the rotation of keys. New name == new key.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Years<wbr>Valid</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Number of years the certificate is valid.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}label of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The raw SAML metadata in XML.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the attribute statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Preconfigured<wbr>App</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}name of application from the Okta Integration Network, if not included a custom app will be created.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Recipient</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The location where the app may present the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Request<wbr>Compressed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Denotes whether the request is compressed or not.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Response<wbr>Signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML auth response message is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sign<wbr>On<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Sign on mode of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Signature algorithm used ot digitally sign the assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sp<wbr>Issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}SAML service provider issuer.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sso<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Single Sign on Url.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}status of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Name<wbr>Id<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML processing rules.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Subject<wbr>Name<wbr>Id<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Template for app user's username when a user is assigned to the app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Name<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Name<wbr>Template<wbr>Suffix</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template suffix.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Name<wbr>Template<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template type.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samluser">[]Saml<wbr>User</a></span>
    </dt>
    <dd>{{% md %}}Users associated with the application
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>accessibility<wbr>Error<wbr>Redirect<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Custom error page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>accessibility<wbr>Login<wbr>Redirect<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Custom login page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>accessibility<wbr>Self<wbr>Service</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Enable self service.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>app<wbr>Settings<wbr>Json</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Application settings in JSON format.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>assertion<wbr>Signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML assertion is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>attribute<wbr>Statements</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samlattributestatement">Saml<wbr>Attribute<wbr>Statement[]</a></span>
    </dt>
    <dd>{{% md %}}List of SAML Attribute statements.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>audience</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Audience restriction.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authn<wbr>Context<wbr>Class<wbr>Ref</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML authentication context class for the assertion’s authentication statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>auto<wbr>Submit<wbr>Toolbar</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Display auto submit toolbar.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>certificate</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The raw signing certificate.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>default<wbr>Relay<wbr>State</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies a specific application resource in an IDP initiated SSO scenario.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>destination</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the location where the SAML response is intended to be sent inside of the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>digest<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Determines the digest algorithm used to digitally sign the SAML assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>entity<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Entity ID, the ID portion of the `entity_url`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>entity<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Entity URL for instance http://www.okta.com/exk1fcia6d6EMsf331d8.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>features</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}features enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Groups associated with the application
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>hide<wbr>Ios</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Do not display application icon on mobile app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>hide<wbr>Web</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Do not display application icon to users
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>honor<wbr>Force<wbr>Authn</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Prompt user to re-authenticate if SP asks for it.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>http<wbr>Post<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Post` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>http<wbr>Redirect<wbr>Binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>idp<wbr>Issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}SAML issuer ID.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Certificate key ID.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Certificate name. This modulates the rotation of keys. New name == new key.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key<wbr>Years<wbr>Valid</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}Number of years the certificate is valid.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}label of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The raw SAML metadata in XML.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the attribute statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>preconfigured<wbr>App</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}name of application from the Okta Integration Network, if not included a custom app will be created.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>recipient</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The location where the app may present the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>request<wbr>Compressed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Denotes whether the request is compressed or not.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>response<wbr>Signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML auth response message is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sign<wbr>On<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Sign on mode of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>signature<wbr>Algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Signature algorithm used ot digitally sign the assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sp<wbr>Issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}SAML service provider issuer.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sso<wbr>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Single Sign on Url.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}status of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject<wbr>Name<wbr>Id<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML processing rules.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject<wbr>Name<wbr>Id<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Template for app user's username when a user is assigned to the app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Name<wbr>Template</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Name<wbr>Template<wbr>Suffix</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template suffix.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Name<wbr>Template<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Username template type.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>users</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samluser">Saml<wbr>User[]</a></span>
    </dt>
    <dd>{{% md %}}Users associated with the application
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>accessibility_<wbr>error_<wbr>redirect_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Custom error page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>accessibility_<wbr>login_<wbr>redirect_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Custom login page URL.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>accessibility_<wbr>self_<wbr>service</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable self service.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>app_<wbr>settings_<wbr>json</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Application settings in JSON format.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>assertion_<wbr>signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML assertion is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>attribute_<wbr>statements</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samlattributestatement">List[Saml<wbr>Attribute<wbr>Statement]</a></span>
    </dt>
    <dd>{{% md %}}List of SAML Attribute statements.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>audience</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Audience restriction.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authn_<wbr>context_<wbr>class_<wbr>ref</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML authentication context class for the assertion’s authentication statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>auto_<wbr>submit_<wbr>toolbar</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Display auto submit toolbar.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>certificate</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The raw signing certificate.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>default_<wbr>relay_<wbr>state</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Identifies a specific application resource in an IDP initiated SSO scenario.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>destination</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Identifies the location where the SAML response is intended to be sent inside of the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>digest_<wbr>algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Determines the digest algorithm used to digitally sign the SAML assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>entity_<wbr>key</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Entity ID, the ID portion of the `entity_url`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>entity_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Entity URL for instance http://www.okta.com/exk1fcia6d6EMsf331d8.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>features</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}features enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Groups associated with the application
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>hide_<wbr>ios</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Do not display application icon on mobile app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>hide_<wbr>web</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Do not display application icon to users
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>honor_<wbr>force_<wbr>authn</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Prompt user to re-authenticate if SP asks for it.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>http_<wbr>post_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Post` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>http_<wbr>redirect_<wbr>binding</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}`urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect` location from the SAML metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>idp_<wbr>issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}SAML issuer ID.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Certificate key ID.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key_<wbr>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Certificate name. This modulates the rotation of keys. New name == new key.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key_<wbr>years_<wbr>valid</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}Number of years the certificate is valid.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}label of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The raw SAML metadata in XML.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name of the attribute statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>preconfigured_<wbr>app</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}name of application from the Okta Integration Network, if not included a custom app will be created.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>recipient</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The location where the app may present the SAML assertion.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>request_<wbr>compressed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Denotes whether the request is compressed or not.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>response_<wbr>signed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Determines whether the SAML auth response message is digitally signed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sign_<wbr>on_<wbr>mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Sign on mode of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>signature_<wbr>algorithm</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Signature algorithm used ot digitally sign the assertion and response.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sp_<wbr>issuer</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}SAML service provider issuer.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sso_<wbr>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Single Sign on Url.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>status</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}status of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject_<wbr>name_<wbr>id_<wbr>format</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Identifies the SAML processing rules.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>subject_<wbr>name_<wbr>id_<wbr>template</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Template for app user's username when a user is assigned to the app.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>name_<wbr>template</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Username template.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>name_<wbr>template_<wbr>suffix</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Username template suffix.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>name_<wbr>template_<wbr>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Username template type.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>users</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#samluser">List[Saml<wbr>User]</a></span>
    </dt>
    <dd>{{% md %}}Users associated with the application
{{% /md %}}</dd>

</dl>
{{% /choosable %}}










## Supporting Types

<h4>Saml<wbr>Attribute<wbr>Statement</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/okta/types/input/#SamlAttributeStatement">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/okta/types/output/#SamlAttributeStatement">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-okta/sdk/go/okta/app?tab=doc#SamlAttributeStatementArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-okta/sdk/go/okta/app?tab=doc#SamlAttributeStatementOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the attribute statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Filter<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Type of group attribute filter.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Filter<wbr>Value</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Filter value to use.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Namespace</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The attribute namespace. It can be set to `"urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"`, `"urn:oasis:names:tc:SAML:2.0:attrname-format:uri"`, or `"urn:oasis:names:tc:SAML:2.0:attrname-format:basic"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of attribute statement value. Can be `"EXPRESSION"` or `"GROUP"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Values</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Array of values to use.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the attribute statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Filter<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Type of group attribute filter.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Filter<wbr>Value</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Filter value to use.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Namespace</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The attribute namespace. It can be set to `"urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"`, `"urn:oasis:names:tc:SAML:2.0:attrname-format:uri"`, or `"urn:oasis:names:tc:SAML:2.0:attrname-format:basic"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of attribute statement value. Can be `"EXPRESSION"` or `"GROUP"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Values</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Array of values to use.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the attribute statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>filter<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Type of group attribute filter.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>filter<wbr>Value</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Filter value to use.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>namespace</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The attribute namespace. It can be set to `"urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"`, `"urn:oasis:names:tc:SAML:2.0:attrname-format:uri"`, or `"urn:oasis:names:tc:SAML:2.0:attrname-format:basic"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type of attribute statement value. Can be `"EXPRESSION"` or `"GROUP"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>values</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Array of values to use.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name of the attribute statement.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>filter<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Type of group attribute filter.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>filter<wbr>Value</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Filter value to use.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>namespace</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The attribute namespace. It can be set to `"urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"`, `"urn:oasis:names:tc:SAML:2.0:attrname-format:uri"`, or `"urn:oasis:names:tc:SAML:2.0:attrname-format:basic"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The type of attribute statement value. Can be `"EXPRESSION"` or `"GROUP"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>values</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Array of values to use.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Saml<wbr>User</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/okta/types/input/#SamlUser">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/okta/types/output/#SamlUser">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-okta/sdk/go/okta/app?tab=doc#SamlUserArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-okta/sdk/go/okta/app?tab=doc#SamlUserOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}id of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Password</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Username</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}id of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Password</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Username</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}id of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>password</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>username</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}id of application.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>password</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scope</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>username</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}









<h3>Package Details</h3>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-okta">https://github.com/pulumi/pulumi-okta</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
    
</dl>
