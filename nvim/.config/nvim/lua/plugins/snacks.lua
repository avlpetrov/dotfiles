-- https://github.com/folke/snacks.nvim/blob/main/docs/image.md
return {
  "folke/snacks.nvim",
  opts = {
    image = {
      enabled = false, -- Currently experiencing the following error when plugin tries to download remote image: "curl: (3) URL rejected: Malformed input to a URL function"
      remote = true,
      -- your image configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      formats = {
        "png",
        "jpg",
        "jpeg",
        "gif",
        "bmp",
        "webp",
        "tiff",
        "heic",
        "avif",
        "mp4",
        "mov",
        "avi",
        "mkv",
        "webm",
        "pdf",
      },
    },
  },
}
