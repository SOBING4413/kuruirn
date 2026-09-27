--// CONFIG
local Config = {
	-- Webhook berdasarkan RAP item:
	-- Low = RAP 500-2.000, minimal profit 10%
	-- Mid = RAP 3.000-9.999, minimal profit 3%
	-- High = RAP 10.000-99.999, minimal profit 3%
	-- RAP100K = RAP 100.000 ke atas, minimal profit 2%
	Webhooks = {
		Low = "https://discord.com/api/webhooks/1213083705632100382/agDqa0iFl3eh6p9XBrTUtDs_xKPYGJys29i7bPovvQOE-62IY8EEIP59Zngd77wGtRPe",
		Mid = "https://discord.com/api/webhooks/1213083705632100382/agDqa0iFl3eh6p9XBrTUtDs_xKPYGJys29i7bPovvQOE-62IY8EEIP59Zngd77wGtRPe",
		High = "https://discord.com/api/webhooks/1213083705632100382/agDqa0iFl3eh6p9XBrTUtDs_xKPYGJys29i7bPovvQOE-62IY8EEIP59Zngd77wGtRPe",
		RAP100K = "https://discord.com/api/webhooks/1213083705632100382/agDqa0iFl3eh6p9XBrTUtDs_xKPYGJys29i7bPovvQOE-62IY8EEIP59Zngd77wGtRPe", -- Webhook khusus RAP 100.000+
		-- Semua tier dengan selisih harga terhadap RAP di atas 50%
		Over50 = "https://discord.com/api/webhooks/1213083705632100382/agDqa0iFl3eh6p9XBrTUtDs_xKPYGJys29i7bPovvQOE-62IY8EEIP59Zngd77wGtRPe",
	},
	NukedWebhook = "https://discord.com/api/webhooks/1213083705632100382/agDqa0iFl3eh6p9XBrTUtDs_xKPYGJys29i7bPovvQOE-62IY8EEIP59Zngd77wGtRPe",
	BoostedWebhook = "https://discord.com/api/webhooks/1213083705632100382/agDqa0iFl3eh6p9XBrTUtDs_xKPYGJys29i7bPovvQOE-62IY8EEIP59Zngd77wGtRPe",
	BoostDetector = {
	Enabled = true,
	HistoryDays = 30, -- Server diminta mengirim RAP history 30 hari terakhir
	CacheTTL = 30 * 60,
	RecentDays = 7, -- Penilaian kestabilan memakai 7 hari kalender terakhir
	NewItemWindowDays = 10, -- History yang baru mulai <= 10 hari dianggap item baru
	MinimumStableDays = 5, -- Item baru keluar dari status boost setelah minimal 5 titik RAP harian stabil
	StableRangePercent = 15, -- Rentang RAP recent maksimal 15% dari median
	StableAverageMovePercent = 8, -- Rata-rata perubahan antartitik maksimal 8%
	StableDriftPercent = 10, -- Perubahan titik awal ke akhir maksimal 10%
	DeclinePercent = 10, -- Tren turun item baru/tidak stabil yang belum memenuhi syarat Nuke
	DeclineMoveShare = 0.60, -- Minimal 60% perpindahan titik harus menurun
	UnstableRangePercent = 25, -- Rentang recent >= 25% dianggap tidak stabil
	UnstableAverageMovePercent = 12, -- Rata-rata perubahan >= 12% dianggap tidak stabil
	UnstableSingleMovePercent = 20, -- Satu perubahan >= 20% dianggap tidak stabil
	BoostListingTTL = 15 * 60, -- Listing boost yang sama tidak dikirim ulang selama 15 menit
	RegistryFile = "boosted_item_registry.json", -- Cache permanen nama item boosted
	ReloadRegistryOnExecute = true, -- Setiap execute, baca ulang cache dari file
	Whitelist = {
	-- Item di sini tidak pernah dimasukkan ke cache/webhook boost.
	-- Bisa pakai nama saja atau format "Type:Nama Item" (tidak sensitif huruf besar/kecil).
	["Chroma Blade"] = true,
	["Blossom Dragon"] = true,
	["Bloom Shuriken"] = true,
	["Icebound Dominus"] = true,
	["Ice Warrior"] = true,
	["Kingdom's Blade"] = true,
	["Kitsune"] = true,
	["Noob"] = true,
	["Ranked Season 15 Top 50"] = true,
	["Ranked Season 12 Top 50"] = true,
	["Sandstorm Slasher"] = true,
	["Seraphim"] = true,
	["Whitefire Blade"] = true,
	["Avis Scythe"] = true,
	["Bunny"] = true,
	["Bloomlight Greatscythe"] = true,
	["Duet of Destruction"] = true,
	["Fire Dragon"] = true,
	["Frog"] = true,
	["Frost Dragon"] = true,
	["Galactic Veilpiercer"] = true,
	["Guardian Spear"] = true,
	["Icarus' Scythe"] = true,
	["Keyblade"] = true,
	["Rose Backsword"] = true,
	["Rose Railgun"] = true,
	["Sci Fi Axe"] = true,
	["Siam Ember Axe"] = true,
	["Tidewither"] = true,
	["Venom Blade"] = true,
	["Water Bow"] = true,
	["Pink Ninja Katana"] = true,
	["Chroma Fortune Cleaver"] = true,
	["Aethertech Blade"] = true,
	["Clockwork Blueblade"] = true,
	["Polar Bear"] = true,
	["reindeer"] = true, 
	["Chroma Ninja Katana"] = true, 
    ["Deathrider"] = true, 
	

	},
	ForceBoost = {
	["Skeleton Dance"] = true,
	["Lumen Petal"] = true,
	["Riftflare Blade"] = true,
	["Blue Bunny Katana"] = true,
	["Kitsune"] = true,
	["Ranked Season 12 Top 50"] = true,
	["Sandstorm Slasher"] = true,
	["Blossom Dragon"] = true,
	["Kingdom Blade"] = true,
	["Dual Chroma Blasters"] = true,
	["Solblade Sentinel"] = true,
	["Samurai's Backblade"] = true,
	["Celestial Dawn Blade"] = true,
	["Dual Nebula Blasters"] = true,
	["Ranked Season 16 Top 50"] = true,
	["Blossom Dragon (Finisher)"] = true,
	["Stardust Katana"] = true,
	["Neo-Neko Katana"] = true,
	["Blossom Blade"] = true,
	["Blade of the Fallen King"] = true,
	["Dual Wispwind Reaper"] = true,
	["Chroma DJ"] = true,
	["Ranked Season 13 Top 200"] = true,
	["Malice Parasol"] = true,
    ["Zeus' Lightning (Finisher)"] = true,
    ["Y2K Blade"] = true,
    ["Rose Wand"] = true,
    ["Germany Football"] = true,
    ["Clockwork Blueblade"] = true,
    ["Ice Warrior"] = true,
    ["Eternal Clockwork"] = true,
    ["Samurai's Set (Finisher)"] = true,
    ["Royal Throne"] = true,
    ["Evil Cyborg Blade"] = true,
    ["Dream Scythe"] = true,
    ["Kitty Katana Explosion"] = true,
    ["Clans Warrior"] = true,
    ["King Blade"] = true,

    
	

	

	},
	-- Sekali suatu nama item terdeteksi boost, semua listing dengan nama yang sama di server lain
	-- langsung dianggap boost pada execute berikutnya. Cache baru dihapus jika grafik sudah stabil
	-- minimal 5 titik harian dan mencakup minimal 5 hari kalender, atau jika masuk whitelist.
	},
	NukeDetector = {
	Enabled = true,
	HistoryDays = 100,
	HistoryCacheTTL = 6 * 60 * 60,
	MinimumHistoryPoints = 12,
	MinimumHistorySpanDays = 21,
	StableWindowMinimumPoints = 7,
	StableWindowMaximumPoints = 21,
	StableWindowMinimumSpanDays = 7,
	StableRangePercent = 12,
	StableAverageMovePercent = 6,
	StableDriftPercent = 8,
	DropPercent = 4,
	MinimumDeclinePoints = 3,
	DeclineMoveShare = 0.60,
	MinimumConsecutiveDeclines = 2,
	RecoveryTolerancePercent = 2,
	RecoveryStablePoints = 5,
	RecoveryStableSpanDays = 5,
	RecoveryStableRangePercent = 6,
	RecoveryStableAverageMovePercent = 4,
	RecoveryStableDriftPercent = 3,
	NotifyTTL = 15 * 60,
	},
	WebhookGraph = {
		Enabled = true,
		Endpoint = "https://quickchart.io/chart/create",
		Width = 900,
		Height = 400,
		MaxPoints = 100,
		MaxDays = 100,
		CacheTTL = 10 * 60,
		BackgroundColor = "#1E1E2F",
		NukeLineColor = "#E74C3C",
		BoostLineColor = "#70D648",
		NormalLineColor = "#FF6B6B",
		ShowSalesLabels = true, -- Tampilkan jumlah sales pada setiap titik graph
		SalesLabelColor = "#D1D5DB",
	},
	-- Maksimal halaman server publik yang dibaca per percobaan. Cursor akan
	-- dilanjutkan pada percobaan berikutnya sampai seluruh halaman selesai.
	PublicServerPagesPerSearch = 5,
	-- Scanner hanya dapat membaca BoothListings dari server yang sedang dimasuki.
	-- Agar seluruh server publik dipindai, script harus dimuat ulang setelah teleport.
	TeleportBootstrap = {
		Enabled = true,
		-- Pilih salah satu sumber yang memang tersedia di executor Anda:
		-- SourceUrl = "https://domain-anda.example/underfix.lua",
		SourceUrl = "",
		ScriptPath = "underfix.lua",
		-- Jangan pindah server jika script tidak berhasil diantrekan untuk server tujuan.
		-- Set false hanya bila executor Anda sudah menjalankan file ini lewat autoexec.
		RequireQueuedRestart = true,
	},
	ScanPerformance = {
		-- 0 = seluruh item dimulai bersamaan tanpa antrean worker.
		HistoryConcurrency = 0,
		NormalWebhookDelay = 0,
	},
	-- Cache username hasil GetNameFromUserIdAsync (detik). Kurangi request
	-- berulang ke Roblox API untuk seller yang sama dalam satu sesi.
	UsernameCacheTTL = 30 * 60,
	ImageCacheTTL = 30 * 60,
	RAPCacheTTL = 6 * 60 * 60,
}
repeat
	task.wait(0.1)
until game:IsLoaded()
--// SERVICES
local cloneRef = cloneref or function(instance)
	return instance
end
local HttpService = cloneRef(game:GetService("HttpService"))
local ReplicatedStorage = cloneRef(game:GetService("ReplicatedStorage"))
local Players = cloneRef(game:GetService("Players"))
local UserService = cloneRef(game:GetService("UserService"))
local Workspace = cloneRef(game:GetService("Workspace"))
--// MODULES
local Net = require(ReplicatedStorage.Packages.Net)
local ReplionClient = require(ReplicatedStorage.Packages.Replion).Client
local ItemInfo = require(ReplicatedStorage.Shared.ItemInfo)
local Inventory = require(ReplicatedStorage.Shared.Inventory).Client
local RAPController = require(ReplicatedStorage.Controllers.Trading.RAPController)
local ServerBrowserData = require(ReplicatedStorage.Shared.ServerBrowserData)
local UniverseIds = require(ReplicatedStorage.Shared.UniverseIds)
--// REQUEST (Xeno compatible)
local httpRequest = request or http_request
if not httpRequest then
	warn("Executor tidak mendukung HTTP request")
	return
end
--// DATA
local BoothListings = ReplionClient:WaitReplion("BoothListings")
local RefreshServerBrowser = Net:RemoteFunction("RefreshServerBrowser")
local ServerBrowserTeleport = Net:RemoteFunction("ServerBrowserTeleport")
local RequestRAPHistory = Net:RemoteFunction("RequestRAPHistory")
local TELEPORT_DELAY_SECONDS = 2 -- Jeda sebelum percobaan teleport/server hop
local SERVER_BROWSER_RETRY_SECONDS = 8 -- Jangan membanjiri RefreshServerBrowser saat server belum merespons.
--// ADVANCED UNDER-VALUE / NUKE / BOOST
-- Registry dan cache disimpan di environment executor supaya status tetap
-- terbawa ketika script dijalankan ulang pada sesi executor yang sama.
local globalEnvironment = getgenv and getgenv() or _G
local _v00 = globalEnvironment
local _v06 = httpRequest

-- Hentikan generasi script lama jika autoexec tidak sengaja mengeksekusi file dua kali.
_v00.__PLAZA_HELPER_RUN_GENERATION =
(tonumber(_v00.__PLAZA_HELPER_RUN_GENERATION) or 0) + 1
local CURRENT_RUN_GENERATION = _v00.__PLAZA_HELPER_RUN_GENERATION
local function _isCurrentRun()
return _v00.__PLAZA_HELPER_RUN_GENERATION == CURRENT_RUN_GENERATION
end

-- Modul pada file ini sudah dimuat langsung di bagian atas.
local function _f14()
return true
end

local function _getBoothListings()
return BoothListings
end

local function _safeRequire(target)
return require(target)
end

local function _warnModuleOnce(label, message)
warn(("[MODULE] %s: %s"):format(tostring(label), tostring(message or "unknown error")))
end

-- Diisi setelah registry boost selesai dimuat. Webhook normal dan Nuked memakai
-- fungsi ini sebagai hard guard terakhir agar nama yang sudah cached tidak bocor.
local _isBoostedByName = nil

_v00.__x9kPqL2mZ = _v00.__x9kPqL2mZ or {}
local _v05 = _v00.__x9kPqL2mZ
local DEDUPLICATION_TTL = 15 * 60
_v00.__UNDERAP_USERNAME_CACHE = _v00.__UNDERAP_USERNAME_CACHE or {}
local _v01 = _v00.__UNDERAP_USERNAME_CACHE
_v00.__UNDERAP_IMAGE_CACHE = _v00.__UNDERAP_IMAGE_CACHE or {}
local _v02 = _v00.__UNDERAP_IMAGE_CACHE
local function _f01()
local now = os.clock()
for key, sentAt in pairs(_v05) do
if type(sentAt) ~= "number" or now - sentAt >= DEDUPLICATION_TTL then
_v05[key] = nil
end
end
end
local function _f02(ownerId, itemType, itemName, itemPrice, itemRap)
return table.concat({
tostring(game.JobId),
tostring(ownerId),
tostring(itemType),
tostring(itemName),
tostring(itemPrice),
tostring(itemRap),
}, "|")
end
local function _f03(itemName)
local emotes = ItemInfo and ItemInfo.Emote
local info = type(emotes) == "table" and emotes[itemName] or nil
return info and info.DisplayName or itemName
end
local function _f04(userId)
userId = tonumber(userId)
if not userId then
return "PlazaHelper"
end
local cached = _v01[userId]
local now = os.clock()
if cached and (now - cached.at) < Config.UsernameCacheTTL then
return cached.name
end
local ok, name = pcall(function()
return Players:GetNameFromUserIdAsync(userId)
end)
name = ok and name or tostring(userId)
_v01[userId] = { name = name, at = now }
return name
end
local _displayNameCache = {}
local function _f04D(userId)
userId = tonumber(userId)
if not userId then return "PlazaHelper" end
local now = os.clock()
local cached = _displayNameCache[userId]
if cached and (now - cached.at) < Config.UsernameCacheTTL then
return cached.name
end
local displayName
local player = Players:GetPlayerByUserId(userId)
if player and player.DisplayName and player.DisplayName ~= "" then
displayName = player.DisplayName
end
if not displayName then
local ok, userInfos = pcall(function()
return UserService:GetUserInfosByUserIdsAsync({userId})
end)
if ok and type(userInfos) == "table" and userInfos[1] then
displayName = userInfos[1].DisplayName
end
end
if type(displayName) ~= "string" or displayName == "" then
displayName = _f04(userId)
end
_displayNameCache[userId] = { name = displayName, at = now }
return displayName
end
local function _f05(cacheKey, url)
local cached = _v02[cacheKey]
if cached and os.clock() - cached.at < Config.ImageCacheTTL then
return cached.url or nil
end
local success, response = pcall(function()
return _v06({ Url = url, Method = "GET" })
end)
if not success or not response or not response.Body then
_v02[cacheKey] = { url = false, at = os.clock() }
return nil
end
local ok, data = pcall(function()
return HttpService:JSONDecode(response.Body)
end)
local image = ok and data and data.data and data.data[1]
if image and image.state == "Completed" and image.imageUrl then
_v02[cacheKey] = { url = image.imageUrl, at = os.clock() }
return image.imageUrl
end
_v02[cacheKey] = { url = false, at = os.clock() }
return nil
end
local function _f06(assetId, size)
size = size or "420x420"
return _f05("asset:" .. tostring(assetId) .. ":" .. size, string.format(
"https://thumbnails.roblox.com/v1/assets?assetIds=%s&size=%s&format=Png",
tostring(assetId), size
))
end
local function _f07(userId)
return _f05("user:" .. tostring(userId), string.format(
"https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=%s&size=420x420&format=Png&isCircular=false",
tostring(userId)
))
end

--// BOOTH CLAIM + MAP LOCATION LOOKUP (ATAS/BAWAH + RING + STUDS)
-- BoothListings menjadi sumber utama status claim. Posisi booth dicari secara
-- best-effort dari Workspace agar orang yang masuk lewat link Discord tidak perlu script.
local _boothLookupCache = {
JobId = game.JobId,
WorkspaceAt = 0,
WorkspaceDescendants = nil,
WorldByOwner = {},
ClaimByRecord = {},
SpawnReference = nil,
MapCenterReference = nil,
BoothLayoutAt = 0,
BoothLayout = nil,
}

local function _normalizeBoothText(value)
local normalized = string.lower(tostring(value or ""))
normalized = normalized:gsub("%s+", " ")
normalized = normalized:gsub("^%s+", ""):gsub("%s+$", "")
return normalized
end

local function _getBoothWorkspaceDescendants()
local now = os.clock()
if _boothLookupCache.JobId ~= game.JobId then
_boothLookupCache = {
JobId = game.JobId,
WorkspaceAt = 0,
WorkspaceDescendants = nil,
WorldByOwner = {},
ClaimByRecord = {},
SpawnReference = nil,
MapCenterReference = nil,
BoothLayoutAt = 0,
BoothLayout = nil,
}
end

if type(_boothLookupCache.WorkspaceDescendants) == "table"
and now - (tonumber(_boothLookupCache.WorkspaceAt) or 0) < 15
then
return _boothLookupCache.WorkspaceDescendants
end

local ok, descendants = pcall(function()
return Workspace:GetDescendants()
end)
if not ok or type(descendants) ~= "table" then
return {}
end

_boothLookupCache.WorkspaceDescendants = descendants
_boothLookupCache.WorkspaceAt = now
_boothLookupCache.WorldByOwner = {}
_boothLookupCache.SpawnReference = nil
_boothLookupCache.MapCenterReference = nil
_boothLookupCache.BoothLayoutAt = 0
_boothLookupCache.BoothLayout = nil
return descendants
end

local function _getBoothSpawnReference()
if _boothLookupCache.SpawnReference
and _boothLookupCache.SpawnReference.Parent
then
return _boothLookupCache.SpawnReference
end

for _, instance in ipairs(_getBoothWorkspaceDescendants()) do
if instance:IsA("SpawnLocation") then
_boothLookupCache.SpawnReference = instance
return instance
end
end
return nil
end

local function _getInstanceWorldPosition(instance)
if not instance then return nil end

if instance:IsA("BasePart") then
return instance.Position
end

if instance:IsA("Model") then
local ok, pivot = pcall(function()
return instance:GetPivot()
end)
if ok and pivot then
return pivot.Position
end
end

local ok, part = pcall(function()
return instance:FindFirstChildWhichIsA("BasePart", true)
end)
if ok and part then
return part.Position
end
return nil
end

local function _isBoothLikeName(name)
local normalized = _normalizeBoothText(name)
return normalized:find("booth", 1, true)
or normalized:find("stand", 1, true)
or normalized:find("stall", 1, true)
or normalized:find("plot", 1, true)
or normalized:find("shop", 1, true)
or normalized:find("kiosk", 1, true)
or normalized:find("vendor", 1, true)
end

local function _findBoothContainer(instance)
local current = instance
local fallbackModel
for _ = 1, 10 do
if not current or current == Workspace then break end

