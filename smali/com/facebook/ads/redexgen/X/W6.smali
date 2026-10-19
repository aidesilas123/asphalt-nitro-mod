###### Class com.facebook.ads.redexgen.X.W6 (com.facebook.ads.redexgen.X.W6)
.class public final Lcom/facebook/ads/redexgen/X/W6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/W5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PmtReader"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Cv;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Landroid/util/SparseIntArray;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hg;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/W5;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZoOhGYHP8SNfCMTpI8hB8esJvCxQNk4a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iCY0vtQk2BMTn8YKksXnllwhxYcEMWPa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FRJmrfeKqiG8dvU06WzW6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wyGcQq4l"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "l2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ODNaIWitniiqKmZchEPotBtPtmPon6SS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "r1S7VBlY5d2QYAsiLWImTDUS2fBhu4wR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W6;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/W5;I)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A03:Lcom/facebook/ads/redexgen/X/Hg;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A01:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A02:Landroid/util/SparseIntArray;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Hh;I)Lcom/facebook/ads/redexgen/X/Cs;
    .registers 16

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v8

    add-int v9, v8, p2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_9
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    if-ge v0, v9, :cond_bd

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v10

    add-int/2addr v10, v0

    const/4 v0, 0x5

    if-ne v1, v0, :cond_67

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0M()J

    move-result-wide v11

    invoke-static {}, Lcom/facebook/ads/redexgen/X/W5;->A06()J

    move-result-wide v1

    cmp-long v0, v11, v1

    if-nez v0, :cond_36

    const/16 v7, 0x81

    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    sub-int/2addr v10, v0

    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    goto :goto_9

    :cond_36
    invoke-static {}, Lcom/facebook/ads/redexgen/X/W5;->A04()J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/W6;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_b7

    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A05:[Ljava/lang/String;

    const-string v1, "OX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    cmp-long v0, v11, v3

    if-nez v0, :cond_5c

    const/16 v7, 0x87

    goto :goto_2d

    :cond_5c
    invoke-static {}, Lcom/facebook/ads/redexgen/X/W5;->A05()J

    move-result-wide v1

    cmp-long v0, v11, v1

    if-nez v0, :cond_2d

    const/16 v7, 0x24

    goto :goto_2d

    :cond_67
    const/16 v0, 0x6a

    if-ne v1, v0, :cond_6e

    const/16 v7, 0x81

    goto :goto_2d

    :cond_6e
    const/16 v0, 0x7a

    if-ne v1, v0, :cond_75

    const/16 v7, 0x87

    goto :goto_2d

    :cond_75
    const/16 v0, 0x7b

    if-ne v1, v0, :cond_7c

    const/16 v7, 0x8a

    goto :goto_2d

    :cond_7c
    const/16 v0, 0xa

    const/4 v11, 0x3

    if-ne v1, v0, :cond_8a

    invoke-virtual {p1, v11}, Lcom/facebook/ads/redexgen/X/Hh;->A0S(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_2d

    :cond_8a
    const/16 v0, 0x59

    if-ne v1, v0, :cond_2d

    const/16 v7, 0x59

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_95
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    if-ge v0, v10, :cond_2d

    invoke-virtual {p1, v11}, Lcom/facebook/ads/redexgen/X/Hh;->A0S(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v3

    const/4 v2, 0x4

    new-array v1, v2, [B

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cr;

    invoke-direct {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/Cr;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_95

    :cond_b7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_bd
    invoke-virtual {p1, v9}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cs;

    invoke-direct {v0, v7, v6, v5, v1}, Lcom/facebook/ads/redexgen/X/Cs;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    return-object v0
.end method


# virtual methods
.method public final A4O(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 15

    move-object v4, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    const/4 v7, 0x2

    if-eq v0, v7, :cond_9

    return-void

    :cond_9
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A02(Lcom/facebook/ads/redexgen/X/W5;)I

    move-result v0

    const/4 v3, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A02(Lcom/facebook/ads/redexgen/X/W5;)I

    move-result v0

    if-eq v0, v7, :cond_23

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A00(Lcom/facebook/ads/redexgen/X/W5;)I

    move-result v0

    if-ne v0, v1, :cond_13c

    :cond_23
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A0E(Lcom/facebook/ads/redexgen/X/W5;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Ht;

    :goto_2f
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v8

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A03:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {p1, v0, v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0a(Lcom/facebook/ads/redexgen/X/Hg;I)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A03:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A03:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A02(Lcom/facebook/ads/redexgen/X/W5;)I

    move-result v0

    const/16 v6, 0x2000

    const/16 v10, 0x15

    if-ne v0, v7, :cond_8d

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A0B(Lcom/facebook/ads/redexgen/X/W5;)Lcom/facebook/ads/redexgen/X/Cv;

    move-result-object v0

    if-nez v0, :cond_8d

    new-array v1, v3, [B

    const/4 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Cs;

    invoke-direct {v3, v10, v0, v0, v1}, Lcom/facebook/ads/redexgen/X/Cs;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/W5;->A0A(Lcom/facebook/ads/redexgen/X/W5;)Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v0

    invoke-interface {v0, v10, v3}, Lcom/facebook/ads/redexgen/X/Ct;->A4f(ILcom/facebook/ads/redexgen/X/Cs;)Lcom/facebook/ads/redexgen/X/Cv;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/W5;->A0C(Lcom/facebook/ads/redexgen/X/W5;Lcom/facebook/ads/redexgen/X/Cv;)Lcom/facebook/ads/redexgen/X/Cv;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A0B(Lcom/facebook/ads/redexgen/X/W5;)Lcom/facebook/ads/redexgen/X/Cv;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A09(Lcom/facebook/ads/redexgen/X/W5;)Lcom/facebook/ads/redexgen/X/Bc;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cu;

    invoke-direct {v0, v8, v10, v6}, Lcom/facebook/ads/redexgen/X/Cu;-><init>(III)V

    invoke-interface {v3, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/Cv;->A8g(Lcom/facebook/ads/redexgen/X/Ht;Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V

    :cond_8d
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v12

    :goto_9b
    if-lez v12, :cond_15c

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A03:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0a(Lcom/facebook/ads/redexgen/X/Hg;I)V

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/W6;->A03:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v5

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/W6;->A03:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/W6;->A03:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A03:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v11}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A03:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v2

    invoke-direct {v4, p1, v2}, Lcom/facebook/ads/redexgen/X/W6;->A00(Lcom/facebook/ads/redexgen/X/Hh;I)Lcom/facebook/ads/redexgen/X/Cs;

    move-result-object v1

    const/4 v0, 0x6

    if-ne v5, v0, :cond_cc

    iget v5, v1, Lcom/facebook/ads/redexgen/X/Cs;->A00:I

    :cond_cc
    add-int/lit8 v0, v2, 0x5

    sub-int/2addr v12, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A02(Lcom/facebook/ads/redexgen/X/W5;)I

    move-result v0

    if-ne v0, v7, :cond_13a

    move v2, v5

    :goto_d8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A08(Lcom/facebook/ads/redexgen/X/W5;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_eb

    :cond_e4
    :goto_e4
    const/4 v5, 0x5

    const/4 v11, 0x4

    const/16 v2, 0xc

    const/16 v10, 0x15

    goto :goto_9b

    :cond_eb
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A02(Lcom/facebook/ads/redexgen/X/W5;)I

    move-result v0

    if-ne v0, v7, :cond_12f

    if-ne v5, v10, :cond_12f

    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    sget-object v5, Lcom/facebook/ads/redexgen/X/W6;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v5, v0

    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1c0

    sget-object v5, Lcom/facebook/ads/redexgen/X/W6;->A05:[Ljava/lang/String;

    const-string v1, "McoDKrxcl9g055s4tJZatQwjzcY0TxoH"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/W5;->A0B(Lcom/facebook/ads/redexgen/X/W5;)Lcom/facebook/ads/redexgen/X/Cv;

    move-result-object v1

    :goto_114
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A02(Lcom/facebook/ads/redexgen/X/W5;)I

    move-result v0

    if-ne v0, v7, :cond_124

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ge v3, v0, :cond_e4

    :cond_124
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_e4

    :cond_12f
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A0A(Lcom/facebook/ads/redexgen/X/W5;)Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/Ct;->A4f(ILcom/facebook/ads/redexgen/X/Cs;)Lcom/facebook/ads/redexgen/X/Cv;

    move-result-object v1

    goto :goto_114

    :cond_13a
    move v2, v3

    goto :goto_d8

    :cond_13c
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A0E(Lcom/facebook/ads/redexgen/X/W5;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ht;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ht;->A03()J

    move-result-wide v0

    new-instance v9, Lcom/facebook/ads/redexgen/X/Ht;

    invoke-direct {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/Ht;-><init>(J)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A0E(Lcom/facebook/ads/redexgen/X/W5;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f

    :cond_15c
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_163
    if-ge v3, v5, :cond_1c6

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A08(Lcom/facebook/ads/redexgen/X/W5;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v11, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Cv;

    if-eqz v2, :cond_1bd

    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    sget-object v10, Lcom/facebook/ads/redexgen/X/W6;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v10, v0

    const/4 v0, 0x4

    aget-object v0, v10, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1c0

    sget-object v10, Lcom/facebook/ads/redexgen/X/W6;->A05:[Ljava/lang/String;

    const-string v1, "prZScD3eoAfWT6wNb9RUJeZXyBQ1ma5M"

    const/4 v0, 0x0

    aput-object v1, v10, v0

    invoke-static {v12}, Lcom/facebook/ads/redexgen/X/W5;->A0B(Lcom/facebook/ads/redexgen/X/W5;)Lcom/facebook/ads/redexgen/X/Cv;

    move-result-object v0

    if-eq v2, v0, :cond_1ae

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A09(Lcom/facebook/ads/redexgen/X/W5;)Lcom/facebook/ads/redexgen/X/Bc;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cu;

    invoke-direct {v0, v8, v11, v6}, Lcom/facebook/ads/redexgen/X/Cu;-><init>(III)V

    invoke-interface {v2, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/Cv;->A8g(Lcom/facebook/ads/redexgen/X/Ht;Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V

    :cond_1ae
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A07(Lcom/facebook/ads/redexgen/X/W5;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1bd
    add-int/lit8 v3, v3, 0x1

    goto :goto_163

    :cond_1c0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1c6
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A02(Lcom/facebook/ads/redexgen/X/W5;)I

    move-result v0

    if-ne v0, v7, :cond_1ec

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A0H(Lcom/facebook/ads/redexgen/X/W5;)Z

    move-result v0

    if-nez v0, :cond_1eb

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A09(Lcom/facebook/ads/redexgen/X/W5;)Lcom/facebook/ads/redexgen/X/Bc;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bc;->A5T()V

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/W5;->A03(Lcom/facebook/ads/redexgen/X/W5;I)I

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/W5;->A0I(Lcom/facebook/ads/redexgen/X/W5;Z)Z

    :cond_1eb
    :goto_1eb
    return-void

    :cond_1ec
    const/4 v0, 0x0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/W5;->A07(Lcom/facebook/ads/redexgen/X/W5;)Landroid/util/SparseArray;

    move-result-object v2

    iget v1, v4, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/W5;->A02(Lcom/facebook/ads/redexgen/X/W5;)I

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_21c

    :goto_201
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/W5;->A03(Lcom/facebook/ads/redexgen/X/W5;I)I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A00(Lcom/facebook/ads/redexgen/X/W5;)I

    move-result v0

    if-nez v0, :cond_1eb

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A09(Lcom/facebook/ads/redexgen/X/W5;)Lcom/facebook/ads/redexgen/X/Bc;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bc;->A5T()V

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/W5;->A0I(Lcom/facebook/ads/redexgen/X/W5;Z)Z

    goto :goto_1eb

    :cond_21c
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W6;->A04:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A00(Lcom/facebook/ads/redexgen/X/W5;)I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_201
.end method

.method public final A8g(Lcom/facebook/ads/redexgen/X/Ht;Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V
    .registers 4

    return-void
.end method
