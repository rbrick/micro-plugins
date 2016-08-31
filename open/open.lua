MakeCommand("open", "open.openCommand", 0)

function openCommand()
    -- Check if modified
    if CurView().Buf.IsModified then
        -- If modified, save the file
        CurView():Save(false)
    end    
    CurView():OpenFile(false) -- Request file open
end