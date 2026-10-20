###### Class com.fyber.inneractive.sdk.external.InneractiveAdViewUnitController (com.fyber.inneractive.sdk.external.InneractiveAdViewUnitController)
.class public Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;
.super Lcom/fyber/inneractive/sdk/flow/e0;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/flow/t$c;
.implements Lcom/fyber/inneractive/sdk/activities/InneractiveFullscreenAdActivity$FullScreenRendererProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/flow/e0<",
        "Lcom/fyber/inneractive/sdk/external/InneractiveAdViewEventsListener;",
        ">;",
        "Lcom/fyber/inneractive/sdk/flow/t$c;",
        "Lcom/fyber/inneractive/sdk/activities/InneractiveFullscreenAdActivity$FullScreenRendererProvider;"
    }
.end annotation


# static fields
.field public static final DISABLED_REFRESH_INTERVAL:I = -0x1


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Landroid/view/View;

.field public d:I

.field public mAdContentHeight:I

.field public mAdContentWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/flow/e0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->b:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->mAdContentWidth:I

    iput v1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->mAdContentHeight:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->d:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt p1, v2, :cond_19

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "InneractiveAdViewUnitController: Overriding remote config refresh interval to: %d"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->d:I

    goto :goto_2f

    :cond_19
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "InneractiveAdViewUnitController: Overriding remote config refresh interval - value too low. Setting to default: %d -> %d"

    invoke-static {p1, v3}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v2, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->d:I

    :goto_2f
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;-><init>()V

    if-eqz p1, :cond_8

    const/4 p1, -0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->d:I

    :cond_8
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->b:Z

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;->destroy()V

    goto :goto_e

    :cond_1e
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->c:Landroid/view/View;

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->destroy()V

    return-void
.end method

