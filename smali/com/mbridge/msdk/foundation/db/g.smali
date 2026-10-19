###### Class com.mbridge.msdk.foundation.db.g (com.mbridge.msdk.foundation.db.g)
.class public abstract Lcom/mbridge/msdk/foundation/db/g;
.super Ljava/lang/Object;
.source "CommonAbsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/db/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/foundation/db/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/foundation/db/g$a;

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/db/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/db/g;->d()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/mbridge/msdk/foundation/db/g$a;-><init>(Lcom/mbridge/msdk/foundation/db/g;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/db/g;->a:Lcom/mbridge/msdk/foundation/db/g$a;

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/db/g;->a:Lcom/mbridge/msdk/foundation/db/g$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public final declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/db/g;->a:Lcom/mbridge/msdk/foundation/db/g$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_b
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return-object v0
.end method

.method protected abstract b(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()I
.end method

###### Class com.mbridge.msdk.foundation.db.g.a (com.mbridge.msdk.foundation.db.g$a)
.class final Lcom/mbridge/msdk/foundation/db/g$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CommonAbsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/db/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/db/g;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/foundation/db/g;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/db/g$a;->a:Lcom/mbridge/msdk/foundation/db/g;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sget-boolean p1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p1, :cond_28

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6570\u636e\u5e93\uff1a name :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DatabaseOpenHelper"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "DatabaseOpenHelper"

    const-string v1, "\u6570\u636e\u5e93\u521b\u5efa\u4e86"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/db/g$a;->a:Lcom/mbridge/msdk/foundation/db/g;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/db/g$a;->a:Lcom/mbridge/msdk/foundation/db/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/foundation/db/g;->b(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "DatabaseOpenHelper"

    const-string v1, "\u6570\u636e\u5e93\u5347\u7ea7\u4e86"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1f

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/db/g$a;->a:Lcom/mbridge/msdk/foundation/db/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_1f

    :catch_1f
    :cond_1f
    :goto_1f
    return-void
.end method
