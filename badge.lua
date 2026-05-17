return {
  ["badge"] = function(args, kwargs)
    local label = pandoc.utils.stringify(args[1])
    local style = args[2] and pandoc.utils.stringify(args[2]) or "badge-default"
    return pandoc.RawInline(
      "html",
      '<span class="badge ' .. style .. '">' .. label .. '</span>'
    )
  end
}