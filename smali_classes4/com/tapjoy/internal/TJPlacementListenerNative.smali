###### Class com.tapjoy.internal.TJPlacementListenerNative (com.tapjoy.internal.TJPlacementListenerNative)
.class public Lcom/tapjoy/internal/TJPlacementListenerNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_c

    iput-wide p1, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static create(J)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/tapjoy/internal/TJPlacementListenerNative;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/TJPlacementListenerNative;-><init>(J)V

    return-object v0
.end method

.method private static native onClickNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onContentDismissNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onContentReadyNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onContentShowNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onPurchaseRequestNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native onRequestFailureNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native onRequestSuccessNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onRewardRequestNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method


# virtual methods
.method public final onClick(Lcom/tapjoy/TJPlacement;)V
    .registers 5

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onClickNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    return-void
.end method

.method public final onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .registers 5

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onContentDismissNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    return-void
.end method

.method public final onContentReady(Lcom/tapjoy/TJPlacement;)V
    .registers 5

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onContentReadyNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    return-void
.end method

.method public final onContentShow(Lcom/tapjoy/TJPlacement;)V
    .registers 5

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onContentShowNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    return-void
.end method

.method public final onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .registers 12

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/tapjoy/TJActionRequest;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/tapjoy/TJActionRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onPurchaseRequestNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/r;)V
    .registers 9

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->e()Ljava/lang/String;

    move-result-object v3

    iget v4, p2, Lcom/tapjoy/r;->a:I

    iget-object v5, p2, Lcom/tapjoy/r;->b:Ljava/lang/String;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onRequestFailureNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .registers 5

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onRequestSuccessNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    return-void
.end method

.method public final onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .registers 14

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/tapjoy/TJActionRequest;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/tapjoy/TJActionRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v4, p2

    move-object v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onRewardRequestNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
