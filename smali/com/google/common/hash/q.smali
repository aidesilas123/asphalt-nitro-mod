###### Class com.google.common.hash.q (com.google.common.hash.q)
.class final Lcom/google/common/hash/q;
.super Lcom/google/common/hash/x;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/common/hash/p;


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/hash/x;-><init>()V

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

    iput v0, p0, Lcom/google/common/hash/x;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/hash/x;->g:[Lcom/google/common/hash/x$b;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/x;->h:J

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

    invoke-virtual {p0}, Lcom/google/common/hash/q;->i()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 9

    iget-object v0, p0, Lcom/google/common/hash/x;->g:[Lcom/google/common/hash/x$b;

    if-nez v0, :cond_e

    iget-wide v1, p0, Lcom/google/common/hash/x;->h:J

    add-long v3, v1, p1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/common/hash/x;->d(JJ)Z

    move-result v1

    if-nez v1, :cond_34

    :cond_e
    sget-object v1, Lcom/google/common/hash/x;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    if-eqz v0, :cond_31

    array-length v3, v0

    if-lt v3, v2, :cond_31

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    aget v4, v1, v4

    and-int/2addr v3, v4

    aget-object v0, v0, v3

    if-eqz v0, :cond_31

    iget-wide v2, v0, Lcom/google/common/hash/x$b;->c:J

    add-long v4, v2, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/common/hash/x$b;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_34

    :cond_31
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/hash/x;->h(J[IZ)V

    :cond_34
    return-void
.end method

.method public doubleValue()D
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/hash/q;->i()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method final f(JJ)J
    .registers 5

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public floatValue()F
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/hash/q;->i()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public i()J
    .registers 8

    iget-wide v0, p0, Lcom/google/common/hash/x;->h:J

    iget-object v2, p0, Lcom/google/common/hash/x;->g:[Lcom/google/common/hash/x$b;

    if-eqz v2, :cond_14

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_14

    aget-object v5, v2, v4

    if-eqz v5, :cond_11

    iget-wide v5, v5, Lcom/google/common/hash/x$b;->c:J

    add-long/2addr v0, v5

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    return-wide v0
.end method

.method public intValue()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/hash/q;->i()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public longValue()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/hash/q;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/hash/q;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
