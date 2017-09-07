// argument0 should be the item to drop

for (i = global.maxItems - 1; i >= 0 ; i -= 1)
{
    if (global.inventory[i] == argument0) // If this slot is the item we're looking for...
    {
        global.inventory[i] = -1; // ...drop item from inventory
        return (1);
    }
}

return (0);
