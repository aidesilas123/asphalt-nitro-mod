###### Class com.fyber.inneractive.sdk.flow.e0 (com.fyber.inneractive.sdk.flow.e0)
.class public abstract Lcom/fyber/inneractive/sdk/flow/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E",
        "L::Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$EventsListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/external/InneractiveUnitController<",
        "TE",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field public mAdSpot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/fyber/inneractive/sdk/flow/w;",
            ">;"
        }
    .end annotation
.end field

.field public mContentControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/fyber/inneractive/sdk/external/InneractiveContentController;",
            ">;"
        }
    .end annotation
.end field

.field public mEventsListener:Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$EventsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE",
            "L;"
        }
    .end annotation
.end field

.field public mSelectedContentController:Lcom/fyber/inneractive/sdk/external/InneractiveContentController;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mContentControllers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addContentController(Lcom/fyber/inneractive/sdk/external/InneractiveContentController;)V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mContentControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canRefreshAd()Z
    .registers 2

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/e0;->supportsRefresh()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mContentControllers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/external/InneractiveContentController;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/external/InneractiveContentController;->destroy()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mContentControllers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mSelectedContentController:Lcom/fyber/inneractive/sdk/external/InneractiveContentController;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mAdSpot:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public getAdSpot()Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mAdSpot:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/flow/w;

    return-object v0
.end method

.method public getEventsListener()Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$EventsListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE",
            "L;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mEventsListener:Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$EventsListener;

    return-object v0
.end method

.method public getSelectedContentController()Lcom/fyber/inneractive/sdk/external/InneractiveContentController;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mSelectedContentController:Lcom/fyber/inneractive/sdk/external/InneractiveContentController;

    return-object v0
.end method

.method public logPrefix()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public selectContentController()V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mAdSpot:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "selectContentController called, but ad spot is null"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_13
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mContentControllers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fyber/inneractive/sdk/external/InneractiveContentController;

    move-object v3, v2

    check-cast v3, Lcom/fyber/inneractive/sdk/flow/x;

    invoke-virtual {v3, v0}, Lcom/fyber/inneractive/sdk/flow/x;->canControl(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)Z

    move-result v4

    if-eqz v4, :cond_19

    iput-object v2, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mSelectedContentController:Lcom/fyber/inneractive/sdk/external/InneractiveContentController;

    invoke-virtual {v3, v0}, Lcom/fyber/inneractive/sdk/flow/x;->setAdSpot(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)V

    goto :goto_19

    :cond_34
    return-void
.end method

.method public setAdSpot(Lcom/fyber/inneractive/sdk/flow/w;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mAdSpot:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setEventsListener(Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$EventsListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE",
            "L;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/e0;->mEventsListener:Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$EventsListener;

    return-void
.end method

.method public abstract supports(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)Z
.end method

.method public abstract supportsRefresh()Z
.end method
