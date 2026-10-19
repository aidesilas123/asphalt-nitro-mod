###### Class com.google.common.util.concurrent.q0.b (com.google.common.util.concurrent.q0$b)
.class final Lcom/google/common/util/concurrent/q0$b;
.super Lcom/google/common/util/concurrent/q0;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final g:D


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;D)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/q0;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/q0$a;)V

    iput-wide p2, p0, Lcom/google/common/util/concurrent/q0$b;->g:D

    return-void
.end method


# virtual methods
.method h()D
    .registers 3

    iget-wide v0, p0, Lcom/google/common/util/concurrent/q0;->e:D

    return-wide v0
.end method

.method i(DD)V
    .registers 8

    iget-wide p3, p0, Lcom/google/common/util/concurrent/q0;->d:D

    iget-wide v0, p0, Lcom/google/common/util/concurrent/q0$b;->g:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Lcom/google/common/util/concurrent/q0;->d:D

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p3, p1

    if-nez v2, :cond_11

    iput-wide v0, p0, Lcom/google/common/util/concurrent/q0;->c:D

    goto :goto_1f

    :cond_11
    const-wide/16 p1, 0x0

    cmpl-double v2, p3, p1

    if-nez v2, :cond_18

    goto :goto_1d

    :cond_18
    iget-wide p1, p0, Lcom/google/common/util/concurrent/q0;->c:D

    mul-double p1, p1, v0

    div-double/2addr p1, p3

    :goto_1d
    iput-wide p1, p0, Lcom/google/common/util/concurrent/q0;->c:D

    :goto_1f
    return-void
.end method
