// Much information taken from https://github.com/MysteryDash/NieR.Automata.Editor

struct InventoryItem {
    u32 itemId;
    u32 itemStatus;
    u32 itemQuantity;
};

struct Weapon {
    u32 weaponId;
    u32 weaponLevel;
    u32 newItem;
    u32 newStory;
    u32 enemiesDefeated;
};

struct AddInChip {
    u32 baseCode;
    u32 baseId;
    u32 type;
    u32 level;
    u32 weight;
    u32 slotA;
    u32 slotB;
    u32 slotC;
    u8 emptyPadding[0x10];
};

u32 inGameTime @ 0x24;
u32 chapter @ 0x2C;
char playerName[0x0C] @ 0x34;
u32 money @ 0x3056C;
u32 experience @ 0x3871C;
InventoryItem inventory[0x100] @ 0x30570;
InventoryItem corpseInventory[0x100] @ 0x31170;
Weapon weapons[0x4F] @ 0x31D70;
AddInChip addInChips[0x12C] @ 0x324BC;