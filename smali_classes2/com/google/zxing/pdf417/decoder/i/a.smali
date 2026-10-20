###### Class com.google.zxing.pdf417.decoder.i.a (com.google.zxing.pdf417.decoder.i.a)
.class public final Lcom/google/zxing/pdf417/decoder/i/a;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# instance fields
.field private final a:Lcom/google/zxing/pdf417/decoder/i/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/zxing/pdf417/decoder/i/b;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    return-void
.end method

.method private b(Lcom/google/zxing/pdf417/decoder/i/c;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/i/c;->d()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_8
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/i/b;->e()I

    move-result v4

    if-ge v2, v4, :cond_25

    if-ge v3, v0, :cond_25

    invoke-virtual {p1, v2}, Lcom/google/zxing/pdf417/decoder/i/c;->b(I)I

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {v4, v2}, Lcom/google/zxing/pdf417/decoder/i/b;->g(I)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_25
    if-ne v3, v0, :cond_28

    return-object v1

    :cond_28
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method

.method private c(Lcom/google/zxing/pdf417/decoder/i/c;Lcom/google/zxing/pdf417/decoder/i/c;[I)[I
    .registers 11

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/i/c;->d()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_b

    new-array p1, v1, [I

    return-object p1

    :cond_b
    new-array v3, v0, [I

    :goto_d
    if-gt v2, v0, :cond_20

    sub-int v4, v0, v2

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {p2, v2}, Lcom/google/zxing/pdf417/decoder/i/c;->c(I)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Lcom/google/zxing/pdf417/decoder/i/b;->i(II)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_20
    new-instance p2, Lcom/google/zxing/pdf417/decoder/i/c;

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-direct {p2, v0, v3}, Lcom/google/zxing/pdf417/decoder/i/c;-><init>(Lcom/google/zxing/pdf417/decoder/i/b;[I)V

    array-length v0, p3

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v0, :cond_54

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    aget v5, p3, v3

    invoke-virtual {v4, v5}, Lcom/google/zxing/pdf417/decoder/i/b;->g(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {p1, v4}, Lcom/google/zxing/pdf417/decoder/i/c;->b(I)I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lcom/google/zxing/pdf417/decoder/i/b;->j(II)I

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/decoder/i/c;->b(I)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/google/zxing/pdf417/decoder/i/b;->g(I)I

    move-result v4

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {v6, v5, v4}, Lcom/google/zxing/pdf417/decoder/i/b;->i(II)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_54
    return-object v2
.end method

.method private d(Lcom/google/zxing/pdf417/decoder/i/c;Lcom/google/zxing/pdf417/decoder/i/c;I)[Lcom/google/zxing/pdf417/decoder/i/c;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/i/c;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/i/c;->d()I

    move-result v1

    if-ge v0, v1, :cond_d

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :cond_d
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/i/b;->f()Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/i/b;->d()Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v1

    :goto_19
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/i/c;->d()I

    move-result v2

    const/4 v3, 0x2

    div-int/lit8 v4, p3, 0x2

    if-lt v2, v4, :cond_8e

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/i/c;->e()Z

    move-result v2

    if-nez v2, :cond_89

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/i/b;->f()Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/i/c;->d()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/zxing/pdf417/decoder/i/c;->c(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {v4, v3}, Lcom/google/zxing/pdf417/decoder/i/b;->g(I)I

    move-result v3

    :goto_42
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/i/c;->d()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/i/c;->d()I

    move-result v5

    if-lt v4, v5, :cond_7c

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/i/c;->e()Z

    move-result v4

    if-nez v4, :cond_7c

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/i/c;->d()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/i/c;->d()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/i/c;->d()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/decoder/i/c;->c(I)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/google/zxing/pdf417/decoder/i/b;->i(II)I

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/pdf417/decoder/i/b;->b(II)Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/zxing/pdf417/decoder/i/c;->a(Lcom/google/zxing/pdf417/decoder/i/c;)Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v2

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/pdf417/decoder/i/c;->h(II)Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/decoder/i/c;->j(Lcom/google/zxing/pdf417/decoder/i/c;)Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object p2

    goto :goto_42

    :cond_7c
    invoke-virtual {v2, v0}, Lcom/google/zxing/pdf417/decoder/i/c;->g(Lcom/google/zxing/pdf417/decoder/i/c;)Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/zxing/pdf417/decoder/i/c;->j(Lcom/google/zxing/pdf417/decoder/i/c;)Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/i/c;->i()Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v1

    goto :goto_19

    :cond_89
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1

    :cond_8e
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/google/zxing/pdf417/decoder/i/c;->c(I)I

    move-result p3

    if-eqz p3, :cond_ab

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {v1, p3}, Lcom/google/zxing/pdf417/decoder/i/b;->g(I)I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/google/zxing/pdf417/decoder/i/c;->f(I)Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v0

    invoke-virtual {p1, p3}, Lcom/google/zxing/pdf417/decoder/i/c;->f(I)Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object p1

    new-array p3, v3, [Lcom/google/zxing/pdf417/decoder/i/c;

    aput-object v0, p3, p2

    const/4 p2, 0x1

    aput-object p1, p3, p2

    return-object p3

    :cond_ab
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a([II[I)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    new-instance v0, Lcom/google/zxing/pdf417/decoder/i/c;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-direct {v0, v1, p1}, Lcom/google/zxing/pdf417/decoder/i/c;-><init>(Lcom/google/zxing/pdf417/decoder/i/b;[I)V

    new-array v1, p2, [I

    const/4 v2, 0x0

    move v3, p2

    const/4 v4, 0x0

    :goto_c
    const/4 v5, 0x1

    if-lez v3, :cond_23

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {v6, v3}, Lcom/google/zxing/pdf417/decoder/i/b;->c(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/zxing/pdf417/decoder/i/c;->b(I)I

    move-result v6

    sub-int v7, p2, v3

    aput v6, v1, v7

    if-eqz v6, :cond_20

    const/4 v4, 0x1

    :cond_20
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_23
    if-nez v4, :cond_26

    return v2

    :cond_26
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/i/b;->d()Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v0

    if-eqz p3, :cond_56

    array-length v3, p3

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v3, :cond_56

    aget v6, p3, v4

    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    array-length v8, p1

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Lcom/google/zxing/pdf417/decoder/i/b;->c(I)I

    move-result v6

    new-instance v7, Lcom/google/zxing/pdf417/decoder/i/c;

    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    const/4 v9, 0x2

    new-array v9, v9, [I

    invoke-virtual {v8, v2, v6}, Lcom/google/zxing/pdf417/decoder/i/b;->j(II)I

    move-result v6

    aput v6, v9, v2

    aput v5, v9, v5

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/pdf417/decoder/i/c;-><init>(Lcom/google/zxing/pdf417/decoder/i/b;[I)V

    invoke-virtual {v0, v7}, Lcom/google/zxing/pdf417/decoder/i/c;->g(Lcom/google/zxing/pdf417/decoder/i/c;)Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_56
    new-instance p3, Lcom/google/zxing/pdf417/decoder/i/c;

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-direct {p3, v0, v1}, Lcom/google/zxing/pdf417/decoder/i/c;-><init>(Lcom/google/zxing/pdf417/decoder/i/b;[I)V

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    invoke-virtual {v0, p2, v5}, Lcom/google/zxing/pdf417/decoder/i/b;->b(II)Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object v0

    invoke-direct {p0, v0, p3, p2}, Lcom/google/zxing/pdf417/decoder/i/a;->d(Lcom/google/zxing/pdf417/decoder/i/c;Lcom/google/zxing/pdf417/decoder/i/c;I)[Lcom/google/zxing/pdf417/decoder/i/c;

    move-result-object p2

    aget-object p3, p2, v2

    aget-object p2, p2, v5

    invoke-direct {p0, p3}, Lcom/google/zxing/pdf417/decoder/i/a;->b(Lcom/google/zxing/pdf417/decoder/i/c;)[I

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/zxing/pdf417/decoder/i/a;->c(Lcom/google/zxing/pdf417/decoder/i/c;Lcom/google/zxing/pdf417/decoder/i/c;[I)[I

    move-result-object p2

    :goto_73
    array-length p3, v0

    if-ge v2, p3, :cond_97

    array-length p3, p1

    sub-int/2addr p3, v5

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/google/zxing/pdf417/decoder/i/b;->h(I)I

    move-result v1

    sub-int/2addr p3, v1

    if-ltz p3, :cond_92

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/i/a;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    aget v3, p1, p3

    aget v4, p2, v2

    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/pdf417/decoder/i/b;->j(II)I

    move-result v1

    aput v1, p1, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    :cond_92
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1

    :cond_97
    array-length p1, v0

    return p1
.end method
