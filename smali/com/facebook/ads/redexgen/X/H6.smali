###### Class com.facebook.ads.redexgen.X.H6 (com.facebook.ads.redexgen.X.H6)
.class public Lcom/facebook/ads/redexgen/X/H6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/H6;",
        ">;"
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:Ljava/io/File;

.field public final A04:Ljava/lang/String;

.field public final A05:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tyIMHYj4E3EgW4mShNYTh30KqADxMnXY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "o4JUlXa2QWu1MieYLvsMRT696KEqR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "les1EbCUxP4xgOdfeUltBKAu87PDHxqp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SxfWhIkSVBET5IPf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bPkhSE8L0qTQU8qqVG5cBeS4akAeFCpX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MYrQWqVSdZJmtqUt3HjVFVZZ1A2nkQzV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YLTzIQmg1iEN7fTeYL0Ebb05kPDCmFqk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "L0nZjQMyNIt0WlCmUM7oX7gpc1lDkDOo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/H6;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/H6;->A04:Ljava/lang/String;

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/H6;->A02:J

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    if-eqz p8, :cond_13

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/H6;->A05:Z

    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/H6;->A03:Ljava/io/File;

    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/H6;->A00:J

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/H6;)I
    .registers 9

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/H6;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H6;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/H6;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H6;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_13
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/H6;->A02:J

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/H6;->A02:J

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/H6;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v3, v4, v0

    const/4 v0, 0x6

    aget-object v4, v4, v0

    const/16 v0, 0x1a

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_34

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_34
    sget-object v4, Lcom/facebook/ads/redexgen/X/H6;->A06:[Ljava/lang/String;

    const-string v3, "iYRssdXy9CB99yO9PwMxA9WvOrDQskNV"

    const/4 v0, 0x0

    aput-object v3, v4, v0

    const-string v3, "6rGRVoRQr925zwi8UOEHhi5JTPDCThCe"

    const/4 v0, 0x6

    aput-object v3, v4, v0

    cmp-long v0, v1, v5

    if-nez v0, :cond_46

    const/4 v0, 0x0

    :goto_45
    return v0

    :cond_46
    cmp-long v0, v1, v5

    if-gez v0, :cond_4c

    const/4 v0, -0x1

    goto :goto_45

    :cond_4c
    const/4 v0, 0x1

    goto :goto_45
.end method

.method public final A01()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/H6;->A05:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A02()Z
    .registers 6

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/facebook/ads/redexgen/X/H6;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/H6;->A00(Lcom/facebook/ads/redexgen/X/H6;)I

    move-result v0

    return v0
.end method
