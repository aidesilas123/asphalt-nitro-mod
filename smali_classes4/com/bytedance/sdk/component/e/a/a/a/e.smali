###### Class com.bytedance.sdk.component.e.a.a.a.e (com.bytedance.sdk.component.e.a.a.a.e)
.class public Lcom/bytedance/sdk/component/e/a/a/a/e;
.super Ljava/lang/Object;
.source "MyDBCallback.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/a/a/e;


# static fields
.field public static final a:Lcom/bytedance/sdk/component/e/a/a/a/e;


# instance fields
.field private volatile b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/sdk/component/e/a/a/a/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/e/a/a/a/e;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/e/a/a/a/e;->a:Lcom/bytedance/sdk/component/e/a/a/a/e;

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

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1e

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_19

    new-instance v0, Lcom/bytedance/sdk/component/e/a/a/a/d;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/e/a/a/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "---------------DB CREATE  SUCCESS------------"

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    :cond_19
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw p1

    :cond_1e
    :goto_1e
    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/e;->b:Landroid/database/sqlite/SQLiteDatabase;

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
