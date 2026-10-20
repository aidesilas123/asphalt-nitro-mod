###### Class com.fyber.inneractive.sdk.flow.g0 (com.fyber.inneractive.sdk.flow.g0)
.class public abstract Lcom/fyber/inneractive/sdk/flow/g0;
.super Lcom/fyber/inneractive/sdk/flow/x;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/external/VideoContentListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/flow/x<",
        "Lcom/fyber/inneractive/sdk/external/VideoContentListener;",
        ">;",
        "Lcom/fyber/inneractive/sdk/external/VideoContentListener;"
    }
.end annotation


# instance fields
.field public isOverlayOutside:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/flow/x;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/flow/g0;->isOverlayOutside:Z

    return-void
.end method


# virtual methods
.method public isOverlayOutside()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/flow/g0;->isOverlayOutside:Z

    return v0
.end method

.method public onCompleted()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/x;->mEventsListener:Lcom/fyber/inneractive/sdk/external/InneractiveContentController$EventsListener;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/fyber/inneractive/sdk/external/VideoContentListener;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/external/VideoContentListener;->onCompleted()V

    :cond_9
    return-void
.end method

.method public onPlayerError()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/x;->mEventsListener:Lcom/fyber/inneractive/sdk/external/InneractiveContentController$EventsListener;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/fyber/inneractive/sdk/external/VideoContentListener;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/external/VideoContentListener;->onPlayerError()V

    :cond_9
    return-void
.end method

.method public onProgress(II)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/x;->mEventsListener:Lcom/fyber/inneractive/sdk/external/InneractiveContentController$EventsListener;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/fyber/inneractive/sdk/external/VideoContentListener;

    invoke-interface {v0, p1, p2}, Lcom/fyber/inneractive/sdk/external/VideoContentListener;->onProgress(II)V

    :cond_9
    return-void
.end method

.method public setOverlayOutside(Z)Lcom/fyber/inneractive/sdk/flow/g0;
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/flow/g0;->isOverlayOutside:Z

    return-object p0
.end method
