###### Class com.google.zxing.pdf417.decoder.g (com.google.zxing.pdf417.decoder.g)
.class final Lcom/google/zxing/pdf417/decoder/g;
.super Lcom/google/zxing/pdf417/decoder/f;
.source "DetectionResultRowIndicatorColumn.java"


# instance fields
.field private final c:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/c;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/decoder/f;-><init>(Lcom/google/zxing/pdf417/decoder/c;)V

    iput-boolean p2, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    return-void
.end method

.method private h(Lcom/google/zxing/pdf417/decoder/a;)V
    .registers 12

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->a()Lcom/google/zxing/pdf417/decoder/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/c;->h()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/c;->i()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    :goto_11
    iget-boolean v2, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/c;->b()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/c;->c()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    :goto_1e
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->c()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/f;->e(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->c()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/f;->e(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_38
    if-ge v1, v0, :cond_70

    aget-object v7, v2, v1

    if-nez v7, :cond_3f

    goto :goto_6d

    :cond_3f
    aget-object v7, v2, v1

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->j()V

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v8

    sub-int/2addr v8, v3

    if-nez v8, :cond_4e

    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    :cond_4e
    if-ne v8, v5, :cond_5a

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v3

    :goto_58
    const/4 v4, 0x1

    goto :goto_6d

    :cond_5a
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/a;->c()I

    move-result v9

    if-lt v8, v9, :cond_68

    const/4 v7, 0x0

    aput-object v7, v2, v1

    goto :goto_6d

    :cond_68
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v3

    goto :goto_58

    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_70
    return-void
.end method

.method private l([Lcom/google/zxing/pdf417/decoder/d;Lcom/google/zxing/pdf417/decoder/a;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_5c

    aget-object v1, p1, v0

    aget-object v2, p1, v0

    if-nez v2, :cond_b

    goto :goto_59

    :cond_b
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/d;->e()I

    move-result v2

    rem-int/lit8 v2, v2, 0x1e

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/a;->c()I

    move-result v3

    const/4 v4, 0x0

    if-le v1, v3, :cond_1f

    aput-object v4, p1, v0

    goto :goto_59

    :cond_1f
    iget-boolean v3, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    if-nez v3, :cond_25

    add-int/lit8 v1, v1, 0x2

    :cond_25
    rem-int/lit8 v1, v1, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_4e

    if-eq v1, v3, :cond_3b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_30

    goto :goto_59

    :cond_30
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/a;->a()I

    move-result v1

    if-eq v2, v1, :cond_59

    aput-object v4, p1, v0

    goto :goto_59

    :cond_3b
    div-int/lit8 v1, v2, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/a;->b()I

    move-result v3

    if-ne v1, v3, :cond_4b

    rem-int/lit8 v2, v2, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/a;->d()I

    move-result v1

    if-eq v2, v1, :cond_59

    :cond_4b
    aput-object v4, p1, v0

    goto :goto_59

    :cond_4e
    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/a;->e()I

    move-result v1

    if-eq v2, v1, :cond_59

    aput-object v4, p1, v0

    :cond_59
    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5c
    return-void
.end method

.method private m()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/d;->j()V

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method


# virtual methods
.method g(Lcom/google/zxing/pdf417/decoder/a;)V
    .registers 15

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/g;->m()V

    invoke-direct {p0, v0, p1}, Lcom/google/zxing/pdf417/decoder/g;->l([Lcom/google/zxing/pdf417/decoder/d;Lcom/google/zxing/pdf417/decoder/a;)V

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->a()Lcom/google/zxing/pdf417/decoder/c;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/c;->h()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/c;->i()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    :goto_1b
    iget-boolean v3, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    if-eqz v3, :cond_24

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/c;->b()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    goto :goto_28

    :cond_24
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/c;->c()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    :goto_28
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->c()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/f;->e(I)I

    move-result v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->c()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/f;->e(I)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_3f
    if-ge v2, v1, :cond_9a

    aget-object v8, v0, v2

    if-nez v8, :cond_46

    goto :goto_97

    :cond_46
    aget-object v8, v0, v2

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v9

    sub-int/2addr v9, v3

    if-nez v9, :cond_52

    add-int/lit8 v6, v6, 0x1

    goto :goto_97

    :cond_52
    if-ne v9, v5, :cond_5e

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v3

    :goto_5c
    const/4 v6, 0x1

    goto :goto_97

    :cond_5e
    const/4 v10, 0x0

    if-ltz v9, :cond_95

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v11

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/a;->c()I

    move-result v12

    if-ge v11, v12, :cond_95

    if-le v9, v2, :cond_6e

    goto :goto_95

    :cond_6e
    const/4 v11, 0x2

    if-le v7, v11, :cond_75

    add-int/lit8 v11, v7, -0x2

    mul-int v9, v9, v11

    :cond_75
    if-lt v9, v2, :cond_79

    const/4 v11, 0x1

    goto :goto_7a

    :cond_79
    const/4 v11, 0x0

    :goto_7a
    const/4 v12, 0x1

    :goto_7b
    if-gt v12, v9, :cond_8b

    if-nez v11, :cond_8b

    sub-int v11, v2, v12

    aget-object v11, v0, v11

    if-eqz v11, :cond_87

    const/4 v11, 0x1

    goto :goto_88

    :cond_87
    const/4 v11, 0x0

    :goto_88
    add-int/lit8 v12, v12, 0x1

    goto :goto_7b

    :cond_8b
    if-eqz v11, :cond_90

    aput-object v10, v0, v2

    goto :goto_97

    :cond_90
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v3

    goto :goto_5c

    :cond_95
    :goto_95
    aput-object v10, v0, v2

    :goto_97
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_9a
    return-void
.end method

.method i()Lcom/google/zxing/pdf417/decoder/a;
    .registers 14

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v0

    new-instance v1, Lcom/google/zxing/pdf417/decoder/b;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/decoder/b;-><init>()V

    new-instance v2, Lcom/google/zxing/pdf417/decoder/b;

    invoke-direct {v2}, Lcom/google/zxing/pdf417/decoder/b;-><init>()V

    new-instance v3, Lcom/google/zxing/pdf417/decoder/b;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/decoder/b;-><init>()V

    new-instance v4, Lcom/google/zxing/pdf417/decoder/b;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/decoder/b;-><init>()V

    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1b
    const/4 v8, 0x1

    const/4 v9, 0x3

    if-ge v7, v5, :cond_5a

    aget-object v10, v0, v7

    if-nez v10, :cond_24

    goto :goto_57

    :cond_24
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/d;->j()V

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/d;->e()I

    move-result v11

    rem-int/lit8 v11, v11, 0x1e

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v10

    iget-boolean v12, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    if-nez v12, :cond_37

    add-int/lit8 v10, v10, 0x2

    :cond_37
    rem-int/2addr v10, v9

    if-eqz v10, :cond_51

    if-eq v10, v8, :cond_46

    const/4 v8, 0x2

    if-eq v10, v8, :cond_40

    goto :goto_57

    :cond_40
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11}, Lcom/google/zxing/pdf417/decoder/b;->c(I)V

    goto :goto_57

    :cond_46
    div-int/lit8 v8, v11, 0x3

    invoke-virtual {v4, v8}, Lcom/google/zxing/pdf417/decoder/b;->c(I)V

    rem-int/lit8 v11, v11, 0x3

    invoke-virtual {v3, v11}, Lcom/google/zxing/pdf417/decoder/b;->c(I)V

    goto :goto_57

    :cond_51
    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v8

    invoke-virtual {v2, v11}, Lcom/google/zxing/pdf417/decoder/b;->c(I)V

    :goto_57
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_5a
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_c0

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_c0

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_c0

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_c0

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v5

    aget v5, v5, v6

    if-lt v5, v8, :cond_c0

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    if-lt v5, v9, :cond_c0

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    const/16 v7, 0x5a

    if-le v5, v7, :cond_9f

    goto :goto_c0

    :cond_9f
    new-instance v5, Lcom/google/zxing/pdf417/decoder/a;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v1

    aget v1, v1, v6

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v2

    aget v2, v2, v6

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v4

    aget v4, v4, v6

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/zxing/pdf417/decoder/a;-><init>(IIII)V

    invoke-direct {p0, v0, v5}, Lcom/google/zxing/pdf417/decoder/g;->l([Lcom/google/zxing/pdf417/decoder/d;Lcom/google/zxing/pdf417/decoder/a;)V

    return-object v5

    :cond_c0
    :goto_c0
    const/4 v0, 0x0

    return-object v0
.end method

.method j()[I
    .registers 8

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/g;->i()Lcom/google/zxing/pdf417/decoder/a;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/g;->h(Lcom/google/zxing/pdf417/decoder/a;)V

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/a;->c()I

    move-result v0

    new-array v1, v0, [I

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v5

    if-lt v5, v0, :cond_24

    goto :goto_2a

    :cond_24
    aget v6, v1, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v1, v5

    :cond_2a
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2d
    return-object v1
.end method

.method k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/google/zxing/pdf417/decoder/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
