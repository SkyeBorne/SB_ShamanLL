local payload = {
    modGuid = "ab03e26b-e176-417c-8d1b-af708433e590",
    TargetUUID = "03b17647-161a-42e1-9660-5ba517e80ad2",
    Definitions = {
        "a49fae7a-d80e-4049-8246-126cc32d1678", "d136c5d9-0ff0-43da-acce-a74a07f8d6bf", "e9127b70-22b7-42a1-b172-d02f828f260a", "77fcde9b-9cda-4fbc-8806-393e26b2f3e1", ...
    }
}

local function AddActionResourceGroup(payload)
    local resourceGroupArr = CLUtils.CacheOrRetrieve(payload.TargetUUID, "ActionResourceGroup").ActionResourceDefinitions
    if resourceGroupArr == nil then
      CLUtils.Error(Strings.ERROR_TARGET_NOT_FOUND)
    end
    resourceGroupArr = CLUtils.MergeTables(resourceGroupArr, payload.Definitions)
  end
  
  function HandleActionResourceGroupAddition(payload)
    if payload ~= nil then
      AddActionResourceGroup(payload)
    else
      CLUtils.Error(CLStrings.ERROR_EMPTY_PAYLOAD)
    end
  end