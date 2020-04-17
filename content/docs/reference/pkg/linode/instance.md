
---
title: "Instance"
block_external_search_index: true
---






## Create a Instance Resource

{{< chooser language "javascript,typescript,python,go,csharp" / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/linode/#Instance">Instance</a></span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">args</span>: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/linode/#InstanceArgs">InstanceArgs</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span><span class="nf">Instance</span><span class="p">(resource_name, opts=None, </span>alerts=None<span class="p">, </span>authorized_keys=None<span class="p">, </span>authorized_users=None<span class="p">, </span>backup_id=None<span class="p">, </span>backups_enabled=None<span class="p">, </span>boot_config_label=None<span class="p">, </span>configs=None<span class="p">, </span>disks=None<span class="p">, </span>group=None<span class="p">, </span>image=None<span class="p">, </span>label=None<span class="p">, </span>private_ip=None<span class="p">, </span>region=None<span class="p">, </span>root_pass=None<span class="p">, </span>stackscript_data=None<span class="p">, </span>stackscript_id=None<span class="p">, </span>swap_size=None<span class="p">, </span>tags=None<span class="p">, </span>type=None<span class="p">, </span>watchdog_enabled=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>NewInstance<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">args</span> <span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceArgs">InstanceArgs</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#Instance">Instance</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Linode/Pulumi.Linode.Instance.html">Instance</a></span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Linode/Pulumi.Linode.InstanceArgs.html">InstanceArgs</a></span> <span class="nx">args<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
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
        <span>Region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc.  *Changing `region` forces the creation of a new Linode Instance.*.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Alerts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancealerts">Instance<wbr>Alerts<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorized<wbr>Keys</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if `image` is provided. *This value can not be imported.* *Changing `authorized_keys` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorized<wbr>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. *This value can not be imported.* *Changing `authorized_users` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Backup<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive. *This value can not be imported.* *Changing `backup_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Backups<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Boot<wbr>Config<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Label of the Instance Config that should be used to boot the Linode instance.  If there is only one `config`, the `label` of that `config` will be used as the `boot_config_label`. *This value can not be imported.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Configs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfig">List&lt;Instance<wbr>Config<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}Configuration profiles define the VM settings and boot behavior of the Linode Instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancedisk">List&lt;Instance<wbr>Disk<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Group</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The display group of the Linode instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use. Examples are `linode/debian9`, `linode/fedora28`, `linode/ubuntu16.04lts`, `linode/arch`, and `private/12345`. *Changing `image` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Private<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Root<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The password that will be initialially assigned to the 'root' user account.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stackscript<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dictionary&lt;string, string&gt;</span>
    </dt>
    <dd>{{% md %}}An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.  *This value can not be imported.* *Changing `stackscript_data` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stackscript<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript. *This value can not be imported.* *Changing `stackscript_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Swap<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A list of tags applied to this object. Tags are for organizational purposes only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Linode type defines the pricing, CPU, disk, and RAM specs of the instance.  Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Watchdog<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc.  *Changing `region` forces the creation of a new Linode Instance.*.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Alerts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancealerts">Instance<wbr>Alerts</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorized<wbr>Keys</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if `image` is provided. *This value can not be imported.* *Changing `authorized_keys` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorized<wbr>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. *This value can not be imported.* *Changing `authorized_users` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Backup<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive. *This value can not be imported.* *Changing `backup_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Backups<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Boot<wbr>Config<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Label of the Instance Config that should be used to boot the Linode instance.  If there is only one `config`, the `label` of that `config` will be used as the `boot_config_label`. *This value can not be imported.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Configs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfig">[]Instance<wbr>Config</a></span>
    </dt>
    <dd>{{% md %}}Configuration profiles define the VM settings and boot behavior of the Linode Instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancedisk">[]Instance<wbr>Disk</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Group</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The display group of the Linode instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use. Examples are `linode/debian9`, `linode/fedora28`, `linode/ubuntu16.04lts`, `linode/arch`, and `private/12345`. *Changing `image` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Private<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Root<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The password that will be initialially assigned to the 'root' user account.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stackscript<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">map[string]string</span>
    </dt>
    <dd>{{% md %}}An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.  *This value can not be imported.* *Changing `stackscript_data` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stackscript<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript. *This value can not be imported.* *Changing `stackscript_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Swap<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A list of tags applied to this object. Tags are for organizational purposes only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Linode type defines the pricing, CPU, disk, and RAM specs of the instance.  Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Watchdog<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc.  *Changing `region` forces the creation of a new Linode Instance.*.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>alerts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancealerts">Instance<wbr>Alerts</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorized<wbr>Keys</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if `image` is provided. *This value can not be imported.* *Changing `authorized_keys` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorized<wbr>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. *This value can not be imported.* *Changing `authorized_users` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>backup<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive. *This value can not be imported.* *Changing `backup_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>backups<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>boot<wbr>Config<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Label of the Instance Config that should be used to boot the Linode instance.  If there is only one `config`, the `label` of that `config` will be used as the `boot_config_label`. *This value can not be imported.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>configs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfig">Instance<wbr>Config[]</a></span>
    </dt>
    <dd>{{% md %}}Configuration profiles define the VM settings and boot behavior of the Linode Instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancedisk">Instance<wbr>Disk[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>group</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The display group of the Linode instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use. Examples are `linode/debian9`, `linode/fedora28`, `linode/ubuntu16.04lts`, `linode/arch`, and `private/12345`. *Changing `image` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>private<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>root<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The password that will be initialially assigned to the 'root' user account.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stackscript<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">{[key: string]: string}</span>
    </dt>
    <dd>{{% md %}}An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.  *This value can not be imported.* *Changing `stackscript_data` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stackscript<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript. *This value can not be imported.* *Changing `stackscript_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>swap<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A list of tags applied to this object. Tags are for organizational purposes only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Linode type defines the pricing, CPU, disk, and RAM specs of the instance.  Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>watchdog<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>region</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc.  *Changing `region` forces the creation of a new Linode Instance.*.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>alerts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancealerts">Dict[Instance<wbr>Alerts]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorized_<wbr>keys</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if `image` is provided. *This value can not be imported.* *Changing `authorized_keys` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorized_<wbr>users</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. *This value can not be imported.* *Changing `authorized_users` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>backup_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive. *This value can not be imported.* *Changing `backup_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>backups_<wbr>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>boot_<wbr>config_<wbr>label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Label of the Instance Config that should be used to boot the Linode instance.  If there is only one `config`, the `label` of that `config` will be used as the `boot_config_label`. *This value can not be imported.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>configs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfig">List[Instance<wbr>Config]</a></span>
    </dt>
    <dd>{{% md %}}Configuration profiles define the VM settings and boot behavior of the Linode Instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancedisk">List[Instance<wbr>Disk]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>group</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The display group of the Linode instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use. Examples are `linode/debian9`, `linode/fedora28`, `linode/ubuntu16.04lts`, `linode/arch`, and `private/12345`. *Changing `image` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>private_<wbr>ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>root_<wbr>pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The password that will be initialially assigned to the 'root' user account.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stackscript_<wbr>data</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dict[str, str]</span>
    </dt>
    <dd>{{% md %}}An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.  *This value can not be imported.* *Changing `stackscript_data` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stackscript_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript. *This value can not be imported.* *Changing `stackscript_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>swap_<wbr>size</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A list of tags applied to this object. Tags are for organizational purposes only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Linode type defines the pricing, CPU, disk, and RAM specs of the instance.  Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>watchdog_<wbr>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}







## Instance Output Properties

The following output properties are available:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>Backups</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancebackups">Instance<wbr>Backups</a></span>
    </dt>
    <dd>{{% md %}}Information about this Linode's backups status.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Ip<wbr>Address</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's Public IPv4 Address. If there are multiple public IPv4 addresses on this Instance, an arbitrary address
will be used for this field.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Ipv4s</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single
private IPv4 address if needed. You may need to open a support ticket to get additional IPv4 addresses.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Ipv6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Private<wbr>Ip<wbr>Address</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's Private IPv4 Address. The regional private IP address range is 192.168.128/17 address shared by all Linode
Instances in a region.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Specs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancespecs">Instance<wbr>Specs</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The status of the instance, indicating the current readiness state.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>Backups</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancebackups">Instance<wbr>Backups</a></span>
    </dt>
    <dd>{{% md %}}Information about this Linode's backups status.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Ip<wbr>Address</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's Public IPv4 Address. If there are multiple public IPv4 addresses on this Instance, an arbitrary address
will be used for this field.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Ipv4s</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single
private IPv4 address if needed. You may need to open a support ticket to get additional IPv4 addresses.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Ipv6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Private<wbr>Ip<wbr>Address</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's Private IPv4 Address. The regional private IP address range is 192.168.128/17 address shared by all Linode
Instances in a region.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Specs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancespecs">Instance<wbr>Specs</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The status of the instance, indicating the current readiness state.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>backups</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancebackups">Instance<wbr>Backups</a></span>
    </dt>
    <dd>{{% md %}}Information about this Linode's backups status.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>ip<wbr>Address</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's Public IPv4 Address. If there are multiple public IPv4 addresses on this Instance, an arbitrary address
will be used for this field.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>ipv4s</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single
private IPv4 address if needed. You may need to open a support ticket to get additional IPv4 addresses.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>ipv6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>private<wbr>Ip<wbr>Address</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's Private IPv4 Address. The regional private IP address range is 192.168.128/17 address shared by all Linode
Instances in a region.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>specs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancespecs">Instance<wbr>Specs</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The status of the instance, indicating the current readiness state.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>backups</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancebackups">Dict[Instance<wbr>Backups]</a></span>
    </dt>
    <dd>{{% md %}}Information about this Linode's backups status.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>ip_<wbr>address</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}This Linode's Public IPv4 Address. If there are multiple public IPv4 addresses on this Instance, an arbitrary address
will be used for this field.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>ipv4s</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single
private IPv4 address if needed. You may need to open a support ticket to get additional IPv4 addresses.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>ipv6</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>private_<wbr>ip_<wbr>address</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}This Linode's Private IPv4 Address. The regional private IP address range is 192.168.128/17 address shared by all Linode
Instances in a region.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>specs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancespecs">Dict[Instance<wbr>Specs]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>status</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The status of the instance, indicating the current readiness state.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}








## Look up an Existing Instance Resource

Get an existing Instance resource's state with the given name, ID, and optional extra properties used to qualify the lookup.

{{< chooser language "javascript,typescript,python,go,csharp  " / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">public static </span><span class="nf">get</span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">id</span>: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#ID">Input&lt;ID&gt;</a></span><span class="p">, </span><span class="nx">state</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/linode/#InstanceState">InstanceState</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">): </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/linode/#Instance">Instance</a></span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">static </span><span class="nf">get</span><span class="p">(resource_name, id, opts=None, </span>alerts=None<span class="p">, </span>authorized_keys=None<span class="p">, </span>authorized_users=None<span class="p">, </span>backup_id=None<span class="p">, </span>backups=None<span class="p">, </span>backups_enabled=None<span class="p">, </span>boot_config_label=None<span class="p">, </span>configs=None<span class="p">, </span>disks=None<span class="p">, </span>group=None<span class="p">, </span>image=None<span class="p">, </span>ip_address=None<span class="p">, </span>ipv4s=None<span class="p">, </span>ipv6=None<span class="p">, </span>label=None<span class="p">, </span>private_ip=None<span class="p">, </span>private_ip_address=None<span class="p">, </span>region=None<span class="p">, </span>root_pass=None<span class="p">, </span>specs=None<span class="p">, </span>stackscript_data=None<span class="p">, </span>stackscript_id=None<span class="p">, </span>status=None<span class="p">, </span>swap_size=None<span class="p">, </span>tags=None<span class="p">, </span>type=None<span class="p">, </span>watchdog_enabled=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>GetInstance<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">id</span> <span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#IDInput">IDInput</a></span><span class="p">, </span><span class="nx">state</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceState">InstanceState</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#Instance">Instance</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public static </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Linode/Pulumi.Linode.Instance.html">Instance</a></span><span class="nf"> Get</span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.Input.html">Input&lt;string&gt;</a></span> <span class="nx">id<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Linode/Pulumi.Linode..InstanceState.html">InstanceState</a></span>? <span class="nx">state<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
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
        <span>Alerts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancealerts">Instance<wbr>Alerts<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorized<wbr>Keys</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if `image` is provided. *This value can not be imported.* *Changing `authorized_keys` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorized<wbr>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. *This value can not be imported.* *Changing `authorized_users` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Backup<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive. *This value can not be imported.* *Changing `backup_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Backups</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancebackups">Instance<wbr>Backups<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}Information about this Linode's backups status.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Backups<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Boot<wbr>Config<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Label of the Instance Config that should be used to boot the Linode instance.  If there is only one `config`, the `label` of that `config` will be used as the `boot_config_label`. *This value can not be imported.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Configs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfig">List&lt;Instance<wbr>Config<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}Configuration profiles define the VM settings and boot behavior of the Linode Instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancedisk">List&lt;Instance<wbr>Disk<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Group</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The display group of the Linode instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use. Examples are `linode/debian9`, `linode/fedora28`, `linode/ubuntu16.04lts`, `linode/arch`, and `private/12345`. *Changing `image` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ip<wbr>Address</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's Public IPv4 Address. If there are multiple public IPv4 addresses on this Instance, an arbitrary address
