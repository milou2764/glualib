---@meta
achievements = {}
--- Adds one to the count of balloons burst. Once this count reaches 1000, the 'Popper' achievement is unlocked.
function achievements.BalloonPopped(  ) end
--- Returns the amount of achievements in Garry's Mod.
---@return number
function achievements.Count(  ) end
--- Adds one to the count of balls eaten. Once this count reaches 200, the 'Ball Eater' achievement is unlocked.
function achievements.EatBall(  ) end
--- Retrieves progress of given achievement
---@param achievementID number The ID of achievement to retrieve progress of. Note: IDs start from 0, not 1. 
function achievements.GetCount( achievementID ) end
--- Retrieves description of given achievement
---@param achievementID number The ID of achievement to retrieve description of. Note: IDs start from 0, not 1. 
---@return string
function achievements.GetDesc( achievementID ) end
--- Retrieves progress goal of given achievement
---@param achievementID number The ID of achievement to retrieve goal of. Note: IDs start from 0, not 1. 
---@return number
function achievements.GetGoal( achievementID ) end
--- Retrieves name of given achievement
---@param achievementID number The ID of achievement to retrieve name of. Note: IDs start from 0, not 1. 
---@return string
function achievements.GetName( achievementID ) end
--- Adds one to the count of baddies killed. Once this count reaches 1000, the 'War Zone' achievement is unlocked.
function achievements.IncBaddies(  ) end
--- Adds one to the count of innocent animals killed. Once this count reaches 1000, the 'Innocent Bystander' achievement is unlocked.
function achievements.IncBystander(  ) end
--- Adds one to the count of friendly NPCs killed. Once this count reaches 1000, the 'Bad Friend' achievement is unlocked.
function achievements.IncGoodies(  ) end
--- Used in GMod 12 in the achievements menu to show the user if they have unlocked certain achievements.
---@param AchievementID number Internal Achievement ID number 
---@return boolean
function achievements.IsAchieved( AchievementID ) end
--- Adds one to the count of things removed. Once this count reaches 5000, the 'Destroyer' achievement is unlocked.
function achievements.Remover(  ) end
--- Adds one to the count of NPCs spawned. Once this count reaches 1000, the 'Procreator' achievement is unlocked.
function achievements.SpawnedNPC(  ) end
--- Adds one to the count of props spawned. Once this count reaches 5000, the 'Creator' achievement is unlocked.
function achievements.SpawnedProp(  ) end
--- Adds one to the count of ragdolls spawned. Once this count reaches 2000, the 'Dollhouse' achievement is unlocked.
function achievements.SpawnedRagdoll(  ) end
--- Adds one to the count of how many times the spawnmenu has been opened. Once this count reaches 100,000, the 'Menu User' achievement is unlocked.
function achievements.SpawnMenuOpen(  ) end
