###### Class com.google.common.hash.Hashing.b (com.google.common.hash.Hashing$b)
.class final Lcom/google/common/hash/Hashing$b;
.super Lcom/google/common/hash/b;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private varargs constructor <init>([Lcom/google/common/hash/l;)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/google/common/hash/b;-><init>([Lcom/google/common/hash/l;)V

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_21

    aget-object v3, p1, v2

    invoke-interface {v3}, Lcom/google/common/hash/l;->c()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    invoke-interface {v3}, Lcom/google/common/hash/l;->c()I

    move-result v5

    const-string v6, "the number of bits (%s) in hashFunction (%s) must be divisible by 8"

    invoke-static {v4, v6, v5, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_21
    return-void
.end method

.method synthetic constructor <init>([Lcom/google/common/hash/l;Lcom/google/common/hash/Hashing$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/hash/Hashing$b;-><init>([Lcom/google/common/hash/l;)V

    return-void
.end method


# virtual methods
.method public c()I
    .registers 6

    iget-object v0, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/l;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v4, v0, v2

    invoke-interface {v4}, Lcom/google/common/hash/l;->c()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/common/hash/Hashing$b;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/google/common/hash/Hashing$b;

    iget-object v0, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/l;

    iget-object p1, p1, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/l;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/l;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method i([Lcom/google/common/hash/m;)Lcom/google/common/hash/HashCode;
    .registers 8

    invoke-virtual {p0}, Lcom/google/common/hash/Hashing$b;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v2, v1, :cond_21

    aget-object v4, p1, v2

    invoke-interface {v4}, Lcom/google/common/hash/m;->g()Lcom/google/common/hash/HashCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/hash/HashCode;->f()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v0, v3, v5}, Lcom/google/common/hash/HashCode;->m([BII)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_21
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->i([B)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method
