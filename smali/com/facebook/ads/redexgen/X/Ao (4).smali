###### Class com.facebook.ads.redexgen.X.C0908Ao (com.facebook.ads.redexgen.X.Ao)
.class public final Lcom/facebook/ads/redexgen/X/Ao;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0M:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:[S

.field public A0B:[S

.field public A0C:[S

.field public final A0D:F

.field public final A0E:F

.field public final A0F:F

.field public final A0G:I

.field public final A0H:I

.field public final A0I:I

.field public final A0J:I

.field public final A0K:I

.field public final A0L:[S


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OjKCpSHRaQgRVuqtUlgsb9O8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "00OaDgM7p4igg1vHbesCR74DVTlAeC7z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TzmlGabo8AOjcKFjChfq2OdnE6jP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eUJX5SGKEEZf9vIFl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "j2zFnhkJHUredpBjDjfUiogYLN6sD6KJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gWZYAfYL2BaqEY2VQTncveV2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fwiYKc5SQMrWihGSp5I7vQU09P9mYkrS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9p8sUcgEmhCbeCaZ4cFvJcsv2VoCKNVu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A0M:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIFFI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0H:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0F:F

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0D:F

    int-to-float v1, p1

    int-to-float v0, p5

    div-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0E:F

    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0K:I

    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0I:I

    mul-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0J:I

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0L:[S

    mul-int v0, v1, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0A:[S

    mul-int v0, v1, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    mul-int/2addr v1, p2

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0C:[S

    return-void
.end method

.method private A00(I)I
    .registers 4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0J:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A09:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0A:[S

    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ao;->A0D([SII)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A09:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A09:I

    return v1
.end method

.method private A01([SI)I
    .registers 10

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0H:I

    const/4 v5, 0x1

    const/16 v0, 0xfa0

    if-le v6, v0, :cond_6b

    div-int/2addr v6, v0

    :goto_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    if-ne v0, v5, :cond_32

    if-ne v6, v5, :cond_32

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0K:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0I:I

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A04([SIII)I

    move-result v3

    :cond_16
    :goto_16
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Ao;->A02:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Ao;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_32
    invoke-direct {p0, p1, p2, v6}, Lcom/facebook/ads/redexgen/X/Ao;->A0E([SII)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0L:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0K:I

    div-int/2addr v1, v6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0I:I

    div-int/2addr v0, v6

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A04([SIII)I

    move-result v3

    if-eq v6, v5, :cond_16

    mul-int/2addr v3, v6

    mul-int/lit8 v0, v6, 0x4

    sub-int v2, v3, v0

    mul-int/lit8 v1, v6, 0x4

    add-int/2addr v1, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0K:I

    if-ge v2, v0, :cond_52

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0K:I

    :cond_52
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0I:I

    if-le v1, v0, :cond_58

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0I:I

    :cond_58
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    if-ne v0, v5, :cond_61

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/Ao;->A04([SIII)I

    move-result v3

    goto :goto_16

    :cond_61
    invoke-direct {p0, p1, p2, v5}, Lcom/facebook/ads/redexgen/X/Ao;->A0E([SII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0L:[S

    invoke-direct {p0, v0, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/Ao;->A04([SIII)I

    move-result v3

    goto :goto_16

    :cond_6b
    const/4 v6, 0x1

    goto :goto_8

    :cond_6d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A0M:[Ljava/lang/String;

    const-string v1, "8bhQeTnLevaZP1Rdp3IHUAHszuXZY5fw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-direct {p0, v5, v4}, Lcom/facebook/ads/redexgen/X/Ao;->A0F(II)Z

    move-result v0

    if-eqz v0, :cond_83

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A08:I

    :goto_7c
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A07:I

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A08:I

    return v1

    :cond_83
    move v1, v3

    goto :goto_7c
.end method

.method private A02([SIFI)I
    .registers 18

    move/from16 v2, p4

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_3e

    int-to-float v0, v2

    mul-float v0, v0, p3

    sub-float v3, v3, p3

    div-float/2addr v0, v3

    float-to-int v5, v0

    :goto_11
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    add-int v0, v2, v5

    invoke-direct {p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0G([SII)[S

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    move v12, p2

    mul-int v1, v12, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    mul-int/2addr v0, v3

    mul-int/2addr v3, v2

    move-object v9, p1

    invoke-static {v9, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    add-int/2addr v8, v2

    add-int v10, v12, v2

    move-object v11, v9

    invoke-static/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/Ao;->A0C(II[SI[SI[SI)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    return v5

    :cond_3e
    move v5, v2

    int-to-float v1, v2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, p3

    sub-float/2addr v0, v3

    mul-float/2addr v1, v0

    sub-float v3, v3, p3

    div-float/2addr v1, v3

    float-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A09:I

    goto :goto_11
.end method

.method private A03([SIFI)I
    .registers 15

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, p3, v1

    if-ltz v0, :cond_28

    int-to-float v0, p4

    sub-float/2addr p3, v2

    div-float/2addr v0, p3

    float-to-int v2, v0

    :goto_c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ao;->A0G([SII)[S

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    move v7, p2

    add-int v9, v7, p4

    move-object v6, p1

    move-object v8, v6

    invoke-static/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/Ao;->A0C(II[SI[SI[SI)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    return v2

    :cond_28
    int-to-float v0, p4

    sub-float/2addr v1, p3

    mul-float/2addr v0, v1

    sub-float/2addr p3, v2

    div-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A09:I

    move v2, p4

    goto :goto_c
.end method

.method private A04([SIII)I
    .registers 13

    const/4 v7, 0x0

    const/16 v6, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    mul-int/2addr p2, v0

    :goto_8
    if-gt p3, p4, :cond_33

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, p3, :cond_20

    add-int v0, p2, v2

    aget-short v1, p1, v0

    add-int v0, p2, p3

    add-int/2addr v0, v2

    aget-short v0, p1, v0

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_20
    mul-int v1, v5, v7

    mul-int v0, v4, p3

    if-ge v1, v0, :cond_28

    move v4, v5

    move v7, p3

    :cond_28
    mul-int v1, v5, v6

    mul-int v0, v3, p3

    if-le v1, v0, :cond_30

    move v3, v5

    move v6, p3

    :cond_30
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_33
    div-int/2addr v4, v7

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Ao;->A02:I

    div-int/2addr v3, v6

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A01:I

    return v7
.end method

.method private A05([SIII)S
    .registers 11

    aget-short v5, p1, p2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    add-int/2addr v0, p2

    aget-short v4, p1, v0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A03:I

    mul-int/2addr v3, p3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A04:I

    mul-int v1, v0, p4

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v2, p4

    sub-int v0, v2, v3

    sub-int/2addr v2, v1

    mul-int v1, v0, v5

    sub-int v0, v2, v0

    mul-int/2addr v0, v4

    add-int/2addr v1, v0

    div-int/2addr v1, v2

    int-to-short v0, v1

    return v0
.end method

.method private A06()V
    .registers 9

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0F:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0D:F

    div-float/2addr v7, v0

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0E:F

    mul-float/2addr v5, v0

    float-to-double v3, v7

    const-wide v1, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v0, v3, v1

    if-gtz v0, :cond_1e

    float-to-double v3, v7

    const-wide v1, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v0, v3, v1

    if-gez v0, :cond_2b

    :cond_1e
    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/Ao;->A07(F)V

    :goto_21
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_2a

    invoke-direct {p0, v5, v6}, Lcom/facebook/ads/redexgen/X/Ao;->A08(FI)V

    :cond_2a
    return-void

    :cond_2b
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ao;->A0D([SII)V

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    goto :goto_21
.end method

.method private A07(F)V
    .registers 10

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0J:I

    if-ge v1, v0, :cond_7

    return-void

    :cond_7
    iget v7, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    const/4 v6, 0x0

    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A09:I

    if-lez v0, :cond_1c

    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Ao;->A00(I)I

    move-result v0

    add-int/2addr v6, v0

    :goto_13
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0J:I

    add-int/2addr v0, v6

    if-le v0, v7, :cond_a

    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Ao;->A0B(I)V

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0A:[S

    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/Ao;->A01([SI)I

    move-result v5

    float-to-double v3, p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v1

    if-lez v0, :cond_32

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0A:[S

    invoke-direct {p0, v0, v6, p1, v5}, Lcom/facebook/ads/redexgen/X/Ao;->A03([SIFI)I

    move-result v0

    add-int/2addr v0, v5

    add-int/2addr v6, v0

    goto :goto_13

    :cond_32
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0A:[S

    invoke-direct {p0, v0, v6, p1, v5}, Lcom/facebook/ads/redexgen/X/Ao;->A02([SIFI)I

    move-result v0

    add-int/2addr v6, v0

    goto :goto_13
.end method

.method private A08(FI)V
    .registers 12

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    if-ne v0, p2, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0H:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v7, v0

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0H:I

    :goto_c
    const/16 v0, 0x4000

    if-gt v7, v0, :cond_12

    if-le v6, v0, :cond_17

    :cond_12
    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v6, v6, 0x2

    goto :goto_c

    :cond_17
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Ao;->A09(I)V

    const/4 v8, 0x0

    :goto_1b
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:I

    add-int/lit8 v0, v1, -0x1

    const/4 v5, 0x1

    if-ge v8, v0, :cond_d0

    :goto_22
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A04:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A0M:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_39

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_39
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A0M:[Ljava/lang/String;

    const-string v1, "26TQ7N8S6PTfGLZ92"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v1, v3, 0x1

    mul-int/2addr v1, v7

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Ao;->A03:I

    mul-int v0, v4, v6

    if-le v1, v0, :cond_9b

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    invoke-direct {p0, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Ao;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    const/4 v3, 0x0

    :goto_54
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A0M:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_86

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A0M:[Ljava/lang/String;

    const-string v1, "VbKq7NM7PdmAUrole"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge v3, v4, :cond_90

    :goto_73
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0C:[S

    mul-int/2addr v4, v8

    add-int/2addr v4, v3

    invoke-direct {p0, v0, v4, v6, v7}, Lcom/facebook/ads/redexgen/X/Ao;->A05([SIII)S

    move-result v0

    aput-short v0, v2, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_86
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A0M:[Ljava/lang/String;

    const-string v1, "aOt6eVUEyRCtQxkUrkKyixjvz9Bn1k7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v3, v4, :cond_90

    goto :goto_73

    :cond_90
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A03:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    goto :goto_22

    :cond_9b
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A04:I

    if-ne v0, v6, :cond_ca

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_ba

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_ba
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A0M:[Ljava/lang/String;

    const-string v1, "dm69MZtNxJx8v5BsJDIKlnc92CG6PQ3Q"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A04:I

    if-ne v4, v7, :cond_ce

    :goto_c5
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A03:I

    :cond_ca
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1b

    :cond_ce
    const/4 v5, 0x0

    goto :goto_c5

    :cond_d0
    sub-int/2addr v1, v5

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(I)V

    return-void
.end method

.method private A09(I)V
    .registers 8

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    sub-int/2addr v5, p1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0C:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:I

    invoke-direct {p0, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Ao;->A0G([SII)[S

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0C:[S

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    mul-int v1, p1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:I

    mul-int/2addr v0, v2

    mul-int/2addr v2, v5

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:I

    return-void
.end method

.method private A0A(I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0C:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    mul-int v2, p1, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:I

    sub-int/2addr v1, p1

    mul-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v3, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:I

    return-void
.end method

.method private A0B(I)V
    .registers 6

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    sub-int/2addr v3, p1

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    mul-int/2addr p1, v1

    const/4 v0, 0x0

    mul-int/2addr v1, v3

    invoke-static {v2, p1, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    return-void
.end method

.method public static A0C(II[SI[SI[SI)V
    .registers 15

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_25

    mul-int v6, p3, p1

    add-int/2addr v6, v5

    mul-int v4, p7, p1

    add-int/2addr v4, v5

    mul-int v3, p5, p1

    add-int/2addr v3, v5

    const/4 v2, 0x0

    :goto_d
    if-ge v2, p0, :cond_22

    aget-short v1, p4, v3

    sub-int v0, p0, v2

    mul-int/2addr v1, v0

    aget-short v0, p6, v4

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    div-int/2addr v1, p0

    int-to-short v0, v1

    aput-short v0, p2, v6

    add-int/2addr v6, p1

    add-int/2addr v3, p1

    add-int/2addr v4, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method private A0D([SII)V
    .registers 7

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    invoke-direct {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/Ao;->A0G([SII)[S

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    mul-int/2addr p2, v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    mul-int/2addr v0, v1

    mul-int/2addr v1, p3

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    return-void
.end method

.method private A0E([SII)V
    .registers 10

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0J:I

    div-int/2addr v5, p3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    mul-int v4, v0, p3

    mul-int/2addr p2, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v5, :cond_22

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v4, :cond_19

    mul-int v0, v3, v4

    add-int/2addr v0, p2

    add-int/2addr v0, v1

    aget-short v0, p1, v0

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    div-int/2addr v2, v4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0L:[S

    int-to-short v0, v2

    aput-short v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_22
    return-void
.end method

.method private A0F(II)Z
    .registers 6

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A08:I

    if-nez v0, :cond_8

    :cond_7
    return v2

    :cond_8
    mul-int/lit8 v0, p1, 0x3

    if-le p2, v0, :cond_d

    return v2

    :cond_d
    mul-int/lit8 v1, p1, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A07:I

    mul-int/lit8 v0, v0, 0x3

    if-gt v1, v0, :cond_16

    return v2

    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private A0G([SII)[S
    .registers 6

    array-length v0, p1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    div-int/2addr v0, v1

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_8

    return-object p1

    :cond_8
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int/2addr v1, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A0H()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    return v0
.end method

.method public final A0I()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A04:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A09:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A01:I

    return-void
.end method

.method public final A0J()V
    .registers 8

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0F:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0D:F

    div-float/2addr v3, v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0E:F

    mul-float/2addr v2, v0

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    int-to-float v1, v6

    div-float/2addr v1, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    div-float/2addr v1, v2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    add-int/2addr v5, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0J:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0A:[S

    const/4 v4, 0x0

    :goto_28
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0J:I

    mul-int/lit8 v0, v3, 0x2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge v4, v0, :cond_3b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0A:[S

    mul-int/2addr v1, v6

    add-int/2addr v1, v4

    aput-short v2, v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_3b
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    mul-int/lit8 v0, v3, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ao;->A06()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    if-le v0, v5, :cond_4b

    iput v5, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    :cond_4b
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A09:I

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:I

    return-void
.end method

.method public final A0K(Ljava/nio/ShortBuffer;)V
    .registers 7

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    div-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    mul-int/2addr v0, v4

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    mul-int/2addr v4, v0

    mul-int/2addr v2, v0

    invoke-static {v1, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final A0L(Ljava/nio/ShortBuffer;)V
    .registers 7

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    div-int/2addr v4, v0

    mul-int/2addr v0, v4

    mul-int/lit8 v3, v0, 0x2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0A:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    invoke-direct {p0, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Ao;->A0G([SII)[S

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A0G:I

    mul-int/2addr v1, v0

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v2, v1, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ao;->A06()V

    return-void
.end method
