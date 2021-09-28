
#### TODO: Delete me
   
def _local_archive_impl(repository_ctx):
  repository_ctx.extract(repository_ctx.attr.src, stripPrefix=repository_ctx.attr.strip_prefix)

local_archive = repository_rule(
    attrs = {
        "src": attr.label(mandatory = True, allow_single_file = True),
        "strip_prefix": attr.string(mandatory = False, default = "")
    },
    implementation = _local_archive_impl,
)