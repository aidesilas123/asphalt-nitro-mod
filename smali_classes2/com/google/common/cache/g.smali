###### Class com.google.common.cache.g (com.google.common.cache.g)
.class final Lcom/google/common/cache/g;
.super Lcom/google/common/cache/i;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/common/cache/f;


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/i;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/i;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/i;->g:[Lcom/google/common/cache/i$b;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/i;->h:J

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/google/common/cache/g;->d()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public d()J
    .registers 7

    iget-wide v0, p0, Lcom/google/common/cache/i;->h:J

    iget-object v2, p0, Lcom/google/common/cache/i;->g:[Lcom/google/common/cache/i$b;

    if-eqz v2, :cond_13

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_13

    aget-object v5, v2, v4

    if-nez v5, :cond_11

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    throw v0

    :cond_13
    return-wide v0
.end method

.method public doubleValue()D
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/cache/g;->d()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/cache/g;->d()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public intValue()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/cache/g;->d()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public longValue()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/cache/g;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/cache/g;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
