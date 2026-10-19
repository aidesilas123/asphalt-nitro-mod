###### Class com.facebook.ads.redexgen.X.C07082g (com.facebook.ads.redexgen.X.2g)
.class public final Lcom/facebook/ads/redexgen/X/2g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static A04:[B

.field public static final A05:Ljava/lang/Object;


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:[J

.field public A03:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2g;->A05()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2g;->A05:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/2g;->A01:Z

    if-nez p1, :cond_13

    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A01:[J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    :goto_10
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    return-void

    :cond_13
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2f;->A00(I)I

    move-result v1

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    goto :goto_10
.end method

.method private final A00(I)J
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A01:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2g;->A04()V

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/2g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/2g<",
            "TE;>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2g;

    move-object v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1c} :catch_1c

    :catch_1c
    return-object v1
.end method

.method private final A02(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A03([JIJ)I

    move-result v1

    if-ltz v1, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    aget-object v1, v0, v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/2g;->A05:Ljava/lang/Object;

    if-ne v1, v0, :cond_13

    :cond_12
    return-object p3

    :cond_13
    return-object v1
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/2g;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x36

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .registers 9

    iget v7, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v7, :cond_20

    aget-object v2, v4, v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/2g;->A05:Ljava/lang/Object;

    if-eq v2, v0, :cond_1d

    if-eq v3, v6, :cond_1b

    aget-wide v0, v5, v3

    aput-wide v0, v5, v6

    aput-object v2, v4, v6

    const/4 v0, 0x0

    aput-object v0, v4, v3

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A01:Z

    iput v6, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    return-void
.end method

.method public static A05()V
    .registers 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/2g;->A04:[B

    return-void

    :array_a
    .array-data 1
        0x13t
        0x4ft
        0x53t
        0x52t
        0x48t
        0x1bt
        0x76t
        0x5at
        0x4bt
        0x12t
        0x5bt
        0x57t
        0x33t
        0x35t
    .end array-data
.end method


# virtual methods
.method public final A06()I
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A01:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2g;->A04()V

    :cond_7
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    return v0
.end method

.method public final A07(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A01:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2g;->A04()V

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A08(J)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/2g;->A02(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A09()V
    .registers 5

    iget v3, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_d

    const/4 v0, 0x0

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A01:Z

    return-void
.end method

.method public final A0A(I)V
    .registers 5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    aget-object v1, v2, p1

    sget-object v0, Lcom/facebook/ads/redexgen/X/2g;->A05:Ljava/lang/Object;

    if-eq v1, v0, :cond_d

    aput-object v0, v2, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A01:Z

    :cond_d
    return-void
.end method

.method public final A0B(JLjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A03([JIJ)I

    move-result v1

    if-ltz v1, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    aput-object p3, v0, v1

    :goto_e
    return-void

    :cond_f
    xor-int/lit8 v3, v1, -0x1

    iget v4, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    if-ge v3, v4, :cond_24

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    aget-object v1, v2, v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/2g;->A05:Ljava/lang/Object;

    if-ne v1, v0, :cond_24

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    aput-wide p1, v0, v3

    aput-object p3, v2, v3

    return-void

    :cond_24
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A01:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    array-length v0, v0

    if-lt v4, v0, :cond_3a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2g;->A04()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A03([JIJ)I

    move-result v0

    xor-int/lit8 v3, v0, -0x1

    :cond_3a
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    array-length v0, v0

    if-lt v1, v0, :cond_5c

    add-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2f;->A00(I)I

    move-result v0

    new-array v5, v0, [J

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    array-length v0, v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    array-length v0, v1

    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    :cond_5c
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    sub-int v0, v2, v3

    if-eqz v0, :cond_74

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    add-int/lit8 v0, v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    add-int/lit8 v1, v3, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    sub-int/2addr v0, v3

    invoke-static {v2, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_74
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A02:[J

    aput-wide p1, v0, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A03:[Ljava/lang/Object;

    aput-object p3, v0, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    goto :goto_e
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2g;->A01()Lcom/facebook/ads/redexgen/X/2g;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2g;->A06()I

    move-result v0

    if-gtz v0, :cond_10

    const/16 v2, 0xc

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2g;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    mul-int/lit8 v0, v0, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_1f
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2g;->A00:I

    if-ge v4, v0, :cond_56

    if-lez v4, :cond_31

    const/16 v2, 0xa

    const/4 v1, 0x2

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2g;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/2g;->A00(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/2g;->A07(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_49
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2g;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    :cond_56
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
