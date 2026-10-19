###### Class com.bytedance.sdk.openadsdk.core.g.f (com.bytedance.sdk.openadsdk.core.g.f)
.class public Lcom/bytedance/sdk/openadsdk/core/g/f;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/bytedance/sdk/openadsdk/core/g/g;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->a:Ljava/util/Set;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/g/f;
    .registers 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/g/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/g/f;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/g/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->f()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/g/f;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/g/f;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/g/f;Landroid/view/View;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(Landroid/view/View;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/g/f;Landroid/webkit/WebView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/g/f;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/g/f;ZF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(ZF)V

    return-void
.end method

.method private b(I)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/g;->b(I)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_7

    :catchall_7
    :cond_7
    return-void
.end method

.method private b(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    if-nez v0, :cond_13

    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    :try_start_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->a:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_13
    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    :cond_1a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_2c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->a:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a(Ljava/util/Set;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_2c

    :catchall_2c
    :cond_2c
    :goto_2c
    return-void
.end method

.method private b(Landroid/view/View;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/g/j;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    if-nez v0, :cond_38

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/h;->a(Landroid/view/View;Ljava/util/Set;)Lcom/bytedance/sdk/openadsdk/core/g/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_38

    :catchall_b
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createVideoSession failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/l;->d(Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "scene"

    const-string v1, "createVideoSession"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "message"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/g/e;->a(Ljava/util/Map;)V

    :cond_38
    :goto_38
    return-void
.end method

.method private b(Landroid/webkit/WebView;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    if-nez v0, :cond_38

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/g/h;->a(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/core/g/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_38

    :catchall_b
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWebViewSession failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/l;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "scene"

    const-string v2, "createWebViewSession"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/e;->a(Ljava/util/Map;)V

    :cond_38
    :goto_38
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/g/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->g()V

    return-void
.end method

.method private b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a(Z)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_7

    :catchall_7
    :cond_7
    return-void
.end method

.method private b(ZF)V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a(ZF)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    :catchall_d
    :cond_d
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/g/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->h()V

    return-void
.end method

.method private e()Landroid/os/Handler;
    .registers 2

    invoke-static {}, Lcom/bytedance/sdk/component/utils/h;->b()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g/g;->b()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    :catchall_d
    :cond_d
    return-void
.end method

.method private g()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g/g;->d()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_7

    :catchall_7
    :cond_7
    return-void
.end method

.method private h()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g/g;->c()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_7

    :catchall_7
    :cond_7
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(I)V

    goto :goto_16

    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/f$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/f;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_16
    return-void
.end method

.method public a(JZ)V
    .registers 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(JZ)V

    goto :goto_16

    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/f$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/g/f$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/f;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_16
    return-void
.end method

.method public a(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    goto :goto_16

    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/f$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/f$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/f;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_16
    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/g/j;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_21

    if-nez p2, :cond_a

    goto :goto_21

    :cond_a
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(Landroid/view/View;Ljava/util/Set;)V

    goto :goto_20

    :cond_14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/f$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/f$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/f;Landroid/view/View;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_20
    return-void

    :cond_21
    :goto_21
    const-string p1, "video view or view ability Vendors is null"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    if-eqz v0, :cond_7

    goto :goto_1d

    :cond_7
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(Landroid/webkit/WebView;)V

    goto :goto_1d

    :cond_11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/f$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/f;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    :goto_1d
    return-void
.end method

.method public a(Z)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(Z)V

    goto :goto_16

    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/f$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/f;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_16
    return-void
.end method

.method public a(ZF)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(ZF)V

    goto :goto_16

    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/f$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/f$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/f;ZF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_16
    return-void
.end method

.method public b()V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->f()V

    goto :goto_16

    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/f$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/g/f$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_16
    return-void
.end method

.method public b(JZ)V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f;->b:Lcom/bytedance/sdk/openadsdk/core/g/g;

    if-eqz v0, :cond_b

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    :try_start_8
    invoke-virtual {v0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a(FZ)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_b

    :catchall_b
    :cond_b
    return-void
.end method

.method public c()V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->g()V

    goto :goto_16

    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/f$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/g/f$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_16
    return-void
.end method

.method public d()V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->h()V

    goto :goto_16

    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/f$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/g/f$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_16
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.g.f.AnonymousClass1 (com.bytedance.sdk.openadsdk.core.g.f$1)
.class Lcom/bytedance/sdk/openadsdk/core/g/f$1;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/g/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/f;Landroid/webkit/WebView;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$1;->b:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$1;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$1;->b:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$1;->a:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Lcom/bytedance/sdk/openadsdk/core/g/f;Landroid/webkit/WebView;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.g.f.AnonymousClass10 (com.bytedance.sdk.openadsdk.core.g.f$10)
.class Lcom/bytedance/sdk/openadsdk/core/g/f$10;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/f;->a(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/g/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/f;JZ)V
    .registers 5

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$10;->c:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$10;->a:J

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$10;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$10;->c:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$10;->a:J

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$10;->b:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(JZ)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.g.f.AnonymousClass2 (com.bytedance.sdk.openadsdk.core.g.f$2)
.class Lcom/bytedance/sdk/openadsdk/core/g/f$2;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/g/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/f;Z)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$2;->b:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$2;->b:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$2;->a:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Lcom/bytedance/sdk/openadsdk/core/g/f;Z)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.g.f.AnonymousClass3 (com.bytedance.sdk.openadsdk.core.g.f$3)
.class Lcom/bytedance/sdk/openadsdk/core/g/f$3;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/f;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/g/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/f;I)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$3;->b:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$3;->b:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$3;->a:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Lcom/bytedance/sdk/openadsdk/core/g/f;I)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.g.f.AnonymousClass4 (com.bytedance.sdk.openadsdk.core.g.f$4)
.class Lcom/bytedance/sdk/openadsdk/core/g/f$4;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Landroid/view/View;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/g/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/f;Landroid/view/View;Ljava/util/Set;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$4;->c:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$4;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$4;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$4;->c:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$4;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$4;->b:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Lcom/bytedance/sdk/openadsdk/core/g/f;Landroid/view/View;Ljava/util/Set;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.g.f.AnonymousClass5 (com.bytedance.sdk.openadsdk.core.g.f$5)
.class Lcom/bytedance/sdk/openadsdk/core/g/f$5;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/g/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/g/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Lcom/bytedance/sdk/openadsdk/core/g/f;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.g.f.AnonymousClass6 (com.bytedance.sdk.openadsdk.core.g.f$6)
.class Lcom/bytedance/sdk/openadsdk/core/g/f$6;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/f;->a(ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:F

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/g/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/f;ZF)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$6;->c:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$6;->a:Z

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$6;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$6;->c:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$6;->a:Z

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$6;->b:F

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Lcom/bytedance/sdk/openadsdk/core/g/f;ZF)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.g.f.AnonymousClass7 (com.bytedance.sdk.openadsdk.core.g.f$7)
.class Lcom/bytedance/sdk/openadsdk/core/g/f$7;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/g/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$7;->a:Lcom/bytedance/sdk/openadsdk/core/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$7;->a:Lcom/bytedance/sdk/openadsdk/core/g/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->b(Lcom/bytedance/sdk/openadsdk/core/g/f;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.g.f.AnonymousClass8 (com.bytedance.sdk.openadsdk.core.g.f$8)
.class Lcom/bytedance/sdk/openadsdk/core/g/f$8;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/f;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/g/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$8;->a:Lcom/bytedance/sdk/openadsdk/core/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$8;->a:Lcom/bytedance/sdk/openadsdk/core/g/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/f;->c(Lcom/bytedance/sdk/openadsdk/core/g/f;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.g.f.AnonymousClass9 (com.bytedance.sdk.openadsdk.core.g.f$9)
.class Lcom/bytedance/sdk/openadsdk/core/g/f$9;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/g/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/f;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$9;->c:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$9;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$9;->b:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$9;->c:Lcom/bytedance/sdk/openadsdk/core/g/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$9;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/f$9;->b:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/g/f;->a(Lcom/bytedance/sdk/openadsdk/core/g/f;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    return-void
.end method
