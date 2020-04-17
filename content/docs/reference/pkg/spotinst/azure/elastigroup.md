
---
title: "Elastigroup"
block_external_search_index: true
---



Provides a Spotinst elastigroup Azure resource.

## Example Usage

```typescript
import * as pulumi from "@pulumi/pulumi";
import * as spotinst from "@pulumi/spotinst";

const testAzureGroup = new spotinst.azure.Elastigroup("test_azure_group", {
    desiredCapacity: 1,
    // --- HEALTH-CHECKS -------------------------------------------------
    healthCheck: {
        autoHealing: true,
        gracePeriod: 120,
        healthCheckType: "INSTANCE_STATE",
    },
    // --- IMAGE ---------------------------------------------------------
    images: [{
        marketplaces: [{
            offer: "UbuntuServer",
            publisher: "Canonical",
            sku: "16.04-LTS",
        }],
    }],
    // --- LOAD BALANCERS ------------------------------------------------
    loadBalancers: [{
        autoWeight: true,
        balancerId: "lb-1ee2e3q",
        targetSetId: "ts-3eq",
        type: "MULTAI_TARGET_SET",
    }],
    // --- LOGIN ---------------------------------------------------------
    login: {
        sshPublicKey: "33a2s1f3g5a1df5g1ad3f2g1adfg56dfg==",
        userName: "admin",
    },
    lowPrioritySizes: [
        "standard_a1_v1",
        "standard_a1_v2",
    ],
    managedServiceIdentities: [{
        name: "example-identity",
        resourceGroupName: "spotinst-azure",
    }],
    maxSize: 1,
    // --- CAPACITY ------------------------------------------------------
    minSize: 0,
    // --- NETWORK -------------------------------------------------------
    network: {
        assignPublicIp: true,
        resourceGroupName: "subnetResourceGroup",
        subnetName: "my-subnet-name",
        virtualNetworkName: "vname",
    },
    // --- INSTANCE TYPES ------------------------------------------------
    odSizes: [
        "standard_a1_v1",
        "standard_a1_v2",
    ],
    product: "Linux",
    region: "eastus",
    resourceGroupName: "spotinst-azure",
    scalingDownPolicies: [{
        actionType: "adjustment",
        adjustment: "MIN(5,10)",
        cooldown: 60,
        dimensions: [{
            name: "name-1",
            value: "value-1",
        }],
        evaluationPeriods: 10,
        metricName: "CPUUtilization",
        namespace: "Microsoft.Compute",
        operator: "gt",
        period: 60,
        policyName: "policy-name",
        statistic: "average",
        threshold: 10,
        unit: "percent",
    }],
    // --- SCALING POLICIES ----------------------------------------------
    scalingUpPolicies: [{
        actionType: "setMinTarget",
        cooldown: 60,
        dimensions: [
            {
                name: "resourceName",
                value: "resource-name",
            },
            {
                name: "resourceGroupName",
                value: "resource-group-name",
            },
        ],
        evaluationPeriods: 10,
        metricName: "CPUUtilization",
        minTargetCapacity: "1",
        namespace: "Microsoft.Compute",
        operator: "gt",
        period: 60,
        policyName: "policy-name",
        statistic: "average",
        threshold: 10,
        unit: "percent",
    }],
    // --- SCHEDULED TASK ------------------------------------------------
    scheduledTasks: [{
        adjustment: "2",
        adjustmentPercentage: "50",
        batchSizePercentage: "33",
        cronExpression: "* * * * *",
        gracePeriod: "300",
        isEnabled: true,
        scaleMaxCapacity: "8",
        scaleMinCapacity: "5",
        scaleTargetCapacity: "6",
        taskType: "scale",
    }],
    shutdownScript: "",
    // --- STRATEGY ------------------------------------------------------
    strategy: {
        drainingTimeout: 300,
        odCount: 1,
    },
    userData: "",
});
```

## Load Balancers

* `load_balancers` - (Required) Describes a set of one or more classic load balancer target groups and/or Multai load balancer target sets.
* `type` - (Required) The resource type. Valid values: CLASSIC, TARGET_GROUP, MULTAI_TARGET_SET.
* `balancer_id` - (Required) The balancer ID.
* `target_set_id` - (Required) The scale set ID associated with the load balancer.
* `auto_weight` - (Optional, Default: `false`)

```typescript
import * as pulumi from "@pulumi/pulumi";
```

<a id="image"></a>
## Image

* `image` - (Required) Image of a VM. An image is a template for creating new VMs. Choose from Azure image catalogue (marketplace) or use a custom image.
* `publisher` - (Optional) Image publisher. Required if resource_group_name is not specified.
* `offer` - (Optional) Name of the image to use. Required if publisher is specified.
* `sku` - (Optional) Image's Stock Keeping Unit, which is the specific version of the image. Required if publisher is specified.
* `resource_group_name` - (Optional) Name of Resource Group for custom image. Required if publisher not specified.
* `image_name` - (Optional) Name of the custom image. Required if resource_group_name is specified.

```typescript
import * as pulumi from "@pulumi/pulumi";
```

<a id="health-check"></a>
## Health Check

