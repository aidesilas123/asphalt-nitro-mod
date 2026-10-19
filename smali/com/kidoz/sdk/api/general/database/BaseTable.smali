###### Class com.kidoz.sdk.api.general.database.BaseTable (com.kidoz.sdk.api.general.database.BaseTable)
.class public Lcom/kidoz/sdk/api/general/database/BaseTable;
.super Ljava/lang/Object;
.source "BaseTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

.field protected final mSyncObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/general/database/DatabaseManager;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/kidoz/sdk/api/general/database/BaseTable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mSyncObject:Ljava/lang/Object;

    return-void
.end method

.method public static printDBLog(Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    sget-boolean v0, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->DGM:Z

    if-eqz v0, :cond_ae

    sget-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$1;->$SwitchMap$com$kidoz$sdk$api$general$database$BaseTable$DBactionType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const-string v1, "DB Table"

    const-string v2, "KD ("

    if-eq p0, v0, :cond_87

    const/4 v0, 0x2

    if-eq p0, v0, :cond_64

    const/4 v0, 0x3

    const-string v3, "] items from "

    if-eq p0, v0, :cond_43

    const/4 v0, 0x4

    if-eq p0, v0, :cond_22

    const-string p0, ""

    goto/16 :goto_a9

    :cond_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") :  Loaded ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a9

    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") :  Deleted ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a9

    :cond_64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") :  Updated ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] items at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a9

    :cond_87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")  : Inserted ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] items into "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_a9
    const-string p1, "Kidoz DataBase Print Log"

    invoke-static {p1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printInfoLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ae
    return-void
.end method


# virtual methods
.method public clearTable(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    sget-object v2, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->DELETE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v4, "clearTable"

    invoke-static {v2, v4, p1, v1}, Lcom/kidoz/sdk/api/general/database/BaseTable;->printDBLog(Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {p1, v3}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw p1

    :cond_2a
    :goto_2a
    return-void
.end method

.method public printTable(Ljava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_a8

    const/4 v2, 0x0

    :try_start_f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_6f

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v5, :cond_3a

    aget-object v7, v4, v6

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\t"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_3a
    const-string v5, "\n"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_6c

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_48
    array-length v5, v4

    const/4 v6, 0x0

    :goto_4a
    if-ge v6, v5, :cond_61

    aget-object v7, v4, v6

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\t"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :cond_61
    const-string v5, "\n"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_48

    :cond_6c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6f
    iget-object v3, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>Print Table = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_94
    .catchall {:try_start_f .. :try_end_94} :catchall_9e

    :try_start_94
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {p1, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit v0

    goto :goto_ab

    :catchall_9e
    move-exception p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v1, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    throw p1

    :catchall_a8
    move-exception p1

    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_94 .. :try_end_aa} :catchall_a8

    throw p1

    :cond_ab
    :goto_ab
    return-void
.end method

###### Class com.kidoz.sdk.api.general.database.BaseTable.AnonymousClass1 (com.kidoz.sdk.api.general.database.BaseTable$1)
.class synthetic Lcom/kidoz/sdk/api/general/database/BaseTable$1;
.super Ljava/lang/Object;
.source "BaseTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/database/BaseTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$general$database$BaseTable$DBactionType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->values()[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$1;->$SwitchMap$com$kidoz$sdk$api$general$database$BaseTable$DBactionType:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->INSERT:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$1;->$SwitchMap$com$kidoz$sdk$api$general$database$BaseTable$DBactionType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->UPDATE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$1;->$SwitchMap$com$kidoz$sdk$api$general$database$BaseTable$DBactionType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->DELETE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$1;->$SwitchMap$com$kidoz$sdk$api$general$database$BaseTable$DBactionType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->LOAD:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class com.kidoz.sdk.api.general.database.BaseTable.DBactionType (com.kidoz.sdk.api.general.database.BaseTable$DBactionType)
.class public final enum Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;
.super Ljava/lang/Enum;
.source "BaseTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/database/BaseTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DBactionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

.field public static final enum DELETE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

.field public static final enum INSERT:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

.field public static final enum LOAD:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

.field public static final enum UPDATE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->INSERT:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->UPDATE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->DELETE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->LOAD:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v1, "INSERT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->INSERT:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    new-instance v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v1, "UPDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->UPDATE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    new-instance v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v1, "DELETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->DELETE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    new-instance v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v1, "LOAD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->LOAD:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->$values()[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->$VALUES:[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->$VALUES:[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    return-object v0
.end method
