###### Class com.facebook.ads.redexgen.X.C08719c (com.facebook.ads.redexgen.X.9c)
.class public final Lcom/facebook/ads/redexgen/X/9c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/9a;

.field public A05:Lcom/facebook/ads/redexgen/X/9a;

.field public A06:Lcom/facebook/ads/redexgen/X/9a;

.field public A07:Lcom/facebook/ads/redexgen/X/9z;

.field public A08:Ljava/lang/Object;

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/9x;

.field public final A0B:Lcom/facebook/ads/redexgen/X/9y;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Lb1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HAO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yCHPPE9w0w81YCKuxFE6L9DmrxkJ2tU0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DWgdxvM8Y7BV8jWWEqdgbbwmU3UKZQmt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Bgm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OOw1FrSehBTCipzYy8xUBx5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Tcr4i3yvYCwS9F"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vvoyvovICPFY35FJOKkJE7b"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/9x;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9x;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9y;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0B:Lcom/facebook/ads/redexgen/X/9y;

    return-void
.end method

.method private A00(I)J
    .registers 8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A0A(ILcom/facebook/ads/redexgen/X/9x;Z)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9x;->A03:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A08:Ljava/lang/Object;

    const/4 v4, -0x1

    if-eqz v1, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9z;->A04(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v4, :cond_2b

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    if-ne v0, v5, :cond_2b

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A03:J

    return-wide v0

    :cond_2b
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9c;->A0E()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v1

    :goto_2f
    if-eqz v1, :cond_43

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9a;->A09:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    return-wide v0

    :cond_40
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    goto :goto_2f

    :cond_43
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9c;->A0E()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v3

    :goto_47
    if-eqz v3, :cond_69

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A04(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v4, :cond_66

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    if-ne v0, v5, :cond_66

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    return-wide v0

    :cond_66
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    goto :goto_47

    :cond_69
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:J

    return-wide v2
.end method

.method private A01(IIIJJ)Lcom/facebook/ads/redexgen/X/9b;
    .registers 25

    move-object/from16 v3, p0

    new-instance v6, Lcom/facebook/ads/redexgen/X/EW;

    move/from16 v7, p1

    move/from16 v5, p2

    move/from16 v4, p3

    move-wide/from16 v10, p6

    move-object v6, v6

    move v8, v5

    move v9, v4

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/EW;-><init>(IIIJ)V

    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {v3, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/9c;->A0A(Lcom/facebook/ads/redexgen/X/EW;J)Z

    move-result v15

    invoke-direct {v3, v6, v15}, Lcom/facebook/ads/redexgen/X/9c;->A0B(Lcom/facebook/ads/redexgen/X/EW;Z)Z

    move-result v16

    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/EW;->A00:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/EW;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9x;->A0A(II)J

    move-result-wide v13

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/9x;->A02(I)I

    move-result v0

    if-ne v4, v0, :cond_46

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9x;->A06()J

    move-result-wide v7

    :goto_3c
    new-instance v5, Lcom/facebook/ads/redexgen/X/9b;

    const-wide/high16 v9, -0x8000000000000000L

    move-wide/from16 v11, p4

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/9b;-><init>(Lcom/facebook/ads/redexgen/X/EW;JJJJZZ)V

    return-object v5

    :cond_46
    const-wide/16 v7, 0x0

    goto :goto_3c
.end method

.method private A02(IJJ)Lcom/facebook/ads/redexgen/X/9b;
    .registers 22

    move-object/from16 v4, p0

    new-instance v5, Lcom/facebook/ads/redexgen/X/EW;

    move/from16 v2, p1

    move-wide/from16 v0, p4

    invoke-direct {v5, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/EW;-><init>(IJ)V

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    move-wide/from16 v6, p2

    invoke-virtual {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/9x;->A04(J)I

    move-result v3

    const/4 v0, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    if-ne v3, v0, :cond_41

    move-wide v8, v1

    :goto_22
    invoke-direct {v4, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/9c;->A0A(Lcom/facebook/ads/redexgen/X/EW;J)Z

    move-result v14

    invoke-direct {v4, v5, v14}, Lcom/facebook/ads/redexgen/X/9c;->A0B(Lcom/facebook/ads/redexgen/X/EW;Z)Z

    move-result v15

    cmp-long v0, v8, v1

    if-nez v0, :cond_3f

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9x;->A07()J

    move-result-wide v12

    :goto_34
    new-instance v4, Lcom/facebook/ads/redexgen/X/9b;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/9b;-><init>(Lcom/facebook/ads/redexgen/X/EW;JJJJZZ)V

    return-object v4

    :cond_3f
    move-wide v12, v8

    goto :goto_34

    :cond_41
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9x;->A09(I)J

    move-result-wide v8

    goto :goto_22
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/9a;J)Lcom/facebook/ads/redexgen/X/9b;
    .registers 18

    move-object v0, p0

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/9b;->A06:Z

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5f

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v6, v1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/9c;->A0B:Lcom/facebook/ads/redexgen/X/9y;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/9c;->A01:I

    iget-boolean v10, v0, Lcom/facebook/ads/redexgen/X/9c;->A09:Z

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/9z;->A03(ILcom/facebook/ads/redexgen/X/9x;Lcom/facebook/ads/redexgen/X/9y;IZ)I

    move-result v7

    if-ne v7, v2, :cond_1e

    return-object v4

    :cond_1e
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    const/4 v1, 0x1

    invoke-virtual {v4, v7, v2, v1}, Lcom/facebook/ads/redexgen/X/9z;->A0A(ILcom/facebook/ads/redexgen/X/9x;Z)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v1

    iget v9, v1, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/9x;->A03:Ljava/lang/Object;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9c;->A0B:Lcom/facebook/ads/redexgen/X/9y;

    invoke-virtual {v2, v9, v1}, Lcom/facebook/ads/redexgen/X/9z;->A0B(ILcom/facebook/ads/redexgen/X/9y;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v1

    iget v1, v1, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    if-ne v1, v7, :cond_17c

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9a;->A07()J

    move-result-wide v1

    iget-wide v3, v3, Lcom/facebook/ads/redexgen/X/9b;->A01:J

    add-long/2addr v1, v3

    sub-long v1, v1, p2

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/9c;->A0B:Lcom/facebook/ads/redexgen/X/9y;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    invoke-virtual/range {v6 .. v13}, Lcom/facebook/ads/redexgen/X/9z;->A08(Lcom/facebook/ads/redexgen/X/9y;Lcom/facebook/ads/redexgen/X/9x;IJJ)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_128

    const/4 v0, 0x0

    return-object v0

    :cond_5f
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget v5, v1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v4

    if-eqz v4, :cond_a8

    iget v6, v1, Lcom/facebook/ads/redexgen/X/EW;->A00:I

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/9x;->A01(I)I

    move-result v5

    if-ne v5, v2, :cond_7c

    const/4 v0, 0x0

    return-object v0

    :cond_7c
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    iget v2, v1, Lcom/facebook/ads/redexgen/X/EW;->A01:I

    invoke-virtual {v4, v6, v2}, Lcom/facebook/ads/redexgen/X/9x;->A03(II)I

    move-result v7

    if-ge v7, v5, :cond_9c

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/9x;->A0E(II)Z

    move-result v0

    if-nez v0, :cond_90

    const/4 v0, 0x0

    :goto_8f
    return-object v0

    :cond_90
    iget v5, v1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/9b;->A00:J

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/9c;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    goto :goto_8f

    :cond_9c
    iget v2, v1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-wide v3, v3, Lcom/facebook/ads/redexgen/X/9b;->A00:J

    iget-wide v5, v1, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/9c;->A02(IJJ)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    return-object v0

    :cond_a8
    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/9b;->A02:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v7, v4, v8

    sget-object v6, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v5, v6, v4

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v5, v4, :cond_212

    sget-object v6, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v5, "Mkh"

    const/4 v4, 0x4

    aput-object v5, v6, v4

    const-string v5, "LRN"

    const/4 v4, 0x1

    aput-object v5, v6, v4

    if-eqz v7, :cond_100

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/9b;->A02:J

    invoke-virtual {v6, v4, v5}, Lcom/facebook/ads/redexgen/X/9x;->A05(J)I

    move-result v5

    if-ne v5, v2, :cond_e4

    iget v2, v1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-wide v3, v3, Lcom/facebook/ads/redexgen/X/9b;->A02:J

    iget-wide v5, v1, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/9c;->A02(IJJ)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    return-object v0

    :cond_e4
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/9x;->A02(I)I

    move-result v6

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0, v5, v6}, Lcom/facebook/ads/redexgen/X/9x;->A0E(II)Z

    move-result v0

    if-nez v0, :cond_f4

    const/4 v0, 0x0

    :goto_f3
    return-object v0

    :cond_f4
    iget v4, v1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-wide v7, v3, Lcom/facebook/ads/redexgen/X/9b;->A02:J

    iget-wide v9, v1, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/9c;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    goto :goto_f3

    :cond_100
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/9x;->A00()I

    move-result v2

    if-nez v2, :cond_10a

    const/4 v0, 0x0

    return-object v0

    :cond_10a
    add-int/lit8 v6, v2, -0x1

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/9x;->A09(I)J

    move-result-wide v3

    cmp-long v2, v3, v8

    if-nez v2, :cond_19b

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    sget-object v3, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v3, v2

    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x71

    if-eq v3, v2, :cond_189

    goto :goto_156

    :cond_128
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v1, :cond_173

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/9a;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v2, v3, v1

    const/4 v1, 0x7

    aget-object v1, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_15c

    :goto_156
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_15c
    sget-object v3, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v2, "1Mi"

    const/4 v1, 0x4

    aput-object v2, v3, v1

    const-string v2, "4wM"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    if-eqz v4, :cond_173

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    goto :goto_17e

    :cond_173
    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/9c;->A02:J

    const-wide/16 v3, 0x1

    add-long v1, v10, v3

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/9c;->A02:J

    goto :goto_17e

    :cond_17c
    const-wide/16 v8, 0x0

    :goto_17e
    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/9c;->A07(IJJ)Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v7

    move-wide v10, v8

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/9c;->A06(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    return-object v0

    :cond_189
    sget-object v4, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v3, "v4RqMCCMyohjhj"

    const/4 v2, 0x6

    aput-object v3, v4, v2

    const-string v3, "VaJ"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/9x;->A0D(I)Z

    move-result v2

    if-eqz v2, :cond_1b9

    :cond_19b
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_1ac

    return-object v3

    :cond_1ac
    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v1, "OaXxy4ZAPPYV9k"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "tU4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_1b9
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/9x;->A02(I)I

    move-result v7

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v6, v7}, Lcom/facebook/ads/redexgen/X/9x;->A0E(II)Z

    move-result v2

    if-nez v2, :cond_1e3

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1e2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v1, "nHRVyYi6CwR1mKhXGjDN4SEBRB6Sc1lP"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    :cond_1e2
    return-object v3

    :cond_1e3
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9x;->A07()J

    move-result-wide v8

    iget v5, v1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v2, v3, v0

    const/4 v0, 0x7

    aget-object v0, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_203

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_203
    sget-object v3, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v2, "rKR9SUNE0wWlvttO7fw3rD4zdQIUaCm2"

    const/4 v0, 0x2

    aput-object v2, v3, v0

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/9c;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    return-object v0

    :cond_212
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/9b;Lcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/9b;
    .registers 19

    move-object/from16 v4, p0

    move-object/from16 v3, p1

    iget-wide v6, v3, Lcom/facebook/ads/redexgen/X/9b;->A03:J

    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/9b;->A02:J

    move-object/from16 v5, p2

    invoke-direct {v4, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/9c;->A0A(Lcom/facebook/ads/redexgen/X/EW;J)Z

    move-result v14

    invoke-direct {v4, v5, v14}, Lcom/facebook/ads/redexgen/X/9c;->A0B(Lcom/facebook/ads/redexgen/X/EW;Z)Z

    move-result v15

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/EW;->A00:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/EW;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9x;->A0A(II)J

    move-result-wide v12

    :goto_2b
    new-instance v4, Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v10, v3, Lcom/facebook/ads/redexgen/X/9b;->A00:J

    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/9b;-><init>(Lcom/facebook/ads/redexgen/X/EW;JJJJZZ)V

    return-object v4

    :cond_33
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v8, v1

    if-nez v0, :cond_40

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9x;->A07()J

    move-result-wide v12

    goto :goto_2b

    :cond_40
    move-wide v12, v8

    goto :goto_2b
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/9e;)Lcom/facebook/ads/redexgen/X/9b;
    .registers 8

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/9e;->A02:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9c;->A06(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    return-object v0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9b;
    .registers 14

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/EW;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/EW;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9x;->A0E(II)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    return-object v0

    :cond_1d
    iget v1, p1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget v2, p1, Lcom/facebook/ads/redexgen/X/EW;->A00:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/EW;->A01:I

    iget-wide v6, p1, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/9c;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    return-object v0

    :cond_2c
    iget v1, p1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9c;->A02(IJJ)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    return-object v0
.end method

.method private A07(IJJ)Lcom/facebook/ads/redexgen/X/EW;
    .registers 13

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    move v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/9x;->A05(J)I

    move-result v3

    const/4 v0, -0x1

    move-wide v5, p4

    if-ne v3, v0, :cond_18

    new-instance v0, Lcom/facebook/ads/redexgen/X/EW;

    invoke-direct {v0, v2, v5, v6}, Lcom/facebook/ads/redexgen/X/EW;-><init>(IJ)V

    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9x;->A02(I)I

    move-result v4

    new-instance v1, Lcom/facebook/ads/redexgen/X/EW;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/EW;-><init>(IIIJ)V

    return-object v1
.end method

.method private A08()Z
    .registers 14

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9c;->A0E()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v3

    const/4 v6, 0x1

    if-nez v3, :cond_8

    return v6

    :cond_8
    :goto_8
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/9c;->A0B:Lcom/facebook/ads/redexgen/X/9y;

    iget v11, p0, Lcom/facebook/ads/redexgen/X/9c;->A01:I

    iget-boolean v12, p0, Lcom/facebook/ads/redexgen/X/9c;->A09:Z

    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/9z;->A03(ILcom/facebook/ads/redexgen/X/9x;Lcom/facebook/ads/redexgen/X/9y;IZ)I

    move-result v5

    :goto_1c
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v0, :cond_29

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A06:Z

    if-nez v0, :cond_29

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    goto :goto_1c

    :cond_29
    const/4 v0, -0x1

    if-eq v5, v0, :cond_5b

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v0, :cond_5b

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_4d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4d
    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v1, "04e"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "fTm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v4, v5, :cond_76

    :cond_5b
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/9c;->A0S(Lcom/facebook/ads/redexgen/X/9a;)Z

    move-result v2

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A04(Lcom/facebook/ads/redexgen/X/9b;Lcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    if-eqz v2, :cond_73

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9c;->A0P()Z

    move-result v0

    if-nez v0, :cond_74

    :cond_73
    :goto_73
    return v6

    :cond_74
    const/4 v6, 0x0

    goto :goto_73

    :cond_76
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    goto :goto_8
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/9a;Lcom/facebook/ads/redexgen/X/9b;)Z
    .registers 9

    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/9b;->A03:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/9b;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1e

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/9b;->A02:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/9b;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1e

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/EW;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/EW;J)Z
    .registers 13

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9x;->A00()I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_12

    return v8

    :cond_12
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9x;->A09(I)J

    move-result-wide v4

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v6, 0x0

    cmp-long v0, v4, v1

    if-eqz v0, :cond_2e

    if-nez v7, :cond_2c

    cmp-long v0, p2, v1

    if-nez v0, :cond_2c

    :goto_2b
    return v8

    :cond_2c
    const/4 v8, 0x0

    goto :goto_2b

    :cond_2e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9x;->A01(I)I

    move-result v4

    const/4 v5, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_4a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4a
    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v1, "dZB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "bbK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v5, :cond_59

    return v6

    :cond_59
    if-eqz v7, :cond_75

    iget v0, p1, Lcom/facebook/ads/redexgen/X/EW;->A00:I

    if-ne v0, v3, :cond_75

    iget v1, p1, Lcom/facebook/ads/redexgen/X/EW;->A01:I

    add-int/lit8 v0, v4, -0x1

    if-ne v1, v0, :cond_75

    const/4 v0, 0x1

    :goto_66
    if-nez v0, :cond_72

    if-nez v7, :cond_73

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9x;->A02(I)I

    move-result v0

    if-ne v0, v4, :cond_73

    :cond_72
    :goto_72
    return v8

    :cond_73
    const/4 v8, 0x0

    goto :goto_72

    :cond_75
    const/4 v0, 0x0

    goto :goto_66
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/EW;Z)Z
    .registers 9

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0B:Lcom/facebook/ads/redexgen/X/9y;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9z;->A0B(ILcom/facebook/ads/redexgen/X/9y;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9y;->A08:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9c;->A0B:Lcom/facebook/ads/redexgen/X/9y;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/9c;->A01:I

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/9c;->A09:Z

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9z;->A0F(ILcom/facebook/ads/redexgen/X/9x;Lcom/facebook/ads/redexgen/X/9y;IZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p2, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method


# virtual methods
.method public final A0C()Lcom/facebook/ads/redexgen/X/9a;
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v1, :cond_54

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A06:Lcom/facebook/ads/redexgen/X/9a;

    if-ne v1, v0, :cond_c

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A06:Lcom/facebook/ads/redexgen/X/9a;

    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9a;->A0D()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:I

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A09:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A08:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A03:J

    :cond_2c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_45

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_45
    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v1, "umGBE5C5CuHWhY73AVgogVf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "vM8t2ZsrAby17UFg4572Zd2"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    goto :goto_5a

    :cond_54
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A06:Lcom/facebook/ads/redexgen/X/9a;

    :goto_5a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    return-object v0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/9a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A06:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A06:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A06:Lcom/facebook/ads/redexgen/X/9a;

    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/9a;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9c;->A0P()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    goto :goto_8
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/9a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    return-object v0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/9a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/9a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A06:Lcom/facebook/ads/redexgen/X/9a;

    return-object v0
.end method

.method public final A0I(JLcom/facebook/ads/redexgen/X/9e;)Lcom/facebook/ads/redexgen/X/9b;
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    if-nez v0, :cond_9

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/9c;->A05(Lcom/facebook/ads/redexgen/X/9e;)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9c;->A03(Lcom/facebook/ads/redexgen/X/9a;J)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    goto :goto_8
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/9b;I)Lcom/facebook/ads/redexgen/X/9b;
    .registers 4

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/EW;->A00(I)Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A04(Lcom/facebook/ads/redexgen/X/9b;Lcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    return-object v0
.end method

.method public final A0K([Lcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/redexgen/X/GR;Lcom/facebook/ads/redexgen/X/GU;Lcom/facebook/ads/redexgen/X/EY;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/9b;)Lcom/facebook/ads/redexgen/X/Vg;
    .registers 20

    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    move-object/from16 v12, p6

    if-nez v0, :cond_33

    iget-wide v6, v12, Lcom/facebook/ads/redexgen/X/9b;->A03:J

    :goto_9
    new-instance v4, Lcom/facebook/ads/redexgen/X/9a;

    move-object v5, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/9a;-><init>([Lcom/facebook/ads/redexgen/X/9s;JLcom/facebook/ads/redexgen/X/GR;Lcom/facebook/ads/redexgen/X/GU;Lcom/facebook/ads/redexgen/X/EY;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/9b;)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9c;->A0P()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    iput-object v4, v0, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    :cond_25
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/9c;->A08:Ljava/lang/Object;

    iput-object v4, v3, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/9c;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/9c;->A00:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    return-object v0

    :cond_33
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9a;->A07()J

    move-result-wide v6

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A01:J

    add-long/2addr v6, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5d

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v1, "XFCrwzIN7SxWEMf0fznSlHt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "zDOSpelqL3O1zvPqWZMR4dG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    goto :goto_9

    :cond_5d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0L(IJ)Lcom/facebook/ads/redexgen/X/EW;
    .registers 10

    move v1, p1

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/9c;->A00(I)J

    move-result-wide v4

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9c;->A07(IJJ)Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v0

    return-object v0
.end method

.method public final A0M(J)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9a;->A0G(J)V

    :cond_7
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/9z;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    return-void
.end method

.method public final A0O(Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9c;->A0E()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_27

    if-eqz p1, :cond_25

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A09:Ljava/lang/Object;

    :goto_b
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A08:Ljava/lang/Object;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/EW;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A03:J

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9a;->A0D()V

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/9c;->A0S(Lcom/facebook/ads/redexgen/X/9a;)Z

    :cond_1b
    :goto_1b
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9c;->A06:Lcom/facebook/ads/redexgen/X/9a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:I

    return-void

    :cond_25
    move-object v0, v2

    goto :goto_b

    :cond_27
    if-nez p1, :cond_1b

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9c;->A08:Ljava/lang/Object;

    goto :goto_1b
.end method

.method public final A0P()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final A0Q()Z
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v0, :cond_27

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A05:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9a;->A0H()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/9b;->A01:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_29

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:I

    const/16 v0, 0x64

    if-ge v1, v0, :cond_29

    :cond_27
    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public final A0R(I)Z
    .registers 3

    iput p1, p0, Lcom/facebook/ads/redexgen/X/9c;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9c;->A08()Z

    move-result v0

    return v0
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/9a;)Z
    .registers 7

    const/4 v4, 0x1

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_4

    :cond_22
    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v1, "VEc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "0t0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    :goto_30
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v0, :cond_48

    iget-object p1, p1, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A06:Lcom/facebook/ads/redexgen/X/9a;

    if-ne p1, v0, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A05:Lcom/facebook/ads/redexgen/X/9a;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A06:Lcom/facebook/ads/redexgen/X/9a;

    const/4 v3, 0x1

    :cond_3f
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9a;->A0D()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:I

    goto :goto_30

    :cond_48
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    return v3
.end method

.method public final A0T(Lcom/facebook/ads/redexgen/X/Vg;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A04:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final A0U(Lcom/facebook/ads/redexgen/X/EW;J)Z
    .registers 15

    iget v6, p1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9c;->A0E()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v1

    :goto_7
    const/4 v3, 0x1

    if-eqz v1, :cond_a9

    if-nez v4, :cond_23

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v0, 0x71

    if-eq v2, v0, :cond_70

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    const/4 v0, -0x1

    if-eq v6, v0, :cond_38

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/9a;->A09:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v6, v0, v3}, Lcom/facebook/ads/redexgen/X/9z;->A0A(ILcom/facebook/ads/redexgen/X/9x;Z)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9x;->A03:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    :cond_38
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/9c;->A0S(Lcom/facebook/ads/redexgen/X/9a;)Z

    move-result v0

    xor-int/2addr v3, v0

    return v3

    :cond_3e
    invoke-direct {p0, v4, p2, p3}, Lcom/facebook/ads/redexgen/X/9c;->A03(Lcom/facebook/ads/redexgen/X/9a;J)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v2

    if-nez v2, :cond_4a

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/9c;->A0S(Lcom/facebook/ads/redexgen/X/9a;)Z

    move-result v0

    xor-int/2addr v3, v0

    return v3

    :cond_4a
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    invoke-virtual {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/9c;->A0J(Lcom/facebook/ads/redexgen/X/9b;I)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/9c;->A09(Lcom/facebook/ads/redexgen/X/9a;Lcom/facebook/ads/redexgen/X/9b;)Z

    move-result v0

    if-nez v0, :cond_82

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/9c;->A0S(Lcom/facebook/ads/redexgen/X/9a;)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9b

    xor-int/2addr v3, v4

    return v3

    :cond_70
    sget-object v3, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v2, "pn8srZEQfSJzxw"

    const/4 v0, 0x6

    aput-object v2, v3, v0

    const-string v2, "zNd"

    const/4 v0, 0x0

    aput-object v2, v3, v0

    invoke-virtual {p0, v4, v6}, Lcom/facebook/ads/redexgen/X/9c;->A0J(Lcom/facebook/ads/redexgen/X/9b;I)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    :cond_82
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A06:Z

    if-eqz v0, :cond_96

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/9c;->A07:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9c;->A0A:Lcom/facebook/ads/redexgen/X/9x;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/9c;->A0B:Lcom/facebook/ads/redexgen/X/9y;

    iget v9, p0, Lcom/facebook/ads/redexgen/X/9c;->A01:I

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/9c;->A09:Z

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/9z;->A03(ILcom/facebook/ads/redexgen/X/9x;Lcom/facebook/ads/redexgen/X/9y;IZ)I

    move-result v6

    :cond_96
    move-object v4, v1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    goto/16 :goto_7

    :cond_9b
    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A0C:[Ljava/lang/String;

    const-string v1, "009NTdXku0rfOoGLKxDbxOM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "1WlPwvG5U3NzzyaZC20RJwC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    xor-int/2addr v3, v4

    return v3

    :cond_a9
    return v3
.end method

.method public final A0V(Z)Z
    .registers 3

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9c;->A09:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9c;->A08()Z

    move-result v0

    return v0
.end method
