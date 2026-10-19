###### Class com.tapjoy.t0 (com.tapjoy.t0)
.class public final Lcom/tapjoy/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/o;


# direct methods
.method public constructor <init>(Lcom/tapjoy/o;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/t0;->a:Lcom/tapjoy/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/t0;->a:Lcom/tapjoy/o;

    const-string v1, "SHOW"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handle onClick for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v0}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TJCorePlacement"

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->d()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->d()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tapjoy/TJPlacementListener;->onClick(Lcom/tapjoy/TJPlacement;)V

    :cond_30
    return-void
.end method

.method public final onClosed()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/t0;->a:Lcom/tapjoy/o;

    iget-boolean v0, v0, Lcom/tapjoy/o;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->decrementPlacementCacheCount()V

    iget-object v0, p0, Lcom/tapjoy/t0;->a:Lcom/tapjoy/o;

    iput-boolean v1, v0, Lcom/tapjoy/o;->i:Z

    :cond_e
    iget-object v0, p0, Lcom/tapjoy/t0;->a:Lcom/tapjoy/o;

    iget-boolean v0, v0, Lcom/tapjoy/o;->j:Z

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->decrementPlacementPreRenderCount()V

    iget-object v0, p0, Lcom/tapjoy/t0;->a:Lcom/tapjoy/o;

    iput-boolean v1, v0, Lcom/tapjoy/o;->j:Z

    :cond_1b
    return-void
.end method

.method public final onContentReady()V
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/t0;->a:Lcom/tapjoy/o;

    invoke-virtual {v0}, Lcom/tapjoy/o;->b()V

    return-void
.end method
