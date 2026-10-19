###### Class com.fyber.inneractive.sdk.protobuf.f (com.fyber.inneractive.sdk.protobuf.f)
.class public abstract Lcom/fyber/inneractive/sdk/protobuf/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/protobuf/c1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/protobuf/f$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fyber/inneractive/sdk/protobuf/f$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/f;-><init>()V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.protobuf.f.a (com.fyber.inneractive.sdk.protobuf.f$a)
.class public synthetic Lcom/fyber/inneractive/sdk/protobuf/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.fyber.inneractive.sdk.protobuf.f.b (com.fyber.inneractive.sdk.protobuf.f$b)
.class public final Lcom/fyber/inneractive/sdk/protobuf/f$b;
.super Lcom/fyber/inneractive/sdk/protobuf/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f;-><init>(Lcom/fyber/inneractive/sdk/protobuf/f$a;)V

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    return-void
.end method


# virtual methods
.method public final A()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    if-eq v1, v0, :cond_77

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_11

    iput v3, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return v0

    :cond_11
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1c

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->C()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_1c
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_28

    xor-int/lit8 v0, v0, -0x80

    goto :goto_74

    :cond_28
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_35

    xor-int/lit16 v0, v0, 0x3f80

    :cond_33
    move v1, v3

    goto :goto_74

    :cond_35
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_43

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_74

    :cond_43
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_33

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_74

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_33

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_74

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_33

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6f

    goto :goto_74

    :cond_6f
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->e()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0

    :cond_74
    :goto_74
    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return v0

    :cond_77
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0
.end method

.method public B()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    if-eq v1, v0, :cond_c2

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_12

    iput v3, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    int-to-long v0, v0

    return-wide v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1c

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->C()J

    move-result-wide v0

    return-wide v0

    :cond_1c
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2a

    xor-int/lit8 v0, v0, -0x80

    :goto_27
    int-to-long v2, v0

    goto/16 :goto_bf

    :cond_2a
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3b

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_bf

    :cond_3b
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_49

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_27

    :cond_49
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_60

    const-wide/32 v1, 0xfe03f80

    :goto_5c
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_bf

    :cond_60
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_75

    const-wide v5, -0x7f01fc080L

    :goto_72
    xor-long v2, v3, v5

    goto :goto_bf

    :cond_75
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_88

    const-wide v1, 0x3f80fe03f80L

    goto :goto_5c

    :cond_88
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_9b

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_72

    :cond_9b
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_bd

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_b8

    goto :goto_be

    :cond_b8
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->e()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0

    :cond_bd
    move v1, v0

    :goto_be
    move-wide v2, v3

    :goto_bf
    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-wide v2

    :cond_c2
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0
.end method

.method public final C()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->v()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->e()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0
.end method

