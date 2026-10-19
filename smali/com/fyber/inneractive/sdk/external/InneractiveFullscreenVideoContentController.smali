###### Class com.fyber.inneractive.sdk.external.InneractiveFullscreenVideoContentController (com.fyber.inneractive.sdk.external.InneractiveFullscreenVideoContentController)
.class public Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenVideoContentController;
.super Lcom/fyber/inneractive/sdk/flow/g0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/flow/g0;-><init>()V

    return-void
.end method


# virtual methods
.method public canControl(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)Z
    .registers 2

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object p1

    instance-of p1, p1, Lcom/fyber/inneractive/sdk/flow/f0;

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public setControlledRenderer(Lcom/fyber/inneractive/sdk/renderers/m;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method
