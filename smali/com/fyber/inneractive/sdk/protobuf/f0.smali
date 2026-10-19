###### Class com.fyber.inneractive.sdk.protobuf.f0 (com.fyber.inneractive.sdk.protobuf.f0)
.class public final Lcom/fyber/inneractive/sdk/protobuf/f0;
.super Lcom/fyber/inneractive/sdk/protobuf/c;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/protobuf/y$i;
.implements Ljava/util/RandomAccess;
.implements Lcom/fyber/inneractive/sdk/protobuf/x0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/protobuf/c<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/fyber/inneractive/sdk/protobuf/y$i;",
        "Ljava/util/RandomAccess;",
        "Lcom/fyber/inneractive/sdk/protobuf/x0;"
    }
.end annotation


# static fields
.field public static final d:Lcom/fyber/inneractive/sdk/protobuf/f0;


# instance fields
.field public b:[J

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/f0;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-direct {v0, v2, v1}, Lcom/fyber/inneractive/sdk/protobuf/f0;-><init>([JI)V

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/f0;->d:Lcom/fyber/inneractive/sdk/protobuf/f0;

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/protobuf/c;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/f0;-><init>([JI)V

    return-void
.end method

.method public constructor <init>([JI)V
    .registers 3

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/c;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    iput p2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 7

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/c;->e()V

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    array-length v2, v1

    if-ne v0, v2, :cond_18

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    :cond_18
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public add(ILjava/lang/Object;)V
    .registers 8

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/c;->e()V

    if-ltz p1, :cond_44

    iget p2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    if-gt p1, p2, :cond_44

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    array-length v3, v2

    if-ge p2, v3, :cond_1b

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, p1

    invoke-static {v2, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    :cond_1b
    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [J

    const/4 v3, 0x0

    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    :goto_33
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    aput-wide v0, p2, p1

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_44
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f0;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/c;->e()V

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/f0;

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/c;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_11
    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/f0;

    iget v0, p1, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return v1

    :cond_19
    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_41

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    array-length v3, v0

    if-le v2, v3, :cond_2d

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    :cond_2d
    iget-object v0, p1, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    iget v4, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    iget p1, p1, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_41
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public bridge synthetic b(I)Lcom/fyber/inneractive/sdk/protobuf/y$j;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f0;->f(I)Lcom/fyber/inneractive/sdk/protobuf/y$i;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)V
    .registers 3

    if-ltz p1, :cond_7

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    if-ge p1, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f0;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f0;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public d(I)J
    .registers 5

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f0;->c(I)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final e(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/fyber/inneractive/sdk/protobuf/f0;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/f0;

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    iget v2, p1, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    :cond_17
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    const/4 v1, 0x0

    :goto_1a
    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_29

    return v3

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2c
    return v0
.end method

.method public f(I)Lcom/fyber/inneractive/sdk/protobuf/y$i;
    .registers 4

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    if-lt p1, v0, :cond_12

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/f0;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    invoke-direct {v0, p1, v1}, Lcom/fyber/inneractive/sdk/protobuf/f0;-><init>([JI)V

    return-object v0

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f0;->c(I)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    if-ge v1, v2, :cond_14

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 9

    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p1, :cond_1d

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    aget-wide v5, v4, v0

    cmp-long v4, v5, v2

    if-nez v4, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return v1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/c;->e()V

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f0;->c(I)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    aget-wide v1, v0, p1

    iget v3, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_18

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public removeRange(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/c;->e()V

    if-lt p2, p1, :cond_1a

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/c;->e()V

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f0;->c(I)V

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->b:[J

    aget-wide v2, p2, p1

    aput-wide v0, p2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f0;->c:I

    return v0
.end method
