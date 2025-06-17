local paths = {
    rust = {
        linux = "/home/quizyaka/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rust-analyzer",
        windows = "C:/Users/quizyaka/.cargo/bin/rust-analyzer.exe"
    }
}

return {
    getPath = function(name)
        local os = vim.loop.os_uname().sysname:find("Windows") and "windows" or "linux"
        return paths[name][os]
    end
}
