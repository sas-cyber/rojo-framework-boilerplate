local ServerBootstrap = {}
local services = {}

function ServerBootstrap.Init()
    print("[Server] Initializing service lifecycle...")
    for _, service in ipairs(services) do
        if service.OnInit then service.OnInit() end
    end
end

return ServerBootstrap
