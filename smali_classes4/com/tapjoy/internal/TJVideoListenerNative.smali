###### Class com.tapjoy.internal.TJVideoListenerNative (com.tapjoy.internal.TJVideoListenerNative)
.class public Lcom/tapjoy/internal/TJVideoListenerNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJVideoListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_c

    iput-wide p1, p0, Lcom/tapjoy/internal/TJVideoListenerNative;->a:J

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static create(J)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/tapjoy/internal/TJVideoListenerNative;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/TJVideoListenerNative;-><init>(J)V

    return-object v0
.end method

.method private static native onVideoCompleteNative(J)V
.end method

.method private static native onVideoErrorNative(JI)V
.end method

.method private static native onVideoStartNative(J)V
.end method


# virtual methods
.method public final onVideoComplete()V
    .registers 3

    iget-wide v0, p0, Lcom/tapjoy/internal/TJVideoListenerNative;->a:J

    invoke-static {v0, v1}, Lcom/tapjoy/internal/TJVideoListenerNative;->onVideoCompleteNative(J)V

    return-void
.end method

.method public final onVideoError(I)V
    .registers 4

    iget-wide v0, p0, Lcom/tapjoy/internal/TJVideoListenerNative;->a:J

    invoke-static {v0, v1, p1}, Lcom/tapjoy/internal/TJVideoListenerNative;->onVideoErrorNative(JI)V

    return-void
.end method

.method public final onVideoStart()V
    .registers 3

    iget-wide v0, p0, Lcom/tapjoy/internal/TJVideoListenerNative;->a:J

    invoke-static {v0, v1}, Lcom/tapjoy/internal/TJVideoListenerNative;->onVideoStartNative(J)V

    return-void
.end method
