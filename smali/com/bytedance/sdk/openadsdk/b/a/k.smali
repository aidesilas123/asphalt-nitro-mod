###### Class com.bytedance.sdk.openadsdk.b.a.k (com.bytedance.sdk.openadsdk.b.a.k)
.class public Lcom/bytedance/sdk/openadsdk/b/a/k;
.super Ljava/lang/Object;
.source "OverSeaLogDepend.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/a/f;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[5604]"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/k;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/e/a/d/a;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/c/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)V
    .registers 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/a/a;->f:Lcom/bytedance/sdk/openadsdk/b/a/b;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/a/b;Z)V

    return-void
.end method

.method public a(ZILjava/lang/String;Ljava/lang/String;J)V
    .registers 14

    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/a/a;->c:Lcom/bytedance/sdk/openadsdk/b/a/b;

    invoke-static {v0, p1, p2, p5, p6}, Lcom/bytedance/sdk/openadsdk/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/a/b;ZIJ)V

    new-instance p5, Lcom/bytedance/sdk/openadsdk/b/a/k$1;

    move-object v1, p5

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/b/a/k$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/a/k;ZLjava/lang/String;ILjava/lang/String;)V

    const-string p1, "track_link_result"

    const/4 p2, 0x0

    invoke-static {p1, p2, p5}, Lcom/bytedance/sdk/openadsdk/j/b;->a(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/j/a;)V

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/o;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "[5604]"

    return-object v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/util/concurrent/Executor;
    .registers 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aa;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/concurrent/Executor;
    .registers 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aa;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/bytedance/sdk/component/e/a/e/c;
    .registers 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/a/g;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/a/g;-><init>()V

    return-object v0
.end method

.method public l()Lcom/bytedance/sdk/component/e/a/g;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/e/a/g;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public m()Lcom/bytedance/sdk/component/e/a/h;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()V
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/a/a;->f:Lcom/bytedance/sdk/openadsdk/b/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/a/b;)V

    return-void
.end method

.method public o()Z
    .registers 2

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->a:Z

    return v0
.end method

###### Class com.bytedance.sdk.openadsdk.b.a.k.AnonymousClass1 (com.bytedance.sdk.openadsdk.b.a.k$1)
.class Lcom/bytedance/sdk/openadsdk/b/a/k$1;
.super Ljava/lang/Object;
.source "OverSeaLogDepend.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/j/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/a/k;->a(ZILjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/b/a/k;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/b/a/k;ZLjava/lang/String;ILjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/a/k$1;->e:Lcom/bytedance/sdk/openadsdk/b/a/k;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/b/a/k$1;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/a/k$1;->b:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/b/a/k$1;->c:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/b/a/k$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/j/a/a;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/k$1;->a:Z

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/k$1;->b:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/k$1;->a:Z

    if-nez v1, :cond_25

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/k$1;->c:I

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/k$1;->d:Ljava/lang/String;

    const-string v2, "msg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a/b;->b()Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object v1

    const-string v2, "track_link_result"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/j/a/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object v0

    return-object v0
.end method
