###### Class com.tapjoy.internal.k9 (com.tapjoy.internal.k9)
.class public final Lcom/tapjoy/internal/k9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/a2;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tapjoy/internal/a;)V
    .registers 8

    if-eqz p2, :cond_58

    check-cast p2, Lcom/tapjoy/internal/b;

    instance-of v0, p2, Lcom/tapjoy/internal/x5;

    if-eqz v0, :cond_2c

    check-cast p2, Lcom/tapjoy/internal/x5;

    check-cast p2, Lcom/tapjoy/internal/o9;

    iget-object v0, p2, Lcom/tapjoy/internal/o9;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/tapjoy/internal/o9;->c:Ljava/lang/String;

    sget-object v1, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/o8;

    monitor-enter v1

    :try_start_13
    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/o8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/TJPlacement;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_29

    if-eqz p1, :cond_58

    iget-object v1, p1, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    if-eqz v1, :cond_58

    new-instance v2, Lcom/tapjoy/internal/e8;

    invoke-direct {v2, v0}, Lcom/tapjoy/internal/e8;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1, v2, p2}, Lcom/tapjoy/TJPlacementListener;->onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V

    goto :goto_58

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1

    :cond_2c
    instance-of v0, p2, Lcom/tapjoy/internal/m6;

    if-eqz v0, :cond_58

    check-cast p2, Lcom/tapjoy/internal/m6;

    check-cast p2, Lcom/tapjoy/internal/x4;

    iget-object v0, p2, Lcom/tapjoy/internal/x4;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/tapjoy/internal/x4;->c:Ljava/lang/String;

    iget v2, p2, Lcom/tapjoy/internal/x4;->d:I

    iget-object p2, p2, Lcom/tapjoy/internal/x4;->e:Ljava/lang/String;

    sget-object v3, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/o8;

    monitor-enter v3

    :try_start_3f
    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/o8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/TJPlacement;

    monitor-exit v3
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_55

    if-eqz p1, :cond_58

    iget-object v3, p1, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    if-eqz v3, :cond_58

    new-instance v4, Lcom/tapjoy/internal/q8;

    invoke-direct {v4, v0, p2}, Lcom/tapjoy/internal/q8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, p1, v4, v1, v2}, Lcom/tapjoy/TJPlacementListener;->onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V

    goto :goto_58

    :catchall_55
    move-exception p1

    :try_start_56
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p1

    :cond_58
    :goto_58
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/a;)V
    .registers 5

    if-eqz p3, :cond_c

    new-instance v0, Lcom/tapjoy/internal/z8;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/z8;-><init>(Ljava/lang/String;)V

    check-cast p3, Lcom/tapjoy/internal/b;

    invoke-virtual {p3, v0}, Lcom/tapjoy/internal/b;->b(Lcom/tapjoy/internal/z8;)V

    :cond_c
    sget-object p3, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/o8;

    monitor-enter p3

    :try_start_f
    invoke-virtual {p3, p1}, Lcom/tapjoy/internal/o8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/TJPlacement;

    monitor-exit p3
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_23

    if-eqz p1, :cond_22

    invoke-static {p2}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    if-eqz p2, :cond_22

    invoke-interface {p2, p1}, Lcom/tapjoy/TJPlacementListener;->onContentDismiss(Lcom/tapjoy/TJPlacement;)V

    :cond_22
    return-void

    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/o8;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/o8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/TJPlacement;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_14

    if-eqz p1, :cond_13

    iget-object v0, p1, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    if-eqz v0, :cond_13

    invoke-interface {v0, p1}, Lcom/tapjoy/TJPlacementListener;->onContentShow(Lcom/tapjoy/TJPlacement;)V

    :cond_13
    return-void

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method
