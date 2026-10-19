###### Class com.tapjoy.internal.x1 (com.tapjoy.internal.x1)
.class public final Lcom/tapjoy/internal/x1;
.super Lcom/tapjoy/internal/y4;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tapjoy/internal/y4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
    .registers 4

    invoke-static {p3}, Lcom/tapjoy/internal/g6;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/tapjoy/internal/g6;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final e(Ljava/util/Observer;)Z
    .registers 3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->dismissContentShowing(Z)V

    :cond_a
    invoke-super {p0, p1}, Lcom/tapjoy/internal/y4;->e(Ljava/util/Observer;)Z

    move-result p1

    return p1
.end method

.method public final f()Lcom/tapjoy/internal/m4;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method
