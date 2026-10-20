###### Class com.fyber.inneractive.sdk.renderers.l (com.fyber.inneractive.sdk.renderers.l)
.class public Lcom/fyber/inneractive/sdk/renderers/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/web/i$k;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/renderers/k;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/renderers/k;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;Lcom/fyber/inneractive/sdk/web/b$a;)Lcom/fyber/inneractive/sdk/util/x$a;
    .registers 8

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "%sweb view callback: onClicked"

    invoke-static {v0, p3}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p3, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-object p3, p3, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    invoke-interface {p3}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->getLayout()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    :cond_3c
    if-eqz p3, :cond_70

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/flow/r;->g:Z

    if-eqz v1, :cond_70

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/flow/r;->b:Lcom/fyber/inneractive/sdk/flow/q;

    if-nez v1, :cond_4a

    const/4 v1, 0x0

    goto :goto_50

    :cond_4a
    check-cast v1, Lcom/fyber/inneractive/sdk/flow/b0;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/flow/q;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v1, Lcom/fyber/inneractive/sdk/response/f;

    :goto_50
    if-eqz v1, :cond_55

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/flow/r;->a(Lcom/fyber/inneractive/sdk/response/e;)V

    :cond_55
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    sget-object v1, Lcom/fyber/inneractive/sdk/cache/session/enums/a;->CLICK:Lcom/fyber/inneractive/sdk/cache/session/enums/a;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/renderers/k;->G:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    sget-object v3, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->REWARDED:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne v2, v3, :cond_62

    sget-object v2, Lcom/fyber/inneractive/sdk/cache/session/enums/b;->REWARDED_DISPLAY:Lcom/fyber/inneractive/sdk/cache/session/enums/b;

    goto :goto_64

    :cond_62
    sget-object v2, Lcom/fyber/inneractive/sdk/cache/session/enums/b;->INTERSTITIAL_DISPLAY:Lcom/fyber/inneractive/sdk/cache/session/enums/b;

    :goto_64
    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/flow/r;->a(Lcom/fyber/inneractive/sdk/cache/session/enums/a;Lcom/fyber/inneractive/sdk/cache/session/enums/b;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    sget-object v1, Lcom/fyber/inneractive/sdk/util/e;->DISPLAY:Lcom/fyber/inneractive/sdk/util/e;

    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/fyber/inneractive/sdk/flow/r;->a(Landroid/content/Context;Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;Lcom/fyber/inneractive/sdk/util/e;)Lcom/fyber/inneractive/sdk/util/x$a;

    move-result-object p1

    return-object p1

    :cond_70
    new-instance p1, Lcom/fyber/inneractive/sdk/util/x$a;

    sget-object p2, Lcom/fyber/inneractive/sdk/util/x$d;->FAILED:Lcom/fyber/inneractive/sdk/util/x$d;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No context or no native click detected"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_80

    const-string p3, "null"

    goto :goto_88

    :cond_80
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    :goto_88
    invoke-direct {p1, p2, v0, p3}, Lcom/fyber/inneractive/sdk/util/x$a;-><init>(Lcom/fyber/inneractive/sdk/util/x$d;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object p1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/flow/r;->I()V

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$AdDisplayError;)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/flow/z;->e(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/flow/r;->c:Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$EventsListener;

    if-eqz v1, :cond_13

    check-cast v1, Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenAdEventsListener;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/r;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    invoke-interface {v1, v0, p1}, Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenAdEventsListener;->onAdEnteredErrorState(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$AdDisplayError;)V

    :cond_13
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/web/i;)V
    .registers 5

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%sweb view callback: onExpand"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/renderers/k;->b(Lcom/fyber/inneractive/sdk/renderers/k;Z)Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/renderers/k;->S()V

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/web/i;Lcom/fyber/inneractive/sdk/mraid/b0;)V
    .registers 5

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "%sweb view callback: onClose"

    invoke-static {v0, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-boolean v0, p2, Lcom/fyber/inneractive/sdk/renderers/k;->D:Z

    if-ne v0, p1, :cond_23

    invoke-static {p2, v1}, Lcom/fyber/inneractive/sdk/renderers/k;->b(Lcom/fyber/inneractive/sdk/renderers/k;Z)Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/renderers/k;->S()V

    goto :goto_35

    :cond_23
    iget-object v0, p2, Lcom/fyber/inneractive/sdk/renderers/k;->G:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    sget-object v1, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->REWARDED:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne v0, v1, :cond_2c

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/renderers/k;->R()V

    :cond_2c
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    if-eqz p2, :cond_35

    invoke-interface {p2, p1}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->dismissAd(Z)V

    :cond_35
    :goto_35
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/web/i;Z)V
    .registers 3

    if-eqz p2, :cond_3b

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-boolean p2, p1, Lcom/fyber/inneractive/sdk/flow/z;->t:Z

    if-nez p2, :cond_19

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/renderers/k;->d(Lcom/fyber/inneractive/sdk/renderers/k;Z)Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    if-eqz p2, :cond_19

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->isCloseButtonDisplay()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/flow/z;->d(Z)V

    :cond_19
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/flow/z;->Q()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->isCloseButtonDisplay()Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/fyber/inneractive/sdk/flow/z;->q:Z

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    if-eqz p2, :cond_36

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->disableCloseButton()V

    :cond_36
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/flow/z;->v:Lcom/fyber/inneractive/sdk/util/a;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/util/a;->a()V

    :cond_3b
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/web/i;ZLcom/fyber/inneractive/sdk/config/enums/Orientation;)V
    .registers 4

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    if-eqz p1, :cond_9

    invoke-interface {p1, p2, p3}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->setActivityOrientation(ZLcom/fyber/inneractive/sdk/config/enums/Orientation;)V

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%sweb view callback: onSuspiciousNoUserWebActionDetected"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    if-eqz v1, :cond_5c

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-boolean v2, v1, Lcom/fyber/inneractive/sdk/renderers/k;->E:Z

    if-nez v2, :cond_4f

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/flow/r;->b:Lcom/fyber/inneractive/sdk/flow/q;

    invoke-static {v1, p1, p2, v2}, Lcom/fyber/inneractive/sdk/network/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/flow/q;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/renderers/k;->c(Lcom/fyber/inneractive/sdk/renderers/k;Z)Z

    new-array p1, v0, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "%sreporting auto redirect"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5c

    :cond_4f
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "%sredirect already reported for this ad"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public a(Z)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_65

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-boolean v3, v2, Lcom/fyber/inneractive/sdk/renderers/k;->y:Z

    if-nez v3, :cond_65

    iput-boolean v1, v2, Lcom/fyber/inneractive/sdk/renderers/k;->y:Z

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/flow/r;->b:Lcom/fyber/inneractive/sdk/flow/q;

    if-nez v3, :cond_11

    goto :goto_65

    :cond_11
    iget-object v3, v2, Lcom/fyber/inneractive/sdk/renderers/k;->z:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/web/c0;->n()V

    :cond_18
    iget-object v3, v2, Lcom/fyber/inneractive/sdk/flow/r;->b:Lcom/fyber/inneractive/sdk/flow/q;

    check-cast v3, Lcom/fyber/inneractive/sdk/flow/b0;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/flow/q;->b:Lcom/fyber/inneractive/sdk/response/e;

    if-eqz v3, :cond_3e

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/response/e;->k:Ljava/lang/String;

    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3e

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    sget v4, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "AD_IMPRESSION"

    invoke-static {v1, v5, v6, v4}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/network/j0;->b(Ljava/lang/String;)V

    :cond_3e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_4f

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/renderers/k;->z:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v3, :cond_4f

    const-string v4, "var forceReflow = function(elem){ elem = elem || document.documentElement; elem.style.zIndex = 2147483646; var width = elem.style.width, px = elem.offsetWidth+1; elem.style.width = px+\'px\'; setTimeout(function(){ elem.style.zIndex = 2147483646; elem.style.width = width; elem = null; }, 0); }; forceReflow(document.documentElement);"

    invoke-virtual {v3, v4}, Lcom/fyber/inneractive/sdk/web/g;->a(Ljava/lang/String;)V

    :cond_4f
    sget-object v3, Lcom/fyber/inneractive/sdk/cache/session/enums/a;->IMPRESSION:Lcom/fyber/inneractive/sdk/cache/session/enums/a;

    iget-object v4, v2, Lcom/fyber/inneractive/sdk/renderers/k;->G:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    sget-object v5, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->REWARDED:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne v4, v5, :cond_5a

    sget-object v4, Lcom/fyber/inneractive/sdk/cache/session/enums/b;->REWARDED_DISPLAY:Lcom/fyber/inneractive/sdk/cache/session/enums/b;

    goto :goto_5c

    :cond_5a
    sget-object v4, Lcom/fyber/inneractive/sdk/cache/session/enums/b;->INTERSTITIAL_DISPLAY:Lcom/fyber/inneractive/sdk/cache/session/enums/b;

    :goto_5c
    invoke-virtual {v2, v3, v4}, Lcom/fyber/inneractive/sdk/flow/r;->a(Lcom/fyber/inneractive/sdk/cache/session/enums/a;Lcom/fyber/inneractive/sdk/cache/session/enums/b;)V

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/flow/r;->E()V

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/flow/z;->K()V

    :cond_65
    :goto_65
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "%sweb view callback: onVisibilityChanged: %s"

    invoke-static {p1, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/z;->l:Lcom/fyber/inneractive/sdk/interfaces/c$a;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/interfaces/c$a;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/activities/InneractiveRichMediaVideoPlayerActivityCore;->startRichMediaIntent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/flow/z;->D()V

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :cond_25
    :goto_25
    return p1
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    new-instance v1, Lcom/fyber/inneractive/sdk/external/WebViewRendererProcessHasGoneError;

    invoke-direct {v1}, Lcom/fyber/inneractive/sdk/external/WebViewRendererProcessHasGoneError;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/flow/r;->a(Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$AdDisplayError;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/renderers/k;->destroy()V

    return-void
.end method

.method public b(Lcom/fyber/inneractive/sdk/web/i;)V
    .registers 4

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "%sweb view callback: onResize"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/l;->a:Lcom/fyber/inneractive/sdk/renderers/k;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/flow/z;->D()V

    return-void
.end method