* `health_check` - (Optional) Describes the health check configuration.
* `health_check_type` - (Optional) Health check used to validate VM health. Valid values: “INSTANCE_STATE”.
* `grace_period` - (Optional) Period of time (seconds) to wait for VM to reach healthiness before monitoring for unhealthiness.
* `auto_healing` - (Optional) Enable auto-healing of unhealthy VMs.

```typescript
import * as pulumi from "@pulumi/pulumi";
```

<a id="network"></a>
## Network

* `network` - (Required) Defines the Virtual Network and Subnet for your Elastigroup.
* `virtual_network_name` - (Required) Name of Vnet.
* `subnet_name` - (Required) ID of subnet.
* `resource_group_name` - (Required) Vnet Resource Group Name.
* `assign_public_up` - (Optional, Default: `false`) Assign a public IP to each VM in the Elastigroup.
* `additional_ip_configs` - (Optional) Array of additional IP configuration objects.
* `name` - (Required) The IP configuration name.
* `private_ip_version` - (Optional) Available from Azure Api-Version 2017-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Valid values: `IPv4`, `IPv6`.

```typescript
import * as pulumi from "@pulumi/pulumi";
```

<a id="login"></a>
## Login

```typescript
import * as pulumi from "@pulumi/pulumi";
```

<a id="login"></a>
## Login

* `login` - (Required) Describes the login configuration.
* `user_name` - (Required) Set admin access for accessing your VMs.
* `ssh_public_key` - (Optional) SSH for admin access to Linux VMs. Required for Linux product types.
* `password` - (Optional) Password for admin access to Windows VMs. Required for Windows product types.

```typescript
import * as pulumi from "@pulumi/pulumi";
```

<a id="scaling-policy"></a>
## Scheduling

* `scheduled_task` - (Optional) Describes the configuration of one or more scheduled tasks.
* `is_enabled` - (Optional, Default: `true`) Describes whether the task is enabled. When true the task should run when false it should not run.
* `cron_expression` - (Required) A valid cron expression (`* * * * *`). The cron is running in UTC time zone and is in Unix cron format Cron Expression Validator Script.
* `task_type` - (Required) The task type to run. Valid Values: `backup_ami`, `scale`, `scaleUp`, `roll`, `statefulUpdateCapacity`, `statefulRecycle`.
* `scale_min_capacity` - (Optional) The min capacity of the group. Should be used when choosing ‘task_type' of ‘scale'.
* `scale_max_capacity` - (Optional) The max capacity of the group. Required when ‘task_type' is ‘scale'.
* `scale_target_capacity` - (Optional) The target capacity of the group. Should be used when choosing ‘task_type' of ‘scale'.
* `adjustment` - (Optional) The number of instances to add/remove to/from the target capacity when scale is needed.
* `adjustment_percentage` - (Optional) The percent of instances to add/remove to/from the target capacity when scale is needed.
* `batch_size_percentage` - (Optional) The percentage size of each batch in the scheduled deployment roll. Required when the 'task_type' is 'roll'.
* `grace_period` - (Optional) The time to allow instances to become healthy.

```typescript
import * as pulumi from "@pulumi/pulumi";
```

<a id="update-policy"></a>
## Update Policy

* `update_policy` - (Optional)

    * `should_roll` - (Required) Sets the enablement of the roll option.
    * `roll_config` - (Required) While used, you can control whether the group should perform a deployment after an update to the configuration.
        * `batch_size_percentage` - (Required) Sets the percentage of the instances to deploy in each batch.
        * `health_check_type` - (Optional) Sets the health check type to use. Valid values: `"INSTANCE_STATE"`, `"NONE"`.
        * `grace_period` - (Optional) Sets the grace period for new instances to become healthy.
       
```typescript
import * as pulumi from "@pulumi/pulumi";
```

<a id="third-party-integrations"></a>
## Third-Party Integrations

