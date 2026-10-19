###### Class com.facebook.ads.redexgen.X.C07262z (com.facebook.ads.redexgen.X.2z)
.class public final Lcom/facebook/ads/redexgen/X/2z;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/ViewParent;

.field public A01:Landroid/view/ViewParent;

.field public A02:Z

.field public A03:[I

.field public final A04:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "efs8eZdEWHsCfUb6qOzicmMnQm4SneBY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GPD1kjm6fR3i7blABsL8PkfqVt5tQ0ec"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1ZMAOqgxiysbgCK2QhJ8YR6mzQdOOVTU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tADzoHnDRwqyF4JfOWpRm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2dCxtsKJi8key4A0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YZUwpVg0T4azRRaUQd2X9mlkfrI9cQeh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "C6BrW2LKkOXM7XSn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2z;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    return-void
.end method

.method private A00(I)Landroid/view/ViewParent;
    .registers 3

    packed-switch p1, :pswitch_data_c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2z;->A00:Landroid/view/ViewParent;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2z;->A01:Landroid/view/ViewParent;

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private A01(ILandroid/view/ViewParent;)V
    .registers 3

    packed-switch p1, :pswitch_data_a

    :goto_3
    return-void

    :pswitch_4
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2z;->A00:Landroid/view/ViewParent;

    goto :goto_3

    :pswitch_7
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2z;->A01:Landroid/view/ViewParent;

    goto :goto_3

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final A02()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2z;->A03(I)V

    return-void
.end method

.method public final A03(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2z;->A00(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-static {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/3X;->A02(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2z;->A01(ILandroid/view/ViewParent;)V

    :cond_f
    return-void
.end method

.method public final A04(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2z;->A02:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3H;->A08(Landroid/view/View;)V

    :cond_9
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/2z;->A02:Z

    return-void
.end method

.method public final A05()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2z;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A06()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2z;->A02:Z

    return v0
.end method

.method public final A07(FF)Z
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2z;->A06()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_14

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2z;->A00(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3X;->A06(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0

    :cond_14
    return v0
.end method

.method public final A08(FFZ)Z
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2z;->A06()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_14

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2z;->A00(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3X;->A07(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0

    :cond_14
    return v0
.end method

.method public final A09(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2z;->A00(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final A0A(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2z;->A0B(II)Z

    move-result v0

    return v0
.end method

.method public final A0B(II)Z
    .registers 8

    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/2z;->A09(I)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    return v4

    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2z;->A06()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2z;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_50

    sget-object v2, Lcom/facebook/ads/redexgen/X/2z;->A05:[Ljava/lang/String;

    const-string v1, "WHooJguTbRSPJrOooyt3LEnarcCTCzBe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "8Bjeqw0rr3DdKBFvYwfvH0FxnGa8049d"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    :goto_31
    if-eqz v3, :cond_56

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-static {v3, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3X;->A08(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-direct {p0, p2, v3}, Lcom/facebook/ads/redexgen/X/2z;->A01(ILandroid/view/ViewParent;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-static {v3, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3X;->A05(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return v4

    :cond_44
    instance-of v0, v3, Landroid/view/View;

    if-eqz v0, :cond_4b

    move-object v1, v3

    check-cast v1, Landroid/view/View;

    :cond_4b
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_31

    :cond_50
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_56
    const/4 v0, 0x0

    return v0
.end method

.method public final A0C(IIII[I)Z
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/2z;->A0D(IIII[II)Z

    move-result v0

    return v0
.end method

.method public final A0D(IIII[II)Z
    .registers 21

    move-object v6, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2z;->A06()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_4d

    move/from16 v13, p6

    invoke-direct {p0, v13}, Lcom/facebook/ads/redexgen/X/2z;->A00(I)Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_11

    return v5

    :cond_11
    const/4 v3, 0x1

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v4, p5

    if-nez v9, :cond_23

    if-nez v10, :cond_23

    if-nez v11, :cond_23

    if-eqz v12, :cond_47

    :cond_23
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_30

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v4, v5

    aget v1, v4, v3

    :cond_30
    iget-object v8, v6, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-static/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/3X;->A03(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    if-eqz v4, :cond_46

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v4, v5

    sub-int/2addr v0, v2

    aput v0, v4, v5

    aget v0, v4, v3

    sub-int/2addr v0, v1

    aput v0, v4, v3

    :cond_46
    return v3

    :cond_47
    if-eqz v4, :cond_4d

    aput v5, v4, v5

    aput v5, v4, v3

    :cond_4d
    return v5
.end method

.method public final A0E(II[I[I)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/2z;->A0F(II[I[II)Z

    move-result v0

    return v0
.end method

.method public final A0F(II[I[II)Z
    .registers 22

    move-object/from16 v14, p3

    move-object/from16 v1, p0

    move-object v4, v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2z;->A06()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_a6

    move/from16 v15, p5

    invoke-direct {v1, v15}, Lcom/facebook/ads/redexgen/X/2z;->A00(I)Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_15

    return v9

    :cond_15
    const/4 v8, 0x1

    move/from16 v12, p1

    move-object/from16 v3, p4

    move/from16 v13, p2

    if-nez v12, :cond_20

    if-eqz v13, :cond_a0

    :cond_20
    const/4 v7, 0x0

    const/4 v6, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2z;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_9a

    sget-object v2, Lcom/facebook/ads/redexgen/X/2z;->A05:[Ljava/lang/String;

    const-string v1, "3VbjZKhXDsexEmt2meqPVZABMNEQkFPW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_41

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    aget v7, v3, v9

    aget v6, v3, v8

    :cond_41
    if-nez v14, :cond_67

    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/2z;->A03:[I

    sget-object v2, Lcom/facebook/ads/redexgen/X/2z;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8b

    sget-object v2, Lcom/facebook/ads/redexgen/X/2z;->A05:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_65

    :goto_60
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/2z;->A03:[I

    :cond_65
    iget-object v14, v4, Lcom/facebook/ads/redexgen/X/2z;->A03:[I

    :cond_67
    aput v9, v14, v9

    aput v9, v14, v8

    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-static/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/3X;->A04(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz v3, :cond_81

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2z;->A04:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v3, v9

    sub-int/2addr v0, v7

    aput v0, v3, v9

    aget v0, v3, v8

    sub-int/2addr v0, v6

    aput v0, v3, v8

    :cond_81
    aget v0, v14, v9

    if-nez v0, :cond_89

    aget v0, v14, v8

    if-eqz v0, :cond_8a

    :cond_89
    const/4 v9, 0x1

    :cond_8a
    return v9

    :cond_8b
    sget-object v2, Lcom/facebook/ads/redexgen/X/2z;->A05:[Ljava/lang/String;

    const-string v1, "gHL5QaZEq3qu3ZW6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "on2hgQBHubksAtN0"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v5, :cond_65

    goto :goto_60

    :cond_9a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a0
    if-eqz v3, :cond_a6

    aput v9, v3, v9

    aput v9, v3, v8

    :cond_a6
    return v9
.end method
