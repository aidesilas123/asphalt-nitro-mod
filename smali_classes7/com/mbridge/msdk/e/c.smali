###### Class com.mbridge.msdk.e.c (com.mbridge.msdk.e.c)
.class final Lcom/mbridge/msdk/e/c;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# instance fields
.field private final a:Lcom/mbridge/msdk/e/b;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/e/b;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/e/c;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    iput-object p2, p0, Lcom/mbridge/msdk/e/c;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 2

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    invoke-static {p0}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_17

    :catch_b
    move-exception p0

    sget-boolean v0, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v0, :cond_17

    const-string v0, "TrackManager"

    const-string v1, "endTransaction: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return-void
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    invoke-static {p0}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_17

    :catch_b
    move-exception p0

    sget-boolean v0, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v0, :cond_17

    const-string v0, "TrackManager"

    const-string v1, "transactionSuccess: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return-void
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    invoke-static {p0}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_17

    :catch_b
    move-exception p0

    sget-boolean v0, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v0, :cond_17

    const-string v0, "TrackManager"

    const-string v1, "beginTransaction: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 14

    iget-object v0, p0, Lcom/mbridge/msdk/e/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-static {v1}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    monitor-exit v0

    return v2

    :cond_e
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_1c

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_87

    return v2

    :cond_1c
    const/4 v12, 0x0

    :try_start_1d
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v6, "state = ? OR state = ?"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    iget-object v4, p0, Lcom/mbridge/msdk/e/c;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_4f

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_4f
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_52} :catch_5b
    .catchall {:try_start_1d .. :try_end_52} :catchall_59

    :try_start_52
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_55
    invoke-static {v12}, Lcom/mbridge/msdk/e/y;->a(Landroid/database/Cursor;)V
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_87

    goto :goto_7e

    :catchall_59
    move-exception v2

    goto :goto_80

    :catch_5b
    move-exception v3

    :try_start_5c
    sget-boolean v4, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v4, :cond_7a

    const-string v4, "TrackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailableCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_5c .. :try_end_7a} :catchall_59

    :cond_7a
    :try_start_7a
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_55

    :goto_7e
    monitor-exit v0

    return v2

    :goto_80
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v12}, Lcom/mbridge/msdk/e/y;->a(Landroid/database/Cursor;)V

    throw v2

    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_7a .. :try_end_89} :catchall_87

    throw v1
.end method

.method public final a(Lcom/mbridge/msdk/e/i;)J
    .registers 12

    iget-object v0, p0, Lcom/mbridge/msdk/e/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-static {v1}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_f

    monitor-exit v0

    return-wide v2

    :cond_f
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_1d

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_f3

    return-wide v2

    :cond_1d
    :try_start_1d
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v4, Landroid/content/ContentValues;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/i;->c()Lcom/mbridge/msdk/e/e;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5}, Lcom/mbridge/msdk/e/e;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "type"

    invoke-virtual {v5}, Lcom/mbridge/msdk/e/e;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "time_stamp"

    invoke-virtual {v5}, Lcom/mbridge/msdk/e/e;->f()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "properties"

    invoke-virtual {v5}, Lcom/mbridge/msdk/e/e;->d()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "priority"

    invoke-virtual {v5}, Lcom/mbridge/msdk/e/e;->c()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "state"

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/i;->e()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "report_count"

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/i;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "uuid"

    invoke-virtual {v5}, Lcom/mbridge/msdk/e/e;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ignore_max_timeout"

    invoke-virtual {v5}, Lcom/mbridge/msdk/e/e;->j()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_97

    const/4 v7, 0x0

    goto :goto_98

    :cond_97
    const/4 v7, 0x1

    :goto_98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "ignore_max_retry_times"

    invoke-virtual {v5}, Lcom/mbridge/msdk/e/e;->k()Z

    move-result v5

    if-eqz v5, :cond_a8

    goto :goto_a9

    :cond_a8
    const/4 v8, 0x1

    :goto_a9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "invalid_time"

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/i;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/mbridge/msdk/e/c;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_c7} :catch_cd
    .catchall {:try_start_1d .. :try_end_c7} :catchall_cb

    :cond_c7
    :goto_c7
    :try_start_c7
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_f3

    goto :goto_ed

    :catchall_cb
    move-exception p1

    goto :goto_ef

    :catch_cd
    move-exception p1

    :try_start_ce
    sget-boolean v4, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v4, :cond_c7

    const-string v4, "TrackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catchall {:try_start_ce .. :try_end_ec} :catchall_cb

    goto :goto_c7

    :goto_ed
    :try_start_ed
    monitor-exit v0

    return-wide v2

    :goto_ef
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :catchall_f3
    move-exception p1

    monitor-exit v0
    :try_end_f5
    .catchall {:try_start_ed .. :try_end_f5} :catchall_f3

    throw p1
