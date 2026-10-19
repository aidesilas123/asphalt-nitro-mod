###### Class com.facebook.ads.redexgen.X.H9 (com.facebook.ads.redexgen.X.H9)
.class public final Lcom/facebook/ads/redexgen/X/H9;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ux;

.field public A01:Z

.field public final A02:I

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/facebook/ads/redexgen/X/Uv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "j9EfDvchdu1KqySqOAnBSG3JWHZdS12U"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "q23SQ5AypNqS8oaKOX4z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zGl30nZzPzoLIdVG6oXXe73jwI6SvYzS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XO0PMOb8qpQh9emdWW7Vnqfuo5cp8yJy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hg0Ynef21ksm7drJYvbGXc6C6VdsLqYq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sq8Z8cDX36Rb5yN4ZHuInHWL1DTNPmF7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lpBmIRRiri9NKyd9o68rlNPCbyzvIw2I"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eicGPlwUgu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/H9;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/H9;->A02()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/H9;->A02:I

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/H9;->A03:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ux;->A04:Lcom/facebook/ads/redexgen/X/Ux;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    return-void
.end method

.method public static A00(ILjava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/H9;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/H9;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/H9;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x2

    if-ge p0, v0, :cond_20

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HE;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/HD;->A05(Lcom/facebook/ads/redexgen/X/HE;J)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/H9;->A0F(Lcom/facebook/ads/redexgen/X/HE;)Z

    :goto_1f
    return-object v3

    :cond_20
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ux;->A00(Ljava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/Ux;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/H9;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    goto :goto_1f
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/H9;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/H9;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/H9;->A06:[Ljava/lang/String;

    const-string v1, "ipIPz5SC6v0GmkIAozZhwN70MrudeMSU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_33

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x64

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_33
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .registers 4

    const/16 v0, 0x18

    new-array v3, v0, [B

    fill-array-data v3, :array_2a

    sget-object v2, Lcom/facebook/ads/redexgen/X/H9;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_20

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_20
    sget-object v2, Lcom/facebook/ads/redexgen/X/H9;->A06:[Ljava/lang/String;

    const-string v1, "8leR2nWms8A7PmFgrtQ6nLfJYqb68GHr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/H9;->A05:[B

    return-void

    :array_2a
    .array-data 1
        -0x4ft
        -0x9t
        -0xet
        -0x6t
        -0x3t
        -0xat
        -0xbt
        -0x41t
        -0x4dt
        0x7t
        0x2t
        -0x4dt
        0x2at
        0x3dt
        0x46t
        0x39t
        0x45t
        0x41t
        0x46t
        0x3ft
        -0x8t
        0x47t
        0x3et
        -0x8t
    .end array-data
.end method


# virtual methods
.method public final A03(I)I
    .registers 8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A02:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A03:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A00(Lcom/facebook/ads/redexgen/X/HC;)J

    move-result-wide v4

    mul-int/lit8 v3, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v1, v4, v0

    xor-long/2addr v1, v4

    long-to-int v0, v1

    add-int/2addr v3, v0

    :goto_1d
    return v3

    :cond_1e
    mul-int/lit8 v3, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ux;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_1d
.end method

.method public final A04(JJ)J
    .registers 15

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/H9;->A06(J)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/H6;->A01()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/H6;->A02()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-wide v0, 0x7fffffffffffffffL

    :goto_15
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    neg-long v0, v2

    return-wide v0

    :cond_1b
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    goto :goto_15

    :cond_1e
    add-long v8, p1, p3

    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/H6;->A02:J

    iget-wide v3, v6, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    add-long/2addr v1, v3

    cmp-long v0, v1, v8

    if-gez v0, :cond_60

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    sget-object v3, Lcom/facebook/ads/redexgen/X/H9;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x14

    if-eq v3, v0, :cond_3e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3e
    sget-object v4, Lcom/facebook/ads/redexgen/X/H9;->A06:[Ljava/lang/String;

    const-string v3, "RgZ5bXDLk5KqdLdfFSHI"

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Uv;

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/H6;->A02:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_66

    :cond_60
    :goto_60
    sub-long/2addr v1, p1

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_66
    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/H6;->A02:J

    iget-wide v5, v5, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    add-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    cmp-long v0, v1, v8

    if-ltz v0, :cond_4e

    goto :goto_60
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/Ux;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    return-object v0
.end method

.method public final A06(J)Lcom/facebook/ads/redexgen/X/Uv;
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A03:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Uv;->A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Uv;

    if-eqz v5, :cond_1a

    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/H6;->A02:J

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    add-long/2addr v2, v0

    cmp-long v0, v2, p1

    if-lez v0, :cond_1a

    return-object v5

    :cond_1a
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    sget-object v2, Lcom/facebook/ads/redexgen/X/H9;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_36

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_36
    sget-object v2, Lcom/facebook/ads/redexgen/X/H9;->A06:[Ljava/lang/String;

    const-string v1, "nd2bgBSeUAsM9albd5et6NmdTACtd3AP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Uv;

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A03:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Uv;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v0

    :goto_4b
    return-object v0

    :cond_4c
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/H9;->A03:Ljava/lang/String;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/H6;->A02:J

    sub-long/2addr v0, p1

    invoke-static {v2, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/Uv;->A03(Ljava/lang/String;JJ)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v0

    goto :goto_4b
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Uv;)Lcom/facebook/ads/redexgen/X/Uv;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A02:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Uv;->A08(I)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v4

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/H6;->A03:Ljava/io/File;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/H6;->A03:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object v4

    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    const/16 v1, 0xc

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H6;->A03:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x8

    const/4 v1, 0x4

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/H6;->A03:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/H0;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/H0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A08()Ljava/util/TreeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/facebook/ads/redexgen/X/Uv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    return-object v0
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/Uv;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final A0A(Ljava/io/DataOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A02:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A03:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ux;->A09(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public final A0B(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/H9;->A01:Z

    return-void
.end method

.method public final A0C()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final A0D()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A01:Z

    return v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/H6;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H6;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/HE;)Z
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/H9;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ux;->A08(Lcom/facebook/ads/redexgen/X/HE;)Lcom/facebook/ads/redexgen/X/Ux;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ux;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x1

    if-ne p0, p1, :cond_4

    return v3

    :cond_4
    const/4 v2, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_12

    :cond_11
    return v2

    :cond_12
    check-cast p1, Lcom/facebook/ads/redexgen/X/H9;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/H9;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/H9;->A02:I

    if-ne v1, v0, :cond_39

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/H9;->A03:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H9;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/H9;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H9;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ux;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :goto_38
    return v3

    :cond_39
    const/4 v3, 0x0

    goto :goto_38
.end method

.method public final hashCode()I
    .registers 3

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/H9;->A03(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H9;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
