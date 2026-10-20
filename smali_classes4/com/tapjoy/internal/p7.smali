###### Class com.tapjoy.internal.p7 (com.tapjoy.internal.p7)
.class public final Lcom/tapjoy/internal/p7;
.super Lcom/tapjoy/internal/x0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tapjoy/internal/x0;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/g2;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .registers 1

    return-void
.end method
