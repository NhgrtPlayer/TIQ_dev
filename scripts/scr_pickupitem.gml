// argument0 should be the item to pickup

for (i = 0; i < global.maxItems; i += 1)
{
    if (global.inventory[i] == -1) // If this slot is empty...
    {
        global.inventory[i] = argument0; // ...add item to inventory
        return (1);
    }
}

return (0);
