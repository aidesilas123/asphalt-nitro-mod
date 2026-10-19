###### Class com.kidoz.sdk.api.general.database.ConfigurationTable (com.kidoz.sdk.api.general.database.ConfigurationTable)
.class public Lcom/kidoz/sdk/api/general/database/ConfigurationTable;
.super Lcom/kidoz/sdk/api/general/database/BaseTable;
.source "ConfigurationTable.java"


# static fields
.field private static final COLUMN_PROPERTY_KEY:Ljava/lang/String; = "COLUMN_PROPERTY_KEY"

.field private static final COLUMN_PROPERTY_VALUE:Ljava/lang/String; = "COLUMN_PROPERTY_VALUE"

.field public static final TABLE_NAME:Ljava/lang/String; = "PropertiesTable"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/general/database/DatabaseManager;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/general/database/BaseTable;-><init>(Lcom/kidoz/sdk/api/general/database/DatabaseManager;Ljava/lang/Object;)V

    const-class p1, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-class v0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    monitor-enter v0

    if-eqz p0, :cond_e

    :try_start_5
    const-string v1, "CREATE TABLE PropertiesTable(COLUMN_PROPERTY_KEY TEXT PRIMARY KEY ,COLUMN_PROPERTY_VALUE TEXT)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_e
    :goto_e
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 3

    const-class p1, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    monitor-enter p1

    monitor-exit p1

    return-void
.end method


