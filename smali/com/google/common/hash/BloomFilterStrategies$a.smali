###### Class com.google.common.hash.BloomFilterStrategies.a (com.google.common.hash.BloomFilterStrategies$a)
.class final enum Lcom/google/common/hash/BloomFilterStrategies$a;
.super Lcom/google/common/hash/BloomFilterStrategies;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$a;)V

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/Object;Lcom/google/common/hash/k;ILcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/k<",
            "-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/l;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/common/hash/l;->f(Ljava/lang/Object;Lcom/google/common/hash/k;)Lcom/google/common/hash/HashCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->e()J

    move-result-wide p1

    long-to-int v2, p1

    const/16 v3, 0x20

    ushr-long/2addr p1, v3

    long-to-int p2, p1

    const/4 p1, 0x1

    const/4 v3, 0x1

    :goto_17
    if-gt v3, p3, :cond_2c

    mul-int v4, v3, p2

    add-int/2addr v4, v2

    if-gez v4, :cond_1f

    not-int v4, v4

    :cond_1f
    int-to-long v4, v4

    rem-long/2addr v4, v0

    invoke-virtual {p4, v4, v5}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->b(J)Z

    move-result v4

    if-nez v4, :cond_29

    const/4 p1, 0x0

    return p1

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2c
    return p1
.end method