if current:IsA("Model") then
local playerCharacter = Players:GetPlayerFromCharacter(current)
if not playerCharacter and not fallbackModel then
fallbackModel = current
end
end

if _isBoothLikeName(current.Name) then
local characterOwner = current:IsA("Model")
and Players:GetPlayerFromCharacter(current)
or nil
if not characterOwner then
return current
end
end
current = current.Parent
end
return fallbackModel
end

local function _readBoothNumber(container)
if not container then return nil end

for _, attributeName in ipairs({
"BoothId", "BoothID", "BoothNumber", "PlotId", "PlotID",
"PlotNumber", "Slot", "SlotId", "SlotID", "Index", "Number",
}) do
local value = container:GetAttribute(attributeName)
if value ~= nil and tostring(value) ~= "" then
return tostring(value)
end
end

local name = tostring(container.Name or "")
local number = name:match("[Bb]ooth[%s_%-#]*(%d+)")
or name:match("[Ss]tand[%s_%-#]*(%d+)")
or name:match("[Pp]lot[%s_%-#]*(%d+)")
or name:match("[Ss]lot[%s_%-#]*(%d+)")
if number then return number end

local checked = 0
for _, descendant in ipairs(container:GetDescendants()) do
checked += 1
if checked > 100 then break end
if descendant:IsA("TextLabel")
or descendant:IsA("TextButton")
or descendant:IsA("TextBox")
then
local textValue = tostring(descendant.Text or "")
local textNumber = textValue:match("[Bb]ooth[%s_%-#]*(%d+)")
or textValue:match("[Ss]tand[%s_%-#]*(%d+)")
or textValue:match("[Pp]lot[%s_%-#]*(%d+)")
if textNumber then
return textNumber
end
end
end
return nil
end

local function _scoreBoothOwnerMatch(instance, ownerId, sellerName, displayName)
local numericOwnerId = tonumber(ownerId)
local ownerText = tostring(ownerId or "")
local normalizedSeller = _normalizeBoothText(sellerName)
local normalizedDisplay = _normalizeBoothText(displayName)
local bestScore = 0

local okAttributes, attributes = pcall(function()
return instance:GetAttributes()
end)
if okAttributes and type(attributes) == "table" then
for attributeName, attributeValue in pairs(attributes) do
local normalizedAttributeName = _normalizeBoothText(attributeName)
if normalizedAttributeName:find("owner", 1, true)
or normalizedAttributeName:find("user", 1, true)
or normalizedAttributeName:find("player", 1, true)
or normalizedAttributeName:find("claim", 1, true)
then
if numericOwnerId and tonumber(attributeValue) == numericOwnerId then
bestScore = math.max(bestScore, 160)
else
local normalizedValue = _normalizeBoothText(attributeValue)
if normalizedSeller ~= "" and normalizedValue == normalizedSeller then
bestScore = math.max(bestScore, 145)
elseif normalizedDisplay ~= "" and normalizedValue == normalizedDisplay then
bestScore = math.max(bestScore, 130)
end
end
end
end
end

if instance:IsA("ObjectValue") then
local value = instance.Value
if value and value:IsA("Player") and tonumber(value.UserId) == numericOwnerId then
bestScore = math.max(bestScore, 170)
end
elseif instance:IsA("IntValue")
or instance:IsA("NumberValue")
or instance:IsA("StringValue")
then
local value = instance.Value
if numericOwnerId and tonumber(value) == numericOwnerId then
bestScore = math.max(bestScore, 150)
else
local normalizedValue = _normalizeBoothText(value)
if normalizedSeller ~= "" and normalizedValue == normalizedSeller then
bestScore = math.max(bestScore, 135)
elseif normalizedDisplay ~= "" and normalizedValue == normalizedDisplay then
bestScore = math.max(bestScore, 120)
end
end
end

if instance:IsA("TextLabel")
or instance:IsA("TextButton")
or instance:IsA("TextBox")
then
local normalizedText = _normalizeBoothText(instance.Text)
if ownerText ~= "" and normalizedText == ownerText then
bestScore = math.max(bestScore, 145)
end
if normalizedSeller ~= "" then
if normalizedText == normalizedSeller
or normalizedText == "@" .. normalizedSeller
then
bestScore = math.max(bestScore, 135)
elseif normalizedText:find(normalizedSeller, 1, true) then
bestScore = math.max(bestScore, 90)
end
end
if normalizedDisplay ~= "" and normalizedText == normalizedDisplay then
bestScore = math.max(bestScore, 110)
end
end

local normalizedName = _normalizeBoothText(instance.Name)
if normalizedSeller ~= "" and normalizedName == normalizedSeller then
bestScore = math.max(bestScore, 100)
elseif ownerText ~= "" and normalizedName == ownerText then
bestScore = math.max(bestScore, 110)
end

return bestScore
end

local function _isUsableBoothContainer(container)
if not container or container == Workspace then
return false
end

local normalizedName = _normalizeBoothText(container.Name)
if normalizedName == "workspace"
or normalizedName == "map"
or normalizedName == "world"
or normalizedName == "game"
then
return false
end

if container:IsA("Model") and Players:GetPlayerFromCharacter(container) then
return false
end

return _getInstanceWorldPosition(container) ~= nil
end

local function _getMapCenterReference()
if _boothLookupCache.MapCenterReference
and _boothLookupCache.MapCenterReference.Parent
then
return _boothLookupCache.MapCenterReference
end

local best
for _, instance in ipairs(_getBoothWorkspaceDescendants()) do
local normalizedName = _normalizeBoothText(instance.Name)
local score = 0

if normalizedName == "index" then
score = 200
elseif normalizedName:find("index", 1, true) then
score = 160
elseif normalizedName == "center" or normalizedName == "centre" then
score = 140
elseif normalizedName:find("plaza center", 1, true)
or normalizedName:find("plaza centre", 1, true)
then
score = 130
elseif normalizedName == "middle" then
score = 100
end

if score > 0 then
local position = _getInstanceWorldPosition(instance)
if position and (not best or score > best.Score) then
best = {
Instance = instance,
Position = position,
Score = score,
}
end
end
end

if best then
_boothLookupCache.MapCenterReference = best.Instance
return best.Instance
end

return nil
end

local function _collectBoothLayout()
local now = os.clock()
local cached = _boothLookupCache.BoothLayout
if type(cached) == "table"
and now - (tonumber(_boothLookupCache.BoothLayoutAt) or 0) < 15
then
return cached
end

local positions = {}
local seenContainers = setmetatable({}, { __mode = "k" })
for _, instance in ipairs(_getBoothWorkspaceDescendants()) do
if _isBoothLikeName(instance.Name) then
local container = _findBoothContainer(instance)
if _isUsableBoothContainer(container) and not seenContainers[container] then
seenContainers[container] = true
local position = _getInstanceWorldPosition(container)
if position then
table.insert(positions, position)
end
end
end
end

local centerReference = _getMapCenterReference()
local centerPosition = _getInstanceWorldPosition(centerReference)

-- Fallback: rata-rata posisi semua booth biasanya berada dekat pusat arena.
if not centerPosition and #positions >= 4 then
local total = Vector3.zero
for _, position in ipairs(positions) do
total += position
end
centerPosition = total / #positions
end

local radii = {}
if centerPosition then
for _, position in ipairs(positions) do
table.insert(radii, (position - centerPosition).Magnitude)
end
table.sort(radii)
end

