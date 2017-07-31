# configure git for sparse checkout so we can optimize diskusage (ie. checkout only required folders)
# simply add a call to this script from jenkins job
git config core.sparsecheckout true
echo "org/gemoc/targetplatform" > .git/info/sparse-checkout
git read-tree -m -u HEAD
cd org/gemoc/targetplatform