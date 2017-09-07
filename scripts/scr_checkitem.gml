// argument0 should be the item to check for

for (i = 0; i < global.maxItems; i += 1)
{
    if (global.inventory[i] == argument0)
        return (1);
}

return (0);