will be used for this field.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ipv4s</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single
private IPv4 address if needed. You may need to open a support ticket to get additional IPv4 addresses.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ipv6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Private<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Private<wbr>Ip<wbr>Address</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's Private IPv4 Address. The regional private IP address range is 192.168.128/17 address shared by all Linode
Instances in a region.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc.  *Changing `region` forces the creation of a new Linode Instance.*.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Root<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The password that will be initialially assigned to the 'root' user account.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Specs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancespecs">Instance<wbr>Specs<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stackscript<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dictionary&lt;string, string&gt;</span>
    </dt>
    <dd>{{% md %}}An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.  *This value can not be imported.* *Changing `stackscript_data` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stackscript<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript. *This value can not be imported.* *Changing `stackscript_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The status of the instance, indicating the current readiness state.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Swap<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A list of tags applied to this object. Tags are for organizational purposes only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Linode type defines the pricing, CPU, disk, and RAM specs of the instance.  Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Watchdog<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Alerts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancealerts">Instance<wbr>Alerts</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorized<wbr>Keys</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if `image` is provided. *This value can not be imported.* *Changing `authorized_keys` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorized<wbr>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. *This value can not be imported.* *Changing `authorized_users` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Backup<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive. *This value can not be imported.* *Changing `backup_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Backups</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancebackups">Instance<wbr>Backups</a></span>
    </dt>
    <dd>{{% md %}}Information about this Linode's backups status.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Backups<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Boot<wbr>Config<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Label of the Instance Config that should be used to boot the Linode instance.  If there is only one `config`, the `label` of that `config` will be used as the `boot_config_label`. *This value can not be imported.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Configs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfig">[]Instance<wbr>Config</a></span>
    </dt>
    <dd>{{% md %}}Configuration profiles define the VM settings and boot behavior of the Linode Instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancedisk">[]Instance<wbr>Disk</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Group</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The display group of the Linode instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use. Examples are `linode/debian9`, `linode/fedora28`, `linode/ubuntu16.04lts`, `linode/arch`, and `private/12345`. *Changing `image` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ip<wbr>Address</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's Public IPv4 Address. If there are multiple public IPv4 addresses on this Instance, an arbitrary address
