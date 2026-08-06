export type ConnectResponse = {
    status: "OK";
    serverVersion: string;
    gdkMinimumVersion: number;
    gdkLatestVersion: number;
}

export type VerifyResponse = {
    success: boolean;
    companyName: number;
    mapName: string;
}

export type Bus = {
    id: string;
    number: string;
    year: number;
    make: string;
    model: string;
    fuelType: string;
    engine: string;
    transmission: string;
    mileage: number;
    engineHours: number;
    inService: boolean;
    spare: boolean;
    assignedDriverRobloxId: number?;
    busImageId: number?;
    note: string?;
    modelAssetId: number?;
    cosmetics: {string};
    lot: {
        name: string;
    }?;
}

export type SpawnerCategory = {
    name: string;
    type: "FREE" | "GAMEPASS" | "GROUP_RANK" | "ROBLOX_PLUS";
    purchasableAssetId: number?;
    order: number;

    buses: {Bus};
}

export type SpawnerConfiguration = {
    title: string;
    logoImageId: number;

    groupSettingsEnabled: boolean;
    groupId: number;
    minimumSpawnRank: number;
    minimumAdminRank: number;

    cosmeticsGamepassId: number?;

    teleportToBus: boolean;
    teleportType: "IN_SEAT" | "NEAR_BUS";
    despawnOnLeave: boolean;
    spawnType: "BASIC" | "ADVANCED";
    useInsertService: boolean;

    hasPrime: boolean;

    categories: {SpawnerCategory};
}

export type BusStatusResponse = {
    inService: boolean;
    assignedDriverRobloxId: number?;
}

return nil;