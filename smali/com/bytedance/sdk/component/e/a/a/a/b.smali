###### Class com.bytedance.sdk.component.e.a.a.a.b (com.bytedance.sdk.component.e.a.a.a.b)
.class Lcom/bytedance/sdk/component/e/a/a/a/b;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/e/a/a/a/b$a;,
        Lcom/bytedance/sdk/component/e/a/a/a/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/component/e/a/a/a/b$b;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b;->a:Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    if-nez p1, :cond_14

    new-instance p1, Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;-><init>(Lcom/bytedance/sdk/component/e/a/a/a/b;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b;->a:Lcom/bytedance/sdk/component/e/a/a/a/b$b;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_14

    :catchall_14
    :cond_14
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/e/a/a/a/b$b;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b;->a:Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    return-object v0
.end method

###### Class com.bytedance.sdk.component.e.a.a.a.b.AnonymousClass1 (com.bytedance.sdk.component.e.a.a.a.b$1)
.class synthetic Lcom/bytedance/sdk/component/e/a/a/a/b$1;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/e/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.bytedance.sdk.component.e.a.a.a.b.a (com.bytedance.sdk.component.e.a.a.a.b$a)
.class Lcom/bytedance/sdk/component/e/a/a/a/b$a;
.super Landroid/database/AbstractCursor;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/e/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/e/a/a/a/b;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/e/a/a/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$a;->a:Lcom/bytedance/sdk/component/e/a/a/a/b;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/e/a/a/a/b;Lcom/bytedance/sdk/component/e/a/a/a/b$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/e/a/a/a/b$a;-><init>(Lcom/bytedance/sdk/component/e/a/a/a/b;)V

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDouble(I)D
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getInt(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getLong(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public isNull(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

###### Class com.bytedance.sdk.component.e.a.a.a.b.C0116b (com.bytedance.sdk.component.e.a.a.a.b$b)
.class public Lcom/bytedance/sdk/component/e/a/a/a/b$b;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/e/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/e/a/a/a/b;

.field private volatile b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/e/a/a/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a:Lcom/bytedance/sdk/component/e/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private a()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_49

    :cond_c
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_3f

    :try_start_d
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_19
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->d()Lcom/bytedance/sdk/component/e/a/a/e;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/a/a/e;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    const-string v0, "---------------DB CREATE  SUCCESS------------"

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    :cond_3a
    monitor-exit p0

    goto :goto_49

    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b()Z

    move-result v1

    if-nez v1, :cond_4a

    :cond_49
    :goto_49
    return-void

    :cond_4a
    throw v0
.end method

.method private b()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_16

    :catch_a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b()Z

    move-result p3

    if-nez p3, :cond_17

    const/4 p1, 0x0

    :goto_16
    return p1

    :cond_17
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_16

    :catch_a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b()Z

    move-result p3

    if-nez p3, :cond_17

    const/4 p1, 0x0

    :goto_16
    return p1

    :cond_17
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_17

    :catch_a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p2, -0x1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b()Z

    move-result v0

    if-nez v0, :cond_18

    move-wide p1, p2

    :goto_17
    return-wide p1

    :cond_18
    throw p1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_24

    :catchall_11
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Lcom/bytedance/sdk/component/e/a/a/a/b$a;

    iget-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a:Lcom/bytedance/sdk/component/e/a/a/a/b;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lcom/bytedance/sdk/component/e/a/a/a/b$a;-><init>(Lcom/bytedance/sdk/component/e/a/a/a/b;Lcom/bytedance/sdk/component/e/a/a/a/b$1;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b()Z

    move-result p3

    if-nez p3, :cond_25

    move-object p1, p2

    :goto_24
    return-object p1

    :cond_25
    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_10

    :catchall_9
    move-exception p1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b()Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/a/d/a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9d

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/e/a/d/a;

    if-nez v3, :cond_20

    goto/16 :goto_99

    :cond_20
    invoke-interface {v3}, Lcom/bytedance/sdk/component/e/a/d/a;->g()Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_27

    goto :goto_99

    :cond_27
    const-string v5, "id"

    invoke-interface {v3}, Lcom/bytedance/sdk/component/e/a/d/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/e/a/i;->p()Lcom/bytedance/sdk/component/e/a/f;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/bytedance/sdk/component/e/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_96

    const-string v5, "value"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "retry"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "encrypt"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/c/a;->d()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v3}, Lcom/bytedance/sdk/component/e/a/d/a;->j()I

    move-result v4

    if-lez v4, :cond_91

    invoke-interface {v3}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v3}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_91

    :cond_84
    const-string v4, "channel"

    invoke-interface {v3}, Lcom/bytedance/sdk/component/e/a/d/a;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_91
    iget-object v3, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_96
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    :goto_99
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    :cond_9d
    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const-string p2, "DBHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " insert list size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/e/a/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_bf} :catch_cb
    .catchall {:try_start_1 .. :try_end_bf} :catchall_c9

    :try_start_bf
    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_f9

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    :goto_c5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c8
    .catchall {:try_start_bf .. :try_end_c8} :catchall_106

    goto :goto_f9

    :catchall_c9
    move-exception p1

    goto :goto_fc

    :catch_cb
    move-exception p2

    :try_start_cc
    const-string v0, "DBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " insert list error="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/e/a/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b()Z

    move-result p1
    :try_end_f0
    .catchall {:try_start_cc .. :try_end_f0} :catchall_c9

    if-nez p1, :cond_fb

    :try_start_f2
    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_f9

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_f8
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_106

    goto :goto_c5

    :cond_f9
    :goto_f9
    monitor-exit p0

    return-void

    :cond_fb
    :try_start_fb
    throw p2
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_c9

    :goto_fc
    :try_start_fc
    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_105

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_105
    throw p1
    :try_end_106
    .catchall {:try_start_fc .. :try_end_106} :catchall_106

    :catchall_106
    move-exception p1

    monitor-exit p0

    throw p1
.end method
