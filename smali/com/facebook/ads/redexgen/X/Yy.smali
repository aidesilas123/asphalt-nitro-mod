###### Class com.facebook.ads.redexgen.X.AbstractC1512Yy (com.facebook.ads.redexgen.X.Yy)
.class public abstract Lcom/facebook/ads/redexgen/X/Yy;
.super Lcom/facebook/ads/redexgen/X/4Y;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ufm8s7LRmOM7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sIBwdoM05ajejE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0NxvrnR7UZDHrBy4xVhLU5lsqzWJ5R3x"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FsILnIqpIa8iE3wffvJrO4tNlZdDmpUd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wKnqjXSh8f61FKWyknAGi8xlXXoDdiLA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lpMPMGmveEx5YZPPZgDkriuB4nzdouJK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fQPzW90JHWOApVaaQbndX59CGXgCnXlm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Pp9SKBa6RS3IfLIGXA9e4oeVKGHa5CsE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Yy;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Y;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Z

    return-void
.end method


# virtual methods
.method public final A0D(Lcom/facebook/ads/redexgen/X/4u;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0b()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/4X;Lcom/facebook/ads/redexgen/X/4X;)Z
    .registers 11

    move-object v2, p1

    if-eqz p2, :cond_1d

    iget v1, p2, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    if-ne v1, v0, :cond_f

    iget v1, p2, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    if-eq v1, v0, :cond_1d

    :cond_f
    iget v3, p2, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    iget v4, p2, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    iget v5, p3, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    iget v6, p3, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Yy;->A0T(Lcom/facebook/ads/redexgen/X/4u;IIII)Z

    move-result v0

    return v0

    :cond_1d
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Yy;->A0R(Lcom/facebook/ads/redexgen/X/4u;)Z

    move-result v0

    return v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/4X;Lcom/facebook/ads/redexgen/X/4X;)Z
    .registers 12

    iget v4, p2, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    iget v5, p2, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    move-object v3, p1

    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    if-nez p3, :cond_33

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    :goto_d
    if-nez p3, :cond_30

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    :goto_13
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    if-nez v0, :cond_36

    if-ne v4, v6, :cond_1d

    if-eq v5, v7, :cond_36

    :cond_1d
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {v2, v6, v7, v1, v0}, Landroid/view/View;->layout(IIII)V

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Yy;->A0T(Lcom/facebook/ads/redexgen/X/4u;IIII)Z

    move-result v0

    return v0

    :cond_30
    iget v7, p3, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    goto :goto_13

    :cond_33
    iget v6, p3, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    goto :goto_d

    :cond_36
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Yy;->A0S(Lcom/facebook/ads/redexgen/X/4u;)Z

    move-result v0

    return v0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/4X;Lcom/facebook/ads/redexgen/X/4X;)Z
    .registers 11

    iget v1, p2, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    move-object v2, p1

    if-ne v1, v0, :cond_d

    iget v1, p2, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    if-eq v1, v0, :cond_1b

    :cond_d
    iget v3, p2, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    iget v4, p2, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    iget v5, p3, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    iget v6, p3, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Yy;->A0T(Lcom/facebook/ads/redexgen/X/4u;IIII)Z

    move-result v0

    return v0

    :cond_1b
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Yy;->A0O(Lcom/facebook/ads/redexgen/X/4u;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/4X;Lcom/facebook/ads/redexgen/X/4X;)Z
    .registers 15

    iget v6, p3, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    iget v7, p3, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    move-object v5, p2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A0h()Z

    move-result v0

    if-eqz v0, :cond_23

    iget v8, p3, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    iget v9, p3, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    :goto_f
    move-object v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yy;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_28

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    iget v8, p4, Lcom/facebook/ads/redexgen/X/4X;->A01:I

    iget v9, p4, Lcom/facebook/ads/redexgen/X/4X;->A03:I

    goto :goto_f

    :cond_28
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yy;->A01:[Ljava/lang/String;

    const-string v1, "7F8ns227Orjao7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Yy;->A0U(Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/4u;IIII)Z

    move-result v0

    return v0
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/4u;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4Y;->A0C(Lcom/facebook/ads/redexgen/X/4u;)V

    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/4u;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4Y;->A0C(Lcom/facebook/ads/redexgen/X/4u;)V

    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/4u;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4Y;->A0C(Lcom/facebook/ads/redexgen/X/4u;)V

    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/4u;Z)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4Y;->A0C(Lcom/facebook/ads/redexgen/X/4u;)V

    return-void
.end method

.method public abstract A0R(Lcom/facebook/ads/redexgen/X/4u;)Z
.end method

.method public abstract A0S(Lcom/facebook/ads/redexgen/X/4u;)Z
.end method

.method public abstract A0T(Lcom/facebook/ads/redexgen/X/4u;IIII)Z
.end method

.method public abstract A0U(Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/4u;IIII)Z
.end method
