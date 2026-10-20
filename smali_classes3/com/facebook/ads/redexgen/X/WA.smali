###### Class com.facebook.ads.redexgen.X.WA (com.facebook.ads.redexgen.X.WA)
.class public final Lcom/facebook/ads/redexgen/X/WA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cv;


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/Co;

.field public final A05:Lcom/facebook/ads/redexgen/X/Hh;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "f3ASEvE0MACuH7PXtcW6SQzpVLuDWBs6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UAkl7YLcJ73MhJIfOQ7gtBxP58V39hXf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sKTt9gGYn0qCOxzPnchEZBW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TIj2tKxLfGdHgu1Q1GnzrxOOh9OPKkUY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NlS114awdnJt6ePSWIiXVyR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Ttbg6FQm3oQML"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hnRFaN1D1NI4WPLkXSYbmAvKq8H9o2zk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6DjXFLFEMVHWeegs6rtlgiLmiwpKRWRw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WA;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Co;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WA;->A04:Lcom/facebook/ads/redexgen/X/Co;

    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    return-void
.end method


# virtual methods
.method public final A4P(Lcom/facebook/ads/redexgen/X/Hh;Z)V
    .registers 9

    const/4 v4, -0x1

    if-eqz p2, :cond_2b

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v3

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/WA;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/WA;->A06:[Ljava/lang/String;

    const-string v1, "fX8Qw0M3arh1i"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/2addr v4, v3

    :cond_2b
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_3a

    if-nez p2, :cond_33

    return-void

    :cond_33
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Z

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iput v3, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:I

    :cond_3a
    :goto_3a
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-lez v0, :cond_115

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:I

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ge v0, v5, :cond_c8

    if-nez v0, :cond_5b

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    const/16 v0, 0xff

    if-ne v1, v0, :cond_5b

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Z

    return-void

    :cond_5b
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:I

    rsub-int/lit8 v0, v0, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:I

    if-ne v0, v5, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0W(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_c6

    :goto_91
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/WA;->A02:Z

    and-int/lit8 v0, v2, 0xf

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A05()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:I

    if-ge v1, v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:I

    array-length v0, v4

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v0, 0x1002

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0W(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-static {v4, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3a

    :cond_c6
    const/4 v4, 0x0

    goto :goto_91

    :cond_c8
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:I

    if-ne v0, v1, :cond_3a

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A02:Z

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:I

    const/4 v0, -0x1

    invoke-static {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A09([BIII)I

    move-result v0

    if-eqz v0, :cond_fb

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Z

    return-void

    :cond_fb
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:I

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0W(I)V

    goto :goto_10a

    :cond_105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0W(I)V

    :goto_10a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WA;->A04:Lcom/facebook/ads/redexgen/X/Co;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A05:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Co;->A4O(Lcom/facebook/ads/redexgen/X/Hh;)V

    iput v3, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:I

    goto/16 :goto_3a

    :cond_115
    return-void
.end method

.method public final A8g(Lcom/facebook/ads/redexgen/X/Ht;Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A04:Lcom/facebook/ads/redexgen/X/Co;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Co;->A8g(Lcom/facebook/ads/redexgen/X/Ht;Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Z

    return-void
.end method

.method public final AEv()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Z

    return-void
.end method
