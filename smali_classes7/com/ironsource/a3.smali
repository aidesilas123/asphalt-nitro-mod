###### Class com.json.a3 (com.ironsource.a3)
.class public Lcom/ironsource/a3;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/i5;


# static fields
.field private static a:Lcom/ironsource/a3;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/ironsource/a3;->b:I

    const/16 p1, 0x190

    iput p1, p0, Lcom/ironsource/a3;->c:I

    const-string p1, "DROP TABLE IF EXISTS events"

    iput-object p1, p0, Lcom/ironsource/a3;->d:Ljava/lang/String;

    const-string p1, "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )"

    iput-object p1, p0, Lcom/ironsource/a3;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/ironsource/a4;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 6

    if-eqz p1, :cond_31

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eventid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/ironsource/a4;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/a4;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ironsource/a3;
    .registers 5

    const-class v0, Lcom/ironsource/a3;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/a3;->a:Lcom/ironsource/a3;

    if-nez v1, :cond_e

    new-instance v1, Lcom/ironsource/a3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/a3;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/a3;->a:Lcom/ironsource/a3;

    :cond_e
    sget-object p0, Lcom/ironsource/a3;->a:Lcom/ironsource/a3;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized b(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    if-eqz p1, :cond_a

    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_10

    monitor-exit p0

    return-object p1

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1d

    mul-int/lit16 v1, v0, 0x190

    int-to-long v1, v1

    :try_start_19
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    :cond_1d
    throw v1
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/a4;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_ab

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_8
    invoke-direct {p0, v1}, Lcom/ironsource/a3;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_72

    :try_start_c
    const-string v6, "type = ?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    aput-object p1, v7, v1

    const-string v10, "timestamp ASC"

    const-string v4, "events"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v11

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_60

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_28
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_5d

    const-string p1, "eventid"

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string v1, "timestamp"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v1, "data"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/ironsource/a4;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, p1, v3, v4, v6}, Lcom/ironsource/a4;-><init>(IJLorg/json/JSONObject;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_28

    :cond_5d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_60
    .catchall {:try_start_c .. :try_end_60} :catchall_70

    :cond_60
    :try_start_60
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_69

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_69
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_ab

    if-eqz p1, :cond_91

    goto :goto_8e

    :catchall_70
    move-exception p1

    goto :goto_74

    :catchall_72
    move-exception p1

    move-object v11, v2

    :goto_74
    :try_start_74
    const-string v1, "IronSource"

    const-string v3, "Exception while loading events: "

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_93

    if-eqz v2, :cond_86

    :try_start_7d
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_86

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_86
    if-eqz v11, :cond_91

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_91

    :goto_8e
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_91
    .catchall {:try_start_7d .. :try_end_91} :catchall_ab

    :cond_91
    monitor-exit p0

    return-object v0

    :catchall_93
    move-exception p1

    if-eqz v2, :cond_9f

    :try_start_96
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9f
    if-eqz v11, :cond_aa

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_aa
    throw p1
    :try_end_ab
    .catchall {:try_start_96 .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/a4;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_60

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5d

    if-eqz v0, :cond_a

    goto :goto_60

    :cond_a
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_c
    invoke-direct {p0, v0}, Lcom/ironsource/a3;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_3a

    :try_start_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/a4;

    invoke-direct {p0, v2, p2}, Lcom/ironsource/a3;->a(Lcom/ironsource/a4;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v0, :cond_14

    if-eqz v2, :cond_14

    const-string v3, "events"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_37

    goto :goto_14

    :cond_2e
    if-eqz v0, :cond_4e

    :try_start_30
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_5d

    if-eqz p1, :cond_4e

    goto :goto_4b

    :catchall_37
    move-exception p1

    move-object v1, v0

    goto :goto_3b

    :catchall_3a
    move-exception p1

    :goto_3b
    :try_start_3b
    const-string p2, "IronSource"

    const-string v0, "Exception while saving events: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_50

    if-eqz v1, :cond_4e

    :try_start_44
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_4e

    move-object v0, v1

    :goto_4b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_5d

    :cond_4e
    monitor-exit p0

    return-void

    :catchall_50
    move-exception p1

    if-eqz v1, :cond_5c

    :try_start_53
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_5c

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5c
    throw p1
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_60
    :goto_60
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "type = ?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_3c

    :try_start_a
    invoke-direct {p0, v2}, Lcom/ironsource/a3;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p1, "events"

    invoke-virtual {v0, p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_1a

    :try_start_13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_3c

    if-eqz p1, :cond_2d

    goto :goto_2a

    :catchall_1a
    move-exception p1

    :try_start_1b
    const-string v1, "IronSource"

    const-string v2, "Exception while clearing events: "

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_2f

    if-eqz v0, :cond_2d

    :try_start_24
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_2d

    :goto_2a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_3c

    :cond_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    if-eqz v0, :cond_3b

    :try_start_32
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3b
    throw p1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p2, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/a3;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
