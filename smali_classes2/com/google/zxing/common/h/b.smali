###### Class com.google.zxing.common.h.b (com.google.zxing.common.h.b)
.class final Lcom/google/zxing/common/h/b;
.super Ljava/lang/Object;
.source "GenericGFPoly.java"


# instance fields
.field private final a:Lcom/google/zxing/common/h/a;

.field private final b:[I


# direct methods
.method constructor <init>(Lcom/google/zxing/common/h/a;[I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-eqz v0, :cond_31

    iput-object p1, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    array-length p1, p2

    const/4 v0, 0x1

    if-le p1, v0, :cond_2e

    const/4 v1, 0x0

    aget v2, p2, v1

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    :goto_12
    if-ge v2, p1, :cond_1b

    aget v3, p2, v2

    if-nez v3, :cond_1b

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1b
    if-ne v2, p1, :cond_24

    new-array p1, v0, [I

    aput v1, p1, v1

    iput-object p1, p0, Lcom/google/zxing/common/h/b;->b:[I

    goto :goto_30

    :cond_24
    sub-int/2addr p1, v2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/common/h/b;->b:[I

    array-length v0, p1

    invoke-static {p2, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_30

    :cond_2e
    iput-object p2, p0, Lcom/google/zxing/common/h/b;->b:[I

    :goto_30
    return-void

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method a(Lcom/google/zxing/common/h/b;)Lcom/google/zxing/common/h/b;
    .registers 9

    iget-object v0, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    iget-object v1, p1, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/google/zxing/common/h/b;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p1

    :cond_11
    invoke-virtual {p1}, Lcom/google/zxing/common/h/b;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p0

    :cond_18
    iget-object v0, p0, Lcom/google/zxing/common/h/b;->b:[I

    iget-object p1, p1, Lcom/google/zxing/common/h/b;->b:[I

    array-length v1, v0

    array-length v2, p1

    if-le v1, v2, :cond_21

    goto :goto_24

    :cond_21
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_24
    array-length v1, v0

    new-array v1, v1, [I

    array-length v2, v0

    array-length v3, p1

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v2

    :goto_2f
    array-length v4, v0

    if-ge v3, v4, :cond_41

    sub-int v4, v3, v2

    aget v4, p1, v4

    aget v5, v0, v3

    invoke-static {v4, v5}, Lcom/google/zxing/common/h/a;->a(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_41
    new-instance p1, Lcom/google/zxing/common/h/b;

    iget-object v0, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-direct {p1, v0, v1}, Lcom/google/zxing/common/h/b;-><init>(Lcom/google/zxing/common/h/a;[I)V

    return-object p1

    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Lcom/google/zxing/common/h/b;)[Lcom/google/zxing/common/h/b;
    .registers 9

    iget-object v0, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    iget-object v1, p1, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p1}, Lcom/google/zxing/common/h/b;->f()Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-virtual {v0}, Lcom/google/zxing/common/h/a;->e()Lcom/google/zxing/common/h/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/zxing/common/h/b;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/h/b;->c(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/h/a;->f(I)I

    move-result v1

    move-object v2, p0

    :goto_25
    invoke-virtual {v2}, Lcom/google/zxing/common/h/b;->e()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/common/h/b;->e()I

    move-result v4

    if-lt v3, v4, :cond_5f

    invoke-virtual {v2}, Lcom/google/zxing/common/h/b;->f()Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-virtual {v2}, Lcom/google/zxing/common/h/b;->e()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/common/h/b;->e()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-virtual {v2}, Lcom/google/zxing/common/h/b;->e()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/zxing/common/h/b;->c(I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/google/zxing/common/h/a;->h(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/common/h/b;->h(II)Lcom/google/zxing/common/h/b;

    move-result-object v5

    iget-object v6, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-virtual {v6, v3, v4}, Lcom/google/zxing/common/h/a;->b(II)Lcom/google/zxing/common/h/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/h/b;->a(Lcom/google/zxing/common/h/b;)Lcom/google/zxing/common/h/b;

    move-result-object v0

    invoke-virtual {v2, v5}, Lcom/google/zxing/common/h/b;->a(Lcom/google/zxing/common/h/b;)Lcom/google/zxing/common/h/b;

    move-result-object v2

    goto :goto_25

    :cond_5f
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/zxing/common/h/b;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object v2, p1, v0

    return-object p1

    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Divide by 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method c(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/common/h/b;->b:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method d()[I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/common/h/b;->b:[I

    return-object v0
.end method

.method e()I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/common/h/b;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method f()Z
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/common/h/b;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method g(Lcom/google/zxing/common/h/b;)Lcom/google/zxing/common/h/b;
    .registers 14

    iget-object v0, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    iget-object v1, p1, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lcom/google/zxing/common/h/b;->f()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {p1}, Lcom/google/zxing/common/h/b;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_4c

    :cond_17
    iget-object v0, p0, Lcom/google/zxing/common/h/b;->b:[I

    array-length v1, v0

    iget-object p1, p1, Lcom/google/zxing/common/h/b;->b:[I

    array-length v2, p1

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v1, :cond_44

    aget v6, v0, v5

    const/4 v7, 0x0

    :goto_2a
    if-ge v7, v2, :cond_41

    add-int v8, v5, v7

    aget v9, v3, v8

    iget-object v10, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    aget v11, p1, v7

    invoke-virtual {v10, v6, v11}, Lcom/google/zxing/common/h/a;->h(II)I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/zxing/common/h/a;->a(II)I

    move-result v9

    aput v9, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_44
    new-instance p1, Lcom/google/zxing/common/h/b;

    iget-object v0, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-direct {p1, v0, v3}, Lcom/google/zxing/common/h/b;-><init>(Lcom/google/zxing/common/h/a;[I)V

    return-object p1

    :cond_4c
    :goto_4c
    iget-object p1, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-virtual {p1}, Lcom/google/zxing/common/h/a;->e()Lcom/google/zxing/common/h/b;

    move-result-object p1

    return-object p1

    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method h(II)Lcom/google/zxing/common/h/b;
    .registers 7

    if-ltz p1, :cond_2b

    if-nez p2, :cond_b

    iget-object p1, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-virtual {p1}, Lcom/google/zxing/common/h/a;->e()Lcom/google/zxing/common/h/b;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object v0, p0, Lcom/google/zxing/common/h/b;->b:[I

    array-length v0, v0

    add-int/2addr p1, v0

    new-array p1, p1, [I

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_23

    iget-object v2, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    iget-object v3, p0, Lcom/google/zxing/common/h/b;->b:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3, p2}, Lcom/google/zxing/common/h/a;->h(II)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_23
    new-instance p2, Lcom/google/zxing/common/h/b;

    iget-object v0, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/common/h/b;-><init>(Lcom/google/zxing/common/h/a;[I)V

    return-object p2

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/google/zxing/common/h/b;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "0"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/common/h/b;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/zxing/common/h/b;->e()I

    move-result v1

    :goto_18
    if-ltz v1, :cond_78

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/h/b;->c(I)I

    move-result v2

    if-eqz v2, :cond_75

    if-gez v2, :cond_35

    invoke-virtual {p0}, Lcom/google/zxing/common/h/b;->e()I

    move-result v3

    if-ne v1, v3, :cond_2e

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_2e
    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_33
    neg-int v2, v2

    goto :goto_40

    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_40

    const-string v3, " + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    :goto_40
    const/4 v3, 0x1

    if-eqz v1, :cond_45

    if-eq v2, v3, :cond_63

    :cond_45
    iget-object v4, p0, Lcom/google/zxing/common/h/b;->a:Lcom/google/zxing/common/h/a;

    invoke-virtual {v4, v2}, Lcom/google/zxing/common/h/a;->g(I)I

    move-result v2

    if-nez v2, :cond_53

    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_63

    :cond_53
    if-ne v2, v3, :cond_5b

    const/16 v2, 0x61

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_63

    :cond_5b
    const-string v4, "a^"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_63
    :goto_63
    if-eqz v1, :cond_75

    if-ne v1, v3, :cond_6d

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_75

    :cond_6d
    const-string v2, "x^"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_75
    :goto_75
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    :cond_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
