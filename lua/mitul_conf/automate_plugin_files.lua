local configPath = vim.fn.stdpath('config')

function scandir(directory)
    local i, t, popen = 0, {}, io.popen
    local pfile = popen('dir /b "' .. directory .. '"') -- executes a terminal command
    for filename in pfile:lines() do
        local filenameWithoutExtension = filename:match("(.+)%..+")
        if filenameWithoutExtension then
            i = i + 1
            t[i] = filenameWithoutExtension
        end
    end
    pfile:close()

    return t
end

local dirs = scandir(configPath .. "\\lua\\mitul_conf\\after\\plugin")

-- require dirs;
for i, j in pairs(dirs) do
    require("mitul_conf.after.plugin." .. j)
end