* `integration_kubernetes` - (Optional) Describes the [Kubernetes](https://kubernetes.io/) integration.
    * `cluster_identifier` - (Required) The cluster ID.

Usage:

```typescript
import * as pulumi from "@pulumi/pulumi";
```

* `integration_multai_runtime` - (Optional) Describes the [Multai Runtime](https://spotinst.com/) integration.
    * `deployment_id` - (Optional) The deployment id you want to get

Usage:

```typescript
import * as pulumi from "@pulumi/pulumi";
```

> This content is derived from https://github.com/terraform-providers/terraform-provider-spotinst/blob/master/website/docs/r/elastigroup_azure.html.markdown.



## Create a Elastigroup Resource

{{< chooser language "javascript,typescript,python,go,csharp" / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/spotinst/azure/#Elastigroup">Elastigroup</a></span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">args</span>: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/spotinst/azure/#ElastigroupArgs">ElastigroupArgs</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span><span class="nf">Elastigroup</span><span class="p">(resource_name, opts=None, </span>custom_data=None<span class="p">, </span>desired_capacity=None<span class="p">, </span>health_check=None<span class="p">, </span>images=None<span class="p">, </span>integration_kubernetes=None<span class="p">, </span>integration_multai_runtime=None<span class="p">, </span>load_balancers=None<span class="p">, </span>login=None<span class="p">, </span>low_priority_sizes=None<span class="p">, </span>managed_service_identities=None<span class="p">, </span>max_size=None<span class="p">, </span>min_size=None<span class="p">, </span>name=None<span class="p">, </span>network=None<span class="p">, </span>od_sizes=None<span class="p">, </span>product=None<span class="p">, </span>region=None<span class="p">, </span>resource_group_name=None<span class="p">, </span>scaling_down_policies=None<span class="p">, </span>scaling_up_policies=None<span class="p">, </span>scheduled_tasks=None<span class="p">, </span>shutdown_script=None<span class="p">, </span>strategy=None<span class="p">, </span>update_policy=None<span class="p">, </span>user_data=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>NewElastigroup<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">args</span> <span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupArgs">ElastigroupArgs</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#Elastigroup">Elastigroup</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Spotinst/Pulumi.Spotinst.Azure.Elastigroup.html">Elastigroup</a></span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Spotinst/Pulumi.SpotInst.Azure.ElastigroupArgs.html">ElastigroupArgs</a></span> <span class="nx">args<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
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
        <span>Low<wbr>Priority<wbr>Sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Available Low-Priority sizes.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Network</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupnetwork">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Network<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Od<wbr>Sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Available On-Demand sizes
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Product</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Operation system type. Valid values: `"Linux"`, `"Windows"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The region your Azure group will be created in.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Strategy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupstrategy">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Strategy<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}Describes the deployment strategy.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Custom<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Desired<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The desired number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Health<wbr>Check</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouphealthcheck">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Health<wbr>Check<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Images</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimage">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Image<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Integration<wbr>Kubernetes</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationkubernetes">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Integration<wbr>Kubernetes<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Integration<wbr>Multai<wbr>Runtime</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationmultairuntime">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Integration<wbr>Multai<wbr>Runtime<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Load<wbr>Balancers</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouploadbalancer">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Load<wbr>Balancer<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Login</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouplogin">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Login<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Managed<wbr>Service<wbr>Identities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupmanagedserviceidentity">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Managed<wbr>Service<wbr>Identity<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Max<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The maximum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Min<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The minimum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scaling<wbr>Down<wbr>Policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalingdownpolicy">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scaling<wbr>Up<wbr>Policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalinguppolicy">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scheduled<wbr>Tasks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscheduledtask">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Scheduled<wbr>Task<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Shutdown<wbr>Script</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Shutdown script for the group. Value should be passed as a string encoded at Base64 only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Update<wbr>Policy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupupdatepolicy">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Update<wbr>Policy<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Base64-encoded MIME user data to make available to the instances.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Low<wbr>Priority<wbr>Sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Available Low-Priority sizes.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Network</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupnetwork">Elastigroup<wbr>Network</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Od<wbr>Sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Available On-Demand sizes
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Product</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Operation system type. Valid values: `"Linux"`, `"Windows"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The region your Azure group will be created in.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Strategy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupstrategy">Elastigroup<wbr>Strategy</a></span>
    </dt>
    <dd>{{% md %}}Describes the deployment strategy.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Custom<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Desired<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The desired number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Health<wbr>Check</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouphealthcheck">Elastigroup<wbr>Health<wbr>Check</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Images</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimage">[]Elastigroup<wbr>Image</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Integration<wbr>Kubernetes</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationkubernetes">Elastigroup<wbr>Integration<wbr>Kubernetes</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Integration<wbr>Multai<wbr>Runtime</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationmultairuntime">Elastigroup<wbr>Integration<wbr>Multai<wbr>Runtime</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Load<wbr>Balancers</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouploadbalancer">[]Elastigroup<wbr>Load<wbr>Balancer</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Login</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouplogin">Elastigroup<wbr>Login</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Managed<wbr>Service<wbr>Identities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupmanagedserviceidentity">[]Elastigroup<wbr>Managed<wbr>Service<wbr>Identity</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Max<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The maximum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Min<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The minimum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scaling<wbr>Down<wbr>Policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalingdownpolicy">[]Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scaling<wbr>Up<wbr>Policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalinguppolicy">[]Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scheduled<wbr>Tasks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscheduledtask">[]Elastigroup<wbr>Scheduled<wbr>Task</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Shutdown<wbr>Script</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Shutdown script for the group. Value should be passed as a string encoded at Base64 only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Update<wbr>Policy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupupdatepolicy">Elastigroup<wbr>Update<wbr>Policy</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Base64-encoded MIME user data to make available to the instances.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>low<wbr>Priority<wbr>Sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Available Low-Priority sizes.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>network</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupnetwork">Elastigroup<wbr>Network</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>od<wbr>Sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Available On-Demand sizes
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>product</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Operation system type. Valid values: `"Linux"`, `"Windows"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The region your Azure group will be created in.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>strategy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupstrategy">Elastigroup<wbr>Strategy</a></span>
    </dt>
    <dd>{{% md %}}Describes the deployment strategy.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>custom<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>desired<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The desired number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>health<wbr>Check</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouphealthcheck">Elastigroup<wbr>Health<wbr>Check</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>images</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimage">Elastigroup<wbr>Image[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>integration<wbr>Kubernetes</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationkubernetes">Elastigroup<wbr>Integration<wbr>Kubernetes</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>integration<wbr>Multai<wbr>Runtime</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationmultairuntime">Elastigroup<wbr>Integration<wbr>Multai<wbr>Runtime</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>load<wbr>Balancers</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouploadbalancer">Elastigroup<wbr>Load<wbr>Balancer[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>login</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouplogin">Elastigroup<wbr>Login</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>managed<wbr>Service<wbr>Identities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupmanagedserviceidentity">Elastigroup<wbr>Managed<wbr>Service<wbr>Identity[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>max<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The maximum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>min<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The minimum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scaling<wbr>Down<wbr>Policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalingdownpolicy">Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scaling<wbr>Up<wbr>Policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalinguppolicy">Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scheduled<wbr>Tasks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscheduledtask">Elastigroup<wbr>Scheduled<wbr>Task[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>shutdown<wbr>Script</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Shutdown script for the group. Value should be passed as a string encoded at Base64 only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>update<wbr>Policy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupupdatepolicy">Elastigroup<wbr>Update<wbr>Policy</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Base64-encoded MIME user data to make available to the instances.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>low_<wbr>priority_<wbr>sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Available Low-Priority sizes.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>network</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupnetwork">Dict[Elastigroup<wbr>Network]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>od_<wbr>sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Available On-Demand sizes
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>product</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Operation system type. Valid values: `"Linux"`, `"Windows"`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>region</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The region your Azure group will be created in.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>resource_<wbr>group_<wbr>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>strategy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupstrategy">Dict[Elastigroup<wbr>Strategy]</a></span>
    </dt>
    <dd>{{% md %}}Describes the deployment strategy.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>custom_<wbr>data</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>desired_<wbr>capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The desired number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>health_<wbr>check</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouphealthcheck">Dict[Elastigroup<wbr>Health<wbr>Check]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>images</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimage">List[Elastigroup<wbr>Image]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>integration_<wbr>kubernetes</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationkubernetes">Dict[Elastigroup<wbr>Integration<wbr>Kubernetes]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>integration_<wbr>multai_<wbr>runtime</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationmultairuntime">Dict[Elastigroup<wbr>Integration<wbr>Multai<wbr>Runtime]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>load_<wbr>balancers</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouploadbalancer">List[Elastigroup<wbr>Load<wbr>Balancer]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>login</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouplogin">Dict[Elastigroup<wbr>Login]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>managed_<wbr>service_<wbr>identities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupmanagedserviceidentity">List[Elastigroup<wbr>Managed<wbr>Service<wbr>Identity]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>max_<wbr>size</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The maximum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>min_<wbr>size</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The minimum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scaling_<wbr>down_<wbr>policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalingdownpolicy">List[Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scaling_<wbr>up_<wbr>policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalinguppolicy">List[Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scheduled_<wbr>tasks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscheduledtask">List[Elastigroup<wbr>Scheduled<wbr>Task]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>shutdown_<wbr>script</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Shutdown script for the group. Value should be passed as a string encoded at Base64 only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>update_<wbr>policy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupupdatepolicy">Dict[Elastigroup<wbr>Update<wbr>Policy]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>data</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Base64-encoded MIME user data to make available to the instances.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}










## Look up an Existing Elastigroup Resource

Get an existing Elastigroup resource's state with the given name, ID, and optional extra properties used to qualify the lookup.

{{< chooser language "javascript,typescript,python,go,csharp  " / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">public static </span><span class="nf">get</span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">id</span>: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#ID">Input&lt;ID&gt;</a></span><span class="p">, </span><span class="nx">state</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/spotinst/azure/#ElastigroupState">ElastigroupState</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">): </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/spotinst/azure/#Elastigroup">Elastigroup</a></span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">static </span><span class="nf">get</span><span class="p">(resource_name, id, opts=None, </span>custom_data=None<span class="p">, </span>desired_capacity=None<span class="p">, </span>health_check=None<span class="p">, </span>images=None<span class="p">, </span>integration_kubernetes=None<span class="p">, </span>integration_multai_runtime=None<span class="p">, </span>load_balancers=None<span class="p">, </span>login=None<span class="p">, </span>low_priority_sizes=None<span class="p">, </span>managed_service_identities=None<span class="p">, </span>max_size=None<span class="p">, </span>min_size=None<span class="p">, </span>name=None<span class="p">, </span>network=None<span class="p">, </span>od_sizes=None<span class="p">, </span>product=None<span class="p">, </span>region=None<span class="p">, </span>resource_group_name=None<span class="p">, </span>scaling_down_policies=None<span class="p">, </span>scaling_up_policies=None<span class="p">, </span>scheduled_tasks=None<span class="p">, </span>shutdown_script=None<span class="p">, </span>strategy=None<span class="p">, </span>update_policy=None<span class="p">, </span>user_data=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>GetElastigroup<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">id</span> <span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#IDInput">IDInput</a></span><span class="p">, </span><span class="nx">state</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupState">ElastigroupState</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#Elastigroup">Elastigroup</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public static </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Spotinst/Pulumi.Spotinst.Azure.Elastigroup.html">Elastigroup</a></span><span class="nf"> Get</span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.Input.html">Input&lt;string&gt;</a></span> <span class="nx">id<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Spotinst/Pulumi.Spotinst.Azure.ElastigroupState.html">ElastigroupState</a></span>? <span class="nx">state<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
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
        <span>Custom<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Desired<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The desired number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Health<wbr>Check</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouphealthcheck">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Health<wbr>Check<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Images</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimage">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Image<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Integration<wbr>Kubernetes</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationkubernetes">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Integration<wbr>Kubernetes<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Integration<wbr>Multai<wbr>Runtime</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationmultairuntime">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Integration<wbr>Multai<wbr>Runtime<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Load<wbr>Balancers</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouploadbalancer">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Load<wbr>Balancer<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Login</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouplogin">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Login<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Low<wbr>Priority<wbr>Sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Available Low-Priority sizes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Managed<wbr>Service<wbr>Identities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupmanagedserviceidentity">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Managed<wbr>Service<wbr>Identity<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Max<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The maximum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Min<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The minimum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupnetwork">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Network<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Od<wbr>Sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Available On-Demand sizes
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Product</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Operation system type. Valid values: `"Linux"`, `"Windows"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The region your Azure group will be created in.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scaling<wbr>Down<wbr>Policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalingdownpolicy">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scaling<wbr>Up<wbr>Policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalinguppolicy">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scheduled<wbr>Tasks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscheduledtask">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Scheduled<wbr>Task<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Shutdown<wbr>Script</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Shutdown script for the group. Value should be passed as a string encoded at Base64 only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Strategy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupstrategy">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Strategy<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}Describes the deployment strategy.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Update<wbr>Policy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupupdatepolicy">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Update<wbr>Policy<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Base64-encoded MIME user data to make available to the instances.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Custom<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Desired<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The desired number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Health<wbr>Check</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouphealthcheck">Elastigroup<wbr>Health<wbr>Check</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Images</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimage">[]Elastigroup<wbr>Image</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Integration<wbr>Kubernetes</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationkubernetes">Elastigroup<wbr>Integration<wbr>Kubernetes</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Integration<wbr>Multai<wbr>Runtime</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationmultairuntime">Elastigroup<wbr>Integration<wbr>Multai<wbr>Runtime</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Load<wbr>Balancers</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouploadbalancer">[]Elastigroup<wbr>Load<wbr>Balancer</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Login</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouplogin">Elastigroup<wbr>Login</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Low<wbr>Priority<wbr>Sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Available Low-Priority sizes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Managed<wbr>Service<wbr>Identities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupmanagedserviceidentity">[]Elastigroup<wbr>Managed<wbr>Service<wbr>Identity</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Max<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The maximum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Min<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The minimum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupnetwork">Elastigroup<wbr>Network</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Od<wbr>Sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Available On-Demand sizes
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Product</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Operation system type. Valid values: `"Linux"`, `"Windows"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The region your Azure group will be created in.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scaling<wbr>Down<wbr>Policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalingdownpolicy">[]Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scaling<wbr>Up<wbr>Policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalinguppolicy">[]Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scheduled<wbr>Tasks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscheduledtask">[]Elastigroup<wbr>Scheduled<wbr>Task</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Shutdown<wbr>Script</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Shutdown script for the group. Value should be passed as a string encoded at Base64 only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Strategy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupstrategy">Elastigroup<wbr>Strategy</a></span>
    </dt>
    <dd>{{% md %}}Describes the deployment strategy.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Update<wbr>Policy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupupdatepolicy">Elastigroup<wbr>Update<wbr>Policy</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Base64-encoded MIME user data to make available to the instances.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>custom<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>desired<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The desired number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>health<wbr>Check</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouphealthcheck">Elastigroup<wbr>Health<wbr>Check</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>images</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimage">Elastigroup<wbr>Image[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>integration<wbr>Kubernetes</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationkubernetes">Elastigroup<wbr>Integration<wbr>Kubernetes</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>integration<wbr>Multai<wbr>Runtime</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationmultairuntime">Elastigroup<wbr>Integration<wbr>Multai<wbr>Runtime</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>load<wbr>Balancers</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouploadbalancer">Elastigroup<wbr>Load<wbr>Balancer[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>login</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouplogin">Elastigroup<wbr>Login</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>low<wbr>Priority<wbr>Sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Available Low-Priority sizes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>managed<wbr>Service<wbr>Identities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupmanagedserviceidentity">Elastigroup<wbr>Managed<wbr>Service<wbr>Identity[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>max<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The maximum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>min<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The minimum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupnetwork">Elastigroup<wbr>Network</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>od<wbr>Sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Available On-Demand sizes
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>product</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Operation system type. Valid values: `"Linux"`, `"Windows"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The region your Azure group will be created in.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scaling<wbr>Down<wbr>Policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalingdownpolicy">Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scaling<wbr>Up<wbr>Policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalinguppolicy">Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scheduled<wbr>Tasks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscheduledtask">Elastigroup<wbr>Scheduled<wbr>Task[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>shutdown<wbr>Script</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Shutdown script for the group. Value should be passed as a string encoded at Base64 only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>strategy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupstrategy">Elastigroup<wbr>Strategy</a></span>
    </dt>
    <dd>{{% md %}}Describes the deployment strategy.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>update<wbr>Policy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupupdatepolicy">Elastigroup<wbr>Update<wbr>Policy</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Base64-encoded MIME user data to make available to the instances.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>custom_<wbr>data</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>desired_<wbr>capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The desired number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>health_<wbr>check</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouphealthcheck">Dict[Elastigroup<wbr>Health<wbr>Check]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>images</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimage">List[Elastigroup<wbr>Image]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>integration_<wbr>kubernetes</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationkubernetes">Dict[Elastigroup<wbr>Integration<wbr>Kubernetes]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>integration_<wbr>multai_<wbr>runtime</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupintegrationmultairuntime">Dict[Elastigroup<wbr>Integration<wbr>Multai<wbr>Runtime]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>load_<wbr>balancers</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouploadbalancer">List[Elastigroup<wbr>Load<wbr>Balancer]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>login</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigrouplogin">Dict[Elastigroup<wbr>Login]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>low_<wbr>priority_<wbr>sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Available Low-Priority sizes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>managed_<wbr>service_<wbr>identities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupmanagedserviceidentity">List[Elastigroup<wbr>Managed<wbr>Service<wbr>Identity]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>max_<wbr>size</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The maximum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>min_<wbr>size</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The minimum number of instances the group should have at any time.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupnetwork">Dict[Elastigroup<wbr>Network]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>od_<wbr>sizes</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Available On-Demand sizes
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>product</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Operation system type. Valid values: `"Linux"`, `"Windows"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>region</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The region your Azure group will be created in.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>resource_<wbr>group_<wbr>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scaling_<wbr>down_<wbr>policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalingdownpolicy">List[Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scaling_<wbr>up_<wbr>policies</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalinguppolicy">List[Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scheduled_<wbr>tasks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscheduledtask">List[Elastigroup<wbr>Scheduled<wbr>Task]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>shutdown_<wbr>script</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Shutdown script for the group. Value should be passed as a string encoded at Base64 only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>strategy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupstrategy">Dict[Elastigroup<wbr>Strategy]</a></span>
    </dt>
    <dd>{{% md %}}Describes the deployment strategy.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>update_<wbr>policy</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupupdatepolicy">Dict[Elastigroup<wbr>Update<wbr>Policy]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>data</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Base64-encoded MIME user data to make available to the instances.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}










## Supporting Types

<h4>Elastigroup<wbr>Health<wbr>Check</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupHealthCheck">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupHealthCheck">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupHealthCheckArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupHealthCheckOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Health<wbr>Check<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Auto<wbr>Healing</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Grace<wbr>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Health<wbr>Check<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Auto<wbr>Healing</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Grace<wbr>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>health<wbr>Check<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>auto<wbr>Healing</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>grace<wbr>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>health_<wbr>check_<wbr>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>auto_<wbr>healing</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>grace_<wbr>period</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Image</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupImage">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupImage">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupImageArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupImageOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Customs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimagecustom">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Image<wbr>Custom<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Marketplaces</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimagemarketplace">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Image<wbr>Marketplace<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Customs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimagecustom">[]Elastigroup<wbr>Image<wbr>Custom</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Marketplaces</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimagemarketplace">[]Elastigroup<wbr>Image<wbr>Marketplace</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>customs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimagecustom">Elastigroup<wbr>Image<wbr>Custom[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>marketplaces</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimagemarketplace">Elastigroup<wbr>Image<wbr>Marketplace[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>customs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimagecustom">List[Elastigroup<wbr>Image<wbr>Custom]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>marketplaces</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupimagemarketplace">List[Elastigroup<wbr>Image<wbr>Marketplace]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Image<wbr>Custom</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupImageCustom">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupImageCustom">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupImageCustomArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupImageCustomOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Image<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Image<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>image<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>image<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>resource_<wbr>group_<wbr>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Image<wbr>Marketplace</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupImageMarketplace">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupImageMarketplace">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupImageMarketplaceArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupImageMarketplaceOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Offer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Publisher</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Sku</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Offer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Publisher</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Sku</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>offer</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>publisher</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>sku</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>offer</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>publisher</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>sku</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Integration<wbr>Kubernetes</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupIntegrationKubernetes">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupIntegrationKubernetes">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupIntegrationKubernetesArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupIntegrationKubernetesOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Cluster<wbr>Identifier</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Cluster<wbr>Identifier</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>cluster<wbr>Identifier</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>cluster<wbr>Identifier</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Integration<wbr>Multai<wbr>Runtime</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupIntegrationMultaiRuntime">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupIntegrationMultaiRuntime">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupIntegrationMultaiRuntimeArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupIntegrationMultaiRuntimeOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Deployment<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Deployment<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>deployment<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>deployment_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Load<wbr>Balancer</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupLoadBalancer">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupLoadBalancer">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupLoadBalancerArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupLoadBalancerOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Auto<wbr>Weight</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Balancer<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Target<wbr>Set<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Auto<wbr>Weight</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Balancer<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Target<wbr>Set<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>auto<wbr>Weight</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>balancer<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>target<wbr>Set<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>auto<wbr>Weight</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>balancer_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>target_<wbr>set_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Login</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupLogin">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupLogin">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupLoginArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupLoginOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>User<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Password</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ssh<wbr>Public<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>User<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Password</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ssh<wbr>Public<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>user<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>password</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ssh<wbr>Public<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>user<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>password</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ssh<wbr>Public<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Managed<wbr>Service<wbr>Identity</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupManagedServiceIdentity">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupManagedServiceIdentity">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupManagedServiceIdentityArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupManagedServiceIdentityOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
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
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
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
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
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
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>resource_<wbr>group_<wbr>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Network</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupNetwork">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupNetwork">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupNetworkArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupNetworkOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Subnet<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Virtual<wbr>Network<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Additional<wbr>Ip<wbr>Configs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupnetworkadditionalipconfig">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Network<wbr>Additional<wbr>Ip<wbr>Config<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Assign<wbr>Public<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Subnet<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Virtual<wbr>Network<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Additional<wbr>Ip<wbr>Configs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupnetworkadditionalipconfig">[]Elastigroup<wbr>Network<wbr>Additional<wbr>Ip<wbr>Config</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Assign<wbr>Public<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>resource<wbr>Group<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>subnet<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>virtual<wbr>Network<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>additional<wbr>Ip<wbr>Configs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupnetworkadditionalipconfig">Elastigroup<wbr>Network<wbr>Additional<wbr>Ip<wbr>Config[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>assign<wbr>Public<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>resource_<wbr>group_<wbr>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Resource Group that the user-assigned managed identity resides in.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>subnet<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>virtual<wbr>Network<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>additional<wbr>Ip<wbr>Configs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupnetworkadditionalipconfig">List[Elastigroup<wbr>Network<wbr>Additional<wbr>Ip<wbr>Config]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>assign<wbr>Public<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Network<wbr>Additional<wbr>Ip<wbr>Config</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupNetworkAdditionalIpConfig">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupNetworkAdditionalIpConfig">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupNetworkAdditionalIpConfigArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupNetworkAdditionalIpConfigOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Private<wbr>Ip<wbr>Version</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Private<wbr>Ip<wbr>Version</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>private<wbr>Ip<wbr>Version</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>private<wbr>Ip<wbr>Version</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupScalingDownPolicy">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupScalingDownPolicy">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupScalingDownPolicyArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupScalingDownPolicyOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Metric<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Namespace</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Policy<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Threshold</span>
        <span class="property-indicator"></span>
        <span class="property-type">double</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Action<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Adjustment</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Cooldown</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Dimensions</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalingdownpolicydimension">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy<wbr>Dimension<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Evaluation<wbr>Periods</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Max<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Maximum</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Min<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Minimum</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Operator</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Statistic</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Target</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Unit</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Metric<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Namespace</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Policy<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Threshold</span>
        <span class="property-indicator"></span>
        <span class="property-type">float64</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Action<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Adjustment</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Cooldown</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Dimensions</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalingdownpolicydimension">[]Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy<wbr>Dimension</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Evaluation<wbr>Periods</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Max<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Maximum</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Min<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Minimum</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Operator</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Statistic</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Target</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Unit</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>metric<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>namespace</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>policy<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>threshold</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>action<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>adjustment</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>cooldown</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>dimensions</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalingdownpolicydimension">Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy<wbr>Dimension[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>evaluation<wbr>Periods</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>max<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>maximum</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>min<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>minimum</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>operator</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>period</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>statistic</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>target</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>unit</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>metric<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>namespace</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>policy<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>threshold</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>action<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>adjustment</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>cooldown</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>dimensions</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalingdownpolicydimension">List[Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy<wbr>Dimension]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>evaluation<wbr>Periods</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>max<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>maximum</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>min<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>minimum</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>operator</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>period</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>statistic</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>target</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>unit</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Scaling<wbr>Down<wbr>Policy<wbr>Dimension</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupScalingDownPolicyDimension">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupScalingDownPolicyDimension">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupScalingDownPolicyDimensionArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupScalingDownPolicyDimensionOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Value</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Value</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>value</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>value</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupScalingUpPolicy">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupScalingUpPolicy">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupScalingUpPolicyArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupScalingUpPolicyOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Metric<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Namespace</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Policy<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Threshold</span>
        <span class="property-indicator"></span>
        <span class="property-type">double</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Action<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Adjustment</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Cooldown</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Dimensions</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalinguppolicydimension">List&lt;Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy<wbr>Dimension<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Evaluation<wbr>Periods</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Max<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Maximum</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Min<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Minimum</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Operator</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Statistic</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Target</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Unit</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Metric<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Namespace</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Policy<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Threshold</span>
        <span class="property-indicator"></span>
        <span class="property-type">float64</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Action<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Adjustment</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Cooldown</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Dimensions</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalinguppolicydimension">[]Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy<wbr>Dimension</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Evaluation<wbr>Periods</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Max<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Maximum</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Min<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Minimum</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Operator</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Statistic</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Target</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Unit</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>metric<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>namespace</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>policy<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>threshold</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>action<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>adjustment</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>cooldown</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>dimensions</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalinguppolicydimension">Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy<wbr>Dimension[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>evaluation<wbr>Periods</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>max<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>maximum</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>min<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>minimum</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>operator</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>period</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>statistic</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>target</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>unit</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>metric<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>namespace</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>policy<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>threshold</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>action<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>adjustment</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>cooldown</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>dimensions</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupscalinguppolicydimension">List[Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy<wbr>Dimension]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>evaluation<wbr>Periods</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>max<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>maximum</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>min<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>minimum</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>operator</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>period</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>statistic</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>target</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>unit</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Scaling<wbr>Up<wbr>Policy<wbr>Dimension</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupScalingUpPolicyDimension">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupScalingUpPolicyDimension">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupScalingUpPolicyDimensionArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupScalingUpPolicyDimensionOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Value</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Value</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>value</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

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
    <dd>{{% md %}}The name of the managed identity.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>value</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Scheduled<wbr>Task</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupScheduledTask">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupScheduledTask">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupScheduledTaskArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupScheduledTaskOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Cron<wbr>Expression</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Task<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Adjustment</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Adjustment<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Batch<wbr>Size<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Grace<wbr>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Is<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scale<wbr>Max<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scale<wbr>Min<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scale<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Cron<wbr>Expression</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Task<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Adjustment</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Adjustment<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Batch<wbr>Size<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Grace<wbr>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Is<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scale<wbr>Max<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scale<wbr>Min<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scale<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>cron<wbr>Expression</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>task<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>adjustment</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>adjustment<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>batch<wbr>Size<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>grace<wbr>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>is<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scale<wbr>Max<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scale<wbr>Min<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scale<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>cron<wbr>Expression</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>task<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>adjustment</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>adjustment<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>batch<wbr>Size<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>grace_<wbr>period</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>is<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scale<wbr>Max<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scale<wbr>Min<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scale<wbr>Target<wbr>Capacity</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Strategy</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupStrategy">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupStrategy">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupStrategyArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupStrategyOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Draining<wbr>Timeout</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Time (seconds) to allow the instance to be drained from incoming TCP connections and detached from MLB before terminating it during a scale-down operation.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Low<wbr>Priority<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Percentage of Low Priority instances to maintain. Required if `od_count` is not specified.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Od<wbr>Count</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Number of On-Demand instances to maintain. Required if low_priority_percentage is not specified.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Draining<wbr>Timeout</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Time (seconds) to allow the instance to be drained from incoming TCP connections and detached from MLB before terminating it during a scale-down operation.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Low<wbr>Priority<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Percentage of Low Priority instances to maintain. Required if `od_count` is not specified.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Od<wbr>Count</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}Number of On-Demand instances to maintain. Required if low_priority_percentage is not specified.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>draining<wbr>Timeout</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}Time (seconds) to allow the instance to be drained from incoming TCP connections and detached from MLB before terminating it during a scale-down operation.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>low<wbr>Priority<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}Percentage of Low Priority instances to maintain. Required if `od_count` is not specified.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>od<wbr>Count</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}Number of On-Demand instances to maintain. Required if low_priority_percentage is not specified.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>draining_<wbr>timeout</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}Time (seconds) to allow the instance to be drained from incoming TCP connections and detached from MLB before terminating it during a scale-down operation.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>low<wbr>Priority<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}Percentage of Low Priority instances to maintain. Required if `od_count` is not specified.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>od<wbr>Count</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}Number of On-Demand instances to maintain. Required if low_priority_percentage is not specified.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Update<wbr>Policy</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupUpdatePolicy">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupUpdatePolicy">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupUpdatePolicyArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupUpdatePolicyOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Should<wbr>Roll</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Roll<wbr>Config</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupupdatepolicyrollconfig">Pulumi.<wbr>Spot<wbr>Inst.<wbr>Azure.<wbr>Inputs.<wbr>Elastigroup<wbr>Update<wbr>Policy<wbr>Roll<wbr>Config<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Should<wbr>Roll</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Roll<wbr>Config</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupupdatepolicyrollconfig">Elastigroup<wbr>Update<wbr>Policy<wbr>Roll<wbr>Config</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>should<wbr>Roll</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>roll<wbr>Config</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupupdatepolicyrollconfig">Elastigroup<wbr>Update<wbr>Policy<wbr>Roll<wbr>Config</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>should<wbr>Roll</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>roll<wbr>Config</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#elastigroupupdatepolicyrollconfig">Dict[Elastigroup<wbr>Update<wbr>Policy<wbr>Roll<wbr>Config]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Elastigroup<wbr>Update<wbr>Policy<wbr>Roll<wbr>Config</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/input/#ElastigroupUpdatePolicyRollConfig">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/spotinst/types/output/#ElastigroupUpdatePolicyRollConfig">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupUpdatePolicyRollConfigArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-spotinst/sdk/go/spotinst/azure?tab=doc#ElastigroupUpdatePolicyRollConfigOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Batch<wbr>Size<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Grace<wbr>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Health<wbr>Check<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Batch<wbr>Size<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Grace<wbr>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Health<wbr>Check<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>batch<wbr>Size<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>grace<wbr>Period</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>health<wbr>Check<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>batch<wbr>Size<wbr>Percentage</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>grace_<wbr>period</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>health_<wbr>check_<wbr>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}









<h3>Package Details</h3>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-spotinst">https://github.com/pulumi/pulumi-spotinst</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
    
</dl>
