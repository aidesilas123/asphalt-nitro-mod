###### Class com.google.zxing.pdf417.decoder.e (com.google.zxing.pdf417.decoder.e)
.class final Lcom/google/zxing/pdf417/decoder/e;
.super Ljava/lang/Object;
.source "DetectionResult.java"


# instance fields
.field private final a:Lcom/google/zxing/pdf417/decoder/a;

.field private final b:[Lcom/google/zxing/pdf417/decoder/f;

.field private c:Lcom/google/zxing/pdf417/decoder/c;

.field private final d:I


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/a;Lcom/google/zxing/pdf417/decoder/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/e;->a:Lcom/google/zxing/pdf417/decoder/a;

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/a;->a()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/pdf417/decoder/e;->d:I

    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/e;->c:Lcom/google/zxing/pdf417/decoder/c;

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/google/zxing/pdf417/decoder/f;

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    return-void
.end method

.method private a(Lcom/google/zxing/pdf417/decoder/f;)V
    .registers 3

    if-eqz p1, :cond_9

    check-cast p1, Lcom/google/zxing/pdf417/decoder/g;

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->a:Lcom/google/zxing/pdf417/decoder/a;

    invoke-virtual {p1, v0}, Lcom/google/zxing/pdf417/decoder/g;->g(Lcom/google/zxing/pdf417/decoder/a;)V

    :cond_9
    return-void
.end method

.method private static b(Lcom/google/zxing/pdf417/decoder/d;Lcom/google/zxing/pdf417/decoder/d;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/d;->g()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/d;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/d;->a()I

    move-result v2

    if-ne v1, v2, :cond_1d

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/d;->i(I)V

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v0
.end method

.method private static c(IILcom/google/zxing/pdf417/decoder/d;)I
    .registers 4

    if-nez p2, :cond_3

    return p1

    :cond_3
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/d;->g()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/d;->h(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/d;->i(I)V

    const/4 p1, 0x0

    goto :goto_16

    :cond_14
    add-int/lit8 p1, p1, 0x1

    :cond_16
    :goto_16
    return p1
.end method

.method private d()I
    .registers 8

    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/e;->f()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_a
    iget v4, p0, Lcom/google/zxing/pdf417/decoder/e;->d:I

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_31

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v4

    const/4 v5, 0x0

    :goto_18
    array-length v6, v4

    if-ge v5, v6, :cond_2e

    aget-object v6, v4, v5

    if-nez v6, :cond_20

    goto :goto_2b

    :cond_20
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/d;->g()Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-direct {p0, v3, v5, v4}, Lcom/google/zxing/pdf417/decoder/e;->e(II[Lcom/google/zxing/pdf417/decoder/d;)V

    :cond_2b
    :goto_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_31
    return v0
.end method

.method private e(II[Lcom/google/zxing/pdf417/decoder/d;)V
    .registers 14

    aget-object v0, p3, p2

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    const/4 v3, 0x1

    add-int/2addr p1, v3

    aget-object v4, v2, p1

    if-eqz v4, :cond_1b

    aget-object p1, v2, p1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    move-object p1, v1

    :goto_1c
    const/16 v2, 0xe

    new-array v4, v2, [Lcom/google/zxing/pdf417/decoder/d;

    aget-object v5, v1, p2

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    aget-object v7, p1, p2

    aput-object v7, v4, v5

    const/4 v5, 0x0

    if-lez p2, :cond_3d

    add-int/lit8 v7, p2, -0x1

    aget-object v8, p3, v7

    aput-object v8, v4, v5

    const/4 v8, 0x4

    aget-object v9, v1, v7

    aput-object v9, v4, v8

    const/4 v8, 0x5

    aget-object v7, p1, v7

    aput-object v7, v4, v8

    :cond_3d
    if-le p2, v3, :cond_53

    const/16 v7, 0x8

    add-int/lit8 v8, p2, -0x2

    aget-object v9, p3, v8

    aput-object v9, v4, v7

    const/16 v7, 0xa

    aget-object v9, v1, v8

    aput-object v9, v4, v7

    const/16 v7, 0xb

    aget-object v8, p1, v8

    aput-object v8, v4, v7

    :cond_53
    array-length v7, p3

    sub-int/2addr v7, v3

    if-ge p2, v7, :cond_67

    add-int/lit8 v7, p2, 0x1

    aget-object v8, p3, v7

    aput-object v8, v4, v3

    const/4 v3, 0x6

    aget-object v8, v1, v7

    aput-object v8, v4, v3

    const/4 v3, 0x7

    aget-object v7, p1, v7

    aput-object v7, v4, v3

    :cond_67
    array-length v3, p3

    sub-int/2addr v3, v6

    if-ge p2, v3, :cond_7e

    const/16 v3, 0x9

    add-int/2addr p2, v6

    aget-object p3, p3, p2

    aput-object p3, v4, v3

    const/16 p3, 0xc

    aget-object v1, v1, p2

    aput-object v1, v4, p3

    const/16 p3, 0xd

    aget-object p1, p1, p2

    aput-object p1, v4, p3

    :cond_7e
    :goto_7e
    if-ge v5, v2, :cond_8c

    aget-object p1, v4, v5

    invoke-static {v0, p1}, Lcom/google/zxing/pdf417/decoder/e;->b(Lcom/google/zxing/pdf417/decoder/d;Lcom/google/zxing/pdf417/decoder/d;)Z

    move-result p1

    if-eqz p1, :cond_89

    return-void

    :cond_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    :cond_8c
    return-void
.end method

.method private f()I
    .registers 3

    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/e;->g()V

    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/e;->h()I

    move-result v0

    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/e;->i()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private g()V
    .registers 8

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_6c

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/e;->d:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-object v2, v0, v2

    if-nez v2, :cond_10

    goto :goto_6c

    :cond_10
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v0

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    iget v4, p0, Lcom/google/zxing/pdf417/decoder/e;->d:I

    add-int/2addr v4, v3

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v2

    :goto_21
    array-length v4, v0

    if-ge v1, v4, :cond_6c

    aget-object v4, v0, v1

    if-eqz v4, :cond_69

    aget-object v4, v2, v1

    if-eqz v4, :cond_69

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v4

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v5

    if-ne v4, v5, :cond_69

    const/4 v4, 0x1

    :goto_3b
    iget v5, p0, Lcom/google/zxing/pdf417/decoder/e;->d:I

    if-gt v4, v5, :cond_69

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v5

    aget-object v5, v5, v1

    if-nez v5, :cond_4c

    goto :goto_66

    :cond_4c
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/zxing/pdf417/decoder/d;->i(I)V

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/d;->g()Z

    move-result v5

    if-nez v5, :cond_66

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v6, v5, v1

    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_6c
    :goto_6c
    return-void
.end method

.method private h()I
    .registers 10

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_8

    return v1

    :cond_8
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    array-length v4, v0

    if-ge v2, v4, :cond_47

    aget-object v4, v0, v2

    if-nez v4, :cond_18

    goto :goto_44

    :cond_18
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_21
    iget v8, p0, Lcom/google/zxing/pdf417/decoder/e;->d:I

    add-int/2addr v8, v5

    if-ge v6, v8, :cond_44

    const/4 v8, 0x2

    if-ge v7, v8, :cond_44

    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v8

    aget-object v8, v8, v2

    if-eqz v8, :cond_41

    invoke-static {v4, v7, v8}, Lcom/google/zxing/pdf417/decoder/e;->c(IILcom/google/zxing/pdf417/decoder/d;)I

    move-result v7

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/d;->g()Z

    move-result v8

    if-nez v8, :cond_41

    add-int/lit8 v3, v3, 0x1

    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_47
    return v3
.end method

.method private i()I
    .registers 9

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/e;->d:I

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return v3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_16
    array-length v4, v0

    if-ge v1, v4, :cond_4c

    aget-object v4, v0, v1

    if-nez v4, :cond_1e

    goto :goto_49

    :cond_1e
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v4

    iget v5, p0, Lcom/google/zxing/pdf417/decoder/e;->d:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    :goto_29
    if-lez v5, :cond_49

    const/4 v7, 0x2

    if-ge v6, v7, :cond_49

    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v7

    aget-object v7, v7, v1

    if-eqz v7, :cond_46

    invoke-static {v4, v6, v7}, Lcom/google/zxing/pdf417/decoder/e;->c(IILcom/google/zxing/pdf417/decoder/d;)I

    move-result v6

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->g()Z

    move-result v7

    if-nez v7, :cond_46

    add-int/lit8 v2, v2, 0x1

    :cond_46
    add-int/lit8 v5, v5, -0x1

    goto :goto_29

    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_4c
    return v2
.end method


# virtual methods
.method j()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/e;->d:I

    return v0
.end method

.method k()I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->a:Lcom/google/zxing/pdf417/decoder/a;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/a;->b()I

    move-result v0

    return v0
.end method

.method l()I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->a:Lcom/google/zxing/pdf417/decoder/a;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/a;->c()I

    move-result v0

    return v0
.end method

.method m()Lcom/google/zxing/pdf417/decoder/c;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->c:Lcom/google/zxing/pdf417/decoder/c;

    return-object v0
.end method

.method n(I)Lcom/google/zxing/pdf417/decoder/f;
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    aget-object p1, v0, p1

    return-object p1
.end method

.method o()[Lcom/google/zxing/pdf417/decoder/f;
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/e;->a(Lcom/google/zxing/pdf417/decoder/f;)V

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/e;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/e;->a(Lcom/google/zxing/pdf417/decoder/f;)V

    const/16 v0, 0x3a0

    :goto_15
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/e;->d()I

    move-result v1

    if-lez v1, :cond_20

    if-lt v1, v0, :cond_1e

    goto :goto_20

    :cond_1e
    move v0, v1

    goto :goto_15

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    return-object v0
.end method

.method p(Lcom/google/zxing/pdf417/decoder/c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/e;->c:Lcom/google/zxing/pdf417/decoder/c;

    return-void
.end method

.method q(ILcom/google/zxing/pdf417/decoder/f;)V
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    aput-object p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_d

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/e;->d:I

    add-int/2addr v2, v3

    aget-object v2, v0, v2

    :cond_d
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v4, 0x0

    :goto_13
    :try_start_13
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_74

    const-string v5, "CW %3d:"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v5, 0x0

    :goto_28
    iget v6, p0, Lcom/google/zxing/pdf417/decoder/e;->d:I

    const/4 v7, 0x2

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_6a

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/e;->b:[Lcom/google/zxing/pdf417/decoder/f;

    aget-object v8, v6, v5
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_7c

    const-string v9, "    |   "

    if-nez v8, :cond_3c

    :try_start_36
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_67

    :cond_3c
    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v6

    aget-object v6, v6, v4

    if-nez v6, :cond_4c

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_67

    :cond_4c
    const-string v8, " %3d|%3d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v1

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/d;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    invoke-virtual {v0, v8, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_6a
    const-string v5, "%n"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_74
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_78
    .catchall {:try_start_36 .. :try_end_78} :catchall_7c

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object v1

    :catchall_7c
    move-exception v1

    :try_start_7d
    throw v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v2

    :try_start_7f
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_87

    :catchall_83
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_87
    throw v2
.end method
