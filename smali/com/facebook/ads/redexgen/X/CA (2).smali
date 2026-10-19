###### Class com.facebook.ads.redexgen.X.CA (com.facebook.ads.redexgen.X.CA)
.class public final Lcom/facebook/ads/redexgen/X/CA;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/C9;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(I[J[IJ)Lcom/facebook/ads/redexgen/X/C9;
    .registers 23

    move-wide/from16 v16, p3

    const/16 v5, 0x2000

    div-int v5, v5, p0

    const/4 v3, 0x0

    move-object/from16 v6, p2

    array-length v2, v6

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_17

    aget v0, v6, v1

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Hx;->A04(II)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    new-array v11, v3, [J

    new-array v12, v3, [I

    const/4 v13, 0x0

    new-array v14, v3, [J

    new-array v15, v3, [I

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    :goto_23
    array-length v0, v6

    if-ge v3, v0, :cond_50

    aget v2, v6, v3

    aget-wide v8, p1, v3

    :goto_2a
    if-lez v2, :cond_4d

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput-wide v8, v11, v10

    mul-int v0, p0, v7

    aput v0, v12, v10

    aget v0, v12, v10

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v0, v4

    mul-long v0, v0, v16

    aput-wide v0, v14, v10

    const/4 v0, 0x1

    aput v0, v15, v10

    aget v0, v12, v10

    int-to-long v0, v0

    add-long/2addr v8, v0

    add-int/2addr v4, v7

    sub-int/2addr v2, v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_50
    int-to-long v0, v4

    mul-long v16, v16, v0

    new-instance v10, Lcom/facebook/ads/redexgen/X/C9;

    const/16 p0, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/C9;-><init>([J[II[J[IJLcom/facebook/ads/redexgen/X/C8;)V

    return-object v10
.end method
