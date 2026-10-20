###### Class com.bytedance.sdk.openadsdk.component.h.c (com.bytedance.sdk.openadsdk.component.h.c)
.class public Lcom/bytedance/sdk/openadsdk/component/h/c;
.super Ljava/lang/Object;
.source "TTAppOpenVideoManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/b/a$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/FrameLayout;

.field private c:Lcom/bytedance/sdk/openadsdk/core/model/q;

.field private d:Lcom/bytedance/sdk/openadsdk/component/h/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/c;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->a(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/c;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/c;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->b(J)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->g()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/h/b;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;)V

    :cond_2f
    return-void
.end method

.method public a(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/model/q;)V
    .registers 5

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->b:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/h/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/h/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/q;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$a;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a(Lcom/bykv/vk/openvk/component/video/api/d/c$a;)V

    :cond_7
    return-void
.end method

.method public a()Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_10

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_10
    :try_start_10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/g/a;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    const-string v0, ""

    :goto_17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/q;)Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->l()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->l()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->l()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->l()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public d()V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/c;->b()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a()V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_32

    :catchall_c
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "open_ad"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppOpenVideoManager onPause throw Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "TTAppOpenVideoManager"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    :goto_32
    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b()V

    :cond_7
    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    return-void
.end method

.method public g()J
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->e()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoProgress()J
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/c;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()J
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->f()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public i()J
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->h()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/h/c;->d:Lcom/bytedance/sdk/openadsdk/component/h/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->f()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_10
    const-wide/16 v0, 0x0

    return-wide v0
.end method
