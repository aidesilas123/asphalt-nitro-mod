###### Class com.facebook.ads.redexgen.X.C07614k (com.facebook.ads.redexgen.X.4k)
.class public final Lcom/facebook/ads/redexgen/X/4k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/4j;

.field public A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4u;",
            ">;"
        }
    .end annotation
.end field

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/4s;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4u;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4u;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4u;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A08:Lcom/facebook/ads/redexgen/X/ED;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ulA9tMpXJ0Fgz3L6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kmBp6JcSqPlb9eogqvbvj6g5ppHVaWSS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "klPqAM4BpBJNr6xIOjiQhoS6UO4TrOHS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7VyM9GgXJuu8YzSYQI3HrMroeBYRJajD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jF2bnw6E6wYHKm8plX11kYiLrSAbSJmD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6pBnRch9VxXRPJwtqH0gd323b09mKXXU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Clk2oRExhn8z5HC1wWkAqM8aEwWEfAA8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Myq33IQdIYqIzBMhSJhfspyke76FBM0c"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4k;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ED;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A02:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A07:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    return-void
.end method

.method private final A00(IZ)Landroid/view/View;
    .registers 5

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/4k;->A0I(IZJ)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    return-object v0
.end method

.method private final A01(I)Lcom/facebook/ads/redexgen/X/4u;
    .registers 12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A02:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_c

    :cond_b
    return-object v9

    :cond_c
    const/4 v2, 0x0

    :goto_d
    const/16 v7, 0x20

    if-ge v2, v8, :cond_2c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0i()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0I()I

    move-result v0

    if-ne v0, p1, :cond_29

    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/4u;->A0T(I)V

    return-object v1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0A()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A00:Lcom/facebook/ads/redexgen/X/ZE;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZE;->A0D(I)I

    move-result v1

    if-lez v1, :cond_72

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0D()I

    move-result v0

    if-ge v1, v0, :cond_72

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4Q;->A04(I)J

    move-result-wide v5

    const/4 v4, 0x0

    :goto_53
    if-ge v4, v8, :cond_72

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4u;->A0i()Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4u;->A0K()J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-nez v0, :cond_6f

    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/4u;->A0T(I)V

    return-object v3

    :cond_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_72
    return-object v9
.end method