.method public a()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/i;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    return-object v0

    :cond_d
    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(I)V

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a:Z

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b:[B

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    sget-object v3, Lcom/fyber/inneractive/sdk/protobuf/i;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    new-instance v3, Lcom/fyber/inneractive/sdk/protobuf/i$d;

    invoke-direct {v3, v1, v2, v0}, Lcom/fyber/inneractive/sdk/protobuf/i$d;-><init>([BII)V

    goto :goto_28

    :cond_20
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b:[B

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-static {v1, v2, v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a([BII)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v3

    :goto_28
    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-object v3
.end method

.method public a(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fyber/inneractive/sdk/protobuf/d1<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/z0;->c:Lcom/fyber/inneractive/sdk/protobuf/z0;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/z0;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    if-nez v0, :cond_d

    const-string p1, ""

    return-object p1

    :cond_d
    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(I)V

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int v2, v1, v0

    invoke-static {p1, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/q1;->b([BII)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_24

    :cond_1f
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->c()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1

    :cond_24
    :goto_24
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b:[B

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    sget-object v3, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-object p1
.end method

.method public final a(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_a

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/f0;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/f0;

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge p1, v1, :cond_25

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->B()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    goto :goto_19

    :cond_25
    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b(I)V

    goto :goto_6d

    :cond_29
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_49
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_5a
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_6a

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->B()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6a
    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b(I)V

    :goto_6d
    return-void

    :cond_6e
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_73
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_73

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void
.end method

.method public a(Ljava/util/List;Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/d1<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v1, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_22

    :cond_9
    invoke-virtual {p0, p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v1

    if-eqz v1, :cond_17

    return-void

    :cond_17
    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v2

    if-eq v2, v0, :cond_9

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_22
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v1, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/d0;

    if-eqz v0, :cond_2d

    if-nez p2, :cond_2d

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/d0;

    :cond_12
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a()Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/d0;->a(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result p1

    if-eqz p1, :cond_20

    return-void

    :cond_20
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p2

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq p2, v1, :cond_12

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_2d
    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_3b

    return-void

    :cond_3b
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_2d

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_48
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/util/Map;Lcom/fyber/inneractive/sdk/protobuf/h0$a;Lcom/fyber/inneractive/sdk/protobuf/q;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/h0$a<",
            "TK;TV;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(I)V

    iget p2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    iget p3, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr p3, p1

    iput p3, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    const/4 p1, 0x0

    :try_start_13
    throw p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception p1

    iput p2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    throw p1
.end method

.method public b()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    return v0
.end method

.method public b(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fyber/inneractive/sdk/protobuf/d1<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/z0;->c:Lcom/fyber/inneractive/sdk/protobuf/z0;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/z0;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
.end method

.method public b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public b(Ljava/util/List;Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/d1<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v1, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    :cond_9
    invoke-virtual {p0, p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v1

    if-eqz v1, :cond_17

    return-void

    :cond_17
    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v2

    if-eq v2, v0, :cond_9

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_22
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1
.end method

.method public c()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    return v0
.end method

.method public final c(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fyber/inneractive/sdk/protobuf/d1<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    ushr-int/lit8 v1, v1, 0x3

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result v1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f:I

    :try_start_f
    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/protobuf/d1;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/d1;->a(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/c1;Lcom/fyber/inneractive/sdk/protobuf/q;)V

    invoke-interface {p1, v1}, Lcom/fyber/inneractive/sdk/protobuf/d1;->c(Ljava/lang/Object;)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    iget p2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f:I
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_27

    if-ne p1, p2, :cond_22

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f:I

    return-object v1

    :cond_22
    :try_start_22
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->g()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p1

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f:I

    throw p1
.end method

.method public final c(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v1, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1
.end method

.method public c(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/x;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/x;

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge p1, v1, :cond_6e

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/j;->b(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    goto :goto_19

    :cond_29
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_49
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_74

    if-ne v0, v1, :cond_6f

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_5a
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_6e

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/j;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6e
    return-void

    :cond_6f
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_74
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_86

    return-void

    :cond_86
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_74

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void
.end method

.method public d()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    return v0
.end method

.method public final d(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fyber/inneractive/sdk/protobuf/d1<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    :try_start_e
    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/protobuf/d1;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/d1;->a(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/c1;Lcom/fyber/inneractive/sdk/protobuf/q;)V

    invoke-interface {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/d1;->c(Ljava/lang/Object;)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_24

    if-ne p1, v2, :cond_1f

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    return-object v0

    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->g()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    throw p1
.end method

.method public final d(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(I)V

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void
.end method

.method public d(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/v;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4c

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/v;

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_32

    if-ne v0, v1, :cond_2d

    :cond_12
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->k()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/v;->a(F)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_12

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_2d
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_32
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_3c
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_98

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/v;->a(F)V

    goto :goto_3c

    :cond_4c
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7a

    if-ne v0, v1, :cond_75

    :cond_56
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->k()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_68

    return-void

    :cond_68
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_56

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_75
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_7a
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_84
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_98

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_98
    return-void
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    return v0
.end method

.method public final e(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(I)V

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->g()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
.end method

.method public e(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/x;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_48

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/x;

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_32

    if-ne v0, v1, :cond_2d

    :cond_12
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->q()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_12

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_2d
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_32
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_3c
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_90

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->x()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    goto :goto_3c

    :cond_48
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_76

    if-ne v0, v1, :cond_71

    :cond_52
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_64

    return-void

    :cond_64
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_52

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_71
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_76
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_80
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_90

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_90
    return-void
.end method

.method public f()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(I)V

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->g()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
.end method

.method public f(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/x;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_48

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/x;

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_32

    if-ne v0, v1, :cond_2d

    :cond_12
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->m()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_12

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_2d
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_32
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_3c
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_90

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->x()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    goto :goto_3c

    :cond_48
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_76

    if-ne v0, v1, :cond_71

    :cond_52
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_64

    return-void

    :cond_64
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_52

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_71
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_76
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_80
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_90

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_90
    return-void
.end method

.method public g()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/f0;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/f0;

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge p1, v1, :cond_6e

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->B()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/j;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    goto :goto_19

    :cond_29
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_49
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_74

    if-ne v0, v1, :cond_6f

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_5a
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_6e

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->B()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/j;->a(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6e
    return-void

    :cond_6f
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_74
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_86

    return-void

    :cond_86
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_74

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void
.end method

.method public h()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->y()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public h(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fyber/inneractive/sdk/protobuf/i;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v1, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    :cond_9
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a()Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_9

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_24
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1
.end method

.method public i(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/x;

    const/4 v1, 0x2

    if-eqz v0, :cond_45

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/x;

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2a

    if-ne p1, v1, :cond_25

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge p1, v1, :cond_66

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    goto :goto_19

    :cond_25
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_2a
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result p1

    if-eqz p1, :cond_38

    return-void

    :cond_38
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_2a

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_45
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_6c

    if-ne v0, v1, :cond_67

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_56
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_66

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_66
    return-void

    :cond_67
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_6c
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_7e

    return-void

    :cond_7e
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_6c

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void
.end method

.method public i()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_89

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f:I

    if-ne v0, v2, :cond_f

    goto/16 :goto_89

    :cond_f
    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v3, v0, 0x7

    const/4 v4, 0x1

    if-eqz v3, :cond_5d

    if-eq v3, v4, :cond_57

    const/4 v1, 0x2

    if-eq v3, v1, :cond_4f

    const/4 v1, 0x4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2b

    const/4 v0, 0x5

    if-ne v3, v0, :cond_26

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d(I)V

    return v4

    :cond_26
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object v0

    throw v0

    :cond_2b
    ushr-int/2addr v0, v5

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result v0

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f:I

    :cond_32
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->s()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_41

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->i()Z

    move-result v0

    if-nez v0, :cond_32

    :cond_41
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f:I

    if-ne v0, v1, :cond_4a

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f:I

    return v4

    :cond_4a
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->g()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0

    :cond_4f
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d(I)V

    return v4

    :cond_57
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d(I)V

    return v4

    :cond_5d
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    sub-int/2addr v0, v2

    const/16 v3, 0xa

    if-lt v0, v3, :cond_78

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b:[B

    const/4 v5, 0x0

    :goto_69
    if-ge v5, v3, :cond_78

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v0, v2

    if-ltz v2, :cond_74

    iput v6, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    goto :goto_80

    :cond_74
    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_69

    :cond_78
    :goto_78
    if-ge v1, v3, :cond_84

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->v()B

    move-result v0

    if-ltz v0, :cond_81

    :goto_80
    return v4

    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_84
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->e()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0

    :cond_89
    :goto_89
    return v1
.end method

.method public j()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/j;->b(I)I

    move-result v0

    return v0
.end method

.method public j(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/n;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4d

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/n;

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_32

    if-ne p1, v1, :cond_2d

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, p1

    :goto_1d
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge p1, v1, :cond_75

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/n;->a(D)V

    goto :goto_1d

    :cond_2d
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_32
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->h()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/n;->a(D)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result p1

    if-eqz p1, :cond_40

    return-void

    :cond_40
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_32

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_4d
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7b

    if-ne v0, v1, :cond_76

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_61
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_75

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_75
    return-void

    :cond_76
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_7b
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->h()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_8d

    return-void

    :cond_8d
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_7b

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void
.end method

.method public k()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public k(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/f0;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/f0;

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge p1, v1, :cond_25

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->B()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    goto :goto_19

    :cond_25
    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b(I)V

    goto :goto_6d

    :cond_29
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_49
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_5a
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_6a

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->B()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6a
    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b(I)V

    :goto_6d
    return-void

    :cond_6e
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_73
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_73

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void
.end method

.method public l()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/j;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_50

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/g;

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v4, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_35

    if-ne p1, v3, :cond_30

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    iget v3, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v3, p1

    :goto_1b
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge p1, v3, :cond_2c

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/g;->a(Z)V

    goto :goto_1b

    :cond_2c
    invoke-virtual {p0, v3}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b(I)V

    goto :goto_79

    :cond_30
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_35
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->r()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/g;->a(Z)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result p1

    if-eqz p1, :cond_43

    return-void

    :cond_43
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_35

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_50
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v4, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7f

    if-ne v0, v3, :cond_7a

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    iget v3, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v3, v0

    :goto_61
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v3, :cond_76

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_76
    invoke-virtual {p0, v3}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b(I)V

    :goto_79
    return-void

    :cond_7a
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_7f
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_91

    return-void

    :cond_91
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_7f

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void
.end method

.method public m()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->w()I

    move-result v0

    return v0
.end method

.method public m(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/f0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/f0;

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, p1

    :goto_1d
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge p1, v1, :cond_6d

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->z()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    goto :goto_1d

    :cond_29
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_49
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_73

    if-ne v0, v1, :cond_6e

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_5d
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_6d

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_6d
    return-void

    :cond_6e
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_73
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_73

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/f0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/f0;

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, p1

    :goto_1d
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge p1, v1, :cond_6d

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->z()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    goto :goto_1d

    :cond_29
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_49
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v3, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_73

    if-ne v0, v1, :cond_6e

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f(I)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_5d
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_6d

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_6d
    return-void

    :cond_6e
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_73
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_73

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void
.end method

.method public o()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public o(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/x;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/x;

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge p1, v1, :cond_25

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    goto :goto_19

    :cond_25
    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b(I)V

    goto :goto_6d

    :cond_29
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_49
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_5a
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_6a

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6a
    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b(I)V

    :goto_6d
    return-void

    :cond_6e
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_73
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_73

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void
.end method

.method public p()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/x;

    const/4 v1, 0x2

    if-eqz v0, :cond_45

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/x;

    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2a

    if-ne p1, v1, :cond_25

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge p1, v1, :cond_66

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    goto :goto_19

    :cond_25
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_2a
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result p1

    if-eqz p1, :cond_38

    return-void

    :cond_38
    iget p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_2a

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void

    :cond_45
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    sget v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_6c

    if-ne v0, v1, :cond_67

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    add-int/2addr v1, v0

    :goto_56
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    if-ge v0, v1, :cond_66

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_66
    return-void

    :cond_67
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->d()Lcom/fyber/inneractive/sdk/protobuf/z$a;

    move-result-object p1

    throw p1

    :cond_6c
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    if-eqz v0, :cond_7e

    return-void

    :cond_7e
    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    if-eq v1, v2, :cond_6c

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    return-void
.end method

.method public q()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->w()I

    move-result v0

    return v0
.end method

.method public q(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public r()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public s()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->u()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->A()I

    move-result v0

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->e:I

    iget v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->f:I

    if-ne v0, v2, :cond_15

    return v1

    :cond_15
    sget v1, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    ushr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public t()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final v()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->d:I

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    aget-byte v0, v1, v0

    return v0

    :cond_f
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0
.end method

.method public final w()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->x()I

    move-result v0

    return v0
.end method

.method public final x()I
    .registers 5

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public final y()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->a(I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/f$b;->z()J

    move-result-wide v0

    return-wide v0
.end method

.method public final z()J
    .registers 10

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->b:[B

    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/fyber/inneractive/sdk/protobuf/f$b;->c:I

    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method
