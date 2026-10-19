###### Class com.fyber.inneractive.sdk.external.InneractiveNativeVideoContentController (com.fyber.inneractive.sdk.external.InneractiveNativeVideoContentController)
.class public Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController;
.super Lcom/fyber/inneractive/sdk/flow/g0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController$Renderer;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController$Renderer;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/flow/q;->isVideoAd()Z

    move-result p1

    return p1
.end method

.method public pauseVideo()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController$Renderer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController$Renderer;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController$Renderer;->pauseVideo()V

    :cond_15
    return-void
.end method

.method public playVideo()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController$Renderer;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController$Renderer;->playVideo()V

    :cond_d
    return-void
.end method

.method public setControlledRenderer(Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController$Renderer;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

###### Class com.fyber.inneractive.sdk.external.InneractiveNativeVideoContentController.Renderer (com.fyber.inneractive.sdk.external.InneractiveNativeVideoContentController$Renderer)
.class public interface abstract Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController$Renderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/external/InneractiveNativeVideoContentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Renderer"
.end annotation


# virtual methods
.method public abstract pauseVideo()V
.end method

.method public abstract playVideo()V
.end method
