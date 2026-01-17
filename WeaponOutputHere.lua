Hooks:PostHook( WeaponTweakData, "init", "WeaponOutputHere", function(self)

-------------------------------------------------------- ALL FUNCTION -----------------------------------------------------------------
--self.*internal weapon name*.CLIP_AMMO_MAX =                        *max ammo in clip*
--self.*internal weapon name*.AMMO_MAX =                             *max ammo in inventory*
--self.*internal weapon name*.AMMO_PICKUP = {, }                     *ammo pickup. in brackets the first value is the minimum, the second is the maximum*
--self.*internal weapon name*.CAN_TOGGLE_FIREMODE = true/false       *allows the use of toggle fire mode. set true or false*
--self.*internal weapon name*.stats.damage =                         *damage*                 
--self.*internal weapon name*.stats.spread =                         *spread*
--self.*internal weapon name*.stats.recoil =                         *recoil*
--self.*internal weapon name*.fire_mode_data.fire_rate =             *fire rate. the lower the value, the higher the fire rate. basic for AR ~0.10
--self.*internal weapon name*.stats.concealment =                    *concelement*
--self.*internal weapon name*.timers.reload_not_empty =              *time in seconds to reload not empty clip*
--self.*internal weapon name*.timers.reload_empty =                  *time in seconds to reload empty clip*
--self.*internal weapon name*.timers.equip =                         *time in seconds to equip weapon*
--self.*internal weapon name*.timers.unequip =                       *time in seconds to unequip weapon*
----------------------------------------------------------------------------------------------------------------------------------------
-------------------example on izhma 12g------------------      <------this blank line
self.saiga.AMMO_PICKUP = {6, 12}
self.saiga.stats.damage = 100
self.saiga.stats.spread = 35
self.saiga.stats.recoil = 100
self.saiga.stats.concealment = 30
self.saiga.timers.reload_not_empty = 1
self.saiga.timers.reload_empty = 1.5
---each individual weapon is separated by a blank line---      <------and this     


end )
