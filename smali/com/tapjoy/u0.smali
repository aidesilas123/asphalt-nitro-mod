###### Class com.tapjoy.u0 (com.tapjoy.u0)
.class public final Lcom/tapjoy/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/o;


# direct methods
.method public constructor <init>(Lcom/tapjoy/o;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/u0;->a:Lcom/tapjoy/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoCompleted()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/u0;->a:Lcom/tapjoy/o;

    const-string v1, "SHOW"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->f()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->f()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementVideoListener;->onVideoComplete(Lcom/tapjoy/TJPlacement;)V

    :cond_17
    return-void
.end method

.method public final onVideoError(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/u0;->a:Lcom/tapjoy/o;

    const-string v1, "SHOW"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->f()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->f()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/tapjoy/TJPlacementVideoListener;->onVideoError(Lcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public final onVideoStart()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/u0;->a:Lcom/tapjoy/o;

    const-string v1, "SHOW"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->f()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->f()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementVideoListener;->onVideoStart(Lcom/tapjoy/TJPlacement;)V

    :cond_17
    return-void
.end method
