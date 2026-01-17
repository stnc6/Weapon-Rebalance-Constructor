local silencers = {wpn_fps_smg_baka_b_longsupp = true, wpn_fps_smg_mp7_b_suppressed = true}
local boosts = {
    wpn_fps_upg_bonus_concealment_p3 = true,
    wpn_fps_upg_bonus_spread_p1 = true,
    wpn_fps_upg_bonus_recoil_p2 = true,
    wpn_fps_upg_bonus_damage_p2 = true,
    wpn_fps_upg_bonus_total_ammo_p3 = true,
    wpn_fps_upg_bonus_team_exp_money_p3 = true
}
local magazines = {wpn_fps_smg_fmg9_m_speed = true, wpn_fps_smg_mac10_m_quick = true}
local grips = {wpn_fps_pis_g26_g_laser = true}
local gadgets = {wpn_fps_upg_fl_ass_smg_sho_surefire = true, wpn_fps_upg_fl_ass_utg = true}
local barrels = {
    wpn_fps_shot_huntsman_b_short = true,
    wpn_fps_smg_thompson_barrel_long = true,
    wpn_fps_smg_p90_b_long = true
}

Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "WeaponFactoryTweaks_CreateBonuses", function(self, tweak_data)
    for _, data in pairs(tweak_data.upgrades.definitions) do
        local factory_id = data.factory_id
        local weapon_id = data.weapon_id
        local parts = factory_id and self[factory_id] and self[factory_id].uses_parts
        local weapon = weapon_id and weapon_id == "breech"

        if weapon_id and tweak_data.weapon[weapon_id] and parts and not table.contains_any(tweak_data.weapon[weapon_id].categories, {"bow", "crossbow"}) then
            table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_slug")
            table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_custom")
            table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_custom_free")
            table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_explosive")
            table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_piercing")
            table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_dragons_breath")
            table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_grenade_launcher_incendiary")
            table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_grenade_launcher_electric")
            table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_grenade_launcher_poison")
            table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_rip")
        end

        for part_id, part_data in pairs(parts and weapon and tweak_data.weapon.factory.parts or {}) do
            if type(part_data) == "table" and (
                silencers[part_id] or boosts[part_id] or magazines[part_id] or grips[part_id] or gadgets[part_id] or barrels[part_id]
            ) then
                table.insert(self[factory_id].uses_parts, part_id)
            end
        end
    end
end)