.end method

.method public final a(I)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/e/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/e/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-static {v1}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    monitor-exit v0

    return-object v2

    :cond_e
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_1c

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_8d

    return-object v2

    :cond_1c
    :try_start_1c
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v6, "state = ? OR state = ?"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const-string v10, "priority DESC"

    iget-object v4, p0, Lcom/mbridge/msdk/e/c;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_43} :catch_5d
    .catchall {:try_start_1c .. :try_end_43} :catchall_58

    :try_start_43
    invoke-static {p1}, Lcom/mbridge/msdk/e/y;->b(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_53
    .catchall {:try_start_43 .. :try_end_4a} :catchall_51

    :try_start_4a
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/mbridge/msdk/e/y;->a(Landroid/database/Cursor;)V
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_8d

    goto :goto_84

    :catchall_51
    move-exception v2

    goto :goto_86

    :catch_53
    move-exception v3

    move-object v12, v2

    move-object v2, p1

    move-object p1, v12

    goto :goto_5f

    :catchall_58
    move-exception p1

    move-object v12, v2

    move-object v2, p1

    move-object p1, v12

    goto :goto_86

    :catch_5d
    move-exception v3

    move-object p1, v2

    :goto_5f
    :try_start_5f
    sget-boolean v4, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v4, :cond_7d

    const-string v4, "TrackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_5f .. :try_end_7d} :catchall_58

    :cond_7d
    :try_start_7d
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v2}, Lcom/mbridge/msdk/e/y;->a(Landroid/database/Cursor;)V

    move-object v2, p1

    :goto_84
    monitor-exit v0

    return-object v2

    :goto_86
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/mbridge/msdk/e/y;->a(Landroid/database/Cursor;)V

    throw v2

    :catchall_8d
    move-exception p1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_7d .. :try_end_8f} :catchall_8d

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/e/i;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/e/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-static {v1}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    invoke-static {p1}, Lcom/mbridge/msdk/e/y;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_82

    :cond_12
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_20

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_84

    return-void

    :cond_20
    :try_start_20
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/e/i;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "state"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "uuid = ?"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/mbridge/msdk/e/i;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    iget-object v2, p0, Lcom/mbridge/msdk/e/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_27

    :cond_53
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_56} :catch_5c
    .catchall {:try_start_20 .. :try_end_56} :catchall_5a

    :cond_56
    :goto_56
    :try_start_56
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_84

    goto :goto_7c

    :catchall_5a
    move-exception p1

    goto :goto_7e

    :catch_5c
    move-exception p1

    :try_start_5d
    sget-boolean v2, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v2, :cond_56

    const-string v2, "TrackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReportStateReporting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_5d .. :try_end_7b} :catchall_5a

    goto :goto_56

    :goto_7c
    :try_start_7c
    monitor-exit v0

    return-void

    :goto_7e
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :cond_82
    :goto_82
    monitor-exit v0

    return-void

    :catchall_84
    move-exception p1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_7c .. :try_end_86} :catchall_84

    throw p1
.end method

