AddCSLuaFile()
if CLIENT then
    local convars, convarValues = vrmod.GetConvars()
    hook.Add(
        "VRMod_Menu",
        "addsettingsmelee",
        function(frame)
            local sheet = vgui.Create("DPropertySheet", frame.DPropertySheet)
            frame.DPropertySheet:AddSheet("VRMelee", sheet)
            sheet:Dock(FILL)
            local MenuTabmelee1 = vgui.Create("DPanel", sheet)
            sheet:AddSheet("VRMelee1", MenuTabmelee1, "icon16/briefcase.png")
            MenuTabmelee1.Paint = function(self, w, h) end
            local scrollPanel1 = vgui.Create("DScrollPanel", MenuTabmelee1)
            scrollPanel1:Dock(FILL)
            local form1 = vgui.Create("DForm", scrollPanel1)
            form1:SetName("VRMelee1")
            form1:Dock(TOP)
            form1.Header:SetVisible(false)
            form1.Paint = function(self, w, h) end
            form1:CheckBox("Use Gun Melee", "vrmelee_usegunmelee")
            form1:CheckBox("Use Fist Attacks", "vrmelee_usefist")
            form1:CheckBox("Use Kick Attacks [FBT]", "vrmelee_usekick")
            form1:CheckBox("Fist Collision", "vrmelee_fist_collision")
            form1:CheckBox("Fist Collision Visible", "vrmelee_fist_visible")
            form1:CheckBox("ragdoll wide pickup", "vrmelee_ragdoll_pickup")
            form1:NumSlider("ragdoll pickup range", "vrmelee_ragdollpickup_range", 0, 40, 1)
            local MenuTabmelee2 = vgui.Create("DPanel", sheet)
            sheet:AddSheet("VRMelee2", MenuTabmelee2, "icon16/wand.png")
            MenuTabmelee2.Paint = function(self, w, h) end
            local scrollPanel2 = vgui.Create("DScrollPanel", MenuTabmelee2)
            scrollPanel2:Dock(FILL)
            local form2 = vgui.Create("DForm", scrollPanel2)
            form2:SetName("VRMelee2")
            form2:Dock(TOP)
            form2.Header:SetVisible(false)
            form2.Paint = function(self, w, h) end
            form2:NumSlider("Melee Damage Low", "vrmelee_damage_low", 0, 100, 0)
            form2:NumSlider("Melee Damage Medium", "vrmelee_damage_medium", 0, 100, 0)
            form2:NumSlider("Melee Damage High", "vrmelee_damage_high", 0, 100, 0)
            form2:NumSlider("Melee Velocity Threshold Low", "vrmelee_damage_velocity_low", 0, 5, 5)
            form2:NumSlider("Melee Velocity Threshold Medium", "vrmelee_damage_velocity_medium", 0, 5, 5)
            form2:NumSlider("Melee Velocity Threshold High", "vrmelee_damage_velocity_high", 0, 5, 5)
            form2:NumSlider("Melee Impact Force", "vrmelee_impact", 0, 1, 5)
            form2:NumSlider("Melee Delay", "vrmelee_delay", 0.00000, 0.30, 5)
            form2:NumSlider("Melee Cooldown", "vrmelee_cooldown", 0.00000, 0.30, 5)
            form2:Button("default", "vrmelee_default")
            local MenuTabmelee3 = vgui.Create("DPanel", sheet)
            sheet:AddSheet("VRMelee3", MenuTabmelee3, "icon16/wand.png")
            MenuTabmelee3.Paint = function(self, w, h) end
            local scrollPanel3 = vgui.Create("DScrollPanel", MenuTabmelee3)
            scrollPanel3:Dock(FILL)
            local form3 = vgui.Create("DForm", scrollPanel3)
            form3:SetName("VRMelee3")
            form3:Dock(TOP)
            form3.Header:SetVisible(false)
            form3.Paint = function(self, w, h) end
            form3:TextEntry("Left Hand Melee Command", "vrmelee_lefthand_command")
            form3:TextEntry("Right Hand Melee Command", "vrmelee_righthand_command")
            form3:TextEntry("Left Foot Melee Command", "vrmelee_leftfoot_command")
            form3:TextEntry("Right Foot Melee Command", "vrmelee_rightfoot_command")
            form3:TextEntry("Worldmodel Melee Command", "vrmelee_worldmodel_command")
            form3:TextEntry("Fist Effect Model", "vrmelee_fist_collisionmodel")
            form3:CheckBox("Emulate Blocking", "vrmelee_emulateblocking")
            form3:TextEntry("Emulate Block Button", "vrmelee_emulateblockbutton")
            form3:TextEntry("Emulate Block Release", "vrmelee_emulateblockbutton_release")
            form3:NumSlider("Emulate Block Threshold Low", "vrmelee_emulatebloack_Threshold_Low", 0, 180, 0)
            form3:NumSlider("Emulate Block Threshold High", "vrmelee_emulatebloack_Threshold_High", 0, 180, 0)
        end
    )

    concommand.Add(
        "vrmelee_default",
        function(ply, cmd, args)
            LocalPlayer():ConCommand("vrmelee_gunmelee 1")
            LocalPlayer():ConCommand("vrmelee_fist 1")
            LocalPlayer():ConCommand("vrmelee_kick 1")
            LocalPlayer():ConCommand("vrmelee_damage_low 1")
            LocalPlayer():ConCommand("vrmelee_damage_medium 5")
            LocalPlayer():ConCommand("vrmelee_damage_high 10")
            LocalPlayer():ConCommand("vrmelee_damage_velocity_low 1.1")
            LocalPlayer():ConCommand("vrmelee_damage_velocity_medium 2.3")
            LocalPlayer():ConCommand("vrmelee_damage_velocity_high 3.3")
            LocalPlayer():ConCommand("vrmelee_impact 0.01")
            LocalPlayer():ConCommand("vrmelee_delay 0.01")
            LocalPlayer():ConCommand("vrmelee_usegunmelee 1")
            LocalPlayer():ConCommand("vrmelee_usefist 1")
            LocalPlayer():ConCommand("vrmelee_usekick 0")
            LocalPlayer():ConCommand("vrmelee_fist_collision 0")
            LocalPlayer():ConCommand("vrmelee_fist_visible 0")
            LocalPlayer():ConCommand("vrmelee_fist_collisionmodel models/hunter/plates/plate.mdl")
            LocalPlayer():ConCommand("vrmelee_cooldown 0.01")
            LocalPlayer():ConCommand("vrmelee_emulateblocking 0")
            LocalPlayer():ConCommand("vrmelee_emulateblockbutton +attack2")
            LocalPlayer():ConCommand("vrmelee_emulateblockbutton_release -attack2")
            LocalPlayer():ConCommand("vrmelee_emulatebloack_Threshold_Low 115")
        end
    )
end