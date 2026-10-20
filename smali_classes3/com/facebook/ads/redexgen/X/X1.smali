###### Class com.facebook.ads.redexgen.X.X1 (com.facebook.ads.redexgen.X.X1)
.class public final Lcom/facebook/ads/redexgen/X/X1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5V(IIIII)Z
    .registers 7

    const/16 v0, 0x43

    if-ne p2, v0, :cond_13

    const/16 v0, 0x4f

    if-ne p3, v0, :cond_13

    const/16 v0, 0x4d

    if-ne p4, v0, :cond_13

    if-eq p5, v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