local ringThreshold
if #radii >= 6 then
local bestGap = 0
local bestIndex
-- Abaikan gap paling ujung agar satu object nyasar tidak menentukan batas ring.
local firstIndex = math.max(2, math.floor(#radii * 0.20))
local lastIndex = math.min(#radii - 1, math.ceil(#radii * 0.80))
for index = firstIndex, lastIndex do
local gap = radii[index + 1] - radii[index]
if gap > bestGap then
bestGap = gap
bestIndex = index
end
end
if bestIndex and bestGap >= 4 then
ringThreshold = (radii[bestIndex] + radii[bestIndex + 1]) / 2
end
end

-- Fallback kedua: gunakan jarak pusat ke spawn sebagai skala arena.
if not ringThreshold and centerPosition then
local spawnReference = _getBoothSpawnReference()
if spawnReference then
local centerToSpawn = (spawnReference.Position - centerPosition).Magnitude
if centerToSpawn > 0 then
ringThreshold = centerToSpawn * 0.58
end
end
end

-- Fallback terakhir: median radius seluruh booth yang terlihat.
if not ringThreshold and #radii > 0 then
local middle = math.floor((#radii + 1) / 2)
ringThreshold = radii[middle]
end

local layout = {
CenterPosition = centerPosition,
RingThreshold = ringThreshold,
BoothPositions = positions,
}
_boothLookupCache.BoothLayout = layout
_boothLookupCache.BoothLayoutAt = now
return layout
end

local function _formatBoothMapPosition(position)
local spawnReference = _getBoothSpawnReference()
if not spawnReference or not position then
return nil, nil, nil
end

-- Arah dibuat mengikuti tampilan map saat spawn:
-- depan spawn = Atas, belakang spawn = Bawah.
local relative = spawnReference.CFrame:PointToObjectSpace(position)
local horizontal
local vertical

if math.abs(relative.X) >= 8 then
horizontal = relative.X > 0 and "Kanan" or "Kiri"
end
if math.abs(relative.Z) >= 8 then
vertical = relative.Z < 0 and "Atas" or "Bawah"
end

local mapDirection
if vertical and horizontal then
mapDirection = vertical .. "-" .. horizontal
else
mapDirection = vertical or horizontal or "Tengah"
end

local distance = math.floor((position - spawnReference.Position).Magnitude + 0.5)

local ringName
local layout = _collectBoothLayout()
if layout.CenterPosition and tonumber(layout.RingThreshold) then
local radius = (position - layout.CenterPosition).Magnitude
ringName = radius <= layout.RingThreshold and "Ring Dalam" or "Ring Luar"
end

return mapDirection, distance, ringName
end

local function _findSellerBoothWorld(ownerId, sellerName)
local cacheKey = tostring(ownerId)
local cached = _boothLookupCache.WorldByOwner[cacheKey]
if cached then return cached end

local displayName = _f04D(tonumber(ownerId))
local best
for _, instance in ipairs(_getBoothWorkspaceDescendants()) do
local score = _scoreBoothOwnerMatch(
instance,
ownerId,
sellerName,
displayName
)
if score > 0 then
local container = _findBoothContainer(instance)
if _isUsableBoothContainer(container) then
local position = _getInstanceWorldPosition(container)
if position then
if _isBoothLikeName(container.Name) then
score += 30
end
if not best or score > best.Score then
best = {
Container = container,
Position = position,
Score = score,
}
end
end
end
end
end

local result
if best then
local boothNumber = _readBoothNumber(best.Container)
local direction, distance, ringName = _formatBoothMapPosition(best.Position)
local parts = {}

if boothNumber then
table.insert(parts, "Booth #" .. tostring(boothNumber))
end
if ringName then
table.insert(parts, ringName)
end
if direction then
table.insert(parts, direction)
end
if distance then
table.insert(parts, tostring(distance) .. " studs")
end

result = {
Found = true,
Location = #parts > 0
and table.concat(parts, " • ")
or "Posisi booth ditemukan",
Distance = distance,
Direction = direction,
Ring = ringName,
}
else
result = {
Found = false,
Location = "Tidak ditemukan otomatis — cari booth milik @" .. tostring(sellerName),
Distance = nil,
Direction = nil,
Ring = nil,
}
end

_boothLookupCache.WorldByOwner[cacheKey] = result
return result
end

local function _findOwnerBoothTable(snapshot, ownerId)
if type(snapshot) ~= "table" then return nil end
return snapshot[ownerId]
or snapshot[tostring(ownerId)]
or snapshot[tonumber(ownerId)]
end

local function _isSameBoothListing(listing, record)
if type(listing) ~= "table" then return false end
if record.ItemType and tostring(listing.Type) ~= tostring(record.ItemType) then
return false
end
if record.RawItemName
and tostring(listing.ItemName) ~= tostring(record.RawItemName)
then
return false
end
if tonumber(record.ItemPrice)
and tonumber(listing.Price) ~= tonumber(record.ItemPrice)
then
return false
end
return true
end

local function _getSellerBoothInfo(record, sellerName)
local recordCacheKey = table.concat({
tostring(game.JobId),
tostring(record.OwnerId),
tostring(record.ItemType),
tostring(record.RawItemName),
tostring(record.ItemPrice),
}, "|")
local cached = _boothLookupCache.ClaimByRecord[recordCacheKey]
if cached and os.clock() - cached.At < 5 then
return cached.Info
end

-- Jangan menganggap booth sudah di-claim ketika BoothListings belum siap atau
-- pembacaan snapshot gagal. Status Yes hanya diberikan jika owner benar-benar
-- masih memiliki entry booth pada snapshot terbaru.
local claimed = false
local listingActive = false
local statusText = "No"

local boothListings = _getBoothListings()
if boothListings then
local ok, snapshot = pcall(function()
return boothListings:Get()
end)
if ok and type(snapshot) == "table" then
local booth = _findOwnerBoothTable(snapshot, record.OwnerId)
claimed = type(booth) == "table"
if claimed then
for _, listing in pairs(booth) do
if _isSameBoothListing(listing, record) then
listingActive = true
break
end
end
end
statusText = claimed and "Yes" or "No"
end
end

local worldInfo
if claimed then
worldInfo = _findSellerBoothWorld(record.OwnerId, sellerName)
else
-- Booth yang sudah dilepas tidak boleh tetap menampilkan lokasi lama/fallback.
worldInfo = {
Found = false,
Location = "Booth belum di-claim",
Distance = nil,
Direction = nil,
Ring = nil,
}
end

local info = {
Claimed = claimed,
ListingActive = listingActive,
Status = statusText,
Location = worldInfo.Location,
LocationFound = worldInfo.Found,
}
_boothLookupCache.ClaimByRecord[recordCacheKey] = {
At = os.clock(),
Info = info,
}
return info
end

--// WEBHOOK FUNCTION
local function _f08(rap)
if rap >= 500 and rap <= 2000 then
return "Low"
elseif rap >= 2000 and rap < 10000 then
return "Mid"
elseif rap >= 10000 and rap < 100000 then
return "High"
elseif rap >= 100000 then
return "RAP100K"
end
end
local function _f09(tier)
if tier == "Low" then
return 10
elseif tier == "Mid" or tier == "High" then
return 3
elseif tier == "RAP100K" then
return 2
end
end
local _createRAPGraphUrl

local function _f0A(data)
if type(_isBoostedByName) == "function" then
local blocked = _isBoostedByName(
data.Type,
data.RawItem or data.Item,
data.Item
)
if blocked then
warn("[NORMAL WEBHOOK BLOCKED BY BOOST CACHE]", tostring(data.Item))
return false
end
end
local tier = _f08(tonumber(data.RAP) or 0)
local webhookURL = tier and Config.Webhooks[tier]
if not webhookURL or webhookURL == "" then return end
local price = tonumber(data.Price) or 0
local rap = tonumber(data.RAP) or 0
local profit = rap - price
local percent = price > 0 and math.floor((profit / price) * 100) or 0
local graphUrl = type(_createRAPGraphUrl) == "function"
and _createRAPGraphUrl(data.History, data.Item, "Normal")
or nil
local payload = {
username = data.WebhookName or data.Seller or "PlazaHelper",
avatar_url = data.SellerAvatar,
embeds = {
{
title = "🚨 UNDER VALUE ITEM DETECTED",
color = math.random(0, 0xFFFFFF),
thumbnail = data.Thumbnail and { url = data.Thumbnail } or nil,
image = graphUrl and { url = graphUrl } or nil,
fields = {
{ name = "Seller", value = data.Seller, inline = true },
{ name = "Item", value = data.Item, inline = true },
{ name = "Type", value = data.Type, inline = true },
{ name = "RAP", value = tostring(rap), inline = true },
{ name = "Price", value = tostring(price), inline = true },
{ name = "Profit", value = string.format("%d (%d%%)", profit, percent), inline = true },
{ name = "Booth Claimed", value = tostring(data.BoothStatus or "No"), inline = true },
{ name = "Booth Location", value = tostring(data.BoothLocation or "Tidak ditemukan otomatis"), inline = false },
{ name = "🔗 Join Server", value = tostring(data.Link or ""), inline = false },
}
}
}
}
local over50Webhook = Config.Webhooks.Over50
local targetWebhook = webhookURL
-- RAP 100.000+ selalu masuk webhook khusus RAP100K, meskipun profit di atas 50%.
if percent > 50 and tier ~= "RAP100K" then
targetWebhook = over50Webhook
end
if not targetWebhook or targetWebhook == "" then return end
local ok, response = pcall(function()
return _v06({
Url = targetWebhook,
Method = "POST",
Headers = { ["Content-Type"] = "application/json" },
Body = HttpService:JSONEncode(payload)
})
end)
if not ok then
warn("Gagal mengirim under-value webhook:", response)
return false
end
return true
end
--// RAP GRAPH FOR DISCORD EMBEDS
-- Graph dibuat sebagai PNG oleh QuickChart. Bila request graph gagal, webhook
-- tetap dikirim seperti biasa tanpa image agar scan tidak berhenti.
_v00.__PLAZA_HELPER_GRAPH_CACHE = _v00.__PLAZA_HELPER_GRAPH_CACHE or {}
local _graphCache = _v00.__PLAZA_HELPER_GRAPH_CACHE

local function _normalizeGraphHistory(history, maxPoints, maxDays)
if type(history) ~= "table" then return {} end
local points = {}
for _, entry in pairs(history) do
local timestamp = tonumber(entry and entry.Timestamp)
local rap = tonumber(entry and entry.RAP)
local count = math.max(math.floor(tonumber(entry and entry.Count) or 0), 0)
if timestamp and rap and rap > 0 then
table.insert(points, {
Timestamp = math.floor(timestamp),
RAP = math.floor(rap + 0.5),
Count = count,
})
end
end

table.sort(points, function(a, b)
return a.Timestamp < b.Timestamp
end)

-- Hilangkan timestamp duplikat; data terakhir pada hari/timestamp yang sama menang.
local deduplicated = {}
for _, point in ipairs(points) do
local previous = deduplicated[#deduplicated]
if previous and previous.Timestamp == point.Timestamp then
previous.RAP = point.RAP
previous.Count = (tonumber(previous.Count) or 0) + (tonumber(point.Count) or 0)
else
table.insert(deduplicated, point)
end
end

if #deduplicated == 0 then return deduplicated end
local latestTimestamp = deduplicated[#deduplicated].Timestamp
local minimumTimestamp = latestTimestamp - math.max(tonumber(maxDays) or 100, 1) * 86400
local filtered = {}
for _, point in ipairs(deduplicated) do
if point.Timestamp >= minimumTimestamp then
table.insert(filtered, point)
end
end

local limit = math.max(math.floor(tonumber(maxPoints) or 100), 2)
if #filtered > limit then
local trimmed = {}
local firstIndex = #filtered - limit + 1
for index = firstIndex, #filtered do
table.insert(trimmed, filtered[index])
end
filtered = trimmed
end
return filtered
end

local function _formatGraphDate(timestamp)
local ok, result = pcall(function()
local date = DateTime.fromUnixTimestamp(timestamp):ToUniversalTime()
return string.format("%02d-%02d", date.Month, date.Day)
end)
return ok and result or tostring(timestamp)
end

local function _formatCompactRAP(value)
value = math.max(tonumber(value) or 0, 0)
if value >= 1000000 then
local compact = value / 1000000
if compact >= 10 or math.abs(compact - math.floor(compact)) < 0.05 then
return string.format("%.0fm", compact)
end
return string.format("%.1fm", compact)
elseif value >= 1000 then
local compact = value / 1000
if compact >= 10 or math.abs(compact - math.floor(compact)) < 0.05 then
return string.format("%.0fk", compact)
end
return string.format("%.1fk", compact)
end
return tostring(math.floor(value + 0.5))
end

_createRAPGraphUrl = function(history, itemName, graphKind)
local graphConfig = Config.WebhookGraph
if not graphConfig or graphConfig.Enabled ~= true then return nil end
if type(httpRequest) ~= "function" then return nil end

local points = _normalizeGraphHistory(
history,
graphConfig.MaxPoints,
graphConfig.MaxDays
)
if #points < 2 then return nil end

local labels = {}
local values = {}
local sales = {}
local pointRadii = {}
local totalSales = 0
local peakIndex = 1
local peakValue = tonumber(points[1].RAP) or 0
for index, point in ipairs(points) do
local value = tonumber(point.RAP) or 0
local saleCount = math.max(math.floor(tonumber(point.Count) or 0), 0)
table.insert(labels, _formatGraphDate(point.Timestamp))
table.insert(values, value)
table.insert(sales, saleCount)
table.insert(pointRadii, saleCount > 0 and 2.5 or 0)
totalSales += saleCount
if value >= peakValue then
peakValue = value
peakIndex = index
end
end

-- Untuk graph penurunan, tandai titik terendah setelah peak agar bentuk pump/drop
-- langsung mudah dibaca seperti contoh. Bila peak berada di ujung, gunakan low global.
local lowIndex
local lowValue
if peakIndex < #values then
lowIndex = peakIndex + 1
lowValue = values[lowIndex]
for index = peakIndex + 1, #values do
if values[index] <= lowValue then
lowValue = values[index]
lowIndex = index
end
end
else
lowIndex = 1
lowValue = values[1]
for index = 1, #values do
if values[index] <= lowValue then
lowValue = values[index]
lowIndex = index
end
end
end

local kind = tostring(graphKind or "RAP")

-- Khusus graph Nuke:
--   hijau = titik dengan jumlah sales terbanyak
--   merah = titik RAP terbaru di ujung paling kanan
-- Graph Boost dan webhook normal tetap memakai peak RAP serta low setelah peak.
if kind == "Nuke" then
local maxSalesIndex = 1
local maxSalesCount = tonumber(sales[1]) or 0
for index = 2, #sales do
local saleCount = tonumber(sales[index]) or 0
-- Saat jumlah sales sama, pilih titik yang lebih baru.
if saleCount >= maxSalesCount then
maxSalesCount = saleCount
maxSalesIndex = index
end
end
peakIndex = maxSalesIndex
peakValue = tonumber(values[peakIndex]) or 0
lowIndex = #values
lowValue = tonumber(values[lowIndex]) or 0
end

local lineColor
if kind == "Nuke" then
lineColor = graphConfig.NukeLineColor or "#FF6B6B"
elseif kind == "Boost" then
lineColor = graphConfig.BoostLineColor or "#70D648"
else
lineColor = graphConfig.NormalLineColor or "#FF6B6B"
end
local latestPoint = points[#points]
local cacheKey = table.concat({
"nuke-latest-max-sales-v5-claim-fix",
kind,
tostring(itemName or "Unknown"),
tostring(#points),
tostring(latestPoint.Timestamp),
tostring(latestPoint.RAP),
tostring(peakValue),
tostring(lowValue),
tostring(totalSales),
tostring(sales[peakIndex] or 0),
tostring(sales[lowIndex] or 0),
}, "|")
local cached = _graphCache[cacheKey]
local now = os.clock()
local cacheTTL = math.max(tonumber(graphConfig.CacheTTL) or 600, 0)
if type(cached) == "table"
and type(cached.Url) == "string"
and cached.Url ~= ""
and type(cached.At) == "number"
and now - cached.At < cacheTTL
then
return cached.Url
end

local peakSales = math.max(math.floor(tonumber(sales[peakIndex]) or 0), 0)
local lowSales = math.max(math.floor(tonumber(sales[lowIndex]) or 0), 0)

-- Geser label titik yang berada di tepi graph ke arah dalam agar tidak terpotong.
local function _edgeLabelXAdjust(index, totalPoints, largeLabel)
local fullShift = largeLabel and 58 or 28
local nearShift = largeLabel and 28 or 14
if totalPoints <= 1 then return 0 end
if index == 1 then return fullShift end
if index == totalPoints then return -fullShift end
if index == 2 then return nearShift end
if index == totalPoints - 1 then return -nearShift end
return 0
end

local peakLabel = "▲ " .. _formatCompactRAP(peakValue)
local lowLabel = "▼ " .. _formatCompactRAP(lowValue)
local peakSalesLabel = tostring(peakSales) .. " sales"
local lowSalesLabel = tostring(lowSales) .. " sales"
local backgroundColor = graphConfig.BackgroundColor or "#1E1E2F"

local annotations = {
peakPoint = {
type = "point",
xScaleID = "x",
yScaleID = "y",
xValue = labels[peakIndex],
yValue = peakValue,
radius = 6,
backgroundColor = "#34D399",
borderColor = backgroundColor,
borderWidth = 3,
},
peakLabel = {
type = "label",
xScaleID = "x",
yScaleID = "y",
xValue = labels[peakIndex],
yValue = peakValue,
content = { peakLabel, peakSalesLabel },
color = "#FFFFFF",
backgroundColor = "#34D399",
borderRadius = 5,
padding = 7,
xAdjust = _edgeLabelXAdjust(peakIndex, #values, true),
yAdjust = -30,
font = { size = 13, weight = "bold" },
},
lowPoint = {
type = "point",
xScaleID = "x",
yScaleID = "y",
xValue = labels[lowIndex],
yValue = lowValue,
radius = 6,
backgroundColor = "#F87171",
borderColor = backgroundColor,
borderWidth = 3,
},
lowLabel = {
type = "label",
xScaleID = "x",
yScaleID = "y",
xValue = labels[lowIndex],
yValue = lowValue,
content = { lowLabel, lowSalesLabel },
color = "#FFFFFF",
backgroundColor = "#F87171",
borderRadius = 5,
padding = 7,
xAdjust = _edgeLabelXAdjust(lowIndex, #values, true),
yAdjust = 30,
font = { size = 13, weight = "bold" },
},
}

-- Pada graph biasa, hindari dua label bertumpuk saat peak dan low berada pada
-- titik yang sama. Untuk Nuke keduanya tetap ditampilkan: hijau di atas untuk
-- sales terbanyak dan merah di bawah untuk titik terbaru di ujung kanan.
if peakIndex == lowIndex and kind ~= "Nuke" then
annotations.lowPoint = nil
annotations.lowLabel = nil
end

-- Discord menampilkan graph sebagai gambar statis, jadi jumlah sales ditulis langsung
-- pada setiap titik yang memiliki transaksi. Peak/low sudah punya label besar sendiri.
if graphConfig.ShowSalesLabels ~= false then
for index, saleCount in ipairs(sales) do
if saleCount > 0 and index ~= peakIndex and index ~= lowIndex then
annotations["sales_" .. tostring(index)] = {
type = "label",
xScaleID = "x",
yScaleID = "y",
xValue = labels[index],
yValue = values[index],
content = { tostring(saleCount) .. " sales" },
color = graphConfig.SalesLabelColor or "#D1D5DB",
backgroundColor = "rgba(17,24,39,0.72)",
borderRadius = 3,
padding = 3,
xAdjust = _edgeLabelXAdjust(index, #values, false),
yAdjust = index % 2 == 0 and -14 or 14,
font = { size = 9, weight = "bold" },
}
end
end
end

local chartPayload = {
width = math.max(math.floor(tonumber(graphConfig.Width) or 1000), 500),
height = math.max(math.floor(tonumber(graphConfig.Height) or 500), 280),
format = "png",
version = "4",
backgroundColor = backgroundColor,
chart = {
type = "line",
data = {
labels = labels,
datasets = {
{
label = "RAP",
data = values,
borderColor = lineColor,
backgroundColor = lineColor .. "18",
fill = true,
tension = 0.18,
pointRadius = pointRadii,
pointHoverRadius = 4,
borderWidth = 3,
},
},
},
options = {
responsive = true,
maintainAspectRatio = false,
layout = {
padding = { top = 58, right = 78, bottom = 58, left = 54 },
},
interaction = {
mode = "index",
intersect = false,
},
plugins = {
legend = { display = false },
title = { display = false },
subtitle = {
display = true,
text = tostring(totalSales) .. " total sales pada history",
color = "#9CA3AF",
font = { size = 11, weight = "normal" },
padding = { bottom = 6 },
},
tooltip = {
enabled = true,
displayColors = false,
backgroundColor = "#111827",
titleColor = "#FFFFFF",
bodyColor = "#FFFFFF",
},
annotation = {
clip = false,
annotations = annotations,
},
},
scales = {
x = {
-- Sisakan ruang setengah kategori pada kiri/kanan supaya titik ujung dan label aman.
offset = true,
ticks = {
color = "#9CA3AF",
maxTicksLimit = 8,
maxRotation = 0,
autoSkip = true,
font = { size = 12 },
},
grid = {
display = false,
drawBorder = false,
},
border = { display = false },
},
y = {
beginAtZero = true,
-- Ruang vertikal tambahan untuk label peak/low dua baris.
grace = "12%",
ticks = {
color = "#9CA3AF",
maxTicksLimit = 5,
font = { size = 12 },
format = {
notation = "compact",
maximumFractionDigits = 1,
},
},
grid = {
color = "rgba(255,255,255,0.06)",
drawBorder = false,
},
border = { display = false },
},
},
},
},
}

local requestOk, response = pcall(function()
return httpRequest({
Url = tostring(graphConfig.Endpoint or "https://quickchart.io/chart/create"),
Method = "POST",
Headers = { ["Content-Type"] = "application/json" },
Body = HttpService:JSONEncode(chartPayload),
})
end)
if not requestOk or not response then
warn("[RAP GRAPH] QuickChart request gagal:", response)
return nil
end

local statusCode = type(response) == "table"
and tonumber(response.StatusCode or response.Status or response.status_code)
or nil
if statusCode and (statusCode < 200 or statusCode >= 300) then
warn("[RAP GRAPH] QuickChart HTTP:", statusCode)
return nil
end

local body = type(response) == "table" and (response.Body or response.body) or response
if type(body) ~= "string" or body == "" then
warn("[RAP GRAPH] QuickChart response kosong")
return nil
end

local decodeOk, decoded = pcall(function()
return HttpService:JSONDecode(body)
end)
local graphUrl = decodeOk
and type(decoded) == "table"
and type(decoded.url) == "string"
and decoded.url
or nil
if not graphUrl or graphUrl == "" then
warn("[RAP GRAPH] URL graph tidak ditemukan pada response QuickChart")
return nil
end

_graphCache[cacheKey] = { Url = graphUrl, At = now }
return graphUrl
end

--// NUKED WEBHOOK
-- Nuke memiliki prioritas lebih tinggi daripada Boost/Under Value. Fungsi ini sengaja
-- tidak diblokir oleh boost cache; klasifikasi global dilakukan sebelum webhook dikirim.
local function _f0G(data)
local webhook = Config.NukedWebhook
if not webhook or webhook == "" then return false end
local price = tonumber(data.Price) or 0
local rap = tonumber(data.RAP) or 0
local dropPercent = math.max(0, tonumber(data.DropPercent) or 0)
local graphUrl = _createRAPGraphUrl(data.History, data.Item, "Nuke")
local payload = {
username = data.WebhookName or data.Seller or "PlazaHelper",
avatar_url = data.SellerAvatar,
embeds = {
{
title = "🔨 NUKED ITEM DETECTED",
color = 0xE74C3C,
thumbnail = data.Thumbnail and { url = data.Thumbnail } or nil,
image = graphUrl and { url = graphUrl } or nil,
fields = {
{ name = "Seller", value = tostring(data.Seller or "Unknown"), inline = true },
{ name = "Item", value = tostring(data.Item or "Unknown"), inline = true },
{ name = "Type", value = tostring(data.Type or "Unknown"), inline = true },
{ name = "Current RAP", value = tostring(rap), inline = true },
{ name = "Listing Price", value = tostring(price), inline = true },
{ name = "RAP Drop", value = string.format("-%.1f%%", dropPercent), inline = true },
{ name = "Stable RAP", value = tostring(data.StableRAP or 0), inline = true },
{ name = "Recent RAP", value = tostring(data.RecentRAP or rap), inline = true },
{ name = "History Points", value = tostring(data.HistoryPoints or 0), inline = true },
{ name = "Reason", value = tostring(data.Reason or "RAP sebelumnya stabil, kemudian mengalami penurunan aktif 4% atau lebih pada timeline history"), inline = false },
{ name = "Booth Claimed", value = tostring(data.BoothStatus or "No"), inline = true },
{ name = "Booth Location", value = tostring(data.BoothLocation or "Tidak ditemukan otomatis"), inline = false },
{ name = "🔗 Join Server", value = tostring(data.Link or ""), inline = false },
},
timestamp = DateTime.now():ToIsoDate()
}
}
}
local ok, response = pcall(function()
return _v06({
Url = webhook,
Method = "POST",
Headers = { ["Content-Type"] = "application/json" },
Body = HttpService:JSONEncode(payload)
})
end)
if not ok then
warn("Gagal mengirim Nuked webhook:", response)
return false
end
return true
end

--// BOOSTED ITEM WEBHOOK
local function _f0H(data)
local webhook = Config.BoostedWebhook
if not webhook or webhook == "" then
warn("BoostedWebhook masih kosong; item boosted diblokir dari webhook lain tetapi tidak dapat dikirim")
return false
end
local price = tonumber(data.Price) or 0
local rap = tonumber(data.RAP) or 0
local graphUrl = _createRAPGraphUrl(data.History, data.Item, "Boost")
local payload = {
username = data.WebhookName or data.Seller or "PlazaHelper",
avatar_url = data.SellerAvatar,
embeds = {
{
title = "🚨 BOOSTED ITEM DETECTED",
color = 0xF5A623,
thumbnail = data.Thumbnail and { url = data.Thumbnail } or nil,
image = graphUrl and { url = graphUrl } or nil,
fields = {
{ name = "Seller", value = tostring(data.Seller or "Unknown"), inline = true },
{ name = "Item", value = tostring(data.Item or "Unknown"), inline = true },
{ name = "Type", value = tostring(data.Type or "Unknown"), inline = true },
{ name = "RAP", value = tostring(rap), inline = true },
{ name = "Price", value = tostring(price), inline = true },
{ name = "RAP Boost", value = string.format("+%.0f%%", tonumber(data.BoostPercent) or 0), inline = true },
{ name = "Baseline RAP", value = tostring(data.BaselineRAP or 0), inline = true },
{ name = "Recent RAP", value = tostring(data.RecentRAP or rap), inline = true },
{ name = "Recent Sales", value = tostring(data.RecentSales or 0), inline = true },
{ name = "Reason", value = tostring(data.Reason or "Tidak tersedia"), inline = false },
{ name = "Booth Claimed", value = tostring(data.BoothStatus or "No"), inline = true },
{ name = "Booth Location", value = tostring(data.BoothLocation or "Tidak ditemukan otomatis"), inline = false },
{ name = "🔗 Join Server", value = tostring(data.Link or ""), inline = false },
},
timestamp = DateTime.now():ToIsoDate()
}
}
}
local ok, response = pcall(function()
return _v06({
Url = webhook,
Method = "POST",
Headers = { ["Content-Type"] = "application/json" },
Body = HttpService:JSONEncode(payload)
})
end)
if not ok then
warn("Gagal mengirim boosted item ke webhook:", response)
return false
end
return true
end

--// RAP + ASSET LOOKUP
local _v03 = {}
_v00.__UNDERAP_RAP_CACHE = _v00.__UNDERAP_RAP_CACHE or {}
local _v04 = _v00.__UNDERAP_RAP_CACHE
local function _f0B(itemType)
local cached = _v03[itemType]
if cached then return cached end
local source = ItemInfo[itemType]
if type(source) ~= "table" then
_v03[itemType] = false
return false
end
local index = {}
for itemName, info in pairs(source) do
local key = info.Name or itemName
index[key] = info
end
_v03[itemType] = index
return index
end
local function _f0C(icon)
if type(icon) == "string" then
local id = icon:match("%d+")
return id and tonumber(id) or nil
elseif type(icon) == "number" then
return icon
end
return nil
end
local function _f0D(listing, datas, info)
for _, source in ipairs({ listing, datas, info }) do
if type(source) == "table" then
for _, field in ipairs({
"RAP", "Rap", "rap", "RecentAveragePrice", "RecentPrice",
"TradeValue", "Value", "value"
}) do
local value = tonumber(source[field])
if value and value >= 0 then
return value
end
end
end
end
return nil
end
local function _f0E(itemType, datas, listing)
local index = _f0B(itemType)
if not index or not datas or not datas.Name then
return 0, nil
end
local info = index[datas.Name]
if not info then
return 0, nil
end
local rap = _f0D(listing, datas, info)
local key
if rap == nil then
pcall(function()
key = Inventory:ItemToKey(itemType, datas)
end)
local encodedKey
if key ~= nil then
local encodedOk, encoded = pcall(function()
return HttpService:JSONEncode(key)
end)
encodedKey = encodedOk and encoded or tostring(key)
end
local cacheKey = encodedKey and (itemType .. ":" .. encodedKey)
local cached = cacheKey and _v04[cacheKey]
if cached and os.clock() - cached.at < Config.RAPCacheTTL then
rap = cached.value
elseif key then
if not RAPController then
local controllers = ReplicatedStorage:FindFirstChild("Controllers")
local trading = controllers and controllers:FindFirstChild("Trading")
local controller, controllerError = _safeRequire(
trading and trading:FindFirstChild("RAPController"),
"Trading.RAPController"
)
if controller then
RAPController = controller
else
_warnModuleOnce("Trading.RAPController", controllerError)
end
end
pcall(function()
if RAPController then
rap = tonumber(RAPController:GetRAP(itemType, key))
end
end)
rap = rap or tonumber(listing and listing.Price) or 0
_v04[cacheKey] = { value = rap, at = os.clock() }
else
rap = tonumber(listing and listing.Price) or 0
end
end
rap = rap or 0
local assetId = _f0C(info.Icon)
return rap, assetId
end

--// RAP HISTORY + BOOST DETECTOR
_v00.__UNDERAP_BOOST_HISTORY_CACHE = _v00.__UNDERAP_BOOST_HISTORY_CACHE or {}
local _v07 = _v00.__UNDERAP_BOOST_HISTORY_CACHE
_v00.__UNDERAP_BOOST_NOTIFY_CACHE = _v00.__UNDERAP_BOOST_NOTIFY_CACHE or {}
local _v08 = _v00.__UNDERAP_BOOST_NOTIFY_CACHE
_v00.__UNDERAP_NUKE_NOTIFY_CACHE = _v00.__UNDERAP_NUKE_NOTIFY_CACHE or {}
local _v10 = _v00.__UNDERAP_NUKE_NOTIFY_CACHE

-- Registry nama item boosted. Disimpan ke file supaya status tetap terbawa
-- ketika script berpindah ke server Plaza lain atau dijalankan ulang.
local BOOST_REGISTRY_FILE = tostring(
Config.BoostDetector.RegistryFile or "boosted_item_registry.json"
)

local function _f1DName(itemName)
local normalizedName = string.lower(tostring(itemName or "Unknown"))
normalizedName = normalizedName:gsub("%s+", " ")
normalizedName = normalizedName:gsub("^%s+", ""):gsub("%s+$", "")
-- Finisher dan Mount sengaja dipertahankan. Keduanya memiliki RAP/history
-- berbeda dan tidak boleh memakai state/cache Boost yang sama.
return normalizedName
end

local function _f1DBaseName(itemName)
local normalizedName = _f1DName(itemName)
normalizedName = normalizedName:gsub("%s*%(finisher%)$", "")
normalizedName = normalizedName:gsub("%s+finisher$", "")
normalizedName = normalizedName:gsub("%s*%(mount%)$", "")
return normalizedName
end

local function _f1DHasVariant(itemName)
return _f1DName(itemName) ~= _f1DBaseName(itemName)
end

local function _f1D(itemType, itemName)
local normalizedType = string.lower(tostring(itemType or "Unknown"))
return normalizedType .. ":" .. _f1DName(itemName)
end

-- Whitelist boost mendukung dua bentuk:
-- ["Nama Item"] = true              -> semua tipe dengan nama tersebut
-- ["Sword:Nama Item"] = true        -> hanya tipe tertentu
local function _f1M(itemType, rawItemName, displayItemName)
local whitelist = Config.BoostDetector and Config.BoostDetector.Whitelist
if type(whitelist) ~= "table" then
return false
end

local normalizedType = string.lower(tostring(itemType or "Unknown"))
local candidateExactNames = {}
local candidateBaseNames = {}
for _, candidateName in ipairs({ displayItemName, rawItemName }) do
if candidateName ~= nil then
candidateExactNames[_f1DName(candidateName)] = true
candidateBaseNames[_f1DBaseName(candidateName)] = true
end
end

for configuredName, enabled in pairs(whitelist) do
if enabled then
local text = tostring(configuredName)
local configuredType, configuredItemName = text:match("^([^:]+):(.*)$")
local nameToCheck = configuredItemName or text
local typeMatches = not configuredType
or string.lower(tostring(configuredType)) == normalizedType
if typeMatches and nameToCheck ~= "" then
if _f1DHasVariant(nameToCheck) then
-- Entry whitelist yang menulis (Finisher)/(Mount) hanya berlaku untuk
-- varian tersebut.
if candidateExactNames[_f1DName(nameToCheck)] then
return true
end
elseif candidateBaseNames[_f1DBaseName(nameToCheck)] then
-- Entry tanpa suffix tetap menjadi whitelist umum untuk semua varian.
return true
end
end
end
end

return false
end

local function _f1ForceBoost(itemType, rawItemName, displayItemName)
local forced = Config.BoostDetector and Config.BoostDetector.ForceBoost
if type(forced) ~= "table" then
return false
end

local normalizedType = string.lower(tostring(itemType or "Unknown"))
local candidateExactNames = {}
local candidateBaseNames = {}
for _, candidateName in ipairs({ displayItemName, rawItemName }) do
if candidateName ~= nil then
candidateExactNames[_f1DName(candidateName)] = true
candidateBaseNames[_f1DBaseName(candidateName)] = true
end
end

for configuredName, enabled in pairs(forced) do
if enabled then
local text = tostring(configuredName)
local configuredType, configuredItemName = text:match("^([^:]+):(.*)$")
local nameToCheck = configuredItemName or text
local typeMatches = not configuredType
or string.lower(tostring(configuredType)) == normalizedType
if typeMatches and nameToCheck ~= "" then
if _f1DHasVariant(nameToCheck) then
if candidateExactNames[_f1DName(nameToCheck)] then
return true
end
elseif candidateBaseNames[_f1DBaseName(nameToCheck)] then
return true
end
end
end
end
return false
end

local function _f1H(reason)
local cleaned = tostring(reason or "")
cleaned = cleaned:gsub(
"Nama item sudah ditandai boost dari server/listing sebelumnya%s*|?%s*",
""
)
cleaned = cleaned:gsub("^%s*|%s*", ""):gsub("%s*|%s*$", "")
if cleaned == "" then
return "Menunggu grafik stabil minimal 5 hari"
end
return cleaned
end

local function _f1B()
local registry = {}
if isfile and readfile and isfile(BOOST_REGISTRY_FILE) then
local ok, decoded = pcall(function()
return HttpService:JSONDecode(readfile(BOOST_REGISTRY_FILE))
end)
if ok and type(decoded) == "table" then
registry = decoded
else
warn("Cache boosted item rusak/tidak dapat dibaca; cache memory tetap dipertahankan")
end
end
return registry
end

local function _f1K(storedKey, rawEntry)
local entry
if rawEntry == true then
entry = { Boosted = true }
elseif type(rawEntry) == "table" then
entry = rawEntry
else
return nil, nil
end

if entry.Boosted == false then
return nil, nil
end

local keyType, keyName = tostring(storedKey):match("^([^:]+):(.*)$")
local itemType = tostring(entry.Type or keyType or "Unknown")
local itemName = tostring(entry.Name or keyName or storedKey or "Unknown")
local now = os.time()

local upgraded = {
Boosted = true,
Type = itemType,
Name = itemName,
DetectedAt = tonumber(entry.DetectedAt) or tonumber(entry.FirstDetectedAt) or now,
LastDetectedAt = tonumber(entry.LastDetectedAt) or tonumber(entry.DetectedAt) or now,
BoostPercent = tonumber(entry.BoostPercent) or tonumber(entry.Score) or 0,
PeakBoostPercent = tonumber(entry.PeakBoostPercent)
or tonumber(entry.BoostPercent)
or tonumber(entry.Score)
or 0,
Reason = _f1H(entry.Reason or "Menunggu grafik stabil minimal 5 hari"),
}

return _f1D(itemType, itemName), upgraded
end

local function _f1L(target, source)
if type(source) ~= "table" then
return
end
for storedKey, rawEntry in pairs(source) do
local canonicalKey, incoming = _f1K(storedKey, rawEntry)
if canonicalKey and incoming then
local existing = target[canonicalKey]
if type(existing) ~= "table" then
 target[canonicalKey] = incoming
else
 existing.Boosted = true
 existing.Type = existing.Type or incoming.Type
 existing.Name = existing.Name or incoming.Name
 existing.DetectedAt = math.min(
 tonumber(existing.DetectedAt) or incoming.DetectedAt,
 tonumber(incoming.DetectedAt) or existing.DetectedAt
 )
 if (tonumber(incoming.LastDetectedAt) or 0) >= (tonumber(existing.LastDetectedAt) or 0) then
 existing.LastDetectedAt = incoming.LastDetectedAt
 existing.Reason = _f1H(incoming.Reason or existing.Reason)
 existing.BoostPercent = tonumber(incoming.BoostPercent)
 or tonumber(existing.BoostPercent)
 or 0
 end
 existing.PeakBoostPercent = math.max(
 tonumber(existing.PeakBoostPercent) or tonumber(existing.BoostPercent) or 0,
 tonumber(incoming.PeakBoostPercent) or tonumber(incoming.BoostPercent) or 0
 )
end
end
end
end

-- Cache file dan cache memory digabung. Tidak ada entry boost lama yang dibuang
-- saat execute; format lama hanya di-upgrade ke key canonical type:name.
local diskRegistry = _f1B()
local memoryRegistry = type(_v00.__UNDERAP_BOOST_REGISTRY) == "table"
and _v00.__UNDERAP_BOOST_REGISTRY
or {}
local mergedRegistry = {}
_f1L(mergedRegistry, diskRegistry)
_f1L(mergedRegistry, memoryRegistry)

-- Entry yang sekarang masuk whitelist hanya dihapus secara khusus. Entry boost lain
-- tetap dipertahankan dan di-upgrade; execute ulang tidak mengosongkan cache.
local removedByWhitelist = 0
for storedKey, entry in pairs(mergedRegistry) do
if type(entry) == "table" and _f1M(entry.Type, entry.Name, entry.Name) then
mergedRegistry[storedKey] = nil
removedByWhitelist += 1
end
end

_v00.__UNDERAP_BOOST_REGISTRY = mergedRegistry
local _v09 = mergedRegistry

-- JSON pretty printer supaya cache tersusun panjang ke bawah dan mudah diedit.
-- Registry hanya berisi table/string/number/boolean sehingga aman ditulis sebagai JSON biasa.
local function _f1J(value, depth, seen)
depth = depth or 0
seen = seen or {}
local valueType = type(value)
if valueType ~= "table" then
local ok, encoded = pcall(function()
return HttpService:JSONEncode(value)
end)
return ok and encoded or "null"
end
if seen[value] then
return "null"
end
seen[value] = true

local isArray = true
local highestIndex = 0
local itemCount = 0
for key in pairs(value) do
itemCount += 1
if type(key) ~= "number" or key < 1 or key % 1 ~= 0 then
isArray = false
break
end
highestIndex = math.max(highestIndex, key)
end
if isArray and highestIndex ~= itemCount then
isArray = false
end

local currentIndent = string.rep("  ", depth)
local childIndent = string.rep("  ", depth + 1)
local parts = {}

if isArray then
for index = 1, highestIndex do
table.insert(parts, childIndent .. _f1J(value[index], depth + 1, seen))
end
seen[value] = nil
if #parts == 0 then
return "[]"
end
return "[\n" .. table.concat(parts, ",\n") .. "\n" .. currentIndent .. "]"
end

local keys = {}
for key in pairs(value) do
table.insert(keys, tostring(key))
end
table.sort(keys)
for _, key in ipairs(keys) do
local encodedKey = HttpService:JSONEncode(key)
local encodedValue = _f1J(value[key], depth + 1, seen)
table.insert(parts, childIndent .. encodedKey .. ": " .. encodedValue)
end
seen[value] = nil
if #parts == 0 then
return "{}"
end
return "{\n" .. table.concat(parts, ",\n") .. "\n" .. currentIndent .. "}"
end

local function _f1C()
if not writefile then
return false
end
local ok, err = pcall(function()
local encodedRegistry = next(_v09) == nil and "{}" or _f1J(_v09)
writefile(BOOST_REGISTRY_FILE, encodedRegistry)
end)
if not ok then
warn("Gagal menyimpan registry boosted item:", err)
end
return ok
end

local function _f1G(itemType, rawItemName, displayItemName)
if _f1M(itemType, rawItemName, displayItemName) then
local preferredKey = _f1D(itemType, displayItemName or rawItemName)
local removed = false
for storedKey, entry in pairs(_v09) do
if type(entry) == "table"
and _f1M(entry.Type or itemType, entry.Name, entry.Name) then
_v09[storedKey] = nil
removed = true
end
end
if removed then
_f1C()
print("[BOOST WHITELIST] cache boost dihapus:", tostring(rawItemName or displayItemName))
end
return preferredKey, nil, true
end

-- Registry Boost memakai display name yang sudah membawa suffix varian.
-- Jangan fallback ke raw name untuk Finisher/Mount karena raw name-nya sama
-- dengan item biasa dan akan menyatukan status kedua varian.
local canonicalName = displayItemName or rawItemName
local canonicalKey = _f1D(itemType, canonicalName)
local candidates = { canonicalKey }
local entry = _v09[canonicalKey]
if type(entry) == "table" and entry.Boosted == true then
entry.Reason = _f1H(entry.Reason)
return canonicalKey, entry
end

-- Fallback untuk registry lama/alias display name. Entry tidak dihapus;
-- jika ketemu, entry langsung dipindahkan/di-merge ke key canonical baru.
local normalizedType = string.lower(tostring(itemType or "Unknown"))
for storedKey, entry in pairs(_v09) do
if type(entry) == "table" and entry.Boosted == true then
local entryType = string.lower(tostring(entry.Type or "Unknown"))
if entryType == normalizedType then
local entryNameKey = _f1D(itemType, entry.Name)
for _, candidateKey in ipairs(candidates) do
if entryNameKey == candidateKey then
if storedKey ~= candidateKey then
local current = _v09[candidateKey]
if type(current) ~= "table" then
_v09[candidateKey] = entry
else
current.PeakBoostPercent = math.max(
tonumber(current.PeakBoostPercent) or tonumber(current.BoostPercent) or 0,
tonumber(entry.PeakBoostPercent) or tonumber(entry.BoostPercent) or 0
)
end
_v09[storedKey] = nil
_f1C()
end
entry.Reason = _f1H(entry.Reason)
return candidateKey, _v09[candidateKey] or entry
end
end
end
end
end

return canonicalKey, nil
end

_isBoostedByName = function(itemType, rawItemName, displayItemName)
if _f1M(itemType, rawItemName, displayItemName) then
return false, nil, _f1D(itemType, displayItemName or rawItemName), true
end
local key, entry = _f1G(itemType, rawItemName, displayItemName)
return type(entry) == "table" and entry.Boosted == true, entry, key, false
end

local loadedBoostCount = 0
for _, entry in pairs(_v09) do
if type(entry) == "table" and entry.Boosted == true then
loadedBoostCount += 1
end
end
_f1C()
print(string.format(
"[BOOST CACHE UPGRADED] %d nama item aktif dari %s",
loadedBoostCount,
BOOST_REGISTRY_FILE
))
if removedByWhitelist > 0 then
print(string.format(
"[BOOST WHITELIST] %d entry boost lama dikeluarkan dari cache",
removedByWhitelist
))
end

local function _f1E(key, itemType, itemName, boostPercent, reason)
if _f1M(itemType, itemName, itemName) then
return nil
end
local now = os.time()
local old = _v09[key]
_v09[key] = {
Boosted = true,
Type = tostring(itemType),
Name = tostring(itemName),
DetectedAt = old and old.DetectedAt or now,
LastDetectedAt = now,
BoostPercent = tonumber(boostPercent)
or tonumber(old and old.BoostPercent)
or 0,
PeakBoostPercent = math.max(
tonumber(old and old.PeakBoostPercent)
or tonumber(old and old.BoostPercent)
or 0,
tonumber(boostPercent) or 0
),
Reason = _f1H(reason or (old and old.Reason) or "Boost terdeteksi"),
}
_f1C()
if not old then
print("[BOOST CACHE ADD]", tostring(itemType), tostring(itemName))
end
return _v09[key]
end

local function _f1F(key)
local removed = _v09[key]
if removed == nil then
return false
end
_v09[key] = nil
_f1C()
print("[BOOST CACHE REMOVE]", tostring(removed.Type or "?"), tostring(removed.Name or key))
return true
end

local function _f16(values)
if #values == 0 then return 0 end
local sorted = table.clone(values)
table.sort(sorted)
local middle = math.floor(#sorted / 2)
if #sorted % 2 == 0 then
return (sorted[middle] + sorted[middle + 1]) / 2
end
return sorted[middle + 1]
end

local function _f17(itemType, itemKey)
local ok, encoded = pcall(function()
return HttpService:JSONEncode(itemKey)
end)
return tostring(itemType) .. ":" .. (ok and encoded or tostring(itemKey))
end

local function _f18(rawHistory)
local grouped = {}
for _, entry in pairs(rawHistory) do
if type(entry) == "table" then
local rap = tonumber(entry.RAP)
local count = tonumber(entry.Count) or 0
local date = entry.Date
local timestamp
if typeof(date) == "DateTime" then
local utc = date:ToUniversalTime()
timestamp = DateTime.fromUniversalTime(
utc.Year,
utc.Month,
utc.Day
).UnixTimestamp
elseif type(date) == "number" then
local utc = DateTime.fromUnixTimestamp(date):ToUniversalTime()
timestamp = DateTime.fromUniversalTime(
utc.Year,
utc.Month,
utc.Day
).UnixTimestamp
elseif type(date) == "table" and tonumber(date.UnixTimestamp) then
local utc = DateTime.fromUnixTimestamp(tonumber(date.UnixTimestamp)):ToUniversalTime()
timestamp = DateTime.fromUniversalTime(
utc.Year,
utc.Month,
utc.Day
).UnixTimestamp
end
if rap and rap > 0 and timestamp then
grouped[timestamp] = grouped[timestamp] or {
RAPTotal = 0,
Entries = 0,
Count = 0,
}
local day = grouped[timestamp]
day.RAPTotal += rap
day.Entries += 1
day.Count += count
end
end
end
local daily = {}
for timestamp, day in pairs(grouped) do
table.insert(daily, {
Timestamp = timestamp,
RAP = day.RAPTotal / math.max(day.Entries, 1),
Count = day.Count,
})
end
table.sort(daily, function(a, b)
return a.Timestamp < b.Timestamp
end)
return daily
end

local function _isVariantAttributeName(value)
local normalized = string.lower(tostring(value or ""))
return normalized == "finisher" or normalized == "accessory"
end

local function _copyIgnoreAttributesPreservingVariants(source)
if type(source) ~= "table" then
return nil
end
local copied = {}
for key, value in pairs(source) do
if type(key) == "number" then
if not _isVariantAttributeName(value) then
table.insert(copied, value)
end
elseif not _isVariantAttributeName(key) then
copied[key] = value
end
end
return copied
end

local function _encodeItemKey(itemKey)
local ok, encoded = pcall(function()
return HttpService:JSONEncode(itemKey)
end)
return ok and encoded or tostring(itemKey)
end

local function _buildVariantAwareHistoryKeys(itemType, itemData)
local keys = {}
local seen = {}
local isVariant = type(itemData) == "table"
and (itemData.Finisher == true or itemData.Accessory == true)

local function addKey(itemKey)
if itemKey == nil then
return
end
local encoded = _encodeItemKey(itemKey)
if not seen[encoded] then
seen[encoded] = true
table.insert(keys, itemKey)
end
end

-- Pertama: abaikan atribut yang memang tidak memengaruhi RAP, tetapi Finisher
-- dan Accessory dikeluarkan dari daftar ignore agar key history tetap berbeda.
local variantAwareIgnore = _copyIgnoreAttributesPreservingVariants(
RAPController and RAPController._IGNORE_ATTRIBUTES
)
if variantAwareIgnore then
local ok, itemKey = pcall(function()
return Inventory:ItemToKey(itemType, itemData, variantAwareIgnore)
end)
if ok then
addKey(itemKey)
end
end

-- Kedua: full key dari listing. Ini biasanya key yang sama dengan RAP live.
local fullOk, fullKey = pcall(function()
return Inventory:ItemToKey(itemType, itemData)
end)
if fullOk then
addKey(fullKey)
end

-- Fallback key lama hanya aman untuk item biasa. Finisher/Mount tidak boleh
-- memakai fallback ini karena dapat mengambil history item dasar.
if not isVariant then
local oldOk, oldKey = pcall(function()
return Inventory:ItemToKey(
itemType,
itemData,
RAPController and RAPController._IGNORE_ATTRIBUTES
)
end)
if oldOk then
addKey(oldKey)
end
end

return keys, isVariant
end

local function _f19(itemType, itemData)
local boostEnabled = Config.BoostDetector and Config.BoostDetector.Enabled
local nukeEnabled = Config.NukeDetector and Config.NukeDetector.Enabled
if not boostEnabled and not nukeEnabled then
return nil, "RAP history detector dimatikan"
end
_f14()
if not RequestRAPHistory then
return nil, "RequestRAPHistory tidak ditemukan"
end
if not RAPController or not Inventory then
return nil, "RAPController/Inventory belum tersedia"
end

local itemKeys, isVariant = _buildVariantAwareHistoryKeys(itemType, itemData)
if #itemKeys == 0 then
return nil, "Gagal membuat ItemKey varian"
end

local requestedHistoryDays = math.max(
tonumber(Config.BoostDetector.HistoryDays) or 30,
tonumber(Config.NukeDetector and Config.NukeDetector.HistoryDays) or 100
)
local historyCacheTTL = math.max(
tonumber(Config.BoostDetector.CacheTTL) or 0,
tonumber(Config.NukeDetector and Config.NukeDetector.HistoryCacheTTL) or 0
)
local endDate = DateTime.now()
local startDate = DateTime.fromUnixTimestamp(
endDate.UnixTimestamp - requestedHistoryDays * 86400
)

local lastError = "Server tidak mengembalikan RAP history"
for _, itemKey in ipairs(itemKeys) do
-- Prefix versi mencegah cache lama yang pernah menggabungkan Finisher/non-Finisher
-- dipakai lagi setelah script diperbarui.
local baseCacheKey = "variant-v2:" .. _f17(itemType, itemKey)
local cacheKey = table.concat({
baseCacheKey,
tostring(requestedHistoryDays),
}, ":")
local cached = _v07[cacheKey]
if cached and os.clock() - cached.at < historyCacheTTL then
return cached.history, nil, itemKey
end

local callOk, serverOk, rawHistory
for attempt = 1, 2 do
callOk, serverOk, rawHistory = pcall(function()
return RequestRAPHistory:InvokeServer(
itemType,
itemKey,
startDate,
endDate
)
end)
if callOk and serverOk and type(rawHistory) == "table" then
break
end
if attempt < 2 then
task.wait(0.15)
end
end

if callOk and serverOk and type(rawHistory) == "table" then
local dailyHistory = _f18(rawHistory)
_v07[cacheKey] = {
history = dailyHistory,
at = os.clock(),
}
return dailyHistory, nil, itemKey
end

if not callOk then
lastError = tostring(serverOk)
elseif isVariant then
lastError = "Server tidak mengembalikan RAP history khusus varian"
else
lastError = "Server tidak mengembalikan RAP history"
end
end

return nil, lastError, itemKeys[1]
end

--// DYNAMIC NUKE DETECTOR
local function _f1N(entries)
local values = {}
local sales = 0
for _, entry in ipairs(entries) do
local rap = tonumber(entry.RAP) or 0
if rap > 0 then
table.insert(values, rap)
sales += tonumber(entry.Count) or 0
end
end

if #values == 0 then
return {
Values = values,
Median = 0,
Minimum = 0,
Maximum = 0,
RangeRatio = 0,
AverageMove = 0,
MaxSingleMove = 0,
DriftRatio = 0,
SpanDays = 0,
Sales = sales,
}
end

local minimum = math.huge
local maximum = 0
for _, rap in ipairs(values) do
minimum = math.min(minimum, rap)
maximum = math.max(maximum, rap)
end

local absoluteMoveTotal = 0
local maxSingleMove = 0
for index = 2, #values do
local previous = values[index - 1]
local current = values[index]
if previous > 0 then
local move = math.abs((current - previous) / previous)
absoluteMoveTotal += move
maxSingleMove = math.max(maxSingleMove, move)
end
end

local transitionCount = math.max(#values - 1, 1)
local median = _f16(values)
local firstTimestamp = tonumber(entries[1] and entries[1].Timestamp) or 0
local lastTimestamp = tonumber(entries[#entries] and entries[#entries].Timestamp) or firstTimestamp

return {
Values = values,
Median = median,
Minimum = minimum == math.huge and 0 or minimum,
Maximum = maximum,
RangeRatio = median > 0 and ((maximum - minimum) / median) or 0,
AverageMove = absoluteMoveTotal / transitionCount,
MaxSingleMove = maxSingleMove,
DriftRatio = values[1] > 0 and ((values[#values] - values[1]) / values[1]) or 0,
SpanDays = firstTimestamp > 0
and math.max(1, math.floor((lastTimestamp - firstTimestamp) / 86400) + 1)
or 0,
Sales = sales,
}
end

local function _sliceHistory(history, startIndex, endIndex)
local sliced = {}
local first = math.max(tonumber(startIndex) or 1, 1)
local last = math.min(tonumber(endIndex) or #history, #history)
for index = first, last do
local entry = history[index]
if type(entry) == "table" then
table.insert(sliced, entry)
end
end
return sliced
end

local function _isStablePeriod(entries, rangePercent, averageMovePercent, driftPercent, minimumSpanDays)
local stats = _f1N(entries)
local stable = #stats.Values >= 2
and stats.SpanDays >= math.max(tonumber(minimumSpanDays) or 1, 1)
and stats.RangeRatio <= math.max(tonumber(rangePercent) or 0, 0) / 100
and stats.AverageMove <= math.max(tonumber(averageMovePercent) or 0, 0) / 100
and math.abs(stats.DriftRatio) <= math.max(tonumber(driftPercent) or 0, 0) / 100
return stable, stats
end

local function _getDeclineStats(entries, stableRAP)
local downMoves = 0
local consecutiveDeclines = 0
local longestConsecutiveDeclines = 0
local transitionCount = math.max(#entries - 1, 0)
for index = 2, #entries do
local previous = tonumber(entries[index - 1].RAP) or 0
local current = tonumber(entries[index].RAP) or 0
if previous > 0 and current < previous then
downMoves += 1
consecutiveDeclines += 1
longestConsecutiveDeclines = math.max(longestConsecutiveDeclines, consecutiveDeclines)
else
consecutiveDeclines = 0
end
end
local latestRAP = tonumber(entries[#entries] and entries[#entries].RAP) or 0
local dropPercent = stableRAP > 0
and math.max(0, ((stableRAP - latestRAP) / stableRAP) * 100)
or 0
local stats = _f1N(entries)
return {
Points = #entries,
LatestRAP = latestRAP,
DropPercent = dropPercent,
DownMoves = downMoves,
DownShare = transitionCount > 0 and (downMoves / transitionCount) or 0,
LongestConsecutiveDeclines = longestConsecutiveDeclines,
StartTimestamp = tonumber(entries[1] and entries[1].Timestamp) or 0,
EndTimestamp = tonumber(entries[#entries] and entries[#entries].Timestamp) or 0,
Sales = tonumber(stats.Sales) or 0,
Stats = stats,
}
end

local function _f1O(itemType, itemData, currentRAP)
local config = Config.NukeDetector
if type(config) ~= "table" or not config.Enabled then
return false, 0, "Nuke detector dimatikan", nil
end

local history, historyError = _f19(itemType, itemData)
if not history then
return false, 0, historyError, nil
end

local normalizedHistory = {}
for _, entry in ipairs(history) do
local timestamp = tonumber(entry and entry.Timestamp)
local rap = tonumber(entry and entry.RAP) or 0
if timestamp and rap > 0 then
table.insert(normalizedHistory, {
Timestamp = timestamp,
RAP = rap,
Count = tonumber(entry.Count) or 0,
})
end
end
table.sort(normalizedHistory, function(a, b)
return a.Timestamp < b.Timestamp
end)
history = normalizedHistory

local historyPoints = #history
local firstTimestamp = tonumber(history[1] and history[1].Timestamp) or 0
local lastTimestamp = tonumber(history[#history] and history[#history].Timestamp) or firstTimestamp
local historySpanDays = firstTimestamp > 0
and math.max(1, math.floor((lastTimestamp - firstTimestamp) / 86400) + 1)
or 0
local currentHistoryRAP = tonumber(history[#history] and history[#history].RAP)
or tonumber(currentRAP)
or 0

local minimumHistoryPoints = math.max(tonumber(config.MinimumHistoryPoints) or 12, 3)
local minimumHistorySpanDays = math.max(tonumber(config.MinimumHistorySpanDays) or 21, 7)
if historyPoints < minimumHistoryPoints then
return false, 0, "History belum cukup untuk dianggap item lama", {
HistoryPoints = historyPoints,
HistorySpanDays = historySpanDays,
RecentRAP = math.floor(currentHistoryRAP),
LatestRAP = math.floor(currentHistoryRAP),
StableFound = false,
}
end
if historySpanDays < minimumHistorySpanDays then
return false, 0, "Rentang history belum cukup panjang untuk dianggap item lama", {
HistoryPoints = historyPoints,
HistorySpanDays = historySpanDays,
RecentRAP = math.floor(currentHistoryRAP),
LatestRAP = math.floor(currentHistoryRAP),
StableFound = false,
}
end

local stableMinimumPoints = math.max(tonumber(config.StableWindowMinimumPoints) or 7, 3)
local stableMaximumPoints = math.max(
tonumber(config.StableWindowMaximumPoints) or 21,
stableMinimumPoints
)
local stableMinimumSpanDays = math.max(tonumber(config.StableWindowMinimumSpanDays) or 7, 2)
local minimumDeclinePoints = math.max(tonumber(config.MinimumDeclinePoints) or 3, 2)
local requiredDropPercent = math.max(tonumber(config.DropPercent) or 4, 0)
local requiredDownShare = math.clamp(tonumber(config.DeclineMoveShare) or 0.60, 0, 1)
local requiredConsecutiveDeclines = math.max(
tonumber(config.MinimumConsecutiveDeclines) or 2,
1
)

local stableFound = false
local latestEvent

-- Setiap titik di timeline dapat menjadi akhir plateau stabil. Setelah plateau
-- tersebut, semua endpoint penurunan berikutnya diuji dan kejadian terbaru dipilih.
for stableEndIndex = stableMinimumPoints, historyPoints - minimumDeclinePoints do
local earliestStartIndex = math.max(1, stableEndIndex - stableMaximumPoints + 1)
local latestStartIndex = stableEndIndex - stableMinimumPoints + 1
for stableStartIndex = latestStartIndex, earliestStartIndex, -1 do
local stableEntries = _sliceHistory(history, stableStartIndex, stableEndIndex)
local stable, stableStats = _isStablePeriod(
stableEntries,
config.StableRangePercent or 12,
config.StableAverageMovePercent or 6,
config.StableDriftPercent or 8,
stableMinimumSpanDays
)
if stable then
stableFound = true
local stableRAP = tonumber(stableStats.Median) or 0
if stableRAP > 0 then
for declineEndIndex = stableEndIndex + minimumDeclinePoints, historyPoints do
local declineEntries = _sliceHistory(
history,
stableEndIndex + 1,
declineEndIndex
)
local declineStats = _getDeclineStats(declineEntries, stableRAP)
local qualifies = declineStats.Points >= minimumDeclinePoints
and declineStats.DropPercent >= requiredDropPercent
and declineStats.DownShare >= requiredDownShare
and declineStats.LongestConsecutiveDeclines >= requiredConsecutiveDeclines
if qualifies then
local candidate = {
StableEntries = stableEntries,
StableStats = stableStats,
StableRAP = stableRAP,
StableStartIndex = stableStartIndex,
StableEndIndex = stableEndIndex,
StableEndTimestamp = tonumber(stableEntries[#stableEntries].Timestamp) or 0,
DeclineEntries = declineEntries,
DeclineStats = declineStats,
DeclineEndIndex = declineEndIndex,
EventTimestamp = declineStats.EndTimestamp,
}
if not latestEvent
or candidate.EventTimestamp > latestEvent.EventTimestamp
or (
candidate.EventTimestamp == latestEvent.EventTimestamp
and candidate.StableEndTimestamp > latestEvent.StableEndTimestamp
)
then
latestEvent = candidate
end
end
end
end
-- Untuk satu stableEnd cukup gunakan plateau valid yang paling dekat dengannya.
break
end
end
end

if not latestEvent then
return false, 0,
stableFound
and "Periode RAP stabil ditemukan, tetapi belum ada penurunan aktif yang memenuhi pola Nuke"
or "Tidak ditemukan periode RAP stabil pada timeline history",
{
HistoryPoints = historyPoints,
HistorySpanDays = historySpanDays,
RecentRAP = math.floor(currentHistoryRAP),
LatestRAP = math.floor(currentHistoryRAP),
CurrentRAP = math.floor(tonumber(currentRAP) or currentHistoryRAP),
StableFound = stableFound,
}
end

local stableRAP = latestEvent.StableRAP
local currentDropPercent = stableRAP > 0
and math.max(0, ((stableRAP - currentHistoryRAP) / stableRAP) * 100)
or 0
local recoveryGapPercent = stableRAP > 0
and math.abs(stableRAP - currentHistoryRAP) / stableRAP * 100
or math.huge
local recovered = recoveryGapPercent <= math.max(
tonumber(config.RecoveryTolerancePercent) or 2,
0
)

local recoveryStablePoints = math.max(tonumber(config.RecoveryStablePoints) or 5, 2)
local recoveryStartIndex = math.max(1, historyPoints - recoveryStablePoints + 1)
local recoveryEntries = _sliceHistory(history, recoveryStartIndex, historyPoints)
local recoveryStable = false
local recoveryStats = _f1N(recoveryEntries)
if #recoveryEntries >= recoveryStablePoints
and recoveryStartIndex >= latestEvent.DeclineEndIndex
then
recoveryStable, recoveryStats = _isStablePeriod(
recoveryEntries,
config.RecoveryStableRangePercent or 6,
config.RecoveryStableAverageMovePercent or 4,
config.RecoveryStableDriftPercent or 3,
config.RecoveryStableSpanDays or 5
)
end

local activelyDeclining = currentDropPercent >= requiredDropPercent
and not recovered
and not recoveryStable

local reason
if activelyDeclining then
reason = string.format(
"RAP sebelumnya stabil sekitar %d, kemudian mengalami penurunan aktif %.1f%% pada timeline history; %.0f%% pergerakan menurun",
math.floor(stableRAP),
currentDropPercent,
latestEvent.DeclineStats.DownShare * 100
)
elseif recovered then
reason = string.format(
"RAP sudah kembali mendekati harga stabil %d (selisih %.1f%%); status Nuke dilepas",
math.floor(stableRAP),
recoveryGapPercent
)
elseif recoveryStable then
reason = string.format(
"RAP setelah penurunan sudah stabil selama %d hari; status Nuke dilepas",
recoveryStats.SpanDays
)
else
reason = string.format(
"Penurunan terbaru tidak lagi aktif: drop saat ini %.1f%% dari RAP stabil %d",
currentDropPercent,
math.floor(stableRAP)
)
end

return activelyDeclining,
math.floor(currentDropPercent * 10 + 0.5) / 10,
reason,
{
StableRAP = math.floor(stableRAP),
RecentRAP = math.floor(currentHistoryRAP),
LatestRAP = math.floor(currentHistoryRAP),
CurrentRAP = math.floor(tonumber(currentRAP) or currentHistoryRAP),
DropPercent = currentDropPercent,
EventDropPercent = latestEvent.DeclineStats.DropPercent,
DownShare = latestEvent.DeclineStats.DownShare,
LongestDownSequence = latestEvent.DeclineStats.LongestConsecutiveDeclines,
Recovered = recovered,
RecoveryStable = recoveryStable,
RecoveryPoints = #recoveryEntries,
RecoverySpanDays = recoveryStats.SpanDays,
HistoryPoints = historyPoints,
HistorySpanDays = historySpanDays,
StablePoints = #latestEvent.StableEntries,
StableSpanDays = latestEvent.StableStats.SpanDays,
StableRangeRatio = latestEvent.StableStats.RangeRatio,
StableAverageMove = latestEvent.StableStats.AverageMove,
StableDriftRatio = latestEvent.StableStats.DriftRatio,
DeclinePoints = #latestEvent.DeclineEntries,
DeclineSales = latestEvent.DeclineStats.Sales,
EventTimestamp = latestEvent.EventTimestamp,
StableFound = true,
History = history,
}
end

local function _f1A(itemType, itemData, currentRAP)
local history, historyError = _f19(itemType, itemData)
if not history then
return false, 0, historyError, nil
end

local recentDays = math.max(tonumber(Config.BoostDetector.RecentDays) or 7, 1)
local minimumStableDays = math.max(tonumber(Config.BoostDetector.MinimumStableDays) or 5, 2)
local nowUTC = DateTime.now():ToUniversalTime()
local todayTimestamp = DateTime.fromUniversalTime(
nowUTC.Year,
nowUTC.Month,
nowUTC.Day
).UnixTimestamp
local recentStartTimestamp = todayTimestamp - (recentDays - 1) * 86400

-- Ambil titik resmi yang benar-benar berada dalam 7 hari kalender terakhir.
-- RAP live hanya dipakai untuk menghitung persentase boost; pelepasan cache
-- tetap harus berdasarkan graph resmi agar item tidak dilepas terlalu cepat.
local recentEntries = {}
local baselineValues = {}
for _, entry in ipairs(history) do
local timestamp = tonumber(entry.Timestamp)
local rap = tonumber(entry.RAP) or 0
if timestamp and rap > 0 then
if timestamp >= recentStartTimestamp then
table.insert(recentEntries, {
Timestamp = timestamp,
RAP = rap,
Count = tonumber(entry.Count) or 0,
})
else
table.insert(baselineValues, rap)
end
end
end

table.sort(recentEntries, function(a, b)
return a.Timestamp < b.Timestamp
end)

local liveRAP = tonumber(currentRAP) or 0

local recentValues = {}
local recentSales = 0
for _, entry in ipairs(recentEntries) do
table.insert(recentValues, tonumber(entry.RAP) or 0)
recentSales += tonumber(entry.Count) or 0
end

local recentSpanDays = 0
if #recentEntries > 0 then
local firstRecentTimestamp = tonumber(recentEntries[1].Timestamp) or todayTimestamp
local lastRecentTimestamp = tonumber(recentEntries[#recentEntries].Timestamp) or todayTimestamp
recentSpanDays = math.max(
1,
math.floor((lastRecentTimestamp - firstRecentTimestamp) / 86400) + 1
)
end

local historySpanDays = 0
if #history > 0 then
local firstTimestamp = tonumber(history[1].Timestamp) or todayTimestamp
local lastTimestamp = tonumber(history[#history].Timestamp) or todayTimestamp
historySpanDays = math.max(1, math.floor((lastTimestamp - firstTimestamp) / 86400) + 1)
end

local newItemWindowDays = tonumber(Config.BoostDetector.NewItemWindowDays) or 10
local isNewItem = historySpanDays <= newItemWindowDays

-- Item yang baru punya 1-2 titik belum dapat membuktikan kestabilan.
-- Agar tidak memenuhi webhook normal secara prematur, item ini dianggap boosted sementara.
if #recentValues < minimumStableDays then
local preliminaryBaseline = _f16(baselineValues)
local preliminaryRecent = _f16(recentValues)
local preliminaryMinimum = math.huge
local preliminaryPeak = liveRAP

for _, rap in ipairs(recentValues) do
preliminaryMinimum = math.min(preliminaryMinimum, rap)
preliminaryPeak = math.max(preliminaryPeak, rap)
end

if preliminaryMinimum == math.huge then
preliminaryMinimum = 0
end

local preliminaryReference = preliminaryBaseline > 0
and preliminaryBaseline
or preliminaryMinimum
local boostPercent = preliminaryReference > 0
and math.max(0, ((preliminaryPeak - preliminaryReference) / preliminaryReference) * 100)
or 0

local reason = string.format(
"Item baru/belum stabil: hanya %d titik RAP dalam %d hari terakhir",
#recentValues,
recentDays
)
return true, math.floor(boostPercent + 0.5), reason, {
BaselineRAP = math.floor(preliminaryReference),
RecentRAP = math.floor(preliminaryRecent),
PeakRAP = math.floor(preliminaryPeak),
BoostPercent = math.floor(boostPercent + 0.5),
RecentSales = recentSales,
HistoryDays = #history,
HistorySpanDays = historySpanDays,
RecentPoints = #recentValues,
RecentSpanDays = recentSpanDays,
Stable = false,
IsNewItem = isNewItem,
History = history,
}
end

local baselineRAP = _f16(baselineValues)
local recentRAP = _f16(recentValues)
if baselineRAP <= 0 then
baselineRAP = recentRAP
end

local minimumRAP = math.huge
local maximumRAP = 0
for _, rap in ipairs(recentValues) do
minimumRAP = math.min(minimumRAP, rap)
maximumRAP = math.max(maximumRAP, rap)
end
if minimumRAP == math.huge then minimumRAP = 0 end

local referenceRAP = #baselineValues > 0 and baselineRAP or minimumRAP
local peakRAP = math.max(maximumRAP, liveRAP)
local boostPercent = referenceRAP > 0
and math.max(0, ((peakRAP - referenceRAP) / referenceRAP) * 100)
or 0

local rangeRatio = recentRAP > 0 and ((maximumRAP - minimumRAP) / recentRAP) or 0
local totalChangeRatio = recentValues[1] > 0
and ((recentValues[#recentValues] - recentValues[1]) / recentValues[1])
or 0

local downMoves = 0
local meaningfulMoves = 0
local absoluteMoveTotal = 0
local maxSingleMove = 0
for index = 2, #recentValues do
local previous = recentValues[index - 1]
local current = recentValues[index]
if previous > 0 then
local move = (current - previous) / previous
local absoluteMove = math.abs(move)
absoluteMoveTotal += absoluteMove
maxSingleMove = math.max(maxSingleMove, absoluteMove)
-- Perubahan di bawah 2% dianggap noise, bukan arah tren.
if absoluteMove >= 0.02 then
meaningfulMoves += 1
if move < 0 then
 downMoves += 1
end
end
end
end

local transitionCount = math.max(#recentValues - 1, 1)
local averageMove = absoluteMoveTotal / transitionCount
local downShare = meaningfulMoves > 0 and (downMoves / meaningfulMoves) or 0

local stableRangeLimit = (tonumber(Config.BoostDetector.StableRangePercent) or 15) / 100
local stableAverageMoveLimit = (tonumber(Config.BoostDetector.StableAverageMovePercent) or 8) / 100
local stableDriftLimit = (tonumber(Config.BoostDetector.StableDriftPercent) or 10) / 100
local declineLimit = (tonumber(Config.BoostDetector.DeclinePercent) or 10) / 100
local declineMoveShare = tonumber(Config.BoostDetector.DeclineMoveShare) or 0.60
local unstableRangeLimit = (tonumber(Config.BoostDetector.UnstableRangePercent) or 25) / 100
local unstableAverageMoveLimit = (tonumber(Config.BoostDetector.UnstableAverageMovePercent) or 12) / 100
local unstableSingleMoveLimit = (tonumber(Config.BoostDetector.UnstableSingleMovePercent) or 20) / 100

local stable = rangeRatio <= stableRangeLimit
and averageMove <= stableAverageMoveLimit
and math.abs(totalChangeRatio) <= stableDriftLimit

local declining = totalChangeRatio <= -declineLimit
and downShare >= declineMoveShare

local unstable = rangeRatio >= unstableRangeLimit
or averageMove >= unstableAverageMoveLimit
or maxSingleMove >= unstableSingleMoveLimit

-- Aturan utama:
-- 1) Jika 7 hari terakhir stabil, item dianggap normal walaupun sebelumnya pernah naik.
-- 2) Item baru hanya dianggap normal setelah berhasil menunjukkan kestabilan.
-- 3) Item lama dianggap boosted jika RAP terus turun atau berubah terlalu liar.
local boosted
if stable then
boosted = false
elseif isNewItem then
boosted = true
else
boosted = declining or unstable
end

local reasons = {}
if stable then
table.insert(reasons, string.format(
"RAP stabil selama %d hari: rentang %.1f%%, rata-rata perubahan %.1f%%, drift %.1f%%",
recentDays,
rangeRatio * 100,
averageMove * 100,
totalChangeRatio * 100
))
else
if isNewItem then
table.insert(reasons, string.format(
"Item baru: history baru berjalan sekitar %d hari",
historySpanDays
))
end
if declining then
table.insert(reasons, string.format(
"RAP turun terus: %.1f%% dari titik awal; %.0f%% perpindahan bergerak turun",
math.abs(totalChangeRatio) * 100,
downShare * 100
))
end
if unstable then
table.insert(reasons, string.format(
"RAP tidak stabil: rentang %.1f%%, rata-rata perubahan %.1f%%, perubahan terbesar %.1f%%",
rangeRatio * 100,
averageMove * 100,
maxSingleMove * 100
))
end
if #reasons == 0 then
table.insert(reasons, "Pergerakan RAP belum stabil, tetapi belum cukup ekstrem untuk dianggap boost")
end
end

local metrics = {
BaselineRAP = math.floor(referenceRAP),
RecentRAP = math.floor(recentRAP),
PeakRAP = math.floor(peakRAP),
BoostPercent = math.floor(boostPercent + 0.5),
RecentSales = recentSales,
HistoryDays = #history,
HistorySpanDays = historySpanDays,
RecentPoints = #recentValues,
RecentSpanDays = recentSpanDays,
RangeRatio = rangeRatio,
AverageMove = averageMove,
MaxSingleMove = maxSingleMove,
TotalChangeRatio = totalChangeRatio,
DownShare = downShare,
Stable = stable,
Declining = declining,
Unstable = unstable,
IsNewItem = isNewItem,
History = history,
}

return boosted,
math.floor(boostPercent + 0.5),
_f1H(table.concat(reasons, " | ")),
metrics
end

--// SCAN BOOTH
local function _f0F()
if not _isCurrentRun() then
return false
end

_f14()
if not ItemInfo or not Inventory then
warn("Module scan belum tersedia")
return false
end

local scannedPlaceId = game.PlaceId
local scannedJobId = game.JobId
_f01()

local boothListings = _getBoothListings()
if not boothListings then
warn("[SCAN] BoothListings belum siap; mencoba lagi...")
return false
end

local ok, listings = pcall(function()
return boothListings:Get()
end)
if not ok or type(listings) ~= "table" then
warn("[SCAN] Gagal membaca BoothListings:", listings)
BoothListings = nil
return false
end

-- PASS 1: kumpulkan semua listing dulu. Setiap varian item diklasifikasikan sekali
-- sebelum webhook apa pun dikirim. Ini mencegah listing pertama masuk normal,
-- lalu listing kedua dengan nama sama baru terdeteksi boost.
local records = {}
local itemStates = {}

for ownerId, booth in pairs(listings) do
if not _isCurrentRun() then
return false
end
if type(booth) == "table" then
for _, listing in pairs(booth) do
if type(listing) == "table" then
local itemType = listing.Type
local rawItemName = listing.ItemName
local itemName = rawItemName
local itemPrice = tonumber(listing.Price) or 0
local itemData = type(listing.Item) == "table" and listing.Item or {}
local itemRap, itemAssetId = _f0E(itemType, listing.Item, listing)

if itemType == "Emote" then
itemName = _f03(itemName)
end
if itemData.Finisher then
itemName = tostring(itemName) .. " (Finisher)"
elseif itemData.Accessory then
itemName = tostring(itemName) .. " (Mount)"
end

local profitPercent = 0
if itemPrice > 0 then
profitPercent = ((itemRap - itemPrice) / itemPrice) * 100
end
local tier = _f08(itemRap)
local minimumProfitPercent = _f09(tier)
local isUnderValueCandidate = tier
and itemRap > itemPrice
and profitPercent >= minimumProfitPercent

local boostWhitelisted = _f1M(itemType, rawItemName, itemName)
local boostNameKey, registryEntry = _f1G(
itemType,
rawItemName,
itemName
)

local record = {
OwnerId = ownerId,
Listing = listing,
ItemData = itemData,
ItemType = itemType,
RawItemName = rawItemName,
ItemName = itemName,
ItemPrice = itemPrice,
ItemRAP = itemRap,
ItemAssetId = itemAssetId,
ProfitPercent = profitPercent,
Tier = tier,
MinimumProfitPercent = minimumProfitPercent,
IsUnderValueCandidate = isUnderValueCandidate,
BoostKey = boostNameKey,
BoostWhitelisted = boostWhitelisted,
}
table.insert(records, record)

local state = itemStates[boostNameKey]
if not state then
state = {
Key = boostNameKey,
RegistryEntry = registryEntry,
Representative = record,
AnyUnderValue = isUnderValueCandidate and true or false,
BoostWhitelisted = boostWhitelisted,
Records = {},
}
itemStates[boostNameKey] = state
else
if not state.RegistryEntry and registryEntry then
state.RegistryEntry = registryEntry
end
if itemRap > (tonumber(state.Representative.ItemRAP) or 0) then
state.Representative = record
end
if isUnderValueCandidate then
state.AnyUnderValue = true
end
if boostWhitelisted then
state.BoostWhitelisted = true
end
end
table.insert(state.Records, record)
end
end
end
end

-- PASS 2: tentukan status global setiap varian item sebelum webhook apa pun dikirim.
-- Prioritas klasifikasi: Nuke -> Boost Whitelist -> Boost Cache/Detector -> Normal.
-- Prefetch seluruh history relevan secara paralel. _f1O dan _f1A di bawah akan
-- langsung membaca cache yang sama sehingga klasifikasi serial tetap aman/cepat.
do
local historyQueue = {}
for _, prefetchState in pairs(itemStates) do
local registryEntry = prefetchState.RegistryEntry
local globallyBoosted = type(registryEntry) == "table"
and registryEntry.Boosted == true
if prefetchState.AnyUnderValue or globallyBoosted then
table.insert(historyQueue, prefetchState.Representative)
end
end

local totalHistory = #historyQueue
if totalHistory > 0 then
local nextHistoryIndex = 1
local finishedWorkers = 0
local configuredConcurrency = math.floor(tonumber(
Config.ScanPerformance
and Config.ScanPerformance.HistoryConcurrency
) or 0)
local workerCount = configuredConcurrency <= 0
and totalHistory
or math.min(totalHistory, math.max(configuredConcurrency, 1))
print("[FAST HISTORY PREFETCH]", totalHistory, "item /", workerCount, "worker")

for _ = 1, workerCount do
task.spawn(function()
while _isCurrentRun() do
local index = nextHistoryIndex
nextHistoryIndex += 1
local representative = historyQueue[index]
if not representative then break end
local ok, historyError = pcall(
_f19,
representative.ItemType,
representative.Listing.Item
)
if not ok then
warn("[HISTORY PREFETCH ERROR]", representative.ItemName, historyError)
end
end
finishedWorkers += 1
end)
end

while _isCurrentRun() and finishedWorkers < workerCount do
task.wait()
end
print("[FAST HISTORY PREFETCH COMPLETE]", totalHistory, "item")
end
end

for boostNameKey, state in pairs(itemStates) do
if not _isCurrentRun() then
return false
end

local representative = state.Representative
local registryEntry = state.RegistryEntry
local globallyBoosted = type(registryEntry) == "table"
and registryEntry.Boosted == true

state.BoostWhitelisted = state.BoostWhitelisted == true
or _f1M(
representative.ItemType,
representative.RawItemName,
representative.ItemName
)
state.Boosted = globallyBoosted
state.BoostPercent = tonumber(registryEntry and registryEntry.BoostPercent) or 0
state.Reason = _f1H(registryEntry and registryEntry.Reason)
state.Metrics = nil
state.Nuked = false
state.DropPercent = 0
state.NukeReason = nil
state.NukeMetrics = nil

local forceBoosted = _f1ForceBoost(
representative.ItemType,
representative.RawItemName,
representative.ItemName
)
if forceBoosted and not state.BoostWhitelisted then
registryEntry = _f1E(
boostNameKey,
representative.ItemType,
representative.ItemName,
tonumber(registryEntry and registryEntry.BoostPercent) or 0,
"Item dipaksa masuk Boost melalui Config.ForceBoost"
)
state.RegistryEntry = registryEntry
state.Boosted = registryEntry ~= nil
state.BoostPercent = tonumber(registryEntry and registryEntry.BoostPercent) or 0
state.Reason = "Item dipaksa masuk Boost melalui Config.ForceBoost"
if state.Boosted then
print("[BOOST FORCED]", representative.ItemName)
continue
end
end

-- Nuke hanya perlu diperiksa untuk item yang memang punya listing under-value
-- atau sudah berada di cache boost. Ini mencegah ratusan request history yang tidak
-- relevan dan memastikan jalur webhook normal tidak tertahan oleh scan Nuke.
local needsSpecialScan = state.AnyUnderValue or globallyBoosted
if needsSpecialScan then
local nukeCallOk, detectedNuke, dropPercent, nukeReason, nukeMetrics = pcall(
_f1O,
representative.ItemType,
representative.Listing.Item,
representative.ItemRAP
)
if not nukeCallOk then
warn("[NUKE CHECK ERROR]", representative.ItemName, detectedNuke)
detectedNuke = false
dropPercent = 0
nukeReason = "Nuke check gagal; item diteruskan ke klasifikasi normal/boost"
nukeMetrics = nil
end
if detectedNuke then
state.Nuked = true
state.DropPercent = tonumber(dropPercent) or 0
state.NukeReason = tostring(nukeReason or "RAP lama stabil lalu turun terus")
state.NukeMetrics = nukeMetrics
state.Boosted = false

-- Item yang terbukti Nuke adalah item lama yang sebelumnya stabil, sehingga entry
-- boost lama untuk nama ini dilepas. Saat tren turun berhenti/recover, item dapat
-- kembali masuk webhook normal pada scan berikutnya.
if globallyBoosted then
_f1F(boostNameKey)
state.RegistryEntry = nil
end
continue
end
end

-- Whitelist hanya melewati detector/cache Boost. Item whitelist masih boleh
-- masuk Nuke apabila memenuhi pola item lama stabil yang turun >= 4%.
if state.BoostWhitelisted then
if globallyBoosted then
_f1F(boostNameKey)
state.RegistryEntry = nil
end
state.Boosted = false
state.BoostPercent = 0
state.Reason = "Item berada di Boost Whitelist"
continue
end

if needsSpecialScan then
local boostCallOk, detectedBoost, detectedBoostPercent, detectedReason, detectedMetrics = pcall(
_f1A,
representative.ItemType,
representative.Listing.Item,
representative.ItemRAP
)
if not boostCallOk then
warn("[BOOST CHECK ERROR]", representative.ItemName, detectedBoost)
detectedBoost = false
detectedBoostPercent = 0
detectedReason = "Boost check gagal; item non-cache diteruskan ke webhook normal"
detectedMetrics = nil
end

local cleanReason = _f1H(detectedReason)
local currentPercent = tonumber(detectedBoostPercent) or 0
state.Metrics = detectedMetrics

if globallyBoosted then
local minimumStableDays = math.max(
tonumber(Config.BoostDetector.MinimumStableDays) or 5,
5
)
local stableLongEnough = detectedMetrics
and detectedMetrics.Stable == true
and (tonumber(detectedMetrics.RecentPoints) or 0) >= minimumStableDays
and (tonumber(detectedMetrics.RecentSpanDays) or 0) >= minimumStableDays

if stableLongEnough then
_f1F(boostNameKey)
state.RegistryEntry = nil
state.Boosted = false
state.BoostPercent = currentPercent
state.Reason = cleanReason
print(
"[BOOST RELEASED]",
representative.ItemName,
"grafik stabil selama",
detectedMetrics.RecentSpanDays,
"hari"
)
else
-- Request gagal, data kurang, turun, atau belum stabil: cache lama tetap aktif.
state.Boosted = true
state.BoostPercent = currentPercent > 0
and currentPercent
or tonumber(registryEntry.BoostPercent)
or 0
state.Reason = cleanReason ~= "Menunggu grafik stabil minimal 5 hari"
and cleanReason
or _f1H(registryEntry.Reason)

-- Upgrade metadata cache tanpa menghapus entry lama.
local changed = false
if tonumber(registryEntry.BoostPercent) ~= tonumber(state.BoostPercent) then
registryEntry.BoostPercent = state.BoostPercent
changed = true
end
local peak = math.max(
tonumber(registryEntry.PeakBoostPercent)
or tonumber(registryEntry.BoostPercent)
or 0,
tonumber(state.BoostPercent) or 0
)
if tonumber(registryEntry.PeakBoostPercent) ~= peak then
registryEntry.PeakBoostPercent = peak
changed = true
end
if state.Reason and state.Reason ~= registryEntry.Reason then
registryEntry.Reason = state.Reason
changed = true
end
if changed then
registryEntry.LastDetectedAt = os.time()
_f1C()
end
end
elseif detectedBoost then
registryEntry = _f1E(
boostNameKey,
representative.ItemType,
representative.ItemName,
currentPercent,
cleanReason
)
if registryEntry then
state.RegistryEntry = registryEntry
state.Boosted = true
state.BoostPercent = currentPercent
state.Reason = cleanReason
else
state.Boosted = false
state.BoostPercent = 0
state.Reason = "Item berada di Boost Whitelist"
end
else
state.Boosted = false
state.BoostPercent = currentPercent
state.Reason = cleanReason
end
end
end

local function sendBoostRecord(record, state)
local boostedListingKey = table.concat({
"boost",
tostring(scannedJobId),
tostring(record.OwnerId),
tostring(record.ItemType),
string.lower(tostring(record.ItemName)),
tostring(record.ItemPrice),
tostring(record.ItemRAP),
}, "|")

local now = os.clock()
local lastSent = _v08[boostedListingKey]
local notifyTTL = tonumber(Config.BoostDetector.BoostListingTTL) or (15 * 60)
if lastSent and now - lastSent < notifyTTL then
return
end

local sellerName = _f04(tonumber(record.OwnerId))
local sellerAvatar = _f07(record.OwnerId)
local boothInfo = _getSellerBoothInfo(record, sellerName)
local boostedServerLink = string.format(
"roblox://placeId=%d&gameInstanceId=%s",
scannedPlaceId,
scannedJobId
)
local metrics = state.Metrics
local graphHistory = metrics and metrics.History or nil
-- ForceBoost bisa melewati detector. Ambil history khusus untuk graph agar webhook
-- Boost tetap mendapat gambar tanpa mengubah hasil klasifikasi Boost.
if type(graphHistory) ~= "table" or #graphHistory < 2 then
local historyOk, fetchedHistory = pcall(
_f19,
record.ItemType,
record.Listing.Item
)
if historyOk and type(fetchedHistory) == "table" then
graphHistory = fetchedHistory
end
end
local sent = _f0H({
Seller = sellerName,
WebhookName = _f04D(tonumber(record.OwnerId)),
SellerAvatar = sellerAvatar,
Item = record.ItemName,
RawItem = record.RawItemName,
Type = record.ItemType,
RAP = record.ItemRAP,
Price = record.ItemPrice,
BoostPercent = tonumber(state.BoostPercent) or 0,
Reason = _f1H(state.Reason),
BaselineRAP = metrics and metrics.BaselineRAP or 0,
RecentRAP = metrics and metrics.RecentRAP or record.ItemRAP,
RecentSales = metrics and metrics.RecentSales or 0,
History = graphHistory,
BoothStatus = boothInfo.Status,
BoothLocation = boothInfo.Location,
Link = boostedServerLink,
Thumbnail = record.ItemAssetId and _f06(record.ItemAssetId, "420x420") or nil,
})
if sent then
_v08[boostedListingKey] = now
end
warn(
"[BOOSTED-GLOBAL]",
record.ItemName,
"Price:",
record.ItemPrice,
"RAP Boost:",
string.format("+%.0f%%", tonumber(state.BoostPercent) or 0),
_f1H(state.Reason)
)
return sent == true
end

local function sendNukeRecord(record, state)
local nukeListingKey = table.concat({
"nuke-dynamic",
tostring(scannedJobId),
tostring(record.OwnerId),
tostring(record.ItemType),
string.lower(tostring(record.ItemName)),
tostring(record.ItemPrice),
tostring(record.ItemRAP),
}, "|")

local now = os.clock()
local notifyTTL = tonumber(Config.NukeDetector and Config.NukeDetector.NotifyTTL)
or (15 * 60)
for key, sentAt in pairs(_v10) do
if type(sentAt) ~= "number" or now - sentAt >= notifyTTL then
_v10[key] = nil
end
end
if _v10[nukeListingKey] then
return false
end

local sellerName = _f04(tonumber(record.OwnerId))
local sellerAvatar = _f07(record.OwnerId)
local boothInfo = _getSellerBoothInfo(record, sellerName)
local serverLink = string.format(
"roblox://placeId=%d&gameInstanceId=%s",
scannedPlaceId,
scannedJobId
)
local metrics = state.NukeMetrics or {}
local sent = _f0G({
Seller = sellerName,
WebhookName = _f04D(tonumber(record.OwnerId)),
SellerAvatar = sellerAvatar,
Item = record.ItemName,
RawItem = record.RawItemName,
Type = record.ItemType,
RAP = record.ItemRAP,
Price = record.ItemPrice,
DropPercent = tonumber(state.DropPercent) or 0,
StableRAP = metrics.StableRAP or 0,
RecentRAP = metrics.LatestRAP or metrics.RecentRAP or record.ItemRAP,
HistoryPoints = metrics.HistoryPoints or 0,
History = metrics.History,
Reason = state.NukeReason,
BoothStatus = boothInfo.Status,
BoothLocation = boothInfo.Location,
Link = serverLink,
Thumbnail = record.ItemAssetId and _f06(record.ItemAssetId, "420x420") or nil,
})
if sent then
_v10[nukeListingKey] = now
end
print(
"[NUKED-DYNAMIC]",
record.ItemName,
"RAP Drop:",
string.format("-%.1f%%", tonumber(state.DropPercent) or 0)
)
return sent
end

-- PASS 3: kirim webhook sesuai klasifikasi final.
-- Normal under-value tetap diproses bila item bukan Nuke dan bukan Boost.
local scanCounters = {
NormalCandidates = 0,
NormalSent = 0,
BoostSent = 0,
NukeSent = 0,
}

-- Kirim kandidat normal lebih dahulu. Item Nuke/Boost tetap tidak dapat bocor
-- karena klasifikasi seluruh varian sudah selesai pada PASS 2.
table.sort(records, function(a, b)
local stateA = itemStates[a.BoostKey]
local stateB = itemStates[b.BoostKey]
local function rank(record, state)
if state and state.Nuked then return 2 end
if state and state.Boosted then return 3 end
if record.IsUnderValueCandidate then return 1 end
return 4
end
local rankA = rank(a, stateA)
local rankB = rank(b, stateB)
if rankA == rankB then
return tostring(a.ItemName) < tostring(b.ItemName)
end
return rankA < rankB
end)

for _, record in ipairs(records) do
if not _isCurrentRun() then
return false
end

local state = itemStates[record.BoostKey]

-- Nuke menang atas semua jalur lain. Setelah dikirim/dedup, record tidak boleh
-- diteruskan ke BoostedWebhook, Nuked lama, atau webhook Under Value.
if state and state.Nuked then
if sendNukeRecord(record, state) then
scanCounters.NukeSent += 1
end
continue
end

local cachedNow, cachedEntry, cachedKey = _isBoostedByName(
record.ItemType,
record.RawItemName,
record.ItemName
)

if cachedNow then
if not state then
state = {
Boosted = true,
BoostPercent = tonumber(cachedEntry.BoostPercent) or 0,
Reason = _f1H(cachedEntry.Reason),
Metrics = nil,
}
itemStates[cachedKey or record.BoostKey] = state
else
state.Boosted = true
state.BoostPercent = tonumber(state.BoostPercent)
or tonumber(cachedEntry.BoostPercent)
or 0
state.Reason = _f1H(state.Reason or cachedEntry.Reason)
end
end

if state and state.Boosted then
if sendBoostRecord(record, state) then
scanCounters.BoostSent += 1
end
continue
end

-- Hard guard tepat sebelum jalur Nuked/normal. Bahkan jika state lokal salah,
-- registry persistent tetap memblokir kebocoran.
local blocked = _isBoostedByName(
record.ItemType,
record.RawItemName,
record.ItemName
)
if blocked then
local _, entry = _isBoostedByName(
record.ItemType,
record.RawItemName,
record.ItemName
)
local emergencyState = {
Boosted = true,
BoostPercent = tonumber(entry and entry.BoostPercent) or 0,
Reason = _f1H(entry and entry.Reason),
Metrics = nil,
}
if sendBoostRecord(record, emergencyState) then
scanCounters.BoostSent += 1
end
continue
end

local sellerName
local sellerAvatar

-- Static NukedItems lama sudah diganti oleh detector history 30 hari.
-- Item Nuke sudah ditangani di awal loop dan selalu berhenti dengan continue.

if record.IsUnderValueCandidate then
scanCounters.NormalCandidates += 1
-- Periksa cache lagi setelah kemungkinan task.wait pada jalur Nuked.
local finalBlocked = _isBoostedByName(
record.ItemType,
record.RawItemName,
record.ItemName
)
if finalBlocked then
local _, finalEntry = _isBoostedByName(
record.ItemType,
record.RawItemName,
record.ItemName
)
if sendBoostRecord(record, {
Boosted = true,
BoostPercent = tonumber(finalEntry and finalEntry.BoostPercent) or 0,
Reason = _f1H(finalEntry and finalEntry.Reason),
Metrics = nil,
}) then
scanCounters.BoostSent += 1
end
continue
end

local listingKey = _f02(
record.OwnerId,
record.ItemType,
record.ItemName,
record.ItemPrice,
record.ItemRAP
)
if _v05[listingKey] then
continue
end

sellerName = sellerName or _f04(tonumber(record.OwnerId))
sellerAvatar = sellerAvatar or _f07(record.OwnerId)
local boothInfo = _getSellerBoothInfo(record, sellerName)
local normalGraphHistory
local historyOk, fetchedHistory = pcall(
_f19,
record.ItemType,
record.Listing.Item
)
if historyOk and type(fetchedHistory) == "table" then
normalGraphHistory = fetchedHistory
else
warn("[NORMAL GRAPH] RAP history tidak tersedia:", record.ItemName, fetchedHistory)
end
local serverLink = string.format(
"roblox://placeId=%d&gameInstanceId=%s",
scannedPlaceId,
scannedJobId
)
local sent = _f0A({
Seller = sellerName,
WebhookName = _f04D(tonumber(record.OwnerId)),
SellerAvatar = sellerAvatar,
Item = record.ItemName,
RawItem = record.RawItemName,
Type = record.ItemType,
RAP = record.ItemRAP,
Price = record.ItemPrice,
History = normalGraphHistory,
BoothStatus = boothInfo.Status,
BoothLocation = boothInfo.Location,
Link = serverLink,
Thumbnail = record.ItemAssetId and _f06(record.ItemAssetId, "420x420") or nil,
})
if sent then
_v05[listingKey] = os.clock()
scanCounters.NormalSent += 1
print("[UNDERVALUE-NORMAL]", record.ItemName, record.ItemPrice, record.ItemRAP)
local webhookDelay = tonumber(
Config.ScanPerformance
and Config.ScanPerformance.NormalWebhookDelay
) or 0
if webhookDelay > 0 then
task.wait(webhookDelay)
end
else
warn(
"[NORMAL WEBHOOK NOT SENT]",
record.ItemName,
"tier:", tostring(record.Tier),
"profit%:", string.format("%.1f", tonumber(record.ProfitPercent) or 0)
)
end
end
end

print(
"[SCAN SUMMARY]",
"normal candidates:", scanCounters.NormalCandidates,
"normal sent:", scanCounters.NormalSent,
"boost sent:", scanCounters.BoostSent,
"nuke sent:", scanCounters.NukeSent
)
return true
end

local scanAllBooth = _f0F
local SERVER_HISTORY_FILE = "underap_server_history.json"
local function loadServerHistory()
	local history = {}
	local seen = {}

	local function addEntry(entry)
		local jobId = entry
		if type(entry) == "table" then
			jobId = entry.jobId or entry.JobId
		end
		if type(jobId) == "string" and jobId ~= "" and not seen[jobId] then
			seen[jobId] = true
			table.insert(history, jobId)
		end
	end

	if isfile and readfile and isfile(SERVER_HISTORY_FILE) then
		local ok, saved = pcall(function()
			return HttpService:JSONDecode(readfile(SERVER_HISTORY_FILE))
		end)
		if ok and type(saved) == "table" then
			for _, entry in ipairs(saved) do
				addEntry(entry)
			end
		end
	end
	for _, entry in ipairs(globalEnvironment.__UNDERAP_SERVER_HISTORY or {}) do
		addEntry(entry)
	end
	globalEnvironment.__UNDERAP_SERVER_HISTORY = history
	return history
end
local function saveServerHistory(history)
	local normalized = {}
	local seen = {}
	for _, jobId in ipairs(history or {}) do
		if type(jobId) == "string" and jobId ~= "" and not seen[jobId] then
			seen[jobId] = true
			table.insert(normalized, jobId)
		end
	end
	globalEnvironment.__UNDERAP_SERVER_HISTORY = normalized
	if writefile then
		pcall(function()
			writefile(SERVER_HISTORY_FILE, HttpService:JSONEncode(normalized))
		end)
	end
end

local function rememberVisitedServer(history, jobId)
	if type(jobId) ~= "string" or jobId == "" then
		return history
	end
	for _, savedJobId in ipairs(history) do
		if savedJobId == jobId then
			return history
		end
	end
	table.insert(history, jobId)
	saveServerHistory(history)
	return history
end

local function resetServerHistory(currentJobId)
	local history = {}
	if type(currentJobId) == "string" and currentJobId ~= "" then
		table.insert(history, currentJobId)
	end
	saveServerHistory(history)
	return history
end

-- Server saat ini selalu masuk riwayat. Target berikutnya juga dicatat sebelum
-- dicoba agar tidak dipilih berulang kali dalam satu siklus pencarian.
rememberVisitedServer(loadServerHistory(), game.JobId)

local function fetchPublicServerPage(placeId, cursor)
	local url = string.format(
		"https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&excludeFullGames=true&limit=100",
		tostring(placeId)
	)
	if type(cursor) == "string" and cursor ~= "" then
		url ..= "&cursor=" .. HttpService:UrlEncode(cursor)
	end

	local requestOk, response = pcall(function()
		return httpRequest({ Url = url, Method = "GET" })
	end)
	if not requestOk then
		return nil, "request gagal: " .. tostring(response)
	end

	local statusCode
	local body
	if type(response) == "table" then
		statusCode = tonumber(response.StatusCode or response.Status or response.status_code)
		body = response.Body or response.body
	elseif type(response) == "string" then
		body = response
	end
	if statusCode and (statusCode < 200 or statusCode >= 300) then
		return nil, "HTTP " .. tostring(statusCode)
	end
	if type(body) ~= "string" or body == "" then
		return nil, "response body kosong"
	end

	local decodeOk, page = pcall(function()
		return HttpService:JSONDecode(body)
	end)
	if not decodeOk or type(page) ~= "table" or type(page.data) ~= "table" then
		return nil, "response JSON server tidak valid"
	end
	return page
end

local function resetPublicServerSearchPass(search)
	search.Cursor = nil
	search.EndReached = false
	search.FoundOtherServer = false
	search.PageStarted = false
	search.Queue = {}
	search.Queued = {}
	search.SeenCursors = {}
end

local function createPublicServerSearch()
	local search = {
		Attempted = {},
	}
	resetPublicServerSearchPass(search)
	return search
end

local function takeQueuedPublicServer(search, visited, currentJobId)
	while #search.Queue > 0 do
		local index = math.random(1, #search.Queue)
		local candidate = table.remove(search.Queue, index)
		search.Queued[candidate.JobId] = nil
		if
			candidate.JobId ~= currentJobId
			and not visited[candidate.JobId]
			and not search.Attempted[candidate.JobId]
		then
			search.Attempted[candidate.JobId] = true
			return candidate
		end
	end
	return nil
end

local function restartExhaustedPublicServerSearch(search, currentJobId)
	local hadOtherServers = search.FoundOtherServer
	if hadOtherServers then
		-- Reset hanya jika satu siklus benar-benar melihat server lain dan semua
		-- kandidatnya sudah habis/visited. Snapshot yang hanya berisi server saat
		-- ini tidak boleh menghapus history.
		resetServerHistory(currentJobId)
	end
	search.Attempted = {}
	resetPublicServerSearchPass(search)
	if hadOtherServers then
		return nil, "semua server sudah dikunjungi; mulai lagi dari awal", false
	end
	return nil, "server lain belum tersedia; mencari lagi tanpa reset history", false
end

local function getNextUnvisitedPublicServer(search, placeId, currentJobId)
	local history = loadServerHistory()
	local visited = {}
	for _, jobId in ipairs(history) do
		visited[jobId] = true
	end
	visited[currentJobId] = true

	local queued = takeQueuedPublicServer(search, visited, currentJobId)
	if queued then
		rememberVisitedServer(history, queued.JobId)
		return queued, "server baru", false
	end
	if search.EndReached then
		-- Antrean dari halaman terakhir benar-benar kosong. Baru sekarang history
		-- boleh direset dan pencarian berikutnya kembali ke halaman pertama.
		return restartExhaustedPublicServerSearch(search, currentJobId)
	end

	for _ = 1, Config.PublicServerPagesPerSearch do
		local cursorKey = search.Cursor or "__FIRST_PAGE__"
		if search.SeenCursors[cursorKey] then
			resetPublicServerSearchPass(search)
			return nil, "cursor server berulang; pencarian diulang dari awal", false
		end

		local page, fetchError = fetchPublicServerPage(placeId, search.Cursor)
		if not page then
			return nil, fetchError, false
		end
		search.SeenCursors[cursorKey] = true
		search.PageStarted = true

		for _, server in ipairs(page.data) do
			local jobId = server.id
			local playing = tonumber(server.playing) or 0
			local maxPlayers = tonumber(server.maxPlayers) or math.huge
			if type(jobId) == "string" and jobId ~= "" and playing < maxPlayers then
				if jobId ~= currentJobId then
					search.FoundOtherServer = true
					if
						not visited[jobId]
						and not search.Attempted[jobId]
						and not search.Queued[jobId]
					then
						search.Queued[jobId] = true
						table.insert(search.Queue, {
							JobId = jobId,
							PlaceId = placeId,
						})
					end
				end
			end
		end

		local nextCursor = page.nextPageCursor
		if type(nextCursor) ~= "string" or nextCursor == "" then
			nextCursor = nil
		end
		search.Cursor = nextCursor
		search.EndReached = nextCursor == nil

		queued = takeQueuedPublicServer(search, visited, currentJobId)
		if queued then
			rememberVisitedServer(history, queued.JobId)
			return queued, "server baru", false
		end

		if search.EndReached then
			-- Kandidat kosong berarti semua server yang terlihat sudah ada di
			-- visited, atau memang belum ada server lain. Reset lalu mulai lagi
			-- dari halaman pertama; server saat ini tetap selalu dikecualikan.
			return restartExhaustedPublicServerSearch(search, currentJobId)
		end
	end

	return nil, "melanjutkan halaman server berikutnya", false
end

-- Antrekan ulang scanner sebelum teleport. BoothListings direplikasi per-server,
-- sehingga tidak ada API client yang dapat membaca booth dari semua JobId sekaligus.
-- queue_on_teleport menjalankan ulang file ini pada JobId tujuan agar siklus scan ->
-- webhook tier -> hop berlanjut sampai server publik yang tersedia telah dikunjungi.
local function queueScannerForTeleport()
	local bootstrap = Config.TeleportBootstrap or {}
	if bootstrap.Enabled == false then
		return true
	end

	local queue = queue_on_teleport
	if not queue and syn then
		queue = syn.queue_on_teleport
	end
	if type(queue) ~= "function" then
		return false, "queue_on_teleport tidak didukung executor"
	end

	local sourceUrl = tostring(bootstrap.SourceUrl or "")
	local scriptPath = tostring(bootstrap.ScriptPath or "")
	local bootstrapCode
	if sourceUrl ~= "" then
		bootstrapCode = string.format("loadstring(game:HttpGet(%q))()", sourceUrl)
	elseif scriptPath ~= "" and isfile and readfile and isfile(scriptPath) then
		bootstrapCode = string.format("loadstring(readfile(%q))()", scriptPath)
	else
		return false, "SourceUrl kosong dan ScriptPath tidak dapat dibaca"
	end

	local queued, queueError = pcall(queue, bootstrapCode)
	if not queued then
		return false, tostring(queueError)
	end
	print("[UNDERAP] scanner diantrekan untuk server tujuan")
	return true
end

local function TeleportNewPlazaFromBrowser(regionFilter)
	local emptyResponseCount = 0
	while true do
		local autoRejoinState = globalEnvironment.__UNDERAP_AUTO_REJOIN_STATE
		if autoRejoinState and autoRejoinState.Rejoining then
			return false
		end

		local refreshOk, serverBuffers = pcall(function()
			return RefreshServerBrowser:InvokeServer(regionFilter)
		end)
		if not refreshOk or type(serverBuffers) ~= "table" then
			-- Gagal mengambil browser bukan berarti server habis. Jangan reset atau
			-- request terlalu cepat; remote dapat mengembalikan nil saat rate-limited.
			emptyResponseCount += 1
			if emptyResponseCount == 1 or emptyResponseCount % 5 == 0 then
				warn("No server data received; mencoba lagi:", serverBuffers)
			end
		else
			emptyResponseCount = 0
			local printed = {}
			local jobsId = {}
			local allJobsId = {}
			local browserSnapshotValid = true
			local hasOtherVisibleServer = false
			local history = loadServerHistory()
			rememberVisitedServer(history, game.JobId)
			local visited = { [game.JobId] = true }
			for _, jobId in ipairs(history) do
				visited[jobId] = true
			end

			for _, buffer in pairs(serverBuffers) do
				if buffer then
					-- readReplicationBuffer menyertakan jobId yang diperlukan untuk teleport.
					local decodeOk, serverData = pcall(function()
						return ServerBrowserData.readReplicationBuffer(buffer)
					end)
					if not decodeOk or type(serverData) ~= "table" then
						-- Snapshot parsial/rusak tidak boleh dianggap sebagai bukti bahwa
						-- seluruh server sudah habis.
						browserSnapshotValid = false
					elseif
						(
							serverData.placeId == UniverseIds.TradingPlaza.PlaceId
							or serverData.placeId == UniverseIds.ProTradingPlaza.PlaceId
						)
						and type(serverData.jobId) == "string"
						and serverData.jobId ~= ""
						and not printed[serverData.jobId]
					then
						printed[serverData.jobId] = true
						local candidate = {
							jobId = serverData.jobId,
							placeId = serverData.placeId,
						}
						table.insert(allJobsId, candidate)
						if serverData.jobId ~= game.JobId then
							hasOtherVisibleServer = true
						end
						if serverData.jobId ~= game.JobId and not visited[serverData.jobId] then
							table.insert(jobsId, candidate)
						end
					end
				end
			end

			-- Hanya reset jika snapshot valid, memang ada server lain yang terlihat,
			-- dan semuanya sudah tercatat di visited.
			if #jobsId == 0 and browserSnapshotValid and hasOtherVisibleServer then
				warn("Semua server sudah dikunjungi; riwayat direset dan mulai dari awal")
				history = resetServerHistory(game.JobId)
				for _, candidate in ipairs(allJobsId) do
					if candidate.jobId ~= game.JobId then
						table.insert(jobsId, candidate)
					end
				end
			end

			local triedCandidate = false
			while #jobsId > 0 do
				autoRejoinState = globalEnvironment.__UNDERAP_AUTO_REJOIN_STATE
				if autoRejoinState and autoRejoinState.Rejoining then
					return false
				end

				local index = math.random(1, #jobsId)
				local candidate = table.remove(jobsId, index)
				triedCandidate = true
				-- Catat sebelum mencoba; jika server penuh/gagal, lanjut ke target
				-- berikutnya dan jangan memilihnya lagi dalam siklus ini.
				rememberVisitedServer(history, candidate.jobId)
				task.wait(TELEPORT_DELAY_SECONDS)
				local ok, result = pcall(function()
					return ServerBrowserTeleport:InvokeServer(candidate.jobId, candidate.placeId)
				end)
				if ok and result == true then
					return true
				end
			end

			-- Semua kandidat pada snapshot ini sudah dicoba tetapi tidak berhasil.
			-- Reset hanya saat jobsId benar-benar kosong, lalu refresh browser dan
			-- mulai lagi dari awal. Server saat ini tetap tidak ikut dipilih.
			if triedCandidate and #jobsId == 0 and browserSnapshotValid then
				resetServerHistory(game.JobId)
				warn("Server pada browser habis/gagal; mencari ulang dari awal")
			elseif #jobsId == 0 and not browserSnapshotValid then
				warn("Snapshot server tidak lengkap; refresh ulang tanpa reset history")
			elseif #jobsId == 0 and not hasOtherVisibleServer then
				warn("Server lain belum terlihat; refresh ulang tanpa reset history")
			end
		end

		task.wait(
			emptyResponseCount > 0 and SERVER_BROWSER_RETRY_SECONDS
				or TELEPORT_DELAY_SECONDS
		)
	end
end

-- Gunakan daftar server publik Roblox sebagai sumber utama, bukan snapshot Server
-- Browser di map. Snapshot tersebut dapat dibatasi oleh region/UI, sedangkan endpoint
-- publik mengembalikan setiap instance publik dari PlaceId saat ini.
local function TeleportNewPlaza(regionFilter)
	local TeleportService = cloneRef(game:GetService("TeleportService"))
	local localPlayer = Players.LocalPlayer
	local search = createPublicServerSearch()
	local lastSearchMessage

	while _isCurrentRun() and game.JobId ~= "" do
		local autoRejoinState = globalEnvironment.__UNDERAP_AUTO_REJOIN_STATE
		if autoRejoinState and autoRejoinState.Rejoining then
			return false
		end

		local target, searchMessage = getNextUnvisitedPublicServer(
			search,
			game.PlaceId,
			game.JobId
		)
		if not target then
			if searchMessage ~= lastSearchMessage then
				lastSearchMessage = searchMessage
				warn("[UNDERAP] pencarian public server:", searchMessage)
			end
			task.wait(SERVER_BROWSER_RETRY_SECONDS)
			continue
		end

		lastSearchMessage = nil
		print("[UNDERAP] scan selesai; pindah ke public server:", target.JobId)
		local teleportOk, teleportError = pcall(function()
			TeleportService:TeleportToPlaceInstance(
				target.PlaceId,
				target.JobId,
				localPlayer
			)
		end)
		if not teleportOk then
			warn("[UNDERAP] teleport public server gagal:", teleportError)
			task.wait(TELEPORT_DELAY_SECONDS)
		else
			-- Jika teleport diterima, client akan berpindah dan bootstrap yang sudah
			-- diantrekan akan memulai scan di JobId target. Bila tetap di JobId ini,
			-- anggap target gagal lalu lanjut ke kandidat publik berikutnya.
			task.wait(8)
			if game.JobId == target.JobId then
				return true
			end
			warn("[UNDERAP] JobId belum berubah; lewati target dan lanjutkan pencarian")
		end
	end

	return false, "scanner tidak lagi aktif"
end

--// LOAD AUTO REJOIN BEFORE SCANNING
-- Menangani disconnect/kick dan Error 279 saat perpindahan server.
-- Untuk 279, script mencoba tombol Retry lebih dulu. Jika prompt tetap muncul,
-- script pindah ke JobId publik lain agar tidak berhenti di loading screen.
do
	local AUTO_REJOIN_VERSION = 9
	local previousState = globalEnvironment.__UNDERAP_AUTO_REJOIN_STATE

	if
		previousState
		and previousState.Alive
		and previousState.Version == AUTO_REJOIN_VERSION
		and previousState.JobId == game.JobId
	then
		print("[AUTO REJOIN] sudah aktif untuk server ini")
	else
		-- Bersihkan listener versi sebelumnya saat file dijalankan ulang.
		if previousState then
			previousState.Alive = false
			for _, connection in ipairs(previousState.Connections or {}) do
				pcall(function()
					connection:Disconnect()
				end)
			end
		end

		local PlayersService = game:GetService("Players")
		local TeleportService = game:GetService("TeleportService")
		local CoreGui
		local GuiService = game:GetService("GuiService")
		local LogService = game:GetService("LogService")

		-- CoreGui kadang belum bisa diakses oleh executor saat script mulai.
		-- Jangan hentikan script utama; watcher prompt akan mencoba mengambilnya lagi.
		local function resolveCoreGui()
			if CoreGui then
				return CoreGui
			end

			local success, service = pcall(function()
				return game:GetService("CoreGui")
			end)
			if success and service then
				CoreGui = service
			end
			return CoreGui
		end

		resolveCoreGui()
		local LocalPlayer = PlayersService.LocalPlayer
		local PlaceId = game.PlaceId
		local VirtualInputManager
		local VirtualUser

		pcall(function()
			VirtualInputManager = game:GetService("VirtualInputManager")
		end)
		pcall(function()
			VirtualUser = game:GetService("VirtualUser")
		end)

		local state = {
			Alive = true,
			Attempts = 0,
			ButtonAttempts = 0,
			Connections = {},
			FreshServerWorkerRunning = false,
			JobId = game.JobId,
			LastSearchMessage = nil,
			NextAttemptAt = 0,
			PromptRecoveryRunning = false,
			Rejoining = false,
			ServerSearch = createPublicServerSearch(),
			TargetServer = nil,
			Version = AUTO_REJOIN_VERSION,
			WatchedPrompts = setmetatable({}, { __mode = "k" }),
		}
		globalEnvironment.__UNDERAP_AUTO_REJOIN_STATE = state

		local ERROR_PATTERNS = {
			"error code: 267",
			"error code 267",
			"error code: 277",
			"error code 277",
			"error code: 279",
			"error code 279",
			"connection failed",
			"failed to connect to the experience",
			"failed to connect",
			"no response from server",
			"please try again",
			"connection lost",
			"lost connection",
			"server kick message",
			"you were kicked",
			"kicked from this experience",
			"server shutdown",
		}

		local RETRY_BUTTON_NAMES = {
			["retry"] = true,
			["reconnect"] = true,
			["connect"] = true,
			["try again"] = true,
			["coba lagi"] = true,
			["sambungkan kembali"] = true,
		}

		local function trackConnection(connection)
			table.insert(state.Connections, connection)
			return connection
		end

		local function containsConnectionError(value)
			local lower = string.lower(tostring(value or ""))
			for _, pattern in ipairs(ERROR_PATTERNS) do
				if string.find(lower, pattern, 1, true) then
					return true, lower
				end
			end
			return false, lower
		end

		local function isVisible(instance)
			if not instance or not instance.Parent then
				return false
			end

			local visible = true
			pcall(function()
				local current = instance
				while current and current ~= CoreGui do
					if current:IsA("GuiObject") and not current.Visible then
						visible = false
						break
					end
					if current:IsA("LayerCollector") and not current.Enabled then
						visible = false
						break
					end
					current = current.Parent
				end
			end)
			return visible
		end

		local function readObjectText(object)
			local text = ""
			pcall(function()
				if
					object:IsA("TextLabel")
					or object:IsA("TextButton")
					or object:IsA("TextBox")
				then
					text = tostring(object.Text or "")
				end
			end)
			return text
		end

		local function trimLower(value)
			return string.lower(tostring(value or "")):gsub("^%s+", ""):gsub("%s+$", "")
		end

		local function getButtonText(button)
			if not button then
				return ""
			end

			local directText = readObjectText(button)
			if directText ~= "" then
				return trimLower(directText)
			end

			for _, descendant in ipairs(button:GetDescendants()) do
				if
					descendant:IsA("TextLabel")
					or descendant:IsA("TextButton")
					or descendant:IsA("TextBox")
				then
					local nestedText = readObjectText(descendant)
					if nestedText ~= "" then
						return trimLower(nestedText)
					end
				end
			end
			return ""
		end

		local function collectPromptText(root)
			if not root then
				return ""
			end

			local parts = {}
			local rootText = readObjectText(root)
			if rootText ~= "" then
				table.insert(parts, rootText)
			end

			for _, descendant in ipairs(root:GetDescendants()) do
				if isVisible(descendant) then
					local text = readObjectText(descendant)
					if text ~= "" then
						table.insert(parts, text)
					end
				end
			end
			return table.concat(parts, " | ")
		end

		local function findRetryButton(root)
			if not root then
				return nil, nil
			end

			local objects = { root }
			for _, descendant in ipairs(root:GetDescendants()) do
				table.insert(objects, descendant)
			end

			for _, object in ipairs(objects) do
				if object:IsA("GuiButton") and isVisible(object) then
					local buttonText = getButtonText(object)
					if RETRY_BUTTON_NAMES[buttonText] then
						return object, buttonText
					end
				end
			end
			return nil, nil
		end

		local function findConnectionPrompt()
			local coreGui = resolveCoreGui()
			if not coreGui then
				return nil, nil, nil, nil
			end

			local roots = {}
			pcall(function()
				for _, name in ipairs({
					"ErrorPrompt",
					"RobloxKickScreen",
					"PromptOverlay",
					"promptOverlay",
					"ErrorFrame",
				}) do
					local found = coreGui:FindFirstChild(name, true)
					if found then
						table.insert(roots, found)
					end
				end
			end)

			for _, root in ipairs(roots) do
				if isVisible(root) then
					local promptText = collectPromptText(root)
					local matched = containsConnectionError(promptText)
					if matched then
						local retryButton, buttonText = findRetryButton(root)
						return root, promptText, retryButton, buttonText
					end
				end
			end

			-- Fallback untuk layout CoreGui yang nama frame-nya berubah.
			local descendants = {}
			pcall(function()
				descendants = coreGui:GetDescendants()
			end)
			for _, object in ipairs(descendants) do
				if
					(
						object:IsA("TextLabel")
						or object:IsA("TextButton")
						or object:IsA("TextBox")
					)
					and isVisible(object)
				then
					local text = readObjectText(object)
					local matched = containsConnectionError(text)
					if matched then
						local current = object
						while current and current.Parent ~= coreGui do
							current = current.Parent
						end
						local root = current or object
						local retryButton, buttonText = findRetryButton(root)
						return root, text, retryButton, buttonText
					end
				end
			end
			return nil, nil, nil, nil
		end

		local function pressGuiButton(button)
			if not button or not isVisible(button) then
				return false
			end

			local attempted = false
			local position = button.AbsolutePosition
			local size = button.AbsoluteSize
			local centerX = position.X + size.X / 2
			local centerY = position.Y + size.Y / 2

			pcall(function()
				GuiService.SelectedObject = button
			end)
			pcall(function()
				button:Activate()
				attempted = true
			end)

			if firesignal then
				pcall(function()
					firesignal(button.Activated)
					firesignal(button.MouseButton1Down)
					firesignal(button.MouseButton1Up)
					firesignal(button.MouseButton1Click)
					attempted = true
				end)
			end

			if getconnections then
				pcall(function()
					for _, signal in ipairs({ button.Activated, button.MouseButton1Click }) do
						for _, connection in ipairs(getconnections(signal)) do
							if connection and type(connection.Fire) == "function" then
								connection:Fire()
								attempted = true
							end
						end
					end
				end)
			end

			if VirtualInputManager then
				pcall(function()
					VirtualInputManager:SendMouseMoveEvent(centerX, centerY, game)
					VirtualInputManager:SendMouseButtonEvent(centerX, centerY, 0, true, game, 0)
					task.wait(0.08)
					VirtualInputManager:SendMouseButtonEvent(centerX, centerY, 0, false, game, 0)
					VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
					task.wait(0.05)
					VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
					attempted = true
				end)
			end

			if VirtualUser then
				pcall(function()
					local point = Vector2.new(centerX, centerY)
					local cameraCFrame = Workspace.CurrentCamera and Workspace.CurrentCamera.CFrame or CFrame.new()
					VirtualUser:Button1Down(point, cameraCFrame)
					task.wait(0.08)
					VirtualUser:Button1Up(point, cameraCFrame)
					attempted = true
				end)
			end
			return attempted
		end

		local function clearErrorPrompt()
			pcall(function()
				GuiService:ClearError()
			end)
		end

		-- Worker server baru. Dipakai setelah tombol Retry tidak berhasil atau
		-- ketika disconnect tidak menyediakan tombol Retry.
		local function startFreshServerWorker(reason)
			if state.FreshServerWorkerRunning or not state.Alive then
				return
			end

			state.Rejoining = true
			state.FreshServerWorkerRunning = true
			state.NextAttemptAt = os.clock() + TELEPORT_DELAY_SECONDS
			warn("[AUTO REJOIN] pindah ke server lain:", reason or "unknown")

			task.spawn(function()
				local searchesWithoutTarget = 0
				while state.Alive and game.JobId == state.JobId do
					if os.clock() >= state.NextAttemptAt then
						if not state.TargetServer then
							local target, searchMessage = getNextUnvisitedPublicServer(
								state.ServerSearch,
								PlaceId,
								state.JobId
							)
							if target then
								target.Attempts = 0
								state.TargetServer = target
								state.LastSearchMessage = nil
								searchesWithoutTarget = 0
								print("[AUTO REJOIN] target server baru:", target.JobId)
							else
								searchesWithoutTarget += 1
								if searchMessage ~= state.LastSearchMessage then
									state.LastSearchMessage = searchMessage
									warn("[AUTO REJOIN] pencarian server:", searchMessage)
								end
							end
						end

						local target = state.TargetServer
						if target then
							state.Attempts += 1
							target.Attempts += 1
							state.NextAttemptAt = os.clock() + TELEPORT_DELAY_SECONDS
							clearErrorPrompt()
							print("[AUTO REJOIN] percobaan teleport", state.Attempts)

							local ok, teleportError = pcall(function()
								TeleportService:TeleportToPlaceInstance(
									target.PlaceId,
									target.JobId,
									LocalPlayer
								)
							end)
							if not ok then
								warn("[AUTO REJOIN] teleport gagal:", teleportError)
								state.TargetServer = nil
								state.NextAttemptAt = os.clock() + TELEPORT_DELAY_SECONDS
							elseif target.Attempts >= 2 then
								-- Teleport tidak error tetapi JobId tidak berpindah. Jangan terus
								-- mengulang server yang sama karena ini sering berakhir dengan 279.
								warn("[AUTO REJOIN] target tidak merespons; mencoba server berikutnya")
								state.TargetServer = nil
								state.NextAttemptAt = os.clock() + TELEPORT_DELAY_SECONDS
							end
						elseif searchesWithoutTarget >= 4 then
							-- Fallback terakhir ketika daftar server publik sedang gagal dibaca.
							searchesWithoutTarget = 0
							state.NextAttemptAt = os.clock() + 8
							clearErrorPrompt()
							pcall(function()
								TeleportService:Teleport(PlaceId, LocalPlayer)
							end)
						else
							state.NextAttemptAt = os.clock() + 3
						end
					end
					task.wait(0.2)
				end
				state.FreshServerWorkerRunning = false
			end)
		end

		-- Khusus Error 279/Connection Failed: tekan Retry maksimal dua kali.
		-- Jika masih gagal, jangan menekan Retry selamanya; pilih server lain.
		local function recoverConnectionPrompt(reason)
			if state.PromptRecoveryRunning or not state.Alive then
				return
			end

			state.PromptRecoveryRunning = true
			state.Rejoining = true
			warn("[AUTO REJOIN] connection prompt:", reason or "unknown")

			task.spawn(function()
				for attempt = 1, 2 do
					if not state.Alive or game.JobId ~= state.JobId then
						state.PromptRecoveryRunning = false
						return
					end

					local prompt, promptText, retryButton, buttonText = findConnectionPrompt()
					if not prompt then
						-- Prompt bisa muncul beberapa frame setelah log/ErrorMessageChanged.
						task.wait(1)
						prompt, promptText, retryButton, buttonText = findConnectionPrompt()
					end

					if retryButton then
						state.ButtonAttempts += 1
						local pressed = pressGuiButton(retryButton)
						print(
							"[AUTO REJOIN] tombol",
							tostring(buttonText or "Retry"),
							pressed and "ditekan" or "gagal ditekan",
							"(" .. tostring(attempt) .. "/2)"
						)
					else
						warn(
							"[AUTO REJOIN] tombol Retry tidak ditemukan:",
							tostring(promptText or ""):sub(1, 160)
						)
					end

					-- Beri waktu cukup pada Retry untuk memulai koneksi baru.
					task.wait(7)
					if game.JobId ~= state.JobId then
						state.PromptRecoveryRunning = false
						return
					end

					local remainingPrompt = findConnectionPrompt()
					if not remainingPrompt then
						-- Prompt menghilang biasanya berarti Retry sedang masuk server.
						-- Tunggu sebentar; bila DataModel tetap tidak berpindah, gunakan
						-- server baru agar tidak macet pada loading hitam.
						task.wait(8)
						if game.JobId ~= state.JobId or not state.Alive then
							state.PromptRecoveryRunning = false
							return
						end
						local promptAfterWait = findConnectionPrompt()
						if not promptAfterWait then
							-- Retry sudah diterima. Script lama akan hilang saat server baru
							-- selesai dimuat; jangan memulai dua teleport bersamaan.
							state.PromptRecoveryRunning = false
							return
						end
					end
				end

				state.PromptRecoveryRunning = false
				startFreshServerWorker("Retry gagal mengatasi Error 279")
			end)
		end

		local function handleConnectionSignal(reason)
			local prompt = findConnectionPrompt()
			if prompt then
				recoverConnectionPrompt(reason)
			else
				-- Kick/disconnect tertentu tidak membuat prompt yang dapat diklik.
				startFreshServerWorker(reason)
			end
		end

		local function watchErrorPrompt(prompt, newlyAdded)
			if state.WatchedPrompts[prompt] then
				return
			end
			state.WatchedPrompts[prompt] = true

			if prompt:IsA("GuiObject") then
				trackConnection(prompt:GetPropertyChangedSignal("Visible"):Connect(function()
					if state.Alive and isVisible(prompt) then
						local promptText = collectPromptText(prompt)
						local matched = containsConnectionError(promptText)
						if matched then
							recoverConnectionPrompt("ErrorPrompt terlihat")
						end
					end
				end))
			end

			task.defer(function()
				if state.Alive and prompt.Parent and (newlyAdded or isVisible(prompt)) then
					local promptText = collectPromptText(prompt)
					local matched = containsConnectionError(promptText)
					if matched then
						recoverConnectionPrompt("ErrorPrompt terdeteksi")
					end
				end
			end)
		end

		-- Listener langsung pada promptOverlay.
		task.spawn(function()
			local coreGui
			for _ = 1, 30 do
				if not state.Alive then
					return
				end
				coreGui = resolveCoreGui()
				if coreGui then
					break
				end
				task.wait(1)
			end

			if not coreGui then
				warn("[AUTO REJOIN] CoreGui tidak bisa diakses; memakai GuiService/polling")
				return
			end

			local promptGui
			pcall(function()
				promptGui = coreGui:FindFirstChild("RobloxPromptGui")
					or coreGui:WaitForChild("RobloxPromptGui", 30)
			end)
			if not promptGui or not state.Alive then
				warn("[AUTO REJOIN] RobloxPromptGui tidak ditemukan; memakai polling")
				return
			end

			local promptOverlay = promptGui:FindFirstChild("promptOverlay")
				or promptGui:WaitForChild("promptOverlay", 30)
			if not promptOverlay or not state.Alive then
				warn("[AUTO REJOIN] promptOverlay tidak ditemukan; memakai polling")
				return
			end

			trackConnection(promptOverlay.DescendantAdded:Connect(function(descendant)
				if descendant.Name == "ErrorPrompt" or descendant:IsA("GuiButton") then
					watchErrorPrompt(descendant, true)
				end
			end))

			local existingPrompt = promptOverlay:FindFirstChild("ErrorPrompt", true)
			if existingPrompt then
				watchErrorPrompt(existingPrompt, false)
			end
			print("[AUTO REJOIN] prompt watcher ready")
		end)

		-- Polling menutup race ketika ErrorPrompt sudah ada sebelum listener aktif.
		task.spawn(function()
			while state.Alive and game.JobId == state.JobId do
				local prompt, promptText = findConnectionPrompt()
				if prompt then
					recoverConnectionPrompt(
						"polling: " .. tostring(promptText or ""):sub(1, 120)
					)
				end
				task.wait(0.5)
			end
		end)

		-- ErrorMessageChanged menangkap 279 meskipun layout CoreGui berubah.
		pcall(function()
			trackConnection(GuiService.ErrorMessageChanged:Connect(function()
				task.defer(function()
					local message = ""
					pcall(function()
						message = GuiService:GetErrorMessage()
					end)
					local matched, lower = containsConnectionError(message)
					if matched then
						task.wait(0.2)
						handleConnectionSignal("GuiService: " .. lower:sub(1, 140))
					end
				end)
			end))
		end)

		-- Deteksi dari log Roblox, termasuk Error Code 279.
		pcall(function()
			trackConnection(LogService.MessageOut:Connect(function(message)
				local matched, lower = containsConnectionError(message)
				if matched then
					task.defer(function()
						task.wait(0.2)
						handleConnectionSignal("log: " .. lower:sub(1, 140))
					end)
				end
			end))
		end)

		trackConnection(LocalPlayer.AncestryChanged:Connect(function(_, parent)
			if not parent then
				startFreshServerWorker("LocalPlayer dikeluarkan")
			end
		end))

		trackConnection(PlayersService.PlayerRemoving:Connect(function(player)
			if player == LocalPlayer then
				startFreshServerWorker("PlayerRemoving")
			end
		end))

		-- Kegagalan teleport asynchronous: buang target lama dan pilih JobId lain.
		trackConnection(TeleportService.TeleportInitFailed:Connect(function(player, teleportResult, errorMessage)
			if player ~= LocalPlayer then
				return
			end

			warn(
				"[AUTO REJOIN] TeleportInitFailed:",
				tostring(teleportResult),
				tostring(errorMessage or "")
			)
			state.TargetServer = nil
			state.Rejoining = true
			if teleportResult == Enum.TeleportResult.Flooded then
				state.NextAttemptAt = os.clock() + 15
			else
				state.NextAttemptAt = os.clock() + TELEPORT_DELAY_SECONDS
			end
			startFreshServerWorker("TeleportInitFailed")
		end))

		print("[AUTO REJOIN 267/277/279] loaded v" .. AUTO_REJOIN_VERSION)
	end
end

--// RUN SCAN AFTER AUTO REJOIN IS LOADED
local scanCompleted = scanAllBooth()
local autoRejoinState = globalEnvironment.__UNDERAP_AUTO_REJOIN_STATE
if not scanCompleted then
	warn("[UNDERAP] scan gagal/belum siap; server hop dibatalkan agar listing tidak terlewat")
elseif autoRejoinState and autoRejoinState.Rejoining then
	print("[UNDERAP] server hop normal dilewati karena auto-rejoin sedang aktif")
else
	if globalEnvironment.__UNDERAP_SERVER_HOP_RUNNING then
		warn("[UNDERAP] server hop sudah aktif; eksekusi duplikat dilewati")
	else
		local bootstrap = Config.TeleportBootstrap or {}
		local restartQueued, queueReason = queueScannerForTeleport()
		if bootstrap.RequireQueuedRestart ~= false and not restartQueued then
			warn("[UNDERAP] server hop dibatalkan:", queueReason)
			warn("[UNDERAP] isi TeleportBootstrap.SourceUrl atau simpan file di TeleportBootstrap.ScriptPath")
		else
			globalEnvironment.__UNDERAP_SERVER_HOP_RUNNING = true
			local hopOk, hopResult = pcall(TeleportNewPlaza, nil)
			globalEnvironment.__UNDERAP_SERVER_HOP_RUNNING = nil
			if not hopOk then
				warn("[UNDERAP] server hop berhenti karena error:", hopResult)
			end
		end
	end
end