.method public final b()I
    .registers 9

    iget-object v0, p0, Lcom/mbridge/msdk/e/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-static {v1}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_e

    monitor-exit v0

    return v2

    :cond_e
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_1c

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_67

    return v2

    :cond_1c
    :try_start_1c
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v3, "state = ? OR state = ?"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/mbridge/msdk/e/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3b} :catch_41
    .catchall {:try_start_1c .. :try_end_3b} :catchall_3f

    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_67

    goto :goto_61

    :catchall_3f
    move-exception v2

    goto :goto_63

    :catch_41
    move-exception v3

    :try_start_42
    sget-boolean v4, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v4, :cond_3b

    const-string v4, "TrackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteInvalidEvents: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_3f

    goto :goto_3b

    :goto_61
    :try_start_61
    monitor-exit v0

    return v2

    :goto_63
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_67

    throw v1
.end method

.method public final b(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/e/i;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/e/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-static {v1}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    invoke-static {p1}, Lcom/mbridge/msdk/e/y;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_83

    :cond_12
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_20

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_85

    return-void

    :cond_20
    :try_start_20
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/e/i;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "state"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "uuid = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/mbridge/msdk/e/i;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    iget-object v2, p0, Lcom/mbridge/msdk/e/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_27

    :cond_54
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_57} :catch_5d
    .catchall {:try_start_20 .. :try_end_57} :catchall_5b

    :cond_57
    :goto_57
    :try_start_57
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_85

    goto :goto_7d

    :catchall_5b
    move-exception p1

    goto :goto_7f

    :catch_5d
    move-exception p1

    :try_start_5e
    sget-boolean v2, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v2, :cond_57

    const-string v2, "TrackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReportStateSuccess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_5e .. :try_end_7c} :catchall_5b

    goto :goto_57

    :goto_7d
    :try_start_7d
    monitor-exit v0

    return-void

    :goto_7f
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :cond_83
    :goto_83
    monitor-exit v0

    return-void

    :catchall_85
    move-exception p1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_85

    throw p1
.end method

.method public final c()V
    .registers 8

    iget-object v0, p0, Lcom/mbridge/msdk/e/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-static {v1}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_1b

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_6d

    return-void

    :cond_1b
    :try_start_1b
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "state"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "state = ?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/mbridge/msdk/e/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_41} :catch_47
    .catchall {:try_start_1b .. :try_end_41} :catchall_45

    :cond_41
    :goto_41
    :try_start_41
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_6d

    goto :goto_67

    :catchall_45
    move-exception v2

    goto :goto_69

    :catch_47
    move-exception v2

    :try_start_48
    sget-boolean v3, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v3, :cond_41

    const-string v3, "TrackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateReportStateForReporting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_48 .. :try_end_66} :catchall_45

    goto :goto_41

    :goto_67
    :try_start_67
    monitor-exit v0

    return-void

    :goto_69
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public final c(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/e/i;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/e/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-static {v1}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    invoke-static {p1}, Lcom/mbridge/msdk/e/y;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_94

    :cond_13
    iget-object v1, p0, Lcom/mbridge/msdk/e/c;->a:Lcom/mbridge/msdk/e/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_21

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_96

    return-void

    :cond_21
    :try_start_21
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/e/i;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "state"

    invoke-virtual {v2}, Lcom/mbridge/msdk/e/i;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "report_count"

    invoke-virtual {v2}, Lcom/mbridge/msdk/e/i;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "uuid = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/mbridge/msdk/e/i;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    iget-object v2, p0, Lcom/mbridge/msdk/e/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_28

    :cond_65
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_68} :catch_6e
    .catchall {:try_start_21 .. :try_end_68} :catchall_6c

    :cond_68
    :goto_68
    :try_start_68
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_96

    goto :goto_8e

    :catchall_6c
    move-exception p1

    goto :goto_90

    :catch_6e
    move-exception p1

    :try_start_6f
    sget-boolean v2, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v2, :cond_68

    const-string v2, "TrackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReportStateFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_6f .. :try_end_8d} :catchall_6c

    goto :goto_68

    :goto_8e
    :try_start_8e
    monitor-exit v0

    return-void

    :goto_90
    invoke-static {v1}, Lcom/mbridge/msdk/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :cond_94
    :goto_94
    monitor-exit v0

    return-void

    :catchall_96
    move-exception p1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_8e .. :try_end_98} :catchall_96

    throw p1
.end method
