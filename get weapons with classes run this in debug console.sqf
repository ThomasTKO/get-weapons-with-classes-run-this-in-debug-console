Go on editor loaded all mods what you need place a unit on editor press play open debug console place 


_allWeapons = [];
{
    _weapon = configName _x;
    _itemInformation = [_weapon] call BIS_fnc_itemType;
    switch (_itemInformation select 0) do
    {
        case ("Weapon"):
        {
            if ((_weapon find "Exile_") > -1) then
            {
                _allMags = getArray(configFile >> "CfgWeapons" >> _weapon >> "magazines");
                _allWeapons pushBack [_weapon, _allMags];
            };
        };
    };
}
forEach ('(getNumber(_x >> ''scope'') isEqualTo 2) && {!(getText(_x >> ''picture'') isEqualTo '''')}' configClasses (configFile >> 'CfgWeapons'));

copyToClipboard str(_allWeapons);



on debug console , Exemple Exile_ can use gm_ , rhs_ , and whatever