# virtual methods
.method public declared-synchronized deleteProperties()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    if-eqz v0, :cond_a

    const-string v0, "PropertiesTable"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/general/database/BaseTable;->clearTable(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteProperty(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_41

    if-eqz p1, :cond_3b

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "COLUMN_PROPERTY_KEY=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v1

    const-string p1, "PropertiesTable"

    invoke-virtual {v2, p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_2d
    .catchall {:try_start_7 .. :try_end_1a} :catchall_26

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    :try_start_1f
    iget-object v2, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v2, v1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move v1, p1

    goto :goto_32

    :catchall_26
    move-exception p1

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v2, v1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    throw p1

    :catch_2d
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {p1, v1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    :goto_32
    sget-object p1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->DELETE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v2, "deleteProperty"

    const-string v3, "PropertiesTable"

    invoke-static {p1, v2, v3, v1}, Lcom/kidoz/sdk/api/general/database/BaseTable;->printDBLog(Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw p1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertAppProperties(Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_29

    :try_start_1a
    new-instance v1, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;-><init>(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->start()Ljava/lang/Object;

    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    :try_start_26
    throw p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_29

    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertAppPropertiesAsync(Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$2;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$2;-><init>(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertProperties(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    if-eqz v0, :cond_92

    if-eqz p2, :cond_92

    if-eqz p1, :cond_92

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_94

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_e
    iget-object v3, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_49

    :try_start_15
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "COLUMN_PROPERTY_KEY"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "COLUMN_PROPERTY_VALUE"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PropertiesTable"

    const/4 p2, 0x5

    invoke-virtual {v3, p1, v1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_46

    :try_start_37
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_40
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    :goto_42
    invoke-virtual {p1, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_8f

    goto :goto_72

    :catchall_46
    move-exception p1

    move-object v1, v3

    goto :goto_4a

    :catchall_49
    move-exception p1

    :goto_4a
    :try_start_4a
    iget-object p2, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when trying to insert properties : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_7d

    if-eqz v1, :cond_6f

    :try_start_66
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_6f

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_6f
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    goto :goto_42

    :goto_72
    sget-object p1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->INSERT:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string p2, "insertProperties"

    const-string v1, "PropertiesTable"

    invoke-static {p1, p2, v1, v2}, Lcom/kidoz/sdk/api/general/database/BaseTable;->printDBLog(Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit v0

    goto :goto_92

    :catchall_7d
    move-exception p1

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p2

    if-eqz p2, :cond_89

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_89
    iget-object p2, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {p2, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    throw p1

    :catchall_8f
    move-exception p1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_66 .. :try_end_91} :catchall_8f

    :try_start_91
    throw p1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_94

    :cond_92
    :goto_92
    monitor-exit p0

    return-void

    :catchall_94
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadAppProperties()Lcom/kidoz/sdk/api/general/utils/PropertiesObj;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    if-eqz v1, :cond_1a

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_1c

    :try_start_9
    new-instance v1, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;-><init>(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;)V

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->start()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    monitor-exit v0

    move-object v0, v1

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    :try_start_19
    throw v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1c

    :cond_1a
    :goto_1a
    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadProperties(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 15

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    if-eqz v1, :cond_7f

    if-eqz p1, :cond_7f

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_81

    const/4 v2, 0x0

    :try_start_c
    iget-object v3, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v8, "COLUMN_PROPERTY_KEY=?"

    new-array v9, v4, [Ljava/lang/String;

    aput-object p1, v9, v2

    const-string v6, "PropertiesTable"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_45

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_45

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "COLUMN_PROPERTY_VALUE"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_4d
    .catchall {:try_start_c .. :try_end_3d} :catchall_4b

    :try_start_3d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_42
    .catchall {:try_start_3d .. :try_end_40} :catchall_4b

    move-object v0, v3

    goto :goto_45

    :catch_42
    move-exception p1

    move-object v0, v3

    goto :goto_4e

    :cond_45
    :goto_45
    :try_start_45
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    :goto_47
    invoke-virtual {p1, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_7c

    goto :goto_6b

    :catchall_4b
    move-exception p1

    goto :goto_76

    :catch_4d
    move-exception p1

    :goto_4e
    :try_start_4e
    iget-object v3, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when trying to load properties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_4e .. :try_end_68} :catchall_4b

    :try_start_68
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    goto :goto_47

    :goto_6b
    sget-object p1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->LOAD:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v3, "loadProperties"

    const-string v4, "PropertiesTable"

    invoke-static {p1, v3, v4, v2}, Lcom/kidoz/sdk/api/general/database/BaseTable;->printDBLog(Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit v1

    goto :goto_7f

    :goto_76
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v0, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    throw p1

    :catchall_7c
    move-exception p1

    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_68 .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw p1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_81

    :cond_7f
    :goto_7f
    monitor-exit p0

    return-object v0

    :catchall_81
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.kidoz.sdk.api.general.database.ConfigurationTable.AnonymousClass1 (com.kidoz.sdk.api.general.database.ConfigurationTable$1)
.class Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;
.super Lcom/kidoz/sdk/api/anr_handler/ANRBuster;
.source "ConfigurationTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->insertAppProperties(Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kidoz/sdk/api/anr_handler/ANRBuster<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

.field final synthetic val$propertiesObj:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->val$propertiesObj:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;-><init>()V

    return-void
.end method


# virtual methods
.method public onANRDetected()V
    .registers 1

    return-void
.end method

.method public bridge synthetic onStart(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->onStart(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onStart(Ljava/lang/Void;)Ljava/lang/Void;
    .registers 11

    const-string p1, "PropertiesTable"

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v2, v2, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_57

    :try_start_d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iget-object v4, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->val$propertiesObj:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-virtual {v4}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getProperties()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_55

    const/4 v6, 0x0

    :cond_20
    :goto_20
    :try_start_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "COLUMN_PROPERTY_KEY"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "COLUMN_PROPERTY_VALUE"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    invoke-virtual {v2, p1, v0, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v7

    long-to-int v8, v7

    const/4 v7, -0x1

    if-eq v8, v7, :cond_20

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_46
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4c
    .catchall {:try_start_20 .. :try_end_4c} :catchall_53

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_83

    goto :goto_80

    :catchall_53
    move-exception v3

    goto :goto_5a

    :catchall_55
    move-exception v3

    goto :goto_59

    :catchall_57
    move-exception v3

    move-object v2, v0

    :goto_59
    const/4 v6, 0x0

    :goto_5a
    :try_start_5a
    iget-object v4, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    invoke-static {v4}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->access$000(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when trying to insert app properties : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_5a .. :try_end_78} :catchall_92

    if-eqz v2, :cond_83

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_83

    :goto_80
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_83
    iget-object v2, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v2, v2, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v2, v1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->INSERT:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v2, "insertAppProperties"

    invoke-static {v1, v2, p1, v6}, Lcom/kidoz/sdk/api/general/database/BaseTable;->printDBLog(Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :catchall_92
    move-exception p1

    if-eqz v2, :cond_9e

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_9e
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v0, v0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    throw p1
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method

###### Class com.kidoz.sdk.api.general.database.ConfigurationTable.AnonymousClass2 (com.kidoz.sdk.api.general.database.ConfigurationTable$2)
.class Lcom/kidoz/sdk/api/general/database/ConfigurationTable$2;
.super Ljava/lang/Object;
.source "ConfigurationTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->insertAppPropertiesAsync(Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

.field final synthetic val$propertiesObj:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$2;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$2;->val$propertiesObj:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$2;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$2;->val$propertiesObj:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->insertAppProperties(Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.general.database.ConfigurationTable.AnonymousClass3 (com.kidoz.sdk.api.general.database.ConfigurationTable$3)
.class Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;
.super Lcom/kidoz/sdk/api/anr_handler/ANRBuster;
.source "ConfigurationTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->loadAppProperties()Lcom/kidoz/sdk/api/general/utils/PropertiesObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kidoz/sdk/api/anr_handler/ANRBuster<",
        "Ljava/lang/Void;",
        "Lcom/kidoz/sdk/api/general/utils/PropertiesObj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;-><init>()V

    return-void
.end method


# virtual methods
.method public onANRDetected()V
    .registers 1

    return-void
.end method

.method public onStart(Ljava/lang/Void;)Lcom/kidoz/sdk/api/general/utils/PropertiesObj;
    .registers 13

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v1, v1, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "PropertiesTable"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4d

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_27
    const-string v3, "COLUMN_PROPERTY_KEY"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "COLUMN_PROPERTY_VALUE"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    new-instance v1, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-direct {v1, v2}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;-><init>(Lorg/json/JSONObject;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_57
    .catchall {:try_start_2 .. :try_end_4c} :catchall_55

    move-object v0, v1

    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v1, v1, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_77

    :catchall_55
    move-exception v0

    goto :goto_81

    :catch_57
    move-exception v1

    :try_start_58
    iget-object v2, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->access$000(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when trying to load app properties: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_58 .. :try_end_76} :catchall_55

    goto :goto_4d

    :goto_77
    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->LOAD:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v2, "loadAppProperties"

    const-string v3, "PropertiesTable"

    invoke-static {v1, v2, v3, p1}, Lcom/kidoz/sdk/api/general/database/BaseTable;->printDBLog(Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :goto_81
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v1, v1, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    throw v0
.end method

.method public bridge synthetic onStart(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;->onStart(Ljava/lang/Void;)Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    move-result-object p1

    return-object p1
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method
