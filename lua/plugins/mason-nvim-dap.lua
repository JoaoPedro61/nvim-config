return {
  "jay-babu/mason-nvim-dap.nvim",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    require("astrocore").list_insert_unique(
      opts.ensure_installed,
      {
        "python",
        "rust",
        "codelldb",
        "cpptools",
      }
    )
  end,
}
