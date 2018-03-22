#!/bin/bash

# Runs typedoc on various Pulumi repos and copies them to 
# the /libraries folder.

# NOTE: typedoc needs to be installed globally (see README.md) rather than
# in a local node_modules folder. This is because typedoc does not correctly
# support relative paths within a TypeScript file. (So, you can point it at a folder,
# but if those .ts files use a path like "..\", typedoc will fail to resolve as intended.)

set -o nounset -o errexit -o pipefail

PULUMI_AWS_DOCS=`mktemp -d`
PULUMI_DOCS=`mktemp -d`
PULUMI_CLOUD_DOCS=`mktemp -d`

TYPEDOC_OPTS="--mode modules --readme none --gitRevision master --excludePrivate"

# pulumi
echo -e "\033[0;95mrunning typedoc on pulumi\033[0m"
pushd .
cd ../pulumi/sdk/nodejs
typedoc . $TYPEDOC_OPTS --out $PULUMI_DOCS
popd

# pulumi-aws
echo -e "\033[0;95mrunning typedoc on pulumi-aws\033[0m"
pushd .
cd ../pulumi-aws/pack/nodejs
typedoc . $TYPEDOC_OPTS --out $PULUMI_AWS_DOCS
popd

# pulumi-cloud
echo -e "\033[0;95mrunning typedoc on pulumi-cloud\033[0m"
pushd .
cd ../pulumi-cloud/api
typedoc . $TYPEDOC_OPTS --out $PULUMI_CLOUD_DOCS
popd

echo "Finished running typedoc. Copying into /packages."
mkdir -p ./packages/

# Purge existing
rm -rf ./packages/pulumi-aws/
rm -rf ./packages/pulumi/
rm -rf ./packages/pulumi-cloud/

mkdir ./packages/pulumi-aws/
mkdir ./packages/pulumi/
mkdir ./packages/pulumi-cloud/

# Copy updated
cp -R $PULUMI_AWS_DOCS/   ./packages/pulumi-aws/
cp -R $PULUMI_DOCS/       ./packages/pulumi/
cp -R $PULUMI_CLOUD_DOCS/ ./packages/pulumi-cloud/

# Cleanup
rm -rf $PULUMI_AWS_DOCS
rm -rf $PULUMI_DOCS
rm -rf $PULUMI_CLOUD_DOCS

echo "Done"