will be used for this field.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ipv4s</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single
private IPv4 address if needed. You may need to open a support ticket to get additional IPv4 addresses.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ipv6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Private<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Private<wbr>Ip<wbr>Address</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's Private IPv4 Address. The regional private IP address range is 192.168.128/17 address shared by all Linode
Instances in a region.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc.  *Changing `region` forces the creation of a new Linode Instance.*.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Root<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The password that will be initialially assigned to the 'root' user account.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Specs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancespecs">Instance<wbr>Specs</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stackscript<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">map[string]string</span>
    </dt>
    <dd>{{% md %}}An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.  *This value can not be imported.* *Changing `stackscript_data` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stackscript<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript. *This value can not be imported.* *Changing `stackscript_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The status of the instance, indicating the current readiness state.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Swap<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A list of tags applied to this object. Tags are for organizational purposes only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Linode type defines the pricing, CPU, disk, and RAM specs of the instance.  Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Watchdog<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>alerts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancealerts">Instance<wbr>Alerts</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorized<wbr>Keys</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if `image` is provided. *This value can not be imported.* *Changing `authorized_keys` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorized<wbr>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. *This value can not be imported.* *Changing `authorized_users` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>backup<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive. *This value can not be imported.* *Changing `backup_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>backups</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancebackups">Instance<wbr>Backups</a></span>
    </dt>
    <dd>{{% md %}}Information about this Linode's backups status.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>backups<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>boot<wbr>Config<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Label of the Instance Config that should be used to boot the Linode instance.  If there is only one `config`, the `label` of that `config` will be used as the `boot_config_label`. *This value can not be imported.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>configs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfig">Instance<wbr>Config[]</a></span>
    </dt>
    <dd>{{% md %}}Configuration profiles define the VM settings and boot behavior of the Linode Instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancedisk">Instance<wbr>Disk[]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>group</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The display group of the Linode instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use. Examples are `linode/debian9`, `linode/fedora28`, `linode/ubuntu16.04lts`, `linode/arch`, and `private/12345`. *Changing `image` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ip<wbr>Address</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's Public IPv4 Address. If there are multiple public IPv4 addresses on this Instance, an arbitrary address
