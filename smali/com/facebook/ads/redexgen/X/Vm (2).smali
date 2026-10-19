###### Class com.facebook.ads.redexgen.X.C1425Vm (com.facebook.ads.redexgen.X.Vm)
.class public final Lcom/facebook/ads/redexgen/X/Vm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Et;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClippingSampleStream"
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/Et;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/BW;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2iJQWlRsUDoPLtxxhE0wL9Cx9C7nOBrU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oJgjoNY6hjjHJmelHDlI5xZuIY2b67h"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lPiJTezOZt4yDoox6bX3l7R6F2XzCVNN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wrWzKGBonHGMzL1uPVOM3eUURFaMzKwB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aBcbXNoo2m3wtFqQFSiOk3RFoevM7GVG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GcCP7ZOQcwM7LeXwSBQclRy3S6aYmmD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JUPsbTU3PQNYOt9vjPoPUzbQPtEFF22Q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "21kt6KXNgOdDUktVBInrV9GyhB6eLfYq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vm;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Et;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/BW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Et;

    return-void
.end method


# virtual methods
.method public final A00()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Z

    return-void
.end method

.method public final A90()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/BW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BW;->A03()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Et;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Et;->A90()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final AA2()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Et;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Et;->AA2()V

    return-void
.end method

.method public final AEC(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;Z)I
    .registers 16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/BW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BW;->A03()Z

    move-result v0

    const/4 v8, -0x3

    if-eqz v0, :cond_a

    return v8

    :cond_a
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Z

    const/4 v6, 0x4

    const/4 v5, -0x4

    if-eqz v0, :cond_14

    invoke-virtual {p2, v6}, Lcom/facebook/ads/redexgen/X/Ap;->A02(I)V

    return v5

    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Et;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Et;->AEC(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;Z)I

    move-result v7

    const/4 v9, -0x5

    const-wide/high16 v10, -0x8000000000000000L

    if-ne v7, v9, :cond_4a

    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/9X;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A06:I

    if-nez v0, :cond_29

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07:I

    if-eqz v0, :cond_43

    :cond_29
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/BW;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/BW;->A01:J

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    cmp-long v0, v1, v5

    if-eqz v0, :cond_47

    const/4 v3, 0x0

    :goto_35
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/BW;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/BW;->A00:J

    cmp-long v0, v1, v10

    if-eqz v0, :cond_44

    :goto_3d
    invoke-virtual {v7, v3, v4}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G(II)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/9X;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    :cond_43
    return v9

    :cond_44
    iget v4, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07:I

    goto :goto_3d

    :cond_47
    iget v3, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A06:I

    goto :goto_35

    :cond_4a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/BW;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/BW;->A00:J

    cmp-long v2, v0, v10

    if-eqz v2, :cond_74

    if-ne v7, v5, :cond_5e

    iget-wide v3, p2, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/BW;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/BW;->A00:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_6a

    :cond_5e
    if-ne v7, v8, :cond_74

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/BW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BW;->A68()J

    move-result-wide v1

    cmp-long v0, v1, v10

    if-nez v0, :cond_74

    :cond_6a
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/XE;->A07()V

    invoke-virtual {p2, v6}, Lcom/facebook/ads/redexgen/X/Ap;->A02(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Z

    return v5

    :cond_74
    return v7
.end method

.method public final AFd(J)I
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/BW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BW;->A03()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v3, -0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vm;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_1f

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vm;->A03:[Ljava/lang/String;

    const-string v1, "I7Vle9theSHJs2vfg5SYnPGKFT8j8RVM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Et;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Et;->AFd(J)I

    move-result v0

    return v0
.end method
