###### Class com.bytedance.sdk.openadsdk.b.a.h (com.bytedance.sdk.openadsdk.b.a.h)
.class public Lcom/bytedance/sdk/openadsdk/b/a/h;
.super Ljava/lang/Object;
.source "MyDBCallback.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/a/a/e;


# static fields
.field public static final a:Lcom/bytedance/sdk/openadsdk/b/a/h;


# instance fields
.field private volatile b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/a/h;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/a/h;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/b/a/h;->a:Lcom/bytedance/sdk/openadsdk/b/a/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/h;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_21

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/h;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1c

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/f$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f$c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/a/h;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "---------------DB CREATE  SUCCESS------------"

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    :cond_1c
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw p1

    :cond_21
    :goto_21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/a/h;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "loghighpriority"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "adevent"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "logstats"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    const-string v0, "logstatsbatch"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