will be used for this field.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ipv4s</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single
private IPv4 address if needed. You may need to open a support ticket to get additional IPv4 addresses.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ipv6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>private<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>private<wbr>Ip<wbr>Address</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This Linode's Private IPv4 Address. The regional private IP address range is 192.168.128/17 address shared by all Linode
Instances in a region.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc.  *Changing `region` forces the creation of a new Linode Instance.*.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>root<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The password that will be initialially assigned to the 'root' user account.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>specs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancespecs">Instance<wbr>Specs</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stackscript<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">{[key: string]: string}</span>
    </dt>
    <dd>{{% md %}}An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.  *This value can not be imported.* *Changing `stackscript_data` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stackscript<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript. *This value can not be imported.* *Changing `stackscript_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>status</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The status of the instance, indicating the current readiness state.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>swap<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A list of tags applied to this object. Tags are for organizational purposes only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Linode type defines the pricing, CPU, disk, and RAM specs of the instance.  Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>watchdog<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>alerts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancealerts">Dict[Instance<wbr>Alerts]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorized_<wbr>keys</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if `image` is provided. *This value can not be imported.* *Changing `authorized_keys` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorized_<wbr>users</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. *This value can not be imported.* *Changing `authorized_users` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>backup_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive. *This value can not be imported.* *Changing `backup_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>backups</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancebackups">Dict[Instance<wbr>Backups]</a></span>
    </dt>
    <dd>{{% md %}}Information about this Linode's backups status.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>backups_<wbr>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>boot_<wbr>config_<wbr>label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Label of the Instance Config that should be used to boot the Linode instance.  If there is only one `config`, the `label` of that `config` will be used as the `boot_config_label`. *This value can not be imported.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>configs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfig">List[Instance<wbr>Config]</a></span>
    </dt>
    <dd>{{% md %}}Configuration profiles define the VM settings and boot behavior of the Linode Instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancedisk">List[Instance<wbr>Disk]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>group</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The display group of the Linode instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use. Examples are `linode/debian9`, `linode/fedora28`, `linode/ubuntu16.04lts`, `linode/arch`, and `private/12345`. *Changing `image` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ip_<wbr>address</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}This Linode's Public IPv4 Address. If there are multiple public IPv4 addresses on this Instance, an arbitrary address
