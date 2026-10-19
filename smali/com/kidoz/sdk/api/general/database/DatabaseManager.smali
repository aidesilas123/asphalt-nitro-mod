###### Class com.kidoz.sdk.api.general.database.DatabaseManager (com.kidoz.sdk.api.general.database.DatabaseManager)
.class public Lcom/kidoz/sdk/api/general/database/DatabaseManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseManager.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "KIDOZ_SDK_DATATBASE_1"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mDatabaseManager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;


# instance fields
.field private mConfigurationTable:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsEventTable:Lcom/kidoz/sdk/api/general/database/IsEventTable;

.field private mOpenCounter:I

.field protected final mSyncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "KIDOZ_SDK_DATATBASE_1"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mSyncObject:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->initDatabase()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/general/database/DatabaseManager;
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mDatabaseManager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mDatabaseManager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    :cond_b
    sget-object p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mDatabaseManager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    return-object p0
.end method

.method private initDatabase()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/general/database/IsEventTable;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mSyncObject:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/kidoz/sdk/api/general/database/IsEventTable;-><init>(Lcom/kidoz/sdk/api/general/database/DatabaseManager;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mIsEventTable:Lcom/kidoz/sdk/api/general/database/IsEventTable;

    new-instance v0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mSyncObject:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;-><init>(Lcom/kidoz/sdk/api/general/database/DatabaseManager;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mConfigurationTable:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    return-void
.end method


# virtual methods
.method public getConfigTable()Lcom/kidoz/sdk/api/general/database/ConfigurationTable;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mConfigurationTable:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    return-object v0
.end method

.method public getIsEventTable()Lcom/kidoz/sdk/api/general/database/IsEventTable;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mIsEventTable:Lcom/kidoz/sdk/api/general/database/IsEventTable;

    return-object v0
.end method

.method public declared-synchronized handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p1, :cond_2e

    :try_start_4
    iget p1, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mOpenCounter:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mOpenCounter:I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_60

    if-ne p1, v0, :cond_5c

    :try_start_b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12
    .catchall {:try_start_b .. :try_end_11} :catchall_60

    goto :goto_5c

    :catch_12
    move-exception p1

    :try_start_13
    sget-object v0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to open database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :cond_2e
    iget p1, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mOpenCounter:I

    if-lez p1, :cond_35

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mOpenCounter:I

    :cond_35
    iget p1, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mOpenCounter:I
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_60

    if-nez p1, :cond_5c

    :try_start_39
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_41
    .catchall {:try_start_39 .. :try_end_40} :catchall_60

    goto :goto_5c

    :catch_41
    move-exception p1

    :try_start_42
    sget-object v0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to close database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_60

    monitor-exit p0

    return-object p1

    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/database/IsEventTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/kidoz/sdk/api/general/database/IsEventTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    invoke-static {p1, p2, p3}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