.method public bindView(Landroid/view/ViewGroup;)V
    .registers 9

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->logPrefix()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v4, "%sPPPP bindView called with parent: %s"

    invoke-static {v4, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->getAdSpot()Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    move-result-object v1

    if-nez v1, :cond_20

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "InneractiveFullscreenUnitController was not attached to an ad spot"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_20
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->logPrefix()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v1, v4, v2

    const-string v5, "%sPPPP bindView spot is %s"

    invoke-static {v5, v4}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;

    instance-of v6, v5, Lcom/fyber/inneractive/sdk/interfaces/b;

    if-eqz v6, :cond_3a

    check-cast v5, Lcom/fyber/inneractive/sdk/interfaces/b;

    invoke-interface {v5, p1}, Lcom/fyber/inneractive/sdk/interfaces/b;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/interfaces/b;->n()V

    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->logPrefix()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    aput-object v5, p1, v2

    const-string v0, "%sPPPP bindAdToRenderer returning an already attached renderer %s"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_65
    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->c:Landroid/view/View;

    sget-object v4, Lcom/fyber/inneractive/sdk/factories/a$b;->a:Lcom/fyber/inneractive/sdk/factories/a;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/factories/a;->a:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fyber/inneractive/sdk/factories/a$a;

    invoke-interface {v5, v1}, Lcom/fyber/inneractive/sdk/factories/a$a;->a(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v5, v1}, Lcom/fyber/inneractive/sdk/factories/a$a;->b(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)Lcom/fyber/inneractive/sdk/interfaces/b;

    move-result-object v4

    goto :goto_87

    :cond_86
    const/4 v4, 0x0

    :goto_87
    iget v5, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->d:I

    if-eqz v5, :cond_8e

    invoke-interface {v4, v5}, Lcom/fyber/inneractive/sdk/interfaces/b;->a(I)V

    :cond_8e
    if-eqz v4, :cond_ae

    invoke-interface {v4, v1}, Lcom/fyber/inneractive/sdk/interfaces/b;->initialize(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->selectContentController()V

    invoke-interface {v4, p1}, Lcom/fyber/inneractive/sdk/interfaces/b;->a(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->logPrefix()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    aput-object v4, p1, v2

    const-string v0, "%sPPPP bindView created renderer %s"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_bb

    :cond_ae
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->logPrefix()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "%sCould not find a renderer for the given spot! Did you add the appropriate module to your project?"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_bb
    return-void
.end method

.method public canRefreshAd()Z
    .registers 4

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->supportsRefresh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;

    invoke-interface {v2}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;->canRefreshAd()Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_20
    const/4 v0, 0x1

    return v0

    :cond_22
    return v1
.end method

.method public destroy()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a()V

    goto :goto_1e

    :cond_14
    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController$a;

    invoke-direct {v1, p0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController$a;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void
.end method

.method public getAdContentHeight()I
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;

    instance-of v2, v1, Lcom/fyber/inneractive/sdk/interfaces/b;

    if-eqz v2, :cond_6

    check-cast v1, Lcom/fyber/inneractive/sdk/interfaces/b;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/interfaces/b;->p()I

    move-result v1

    if-lez v1, :cond_6

    return v1

    :cond_1f
    iget v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->mAdContentHeight:I

    return v0
.end method

.method public getAdContentWidth()I
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;

    instance-of v2, v1, Lcom/fyber/inneractive/sdk/interfaces/b;

    if-eqz v2, :cond_6

    check-cast v1, Lcom/fyber/inneractive/sdk/interfaces/b;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/interfaces/b;->f()I

    move-result v1

    if-lez v1, :cond_6

    return v1

    :cond_1f
    iget v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->mAdContentWidth:I

    return v0
.end method

.method public getFullscreenRenderer()Lcom/fyber/inneractive/sdk/interfaces/c;
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mAdSpot:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    sget-object v1, Lcom/fyber/inneractive/sdk/factories/c$b;->a:Lcom/fyber/inneractive/sdk/factories/c;

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/factories/c;->a(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)Lcom/fyber/inneractive/sdk/interfaces/c;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getSelectedContentController()Lcom/fyber/inneractive/sdk/external/InneractiveContentController;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mSelectedContentController:Lcom/fyber/inneractive/sdk/external/InneractiveContentController;

    return-object v0
.end method

.method public onAdRefreshFailed(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;)V
    .registers 4

    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;

    instance-of v0, p2, Lcom/fyber/inneractive/sdk/interfaces/b;

    if-eqz v0, :cond_b

    check-cast p2, Lcom/fyber/inneractive/sdk/interfaces/b;

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/interfaces/b;->r()V

    :cond_20
    return-void
.end method

.method public onAdRefreshed(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)V
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;

    instance-of v3, v1, Lcom/fyber/inneractive/sdk/interfaces/b;

    if-eqz v3, :cond_b

    check-cast v1, Lcom/fyber/inneractive/sdk/interfaces/b;

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/fyber/inneractive/sdk/interfaces/b;->a(Lcom/fyber/inneractive/sdk/flow/q;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_2a

    :cond_29
    move-object v1, v2

    :goto_2a
    if-eqz v1, :cond_30

    invoke-interface {v1, v2}, Lcom/fyber/inneractive/sdk/interfaces/b;->a(Landroid/view/ViewGroup;)V

    goto :goto_35

    :cond_30
    sget-object v0, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->SDK_INTERNAL_ERROR:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->onAdRefreshFailed(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;)V

    :goto_35
    const/4 v0, 0x0

    :try_start_36
    instance-of v1, p1, Lcom/fyber/inneractive/sdk/flow/t;

    if-eqz v1, :cond_55

    check-cast p1, Lcom/fyber/inneractive/sdk/flow/t;

    sget v1, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    const-string v1, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "AD_REFRESH"

    aput-object v4, v3, v0

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/flow/t;->h:Lcom/fyber/inneractive/sdk/flow/j;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/flow/k;->d:Lcom/fyber/inneractive/sdk/network/k;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/network/k;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v4, v2, v1, v3}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_55} :catch_55

    :catch_55
    :cond_55
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "InneractiveFullscreenUnitController onAdRefreshed called"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public refreshAd()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InneractiveFullscreenUnitController refreshAd called"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mAdSpot:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    if-eqz v0, :cond_1b

    instance-of v1, v0, Lcom/fyber/inneractive/sdk/flow/c0;

    if-eqz v1, :cond_1b

    check-cast v0, Lcom/fyber/inneractive/sdk/flow/c0;

    invoke-interface {v0, p0}, Lcom/fyber/inneractive/sdk/flow/c0;->a(Lcom/fyber/inneractive/sdk/flow/t$c;)V

    :cond_1b
    return-void
.end method

.method public supports(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)Z
    .registers 8

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object v0

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/q;->d:Lcom/fyber/inneractive/sdk/config/b0;

    check-cast v0, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/config/a0;->e:Lcom/fyber/inneractive/sdk/config/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/config/a0;->c:Lcom/fyber/inneractive/sdk/config/t;

    const/4 v3, 0x1

    if-eqz v1, :cond_3d

    sget-object v4, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->BANNER:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    iget-object v5, v1, Lcom/fyber/inneractive/sdk/config/t;->b:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    sget-object v4, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->MRECT:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    iget-object v5, v1, Lcom/fyber/inneractive/sdk/config/t;->b:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_3c

    :cond_28
    sget-object v4, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->INTERSTITIAL:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/t;->b:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    invoke-virtual {v4, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getCurrentProcessedRequest()Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/flow/h0;->getAllowFullscreen()Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :cond_3c
    :goto_3c
    return v3

    :cond_3d
    iget-object p1, v0, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    if-eqz p1, :cond_60

    sget-object v0, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->LANDSCAPE:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/config/c0;->j:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->SQUARE:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/config/c0;->j:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->MRECT:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/c0;->j:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    :cond_5f
    return v3

    :cond_60
    return v2
.end method

.method public supportsRefresh()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public unbindFullscreenRenderer(Lcom/fyber/inneractive/sdk/interfaces/c;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->logPrefix()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "%sremoving full screen ad renderer %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_19
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->b:Z

    if-nez p1, :cond_5b

    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_28
    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;

    instance-of v1, v0, Lcom/fyber/inneractive/sdk/interfaces/b;

    if-eqz v1, :cond_28

    check-cast v0, Lcom/fyber/inneractive/sdk/interfaces/b;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/interfaces/b;->a()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mEventsListener:Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$EventsListener;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mAdSpot:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mEventsListener:Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$EventsListener;

    check-cast v0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewEventsListener;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mAdSpot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewEventsListener;->onAdCollapsed(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)V

    goto :goto_28

    :cond_5b
    return-void
.end method

.method public unbindView(Landroid/view/View;)V
    .registers 9

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->c:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, p1, :cond_1c

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->logPrefix()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->c:Landroid/view/View;

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    const-string v4, "%s unbindView invoked with incorrect view, was - %s received - %s"

    invoke-static {v4, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->c:Landroid/view/View;

    :goto_1f
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->logPrefix()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    aput-object p1, v0, v2

    const-string v4, "%sPPPP unbindView called with %s"

    invoke-static {v4, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->logPrefix()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mAdSpot:Ljava/lang/ref/WeakReference;

    aput-object v4, v0, v2

    const-string v4, "%sPPPP spot is %s"

    invoke-static {v4, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fyber/inneractive/sdk/external/InneractiveAdRenderer;

    instance-of v5, v4, Lcom/fyber/inneractive/sdk/interfaces/b;

    if-eqz v5, :cond_4a

    move-object v5, v4

    check-cast v5, Lcom/fyber/inneractive/sdk/interfaces/b;

    invoke-interface {v5, p1}, Lcom/fyber/inneractive/sdk/interfaces/b;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4a

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->logPrefix()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    aput-object v4, p1, v2

    const-string v0, "%sPPPP unbindView unbinding renderer %s"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/interfaces/b;->u()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;->a:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_7a
    return-void
.end method