will be used for this field.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ipv4s</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single
private IPv4 address if needed. You may need to open a support ticket to get additional IPv4 addresses.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ipv6</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>private_<wbr>ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>private_<wbr>ip_<wbr>address</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}This Linode's Private IPv4 Address. The regional private IP address range is 192.168.128/17 address shared by all Linode
Instances in a region.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>region</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc.  *Changing `region` forces the creation of a new Linode Instance.*.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>root_<wbr>pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The password that will be initialially assigned to the 'root' user account.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>specs</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancespecs">Dict[Instance<wbr>Specs]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stackscript_<wbr>data</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dict[str, str]</span>
    </dt>
    <dd>{{% md %}}An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.  *This value can not be imported.* *Changing `stackscript_data` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stackscript_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript. *This value can not be imported.* *Changing `stackscript_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>status</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The status of the instance, indicating the current readiness state.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>swap_<wbr>size</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A list of tags applied to this object. Tags are for organizational purposes only.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The Linode type defines the pricing, CPU, disk, and RAM specs of the instance.  Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>watchdog_<wbr>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}










## Supporting Types

<h4>Instance<wbr>Alerts</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceAlerts">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceAlerts">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceAlertsArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceAlertsOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Cpu</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Io</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network<wbr>In</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network<wbr>Out</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Transfer<wbr>Quota</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Cpu</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Io</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network<wbr>In</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network<wbr>Out</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Transfer<wbr>Quota</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>cpu</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>io</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network<wbr>In</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network<wbr>Out</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>transfer<wbr>Quota</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>cpu</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>io</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network<wbr>In</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network<wbr>Out</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>transfer<wbr>Quota</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Backups</h4>
{{% choosable language nodejs %}}
> See the   <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceBackups">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the   <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceBackupsOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Schedule</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancebackupsschedule">Instance<wbr>Backups<wbr>Schedule<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Schedule</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancebackupsschedule">Instance<wbr>Backups<wbr>Schedule</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>schedule</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancebackupsschedule">Instance<wbr>Backups<wbr>Schedule</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>schedule</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancebackupsschedule">Dict[Instance<wbr>Backups<wbr>Schedule]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Backups<wbr>Schedule</h4>
{{% choosable language nodejs %}}
> See the   <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceBackupsSchedule">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the   <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceBackupsScheduleOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Day</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Window</span>
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
        <span>Day</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Window</span>
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
        <span>day</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>window</span>
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
        <span>day</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>window</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Config</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceConfig">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceConfig">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Comments</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- Arbitrary user comments about this `config`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Devices</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevices">Instance<wbr>Config<wbr>Devices<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}A list of `disk` or `volume` attachments for this `config`.  If the `boot_config_label` omits a `devices` block, the Linode will not be booted.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Helpers</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfighelpers">Instance<wbr>Config<wbr>Helpers<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}Helpers enabled when booting to this Linode Config.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Kernel</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- A Kernel ID to boot a Linode with. Default is based on image choice. (examples: linode/latest-64bit, linode/grub2, linode/direct-disk)
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Memory<wbr>Limit</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}- Defaults to the total RAM of the Linode
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Root<wbr>Device</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- The root device to boot. The corresponding disk must be attached to a `device` slot.  Example: `"/dev/sda"`
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Run<wbr>Level</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- Defines the state of your Linode after booting. Defaults to `"default"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Virt<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- Controls the virtualization mode. Defaults to `"paravirt"`.
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
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Comments</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- Arbitrary user comments about this `config`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Devices</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevices">Instance<wbr>Config<wbr>Devices</a></span>
    </dt>
    <dd>{{% md %}}A list of `disk` or `volume` attachments for this `config`.  If the `boot_config_label` omits a `devices` block, the Linode will not be booted.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Helpers</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfighelpers">Instance<wbr>Config<wbr>Helpers</a></span>
    </dt>
    <dd>{{% md %}}Helpers enabled when booting to this Linode Config.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Kernel</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- A Kernel ID to boot a Linode with. Default is based on image choice. (examples: linode/latest-64bit, linode/grub2, linode/direct-disk)
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Memory<wbr>Limit</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}- Defaults to the total RAM of the Linode
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Root<wbr>Device</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- The root device to boot. The corresponding disk must be attached to a `device` slot.  Example: `"/dev/sda"`
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Run<wbr>Level</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- Defines the state of your Linode after booting. Defaults to `"default"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Virt<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- Controls the virtualization mode. Defaults to `"paravirt"`.
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
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>comments</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- Arbitrary user comments about this `config`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>devices</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevices">Instance<wbr>Config<wbr>Devices</a></span>
    </dt>
    <dd>{{% md %}}A list of `disk` or `volume` attachments for this `config`.  If the `boot_config_label` omits a `devices` block, the Linode will not be booted.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>helpers</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfighelpers">Instance<wbr>Config<wbr>Helpers</a></span>
    </dt>
    <dd>{{% md %}}Helpers enabled when booting to this Linode Config.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>kernel</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- A Kernel ID to boot a Linode with. Default is based on image choice. (examples: linode/latest-64bit, linode/grub2, linode/direct-disk)
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>memory<wbr>Limit</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}- Defaults to the total RAM of the Linode
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>root<wbr>Device</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- The root device to boot. The corresponding disk must be attached to a `device` slot.  Example: `"/dev/sda"`
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>run<wbr>Level</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- Defines the state of your Linode after booting. Defaults to `"default"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>virt<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}- Controls the virtualization mode. Defaults to `"paravirt"`.
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
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>comments</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}- Arbitrary user comments about this `config`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>devices</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevices">Dict[Instance<wbr>Config<wbr>Devices]</a></span>
    </dt>
    <dd>{{% md %}}A list of `disk` or `volume` attachments for this `config`.  If the `boot_config_label` omits a `devices` block, the Linode will not be booted.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>helpers</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfighelpers">Dict[Instance<wbr>Config<wbr>Helpers]</a></span>
    </dt>
    <dd>{{% md %}}Helpers enabled when booting to this Linode Config.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>kernel</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}- A Kernel ID to boot a Linode with. Default is based on image choice. (examples: linode/latest-64bit, linode/grub2, linode/direct-disk)
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>memory<wbr>Limit</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}- Defaults to the total RAM of the Linode
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>root<wbr>Device</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}- The root device to boot. The corresponding disk must be attached to a `device` slot.  Example: `"/dev/sda"`
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>run<wbr>Level</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}- Defines the state of your Linode after booting. Defaults to `"default"`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>virt<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}- Controls the virtualization mode. Defaults to `"paravirt"`.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Config<wbr>Devices</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceConfigDevices">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceConfigDevices">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Sda</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessda">Instance<wbr>Config<wbr>Devices<wbr>Sda<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sdb</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdb">Instance<wbr>Config<wbr>Devices<wbr>Sdb<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sdc</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdc">Instance<wbr>Config<wbr>Devices<wbr>Sdc<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sdd</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdd">Instance<wbr>Config<wbr>Devices<wbr>Sdd<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sde</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessde">Instance<wbr>Config<wbr>Devices<wbr>Sde<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sdf</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdf">Instance<wbr>Config<wbr>Devices<wbr>Sdf<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sdg</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdg">Instance<wbr>Config<wbr>Devices<wbr>Sdg<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sdh</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdh">Instance<wbr>Config<wbr>Devices<wbr>Sdh<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Sda</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessda">Instance<wbr>Config<wbr>Devices<wbr>Sda</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sdb</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdb">Instance<wbr>Config<wbr>Devices<wbr>Sdb</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sdc</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdc">Instance<wbr>Config<wbr>Devices<wbr>Sdc</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sdd</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdd">Instance<wbr>Config<wbr>Devices<wbr>Sdd</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sde</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessde">Instance<wbr>Config<wbr>Devices<wbr>Sde</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sdf</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdf">Instance<wbr>Config<wbr>Devices<wbr>Sdf</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sdg</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdg">Instance<wbr>Config<wbr>Devices<wbr>Sdg</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Sdh</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdh">Instance<wbr>Config<wbr>Devices<wbr>Sdh</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>sda</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessda">Instance<wbr>Config<wbr>Devices<wbr>Sda</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sdb</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdb">Instance<wbr>Config<wbr>Devices<wbr>Sdb</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sdc</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdc">Instance<wbr>Config<wbr>Devices<wbr>Sdc</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sdd</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdd">Instance<wbr>Config<wbr>Devices<wbr>Sdd</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sde</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessde">Instance<wbr>Config<wbr>Devices<wbr>Sde</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sdf</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdf">Instance<wbr>Config<wbr>Devices<wbr>Sdf</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sdg</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdg">Instance<wbr>Config<wbr>Devices<wbr>Sdg</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sdh</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdh">Instance<wbr>Config<wbr>Devices<wbr>Sdh</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>sda</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessda">Dict[Instance<wbr>Config<wbr>Devices<wbr>Sda]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sdb</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdb">Dict[Instance<wbr>Config<wbr>Devices<wbr>Sdb]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sdc</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdc">Dict[Instance<wbr>Config<wbr>Devices<wbr>Sdc]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sdd</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdd">Dict[Instance<wbr>Config<wbr>Devices<wbr>Sdd]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sde</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessde">Dict[Instance<wbr>Config<wbr>Devices<wbr>Sde]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sdf</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdf">Dict[Instance<wbr>Config<wbr>Devices<wbr>Sdf]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sdg</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdg">Dict[Instance<wbr>Config<wbr>Devices<wbr>Sdg]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>sdh</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceconfigdevicessdh">Dict[Instance<wbr>Config<wbr>Devices<wbr>Sdh]</a></span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Config<wbr>Devices<wbr>Sda</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceConfigDevicesSda">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceConfigDevicesSda">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdaArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdaOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Config<wbr>Devices<wbr>Sdb</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceConfigDevicesSdb">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceConfigDevicesSdb">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdbArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdbOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Config<wbr>Devices<wbr>Sdc</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceConfigDevicesSdc">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceConfigDevicesSdc">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdcArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdcOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Config<wbr>Devices<wbr>Sdd</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceConfigDevicesSdd">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceConfigDevicesSdd">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSddArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSddOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Config<wbr>Devices<wbr>Sde</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceConfigDevicesSde">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceConfigDevicesSde">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdeArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdeOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Config<wbr>Devices<wbr>Sdf</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceConfigDevicesSdf">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceConfigDevicesSdf">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdfArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdfOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Config<wbr>Devices<wbr>Sdg</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceConfigDevicesSdg">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceConfigDevicesSdg">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdgArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdgOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Config<wbr>Devices<wbr>Sdh</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceConfigDevicesSdh">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceConfigDevicesSdh">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdhArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigDevicesSdhOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Disk ID of the associated `disk_label`, if used.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The `label` of the `disk` to map to this `device` slot.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The Volume ID to map to this `device` slot.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Config<wbr>Helpers</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceConfigHelpers">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceConfigHelpers">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigHelpersArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceConfigHelpersOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Devtmpfs<wbr>Automount</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Distro</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls the behavior of the Linode Config's Distribution Helper setting.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Modules<wbr>Dep</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Creates a modules dependency file for the Kernel you run.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls the behavior of the Linode Config's Network Helper setting, used to automatically configure additional IP addresses assigned to this instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Updatedb<wbr>Disabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Disables updatedb cron job to avoid disk thrashing.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Devtmpfs<wbr>Automount</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Distro</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls the behavior of the Linode Config's Distribution Helper setting.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Modules<wbr>Dep</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Creates a modules dependency file for the Kernel you run.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls the behavior of the Linode Config's Network Helper setting, used to automatically configure additional IP addresses assigned to this instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Updatedb<wbr>Disabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Disables updatedb cron job to avoid disk thrashing.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>devtmpfs<wbr>Automount</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>distro</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Controls the behavior of the Linode Config's Distribution Helper setting.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>modules<wbr>Dep</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Creates a modules dependency file for the Kernel you run.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Controls the behavior of the Linode Config's Network Helper setting, used to automatically configure additional IP addresses assigned to this instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>updatedb<wbr>Disabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Disables updatedb cron job to avoid disk thrashing.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>devtmpfs<wbr>Automount</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>distro</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls the behavior of the Linode Config's Distribution Helper setting.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>modules<wbr>Dep</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Creates a modules dependency file for the Kernel you run.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls the behavior of the Linode Config's Network Helper setting, used to automatically configure additional IP addresses assigned to this instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>updatedb<wbr>Disabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Disables updatedb cron job to avoid disk thrashing.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Disk</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/input/#InstanceDisk">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceDisk">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceDiskArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceDiskOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Label</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The size of the Disk in MB.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorized<wbr>Keys</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if `image` is provided. *This value can not be imported.* *Changing `authorized_keys` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorized<wbr>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. *This value can not be imported.* *Changing `authorized_users` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Filesystem</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The ID of the disk in the Linode API.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use. Examples are `linode/debian9`, `linode/fedora28`, `linode/ubuntu16.04lts`, `linode/arch`, and `private/12345`. *Changing `image` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Read<wbr>Only</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Root<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stackscript<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dictionary&lt;string, object&gt;</span>
    </dt>
    <dd>{{% md %}}An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.  *This value can not be imported.* *Changing `stackscript_data` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stackscript<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript. *This value can not be imported.* *Changing `stackscript_id` forces the creation of a new Linode Instance.*
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
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The size of the Disk in MB.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorized<wbr>Keys</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if `image` is provided. *This value can not be imported.* *Changing `authorized_keys` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Authorized<wbr>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. *This value can not be imported.* *Changing `authorized_users` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Filesystem</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The ID of the disk in the Linode API.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use. Examples are `linode/debian9`, `linode/fedora28`, `linode/ubuntu16.04lts`, `linode/arch`, and `private/12345`. *Changing `image` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Read<wbr>Only</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Root<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stackscript<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">map[string]interface{}</span>
    </dt>
    <dd>{{% md %}}An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.  *This value can not be imported.* *Changing `stackscript_data` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stackscript<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript. *This value can not be imported.* *Changing `stackscript_id` forces the creation of a new Linode Instance.*
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
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>size</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The size of the Disk in MB.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorized<wbr>Keys</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if `image` is provided. *This value can not be imported.* *Changing `authorized_keys` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorized<wbr>Users</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. *This value can not be imported.* *Changing `authorized_users` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>filesystem</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The ID of the disk in the Linode API.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use. Examples are `linode/debian9`, `linode/fedora28`, `linode/ubuntu16.04lts`, `linode/arch`, and `private/12345`. *Changing `image` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>read<wbr>Only</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>root<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stackscript<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">{[key: string]: any}</span>
    </dt>
    <dd>{{% md %}}An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.  *This value can not be imported.* *Changing `stackscript_data` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stackscript<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript. *This value can not be imported.* *Changing `stackscript_id` forces the creation of a new Linode Instance.*
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
    <dd>{{% md %}}The Config's label for display purposes.  Also used by `boot_config_label`.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>size</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The size of the Disk in MB.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorized_<wbr>keys</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if `image` is provided. *This value can not be imported.* *Changing `authorized_keys` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>authorized_<wbr>users</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. *This value can not be imported.* *Changing `authorized_users` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>filesystem</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The ID of the disk in the Linode API.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use. Examples are `linode/debian9`, `linode/fedora28`, `linode/ubuntu16.04lts`, `linode/arch`, and `private/12345`. *Changing `image` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>read<wbr>Only</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>root_<wbr>pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stackscript_<wbr>data</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dict[str, Any]</span>
    </dt>
    <dd>{{% md %}}An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.  *This value can not be imported.* *Changing `stackscript_data` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stackscript_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript. *This value can not be imported.* *Changing `stackscript_id` forces the creation of a new Linode Instance.*
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Specs</h4>
{{% choosable language nodejs %}}
> See the   <a href="/docs/reference/pkg/nodejs/pulumi/linode/types/output/#InstanceSpecs">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the   <a href="https://pkg.go.dev/github.com/pulumi/pulumi-linode/sdk/go/linode/?tab=doc#InstanceSpecsOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Memory</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Transfer</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vcpus</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Disk</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Memory</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Transfer</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vcpus</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>memory</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>transfer</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vcpus</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>disk</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>memory</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>transfer</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vcpus</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}









<h3>Package Details</h3>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-linode">https://github.com/pulumi/pulumi-linode</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
    
</dl>
