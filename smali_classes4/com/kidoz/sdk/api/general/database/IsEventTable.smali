###### Class com.kidoz.sdk.api.general.database.IsEventTable (com.kidoz.sdk.api.general.database.IsEventTable)
.class public Lcom/kidoz/sdk/api/general/database/IsEventTable;
.super Lcom/kidoz/sdk/api/general/database/BaseTable;
.source "IsEventTable.java"


# static fields
.field private static final COLUMN_APP_ID:Ljava/lang/String; = "COLUMN_APP_ID"

.field private static final COLUMN_PARAMS:Ljava/lang/String; = "COLUMN_PARAMS"

.field private static final TABLE_NAME:Ljava/lang/String; = "InstallEventTable"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/general/database/DatabaseManager;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/general/database/BaseTable;-><init>(Lcom/kidoz/sdk/api/general/database/DatabaseManager;Ljava/lang/Object;)V

    const-class p1, Lcom/kidoz/sdk/api/general/database/IsEventTable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/database/IsEventTable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-class v0, Lcom/kidoz/sdk/api/general/database/IsEventTable;

    monitor-enter v0

    if-eqz p0, :cond_e

    :try_start_5
    const-string v1, "CREATE TABLE InstallEventTable(COLUMN_APP_ID TEXT PRIMARY KEY,COLUMN_PARAMS TEXT)"

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

    const-class p1, Lcom/kidoz/sdk/api/general/database/IsEventTable;

    monitor-enter p1

    monitor-exit p1

    return-void
.end method


# virtual methods
.method public declared-synchronized deleteRecord(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_80

    if-nez p1, :cond_12

    :try_start_a
    const-string p1, "InstallEventTable"

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/database/BaseTable;->clearTable(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_6f

    :catchall_10
    move-exception p1

    goto :goto_7c

    :cond_12
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_14
    iget-object v3, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "COLUMN_APP_ID=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v2

    const-string p1, "InstallEventTable"

    invoke-virtual {v1, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2a} :catch_42
    .catchall {:try_start_14 .. :try_end_2a} :catchall_40

    const/4 v3, -0x1

    if-eq p1, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_35} :catch_3e
    .catchall {:try_start_2f .. :try_end_35} :catchall_40

    :try_start_35
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    :goto_3a
    invoke-virtual {v1, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_10

    goto :goto_66

    :catch_3e
    move-exception v3

    goto :goto_44

    :catchall_40
    move-exception p1

    goto :goto_71

    :catch_42
    move-exception v3

    const/4 p1, 0x0

    :goto_44
    :try_start_44
    iget-object v4, p0, Lcom/kidoz/sdk/api/general/database/IsEventTable;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to delete sdk record: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_44 .. :try_end_5e} :catchall_40

    if-eqz v1, :cond_63

    :try_start_60
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_63
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    goto :goto_3a

    :goto_66
    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->DELETE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v2, "Delete Install App SDK record"

    const-string v3, "InstallEventTable"

    invoke-static {v1, v2, v3, p1}, Lcom/kidoz/sdk/api/general/database/BaseTable;->printDBLog(Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_6f
    monitor-exit v0

    goto :goto_7e

    :goto_71
    if-eqz v1, :cond_76

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_76
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v1, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    throw p1

    :goto_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_60 .. :try_end_7d} :catchall_10

    :try_start_7d
    throw p1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_80

    :cond_7e
    :goto_7e
    monitor-exit p0

    return-void

    :catchall_80
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRecord(Ljava/lang/String;)Lcom/kidoz/sdk/api/structure/IsEventRecord;
    .registers 15

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_8e

    const/4 v2, 0x0

    :try_start_a
    iget-object v3, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-eqz p1, :cond_1c

    const-string v3, "COLUMN_APP_ID=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v2

    move-object v8, v3

    move-object v9, v4

    goto :goto_1e

    :cond_1c
    move-object v8, v1

    move-object v9, v8

    :goto_1e
    const-string v6, "InstallEventTable"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_48

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_48

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_34} :catch_59
    .catchall {:try_start_a .. :try_end_34} :catchall_57

    :try_start_34
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v4, Lcom/kidoz/sdk/api/structure/IsEventRecord;

    const-string v5, "COLUMN_PARAMS"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/kidoz/sdk/api/structure/IsEventRecord;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    :goto_49
    if-eqz p1, :cond_51

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4e} :catch_4f
    .catchall {:try_start_34 .. :try_end_4e} :catchall_57

    goto :goto_51

    :catch_4f
    move-exception p1

    goto :goto_5b

    :cond_51
    :goto_51
    :try_start_51
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    :goto_53
    invoke-virtual {p1, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_89

    goto :goto_78

    :catchall_57
    move-exception p1

    goto :goto_83

    :catch_59
    move-exception p1

    const/4 v3, 0x0

    :goto_5b
    :try_start_5b
    iget-object v4, p0, Lcom/kidoz/sdk/api/general/database/IsEventTable;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to load install record: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5b .. :try_end_75} :catchall_57

    :try_start_75
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    goto :goto_53

    :goto_78
    sget-object p1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->LOAD:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v2, "load sdk record"

    const-string v4, "InstallEventTable"

    invoke-static {p1, v2, v4, v3}, Lcom/kidoz/sdk/api/general/database/BaseTable;->printDBLog(Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit v0

    goto :goto_8c

    :goto_83
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v1, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    throw p1

    :catchall_89
    move-exception p1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_75 .. :try_end_8b} :catchall_89

    :try_start_8b
    throw p1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8e

    :cond_8c
    :goto_8c
    monitor-exit p0

    return-object v1

    :catchall_8e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertRecord(Lcom/kidoz/sdk/api/structure/IsEventRecord;)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