.method private final A02(IZ)Lcom/facebook/ads/redexgen/X/4u;
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0i()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0I()I

    move-result v0

    if-ne v0, p1, :cond_37

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0b()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4r;->A09:Z

    if-nez v0, :cond_31

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    if-nez v0, :cond_37

    :cond_31
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0T(I)V

    return-object v1

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3a
    if-nez p2, :cond_97

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/40;->A08(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_97

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/ED;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/40;->A0G(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/40;->A07(Landroid/view/View;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_6c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/40;->A0C(I)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4k;->A0W(Landroid/view/View;)V

    const/16 v0, 0x2020

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0T(I)V

    return-object v4

    :cond_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d7

    const/16 v1, 0x34

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_9e
    if-ge v2, v3, :cond_bf

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0b()Z

    move-result v0

    if-nez v0, :cond_bc

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0I()I

    move-result v0

    if-ne v0, p1, :cond_bc

    if-nez p2, :cond_bb

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_bb
    return-object v1

    :cond_bc
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_bf
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A03(JIZ)Lcom/facebook/ads/redexgen/X/4u;
    .registers 12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    :goto_8
    if-ltz v4, :cond_5e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4u;->A0K()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_5b

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4u;->A0i()Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4u;->A0H()I

    move-result v0

    if-ne p3, v0, :cond_47

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0T(I)V

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    if-eqz v0, :cond_11f

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_f0

    :goto_41
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_47
    if-nez p4, :cond_5b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ED;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4k;->A0V(Landroid/view/View;)V

    :cond_5b
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_5e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    :goto_66
    const/4 v6, 0x0

    if-ltz v4, :cond_138

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4u;->A0K()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_ec

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4u;->A0H()I

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_c3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "lrD7iCy3KBiO8gA6PsFToJiVZrW1xMAl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "amz9CZtibeJcU8bEqG7a4ZYgRNeZgxWk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne p3, v5, :cond_d2

    :goto_98
    if-nez p4, :cond_be

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_bf

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "or4YmCu0ppqzW1VFAnuQtpcwvOCNSyKL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "x7G8xrEgau2heO3LEdjWfX9qC3RDyC0d"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_be
    :goto_be
    return-object v3

    :cond_bf
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_be

    :cond_c3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "kYzWBiiTSiU3KogqfJ4EJctPAodLTQqF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kIBKgO4naDZyukeXVXxcwMENrZxoY36q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p3, v5, :cond_d2

    goto :goto_98

    :cond_d2
    if-nez p4, :cond_ec

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/4k;->A07(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_130

    goto/16 :goto_41

    :cond_ec
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_66

    :cond_f0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "q3aWXTgT7NsVf007"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    if-nez v0, :cond_11f

    const/4 v5, 0x2

    const/16 v4, 0xe

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_120

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "NC6bFXUosLdTEwJsXrsHGkbXBsQUMG7q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v5, v4}, Lcom/facebook/ads/redexgen/X/4u;->A0U(II)V

    :cond_11f
    :goto_11f
    return-object v3

    :cond_120
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "kBSMDIkt47Rx4hHhTamY1xnSrMWRxYxp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kToZLwND7zKVFlbtf8XZb6UwHA5zPLAu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v5, v4}, Lcom/facebook/ads/redexgen/X/4u;->A0U(II)V

    goto :goto_11f

    :cond_130
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "2lrbY7WLbUziAPe6QkcwvBQ2VEr9QFta"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v6

    :cond_138
    return-object v6
.end method

.method public static A04(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .registers 1

    const/16 v0, 0x319

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/4k;->A09:[B

    return-void

    :array_a
    .array-data 1
        -0x5bt
        -0x12t
        -0x8t
        -0x3at
        -0x7t
        -0x7t
        -0x1at
        -0x18t
        -0x13t
        -0x16t
        -0x17t
        -0x41t
        -0x3bt
        -0x20t
        0x27t
        0x1et
        0x1et
        0x2bt
        0x1dt
        0x2ct
        -0xet
        -0x35t
        -0x30t
        -0x3et
        -0x15t
        0x16t
        0x7t
        0xft
        -0x3et
        0x5t
        0x11t
        0x17t
        0x10t
        0x16t
        -0x24t
        -0x26t
        -0x21t
        0x24t
        0x25t
        0x12t
        0x25t
        0x16t
        -0x15t
        -0x63t
        -0x45t
        -0x3at
        -0x3at
        -0x41t
        -0x42t
        0x7at
        -0x33t
        -0x43t
        -0x34t
        -0x45t
        -0x36t
        0x7at
        -0x30t
        -0x3dt
        -0x41t
        -0x2ft
        0x7at
        -0x2ft
        -0x3dt
        -0x32t
        -0x3et
        0x7at
        -0x45t
        -0x38t
        0x7at
        -0x3dt
        -0x38t
        -0x30t
        -0x45t
        -0x3at
        -0x3dt
        -0x42t
        0x7at
        -0x30t
        -0x3dt
        -0x41t
        -0x2ft
        -0x78t
        0x7at
        -0x5dt
        -0x38t
        -0x30t
        -0x45t
        -0x3at
        -0x3dt
        -0x42t
        0x7at
        -0x30t
        -0x3dt
        -0x41t
        -0x2ft
        -0x33t
        0x7at
        -0x43t
        -0x45t
        -0x38t
        -0x38t
        -0x37t
        -0x32t
        0x7at
        -0x44t
        -0x41t
        0x7at
        -0x34t
        -0x41t
        -0x31t
        -0x33t
        -0x41t
        -0x42t
        0x7at
        -0x40t
        -0x34t
        -0x37t
        -0x39t
        0x7at
        -0x33t
        -0x43t
        -0x34t
        -0x45t
        -0x36t
        -0x7at
        0x7at
        -0x32t
        -0x3et
        -0x41t
        -0x2dt
        0x7at
        -0x33t
        -0x3et
        -0x37t
        -0x31t
        -0x3at
        -0x42t
        0x7at
        -0x34t
        -0x41t
        -0x44t
        -0x37t
        -0x31t
        -0x38t
        -0x42t
        0x7at
        -0x40t
        -0x34t
        -0x37t
        -0x39t
        0x7at
        -0x34t
        -0x41t
        -0x43t
        -0x2dt
        -0x43t
        -0x3at
        -0x41t
        -0x34t
        0x7at
        -0x36t
        -0x37t
        -0x37t
        -0x3at
        -0x78t
        -0x7t
        0x1et
        0x13t
        0x1ft
        0x1et
        0x23t
        0x19t
        0x23t
        0x24t
        0x15t
        0x1et
        0x13t
        0x29t
        -0x30t
        0x14t
        0x15t
        0x24t
        0x15t
        0x13t
        0x24t
        0x15t
        0x14t
        -0x22t
        -0x30t
        -0x7t
        0x1et
        0x26t
        0x11t
        0x1ct
        0x19t
        0x14t
        -0x30t
        0x19t
        0x24t
        0x15t
        0x1dt
        -0x30t
        0x20t
        0x1ft
        0x23t
        0x19t
        0x24t
        0x19t
        0x1ft
        0x1et
        -0x30t
        -0xdt
        0x18t
        0xdt
        0x19t
        0x18t
        0x1dt
        0x13t
        0x1dt
        0x1et
        0xft
        0x18t
        0xdt
        0x23t
        -0x36t
        0xet
        0xft
        0x1et
        0xft
        0xdt
        0x1et
        0xft
        0xet
        -0x28t
        -0x36t
        -0xdt
        0x18t
        0x20t
        0xbt
        0x16t
        0x13t
        0xet
        -0x36t
        0x20t
        0x13t
        0xft
        0x21t
        -0x36t
        0x12t
        0x19t
        0x16t
        0xet
        0xft
        0x1ct
        -0x36t
        0xbt
        0xet
        0xbt
        0x1at
        0x1et
        0xft
        0x1ct
        -0x36t
        0x1at
        0x19t
        0x1dt
        0x13t
        0x1et
        0x13t
        0x19t
        0x18t
        -0x7dt
        -0x58t
        -0x50t
        -0x65t
        -0x5at
        -0x5dt
        -0x62t
        0x5at
        -0x5dt
        -0x52t
        -0x61t
        -0x59t
        0x5at
        -0x56t
        -0x57t
        -0x53t
        -0x5dt
        -0x52t
        -0x5dt
        -0x57t
        -0x58t
        0x5at
        -0x3ft
        -0x2ft
        -0x20t
        -0x31t
        -0x22t
        -0x22t
        -0x2dt
        -0x2et
        -0x72t
        -0x23t
        -0x20t
        -0x72t
        -0x31t
        -0x1et
        -0x1et
        -0x31t
        -0x2ft
        -0x2at
        -0x2dt
        -0x2et
        -0x72t
        -0x1ct
        -0x29t
        -0x2dt
        -0x1bt
        -0x1ft
        -0x72t
        -0x25t
        -0x31t
        -0x19t
        -0x72t
        -0x24t
        -0x23t
        -0x1et
        -0x72t
        -0x30t
        -0x2dt
        -0x72t
        -0x20t
        -0x2dt
        -0x2ft
        -0x19t
        -0x2ft
        -0x26t
        -0x2dt
        -0x2et
        -0x64t
        -0x72t
        -0x29t
        -0x1ft
        -0x3ft
        -0x2ft
        -0x20t
        -0x31t
        -0x22t
        -0x58t
        -0x23t
        -0xat
        -0x7t
        -0x57t
        -0x13t
        -0x12t
        -0x3t
        -0x16t
        -0x14t
        -0xft
        -0x12t
        -0x13t
        -0x57t
        -0x1t
        -0xet
        -0x12t
        0x0t
        -0x57t
        -0x4t
        -0xft
        -0x8t
        -0x2t
        -0xbt
        -0x13t
        -0x57t
        -0x15t
        -0x12t
        -0x57t
        -0x5t
        -0x12t
        -0xat
        -0x8t
        -0x1t
        -0x12t
        -0x13t
        -0x57t
        -0x11t
        -0x5t
        -0x8t
        -0xat
        -0x57t
        -0x25t
        -0x12t
        -0x14t
        0x2t
        -0x14t
        -0xbt
        -0x12t
        -0x5t
        -0x21t
        -0xet
        -0x12t
        0x0t
        -0x57t
        -0x15t
        -0x12t
        -0x11t
        -0x8t
        -0x5t
        -0x12t
        -0x57t
        -0xet
        -0x3t
        -0x57t
        -0x14t
        -0x16t
        -0x9t
        -0x57t
        -0x15t
        -0x12t
        -0x57t
        -0x5t
        -0x12t
        -0x14t
        0x2t
        -0x14t
        -0xbt
        -0x12t
        -0x13t
        -0x3dt
        -0x57t
        -0x66t
        -0x48t
        -0x41t
        -0x51t
        -0x4ct
        -0x53t
        0x66t
        -0x46t
        -0x4bt
        0x66t
        -0x48t
        -0x55t
        -0x57t
        -0x41t
        -0x57t
        -0x4et
        -0x55t
        0x66t
        -0x59t
        -0x4ct
        0x66t
        -0x51t
        -0x53t
        -0x4ct
        -0x4bt
        -0x48t
        -0x55t
        -0x56t
        0x66t
        -0x44t
        -0x51t
        -0x55t
        -0x43t
        0x66t
        -0x52t
        -0x4bt
        -0x4et
        -0x56t
        -0x55t
        -0x48t
        0x74t
        0x66t
        -0x61t
        -0x4bt
        -0x45t
        0x66t
        -0x47t
        -0x52t
        -0x4bt
        -0x45t
        -0x4et
        -0x56t
        0x66t
        -0x54t
        -0x51t
        -0x48t
        -0x47t
        -0x46t
        0x66t
        -0x57t
        -0x59t
        -0x4et
        -0x4et
        0x66t
        -0x47t
        -0x46t
        -0x4bt
        -0x4at
        -0x71t
        -0x53t
        -0x4ct
        -0x4bt
        -0x48t
        -0x51t
        -0x4ct
        -0x53t
        -0x64t
        -0x51t
        -0x55t
        -0x43t
        0x6et
        -0x44t
        -0x51t
        -0x55t
        -0x43t
        0x6ft
        0x66t
        -0x58t
        -0x55t
        -0x54t
        -0x4bt
        -0x48t
        -0x55t
        0x66t
        -0x57t
        -0x59t
        -0x4et
        -0x4et
        -0x51t
        -0x4ct
        -0x53t
        0x66t
        -0x48t
        -0x55t
        -0x57t
        -0x41t
        -0x57t
        -0x4et
        -0x55t
        0x74t
        -0x13t
        -0x15t
        -0x6t
        -0x24t
        -0x11t
        -0x15t
        -0x3t
        -0x34t
        -0xbt
        -0x8t
        -0x2at
        -0xbt
        -0x7t
        -0x11t
        -0x6t
        -0x11t
        -0xbt
        -0xct
        -0x39t
        -0xct
        -0x16t
        -0x26t
        -0x1t
        -0xat
        -0x15t
        -0x5at
        -0x8t
        -0x15t
        -0x6t
        -0x5t
        -0x8t
        -0xct
        -0x15t
        -0x16t
        -0x5at
        -0x19t
        -0x5at
        -0x4t
        -0x11t
        -0x15t
        -0x3t
        -0x5at
        -0x6t
        -0x12t
        -0x19t
        -0x6t
        -0x5at
        -0x11t
        -0x7t
        -0x5at
        -0x11t
        -0x13t
        -0xct
        -0xbt
        -0x8t
        -0x15t
        -0x16t
        -0x4ct
        -0x5at
        -0x21t
        -0xbt
        -0x5t
        -0x5at
        -0xdt
        -0x5t
        -0x7t
        -0x6t
        -0x5at
        -0x17t
        -0x19t
        -0xet
        -0xet
        -0x5at
        -0x7t
        -0x6t
        -0xbt
        -0xat
        -0x31t
        -0x13t
        -0xct
        -0xbt
        -0x8t
        -0x11t
        -0xct
        -0x13t
        -0x5at
        -0x18t
        -0x15t
        -0x14t
        -0xbt
        -0x8t
        -0x15t
        -0x5at
        -0x8t
        -0x15t
        -0x6t
        -0x5t
        -0x8t
        -0xct
        -0x11t
        -0xct
        -0x13t
        -0x5at
        -0x6t
        -0x12t
        -0x11t
        -0x7t
        -0x5at
        -0x4t
        -0x11t
        -0x15t
        -0x3t
        -0x4ct
        -0x4et
        -0x50t
        -0x41t
        -0x5ft
        -0x4ct
        -0x50t
        -0x3et
        -0x6ft
        -0x46t
        -0x43t
        -0x65t
        -0x46t
        -0x42t
        -0x4ct
        -0x41t
        -0x4ct
        -0x46t
        -0x47t
        -0x74t
        -0x47t
        -0x51t
        -0x61t
        -0x3ct
        -0x45t
        -0x50t
        0x6bt
        -0x43t
        -0x50t
        -0x41t
        -0x40t
        -0x43t
        -0x47t
        -0x50t
        -0x51t
        0x6bt
        -0x54t
        0x6bt
        -0x3ft
        -0x4ct
        -0x50t
        -0x3et
        0x6bt
        -0x3et
        -0x4dt
        -0x4ct
        -0x52t
        -0x4dt
        0x6bt
        -0x51t
        -0x46t
        -0x50t
        -0x42t
        0x6bt
        -0x47t
        -0x46t
        -0x41t
        0x6bt
        -0x4dt
        -0x54t
        -0x3ft
        -0x50t
        0x6bt
        -0x54t
        0x6bt
        -0x5ft
        -0x4ct
        -0x50t
        -0x3et
        -0x6dt
        -0x46t
        -0x49t
        -0x51t
        -0x50t
        -0x43t
        -0x3ft
        -0x4at
        -0x32t
        -0x3ct
        -0x36t
        -0x37t
        0x75t
        -0x42t
        -0x3dt
        -0x47t
        -0x46t
        -0x33t
        0x75t
        -0x38t
        -0x43t
        -0x3ct
        -0x36t
        -0x3ft
        -0x47t
        0x75t
        -0x3dt
        -0x3ct
        -0x37t
        0x75t
        -0x49t
        -0x46t
        0x75t
        -0x7et
        -0x7at
        0x75t
        -0x4at
        -0x45t
        -0x37t
        -0x46t
        -0x39t
        0x75t
        -0x36t
        -0x3dt
        -0x43t
        -0x42t
        -0x47t
        -0x42t
        -0x3dt
        -0x44t
        0x75t
        -0x4at
        0x75t
        -0x35t
        -0x42t
        -0x46t
        -0x34t
        -0x71t
        -0x19t
        -0x1at
        -0x32t
        -0x1ft
        -0x23t
        -0x11t
        -0x36t
        -0x23t
        -0x25t
        -0xft
        -0x25t
        -0x1ct
        -0x23t
        -0x24t
    .end array-data
.end method

.method private final A06()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_10

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4k;->A07(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ED;->A10()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/ZD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZD;->A02()V

    :cond_22
    return-void
.end method

.method private final A07(I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A0d(Lcom/facebook/ads/redexgen/X/4u;Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private A08(Landroid/view/ViewGroup;Z)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v4, 0x1

    sub-int/2addr v5, v4

    :goto_6
    if-ltz v5, :cond_39

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_30

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_33

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "0ZJbYELQTNKw4GYvMFOIJ2JFgvUoupt2"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/4k;->A08(Landroid/view/ViewGroup;Z)V

    :cond_30
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_33
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_39
    if-nez p2, :cond_3c

    return-void

    :cond_3c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4b

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4a
    return-void

    :cond_4b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4a
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/4u;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1t()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3H;->A00(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3H;->A09(Landroid/view/View;I)V

    :cond_14
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3H;->A0F(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0T(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A09:Lcom/facebook/ads/redexgen/X/Yz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yz;->A0A()Lcom/facebook/ads/redexgen/X/2v;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3H;->A0B(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2v;)V

    :cond_2a
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4u;)V
    .registers 4

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A08(Landroid/view/ViewGroup;Z)V

    :cond_e
    return-void
.end method

.method private final A0B(Lcom/facebook/ads/redexgen/X/4u;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A07:Lcom/facebook/ads/redexgen/X/4l;

    if-eqz v0, :cond_16

    const/16 v2, 0x30b

    const/16 v1, 0xe

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0t:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/52;->A0B(Lcom/facebook/ads/redexgen/X/4u;)V

    :cond_27
    return-void
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/4u;)Z
    .registers 8

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    return v0

    :cond_f
    iget v0, p1, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    if-ltz v0, :cond_5b

    iget v1, p1, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0D()I

    move-result v0

    if-ge v1, v0, :cond_5b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4Q;->A03(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0H()I

    move-result v0

    if-eq v1, v0, :cond_3b

    return v5

    :cond_3b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0A()Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_5a

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0K()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4Q;->A04(I)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_59

    const/4 v5, 0x1

    :cond_59
    return v5

    :cond_5a
    return v0

    :cond_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd3

    const/16 v1, 0x3c

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/4u;IIJ)Z
    .registers 15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/4u;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0H()I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getNanoTime()J

    move-result-wide v5

    const-wide v1, 0x7fffffffffffffffL

    move-wide v7, p4

    cmp-long v0, v7, v1

    if-eqz v0, :cond_42

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/4j;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3c

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "We3abAYlnqMpJzTP"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/4j;->A0A(IJJ)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x0

    return v0

    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_42
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4Q;->A09(Lcom/facebook/ads/redexgen/X/4u;I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getNanoTime()J

    move-result-wide v0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/4j;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0H()I

    move-result v2

    sub-long/2addr v0, v5

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4j;->A05(IJ)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4k;->A09(Lcom/facebook/ads/redexgen/X/4u;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    if-eqz v0, :cond_68

    iput p3, p1, Lcom/facebook/ads/redexgen/X/4u;->A04:I

    :cond_68
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0E()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final A0F(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4u;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    return-object v0
.end method

.method public final A0G(I)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A00(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/4j;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/4j;

    if-nez v0, :cond_b

    new-instance v0, Lcom/facebook/ads/redexgen/X/4j;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4j;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/4j;

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/4j;

    return-object v0
.end method

.method public final A0I(IZJ)Lcom/facebook/ads/redexgen/X/4u;
    .registers 27

    move-object/from16 v2, p0

    move-object v2, v2

    move/from16 v13, p1

    if-ltz v13, :cond_2bd

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v0

    if-ge v13, v0, :cond_2bd

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_26

    invoke-direct {v2, v13}, Lcom/facebook/ads/redexgen/X/4k;->A01(I)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v11

    if-eqz v11, :cond_104

    const/4 v9, 0x1

    :cond_26
    :goto_26
    move/from16 v7, p2

    if-nez v11, :cond_50

    invoke-direct {v2, v13, v7}, Lcom/facebook/ads/redexgen/X/4k;->A02(IZ)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v11

    if-eqz v11, :cond_50

    invoke-direct {v2, v11}, Lcom/facebook/ads/redexgen/X/4k;->A0C(Lcom/facebook/ads/redexgen/X/4u;)Z

    move-result v0

    if-nez v0, :cond_101

    if-nez v7, :cond_4f

    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0T(I)V

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0d()Z

    move-result v0

    if-eqz v0, :cond_f6

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/ED;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0S()V

    :cond_4c
    :goto_4c
    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/4k;->A0b(Lcom/facebook/ads/redexgen/X/4u;)V

    :cond_4f
    const/4 v11, 0x0

    :cond_50
    :goto_50
    move-wide/from16 v14, p3

    if-nez v11, :cond_1f7

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A00:Lcom/facebook/ads/redexgen/X/ZE;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/ZE;->A0D(I)I

    move-result v5

    if-ltz v5, :cond_155

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0D()I

    move-result v0

    if-ge v5, v0, :cond_155

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4Q;->A03(I)I

    move-result v6

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0A()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4Q;->A04(I)J

    move-result-wide v0

    invoke-direct {v2, v0, v1, v6, v7}, Lcom/facebook/ads/redexgen/X/4k;->A03(JIZ)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v11

    if-eqz v11, :cond_8b

    iput v5, v11, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    const/4 v9, 0x1

    :cond_8b
    if-nez v11, :cond_a5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A04:Lcom/facebook/ads/redexgen/X/4s;

    if-eqz v0, :cond_a5

    invoke-virtual {v0, v2, v13, v6}, Lcom/facebook/ads/redexgen/X/4s;->A00(Lcom/facebook/ads/redexgen/X/4k;II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ED;->A1H(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v11

    if-eqz v11, :cond_12e

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0h()Z

    move-result v0

    if-nez v0, :cond_107

    :cond_a5
    if-nez v11, :cond_d5

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4k;->A0H()Lcom/facebook/ads/redexgen/X/4j;

    move-result-object v7

    sget-object v5, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v5, v0

    const/4 v0, 0x3

    aget-object v5, v5, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_287

    sget-object v5, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "3K2bfdY4Lns5cH4Uqi6qZhk44zURNmgZ"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4j;->A03(I)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v11

    if-eqz v11, :cond_d5

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0Q()V

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/ED;->A1C:Z

    if-eqz v0, :cond_d5

    invoke-direct {v2, v11}, Lcom/facebook/ads/redexgen/X/4k;->A0A(Lcom/facebook/ads/redexgen/X/4u;)V

    :cond_d5
    if-nez v11, :cond_1f7

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getNanoTime()J

    move-result-wide v18

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v14, v7

    if-eqz v0, :cond_1ac

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/4j;

    move/from16 v17, v6

    move-wide/from16 v20, v14

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/4j;->A0B(IJJ)Z

    move-result v0

    if-nez v0, :cond_1ac

    const/4 v0, 0x0

    return-object v0

    :cond_f6
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0i()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0O()V

    goto/16 :goto_4c

    :cond_101
    const/4 v9, 0x1

    goto/16 :goto_50

    :cond_104
    const/4 v9, 0x0

    goto/16 :goto_26

    :cond_107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x21c

    const/16 v1, 0x71

    const/16 v0, 0x4c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28d

    const/16 v1, 0x4a

    const/16 v0, 0x11

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa5

    const/16 v1, 0x2e

    const/16 v0, 0x76

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xd

    const/16 v1, 0x8

    const/16 v0, 0x7e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x23

    const/16 v1, 0x8

    const/16 v0, 0x77

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ac
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    sget-object v8, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v8, v0

    const/4 v0, 0x3

    aget-object v8, v8, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2b7

    sget-object v8, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "ofPrqBOY4KV1O5mmTOXtQojU6rRVoJMb"

    const/4 v0, 0x5

    aput-object v1, v8, v0

    const-string v1, "dfUBDtyf096LhSCdUEMmmzbvfUZbBbNe"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    invoke-virtual {v7, v5, v6}, Lcom/facebook/ads/redexgen/X/4Q;->A05(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v11

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ED;->A10()Z

    move-result v0

    if-eqz v0, :cond_1ea

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ED;->A0H(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/ED;

    move-result-object v1

    if-eqz v1, :cond_1ea

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v11, Lcom/facebook/ads/redexgen/X/4u;->A09:Ljava/lang/ref/WeakReference;

    :cond_1ea
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getNanoTime()J

    move-result-wide v0

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/4j;

    sub-long v0, v0, v18

    invoke-virtual {v5, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/4j;->A06(IJ)V

    :cond_1f7
    if-eqz v9, :cond_231

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    if-nez v0, :cond_231

    const/16 v1, 0x2000

    invoke-virtual {v11, v1}, Lcom/facebook/ads/redexgen/X/4u;->A0k(I)Z

    move-result v0

    if-eqz v0, :cond_231

    invoke-virtual {v11, v4, v1}, Lcom/facebook/ads/redexgen/X/4u;->A0U(II)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4r;->A0C:Z

    if-eqz v0, :cond_231

    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/4Y;->A00(Lcom/facebook/ads/redexgen/X/4u;)I

    move-result v0

    or-int/lit16 v5, v0, 0x1000

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/ED;->A05:Lcom/facebook/ads/redexgen/X/4Y;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0L()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v1, v11, v5, v0}, Lcom/facebook/ads/redexgen/X/4Y;->A09(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4u;ILjava/util/List;)Lcom/facebook/ads/redexgen/X/4X;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v11, v1}, Lcom/facebook/ads/redexgen/X/ED;->A1n(Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/4X;)V

    :cond_231
    const/4 v5, 0x0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    if-eqz v0, :cond_297

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0a()Z

    move-result v0

    if-eqz v0, :cond_297

    iput v13, v11, Lcom/facebook/ads/redexgen/X/4u;->A04:I

    :cond_244
    :goto_244
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_264

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4d;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_259
    iput-object v11, v4, Lcom/facebook/ads/redexgen/X/4d;->A00:Lcom/facebook/ads/redexgen/X/4u;

    if-eqz v9, :cond_262

    if-eqz v5, :cond_262

    :goto_25f
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/4d;->A02:Z

    return-object v11

    :cond_262
    const/4 v3, 0x0

    goto :goto_25f

    :cond_264
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/ED;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_27a

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/ED;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4d;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_259

    :cond_27a
    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_28d

    :cond_287
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_28d
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "WeHbAL2DpvJL4iRMn0O7hIhaGbvumhB7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v4, Lcom/facebook/ads/redexgen/X/4d;

    goto :goto_259

    :cond_297
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0a()Z

    move-result v0

    if-eqz v0, :cond_2a9

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0g()Z

    move-result v0

    if-nez v0, :cond_2a9

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0b()Z

    move-result v0

    if-eqz v0, :cond_244

    :cond_2a9
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A00:Lcom/facebook/ads/redexgen/X/ZE;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/ZE;->A0D(I)I

    move-result v12

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/4k;->A0D(Lcom/facebook/ads/redexgen/X/4u;IIJ)Z

    move-result v5

    goto :goto_244

    :cond_2b7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2bd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x10f

    const/16 v1, 0x16

    const/4 v0, 0x0

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xc

    const/4 v1, 0x1

    const/16 v0, 0x63

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x15

    const/16 v1, 0xe

    const/16 v0, 0x68

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0J()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A07:Ljava/util/List;

    return-object v0
.end method

.method public final A0K()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0M()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v2, :cond_2e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0M()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2e
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4k;->A02:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_49

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_49
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "w7WcMXH384MQxArKBWq9tfOfmOANhXYh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ji6HgViVTGyvfONq8Vqt8Uaju4D1iJHU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_6c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_5c
    if-ge v1, v2, :cond_6c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0M()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_6c
    return-void
.end method

.method public final A0L()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A02:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_c
    return-void
.end method

.method public final A0M()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4u;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4d;

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4d;->A01:Z

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method public final A0N()V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0A()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v5, :cond_50

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4u;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_34

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_34
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "kx9etu5Uswf3mlSSd54JM5SDJxoMGNTv"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kxxNK4Rys8aPJuu822sP3fs8sDM7v1G0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_4a

    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0T(I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0Y(Ljava/lang/Object;)V

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_4d
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4k;->A06()V

    :cond_50
    return-void
.end method

.method public final A0O()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1d

    :goto_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "kSelswvDf1EbxUzrii1mBr6dHJR0d4zj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kcuGN1lunmBh6z5P1vsNJWvgiUTpOK0Q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget v1, v3, Lcom/facebook/ads/redexgen/X/4c;->A00:I

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A03:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    :goto_3a
    if-ltz v4, :cond_6c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_56

    goto :goto_17

    :cond_56
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "kpxxdOz3cEfo3MLV8RPQuR2Jasv2n6jF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kgO1H2GjmHeLX2ZusVi9gFRUJKE1zGI0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    if-le v3, v0, :cond_6c

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/4k;->A07(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3a

    :cond_6c
    return-void
.end method

.method public final A0P()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4k;->A06()V

    return-void
.end method

.method public final A0Q(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/4k;->A03:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4k;->A0O()V

    return-void
.end method

.method public final A0R(II)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4u;

    if-eqz v1, :cond_1b

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    if-lt v0, p1, :cond_1b

    const/4 v0, 0x1

    invoke-virtual {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0W(IZ)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public final A0S(II)V
    .registers 13

    if-ge p1, p2, :cond_51

    move v8, p1

    move v7, p2

    const/4 v6, -0x1

    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v5, :cond_5b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4u;

    if-eqz v3, :cond_20

    iget v0, v3, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    if-lt v0, v8, :cond_20

    iget v0, v3, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    if-le v0, v7, :cond_23

    :cond_20
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_23
    iget v9, v3, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_55

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "kvvW4F2OCwdEIl1qwIuxYVFpmp0ugJY5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kzcCp2wTfEGQm2KGuN32b5oIYABnQWPG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v1, 0x0

    if-ne v9, p1, :cond_4d

    sub-int v0, p2, p1

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A0W(IZ)V

    goto :goto_20

    :cond_4d
    invoke-virtual {v3, v6, v1}, Lcom/facebook/ads/redexgen/X/4u;->A0W(IZ)V

    goto :goto_20

    :cond_51
    move v8, p2

    move v7, p1

    const/4 v6, 0x1

    goto :goto_5

    :cond_55
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5b
    return-void
.end method

.method public final A0T(II)V
    .registers 7

    add-int v3, p1, p2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_a
    if-ltz v2, :cond_27

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4u;

    if-nez v1, :cond_19

    :cond_16
    :goto_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_19
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    if-lt v0, p1, :cond_16

    if-ge v0, v3, :cond_16

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0T(I)V

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/4k;->A07(I)V

    goto :goto_16

    :cond_27
    return-void
.end method

.method public final A0U(IIZ)V
    .registers 8

    add-int v3, p1, p2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_a
    if-ltz v2, :cond_2e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4u;

    if-eqz v1, :cond_1e

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    if-lt v0, v3, :cond_21

    neg-int v0, p2

    invoke-virtual {v1, v0, p3}, Lcom/facebook/ads/redexgen/X/4u;->A0W(IZ)V

    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_21
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    if-lt v0, p1, :cond_1e

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0T(I)V

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/4k;->A07(I)V

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public final A0V(Landroid/view/View;)V
    .registers 4

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ED;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A01(Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/4k;)Lcom/facebook/ads/redexgen/X/4k;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0F(Lcom/facebook/ads/redexgen/X/4u;Z)Z

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0O()V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4k;->A0b(Lcom/facebook/ads/redexgen/X/4u;)V

    return-void
.end method

.method public final A0W(Landroid/view/View;)V
    .registers 7

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ED;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v2

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0k(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/ED;->A21(Lcom/facebook/ads/redexgen/X/4u;)Z

    move-result v0

    if-eqz v0, :cond_80

    :cond_1a
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0b()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_31

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_31
    sget-object v3, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "cscHAR4ImnAFzAxZJ9yqjMNa91RcN8Vb"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const-string v1, "pspTzLDNU823NSI2ymIgIumCpfqVQlal"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    if-eqz v4, :cond_4f

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0A()Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_4f
    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0X(Lcom/facebook/ads/redexgen/X/4k;Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    :cond_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    const/16 v1, 0x7a

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A02:Ljava/util/ArrayList;

    if-nez v0, :cond_8b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A02:Ljava/util/ArrayList;

    :cond_8b
    const/4 v0, 0x1

    invoke-virtual {v2, p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0X(Lcom/facebook/ads/redexgen/X/4k;Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_94
    return-void
.end method

.method public final A0X(Landroid/view/View;)V
    .registers 5

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ED;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0e()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/ED;->removeDetachedView(Landroid/view/View;Z)V

    :cond_10
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0d()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0S()V

    :cond_19
    :goto_19
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4k;->A0b(Lcom/facebook/ads/redexgen/X/4u;)V

    return-void

    :cond_1d
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0i()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0O()V

    goto :goto_19
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/4Q;Lcom/facebook/ads/redexgen/X/4Q;Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4k;->A0P()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4k;->A0H()Lcom/facebook/ads/redexgen/X/4j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4j;->A08(Lcom/facebook/ads/redexgen/X/4Q;Lcom/facebook/ads/redexgen/X/4Q;Z)V

    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/4j;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/4j;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4j;->A04()V

    :cond_7
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/4j;

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getAdapter()Lcom/facebook/ads/redexgen/X/4Q;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4j;->A07(Lcom/facebook/ads/redexgen/X/4Q;)V

    :cond_14
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/4s;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4k;->A04:Lcom/facebook/ads/redexgen/X/4s;

    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/4u;)V
    .registers 11

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0d()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_10

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_59

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x125

    const/16 v1, 0x38

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0d()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_41

    const/4 v4, 0x1

    :cond_41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0e()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_76

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_76
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "QZZbfikyhDCMiV1imXgamooHNWBI4VfH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_15f

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0h()Z

    move-result v0

    if-nez v0, :cond_138

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0E(Lcom/facebook/ads/redexgen/X/4u;)Z

    move-result v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    if-eqz v0, :cond_135

    if-eqz v8, :cond_135

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Q;->A0B(Lcom/facebook/ads/redexgen/X/4u;)Z

    move-result v0

    if-eqz v0, :cond_135

    const/4 v0, 0x1

    :goto_9c
    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez v0, :cond_a6

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0j()Z

    move-result v0

    if-eqz v0, :cond_117

    :cond_a6
    iget v5, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_12b

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "JXkbPmQXP2BcwiEI3FqqjfiGok6rwhAB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lez v5, :cond_111

    :goto_c4
    const/16 v0, 0x20e

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0k(I)Z

    move-result v0

    if-nez v0, :cond_111

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    if-lt v2, v0, :cond_dd

    if-lez v2, :cond_dd

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/4k;->A07(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_dd
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ED;->A10()Z

    move-result v0

    if-eqz v0, :cond_10b

    if-lez v2, :cond_10b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/ZD;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZD;->A05(I)Z

    move-result v0

    if-nez v0, :cond_10b

    add-int/lit8 v2, v2, -0x1

    :goto_f3
    if-ltz v2, :cond_109

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4u;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/ZD;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ZD;->A05(I)Z

    move-result v0

    if-nez v0, :cond_128

    :cond_109
    add-int/lit8 v2, v2, 0x1

    :cond_10b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v7, 0x1

    :cond_111
    if-nez v7, :cond_117

    invoke-virtual {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/4k;->A0d(Lcom/facebook/ads/redexgen/X/4u;Z)V

    const/4 v6, 0x1

    :cond_117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0t:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/52;->A0B(Lcom/facebook/ads/redexgen/X/4u;)V

    if-nez v7, :cond_127

    if-nez v6, :cond_127

    if-eqz v8, :cond_127

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/4u;->A08:Lcom/facebook/ads/redexgen/X/ED;

    :cond_127
    return-void

    :cond_128
    add-int/lit8 v2, v2, -0x1

    goto :goto_f3

    :cond_12b
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A0A:[Ljava/lang/String;

    const-string v1, "iMRb6lH7bzEtCSJD4TfZYArDATXy6kqw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lez v5, :cond_111

    goto :goto_c4

    :cond_135
    const/4 v0, 0x0

    goto/16 :goto_9c

    :cond_138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1ae

    const/16 v1, 0x6e

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15d

    const/16 v1, 0x51

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/4u;)V
    .registers 3

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0C(Lcom/facebook/ads/redexgen/X/4u;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_b
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A01(Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/4k;)Lcom/facebook/ads/redexgen/X/4k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0F(Lcom/facebook/ads/redexgen/X/4u;Z)Z

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0O()V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/4u;Z)V
    .registers 6

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ED;->A0s(Lcom/facebook/ads/redexgen/X/4u;)V

    const/16 v2, 0x4000

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4u;->A0k(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A0U(II)V

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/3H;->A0B(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2v;)V

    :cond_15
    if-eqz p2, :cond_1a

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4k;->A0B(Lcom/facebook/ads/redexgen/X/4u;)V

    :cond_1a
    iput-object v1, p1, Lcom/facebook/ads/redexgen/X/4u;->A08:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4k;->A0H()Lcom/facebook/ads/redexgen/X/4j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4j;->A09(Lcom/facebook/ads/redexgen/X/4u;)V

    return-void
.end method
