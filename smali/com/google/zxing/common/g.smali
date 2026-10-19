###### Class com.google.zxing.common.g (com.google.zxing.common.g)
.class public Lcom/google/zxing/common/g;
.super Ljava/lang/Object;
.source "MinimalECIInput.java"

# interfaces
.implements Lcom/google/zxing/common/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/common/g$b;
    }
.end annotation


# instance fields
.field private final a:[I

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/zxing/common/g;->b:I

    new-instance v0, Lcom/google/zxing/common/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/zxing/common/d;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    invoke-virtual {v0}, Lcom/google/zxing/common/d;->g()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/zxing/common/g;->a:[I

    const/4 p2, 0x0

    :goto_1a
    iget-object v0, p0, Lcom/google/zxing/common/g;->a:[I

    array-length v0, v0

    if-ge p2, v0, :cond_34

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/common/g;->a:[I

    if-ne v0, p3, :cond_29

    const/16 v0, 0x3e8

    :cond_29
    aput v0, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    :cond_2e
    invoke-static {p1, v0, p3}, Lcom/google/zxing/common/g;->e(Ljava/lang/String;Lcom/google/zxing/common/d;I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/common/g;->a:[I

    :cond_34
    return-void
.end method

.method static c([[Lcom/google/zxing/common/g$b;ILcom/google/zxing/common/g$b;)V
    .registers 5

    aget-object v0, p0, p1

    invoke-static {p2}, Lcom/google/zxing/common/g$b;->a(Lcom/google/zxing/common/g$b;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1c

    aget-object v0, p0, p1

    invoke-static {p2}, Lcom/google/zxing/common/g$b;->a(Lcom/google/zxing/common/g$b;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/zxing/common/g$b;->b(Lcom/google/zxing/common/g$b;)I

    move-result v0

    invoke-static {p2}, Lcom/google/zxing/common/g$b;->b(Lcom/google/zxing/common/g$b;)I

    move-result v1

    if-le v0, v1, :cond_24

    :cond_1c
    aget-object p0, p0, p1

    invoke-static {p2}, Lcom/google/zxing/common/g$b;->a(Lcom/google/zxing/common/g$b;)I

    move-result p1

    aput-object p2, p0, p1

    :cond_24
    return-void
.end method

.method static d(Ljava/lang/String;Lcom/google/zxing/common/d;[[Lcom/google/zxing/common/g$b;ILcom/google/zxing/common/g$b;I)V
    .registers 21

    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object v0, p0

    move/from16 v9, p5

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/d;->g()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/d;->f()I

    move-result v1

    if-ltz v1, :cond_29

    if-eq v10, v9, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/d;->f()I

    move-result v1

    invoke-virtual {v7, v10, v1}, Lcom/google/zxing/common/d;->a(CI)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/d;->f()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    move v11, v1

    goto :goto_2c

    :cond_29
    const/4 v1, 0x0

    move v11, v0

    const/4 v0, 0x0

    :goto_2c
    move v12, v0

    :goto_2d
    if-ge v12, v11, :cond_54

    if-eq v10, v9, :cond_3b

    invoke-virtual {v7, v10, v12}, Lcom/google/zxing/common/d;->a(CI)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_3b

    :cond_38
    move-object/from16 v0, p2

    goto :goto_51

    :cond_3b
    :goto_3b
    add-int/lit8 v13, v8, 0x1

    new-instance v14, Lcom/google/zxing/common/g$b;

    const/4 v6, 0x0

    move-object v0, v14

    move v1, v10

    move-object/from16 v2, p1

    move v3, v12

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/common/g$b;-><init>(CLcom/google/zxing/common/d;ILcom/google/zxing/common/g$b;ILcom/google/zxing/common/g$a;)V

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/google/zxing/common/g;->c([[Lcom/google/zxing/common/g$b;ILcom/google/zxing/common/g$b;)V

    :goto_51
    add-int/lit8 v12, v12, 0x1

    goto :goto_2d

    :cond_54
    return-void
.end method

.method static e(Ljava/lang/String;Lcom/google/zxing/common/d;I)[I
    .registers 15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Lcom/google/zxing/common/d;->g()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    const-class v1, Lcom/google/zxing/common/g$b;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/google/zxing/common/g$b;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, v1

    move v10, p2

    invoke-static/range {v5 .. v10}, Lcom/google/zxing/common/g;->d(Ljava/lang/String;Lcom/google/zxing/common/d;[[Lcom/google/zxing/common/g$b;ILcom/google/zxing/common/g$b;I)V

    const/4 v3, 0x1

    :goto_25
    if-gt v3, v0, :cond_59

    const/4 v11, 0x0

    :goto_28
    invoke-virtual {p1}, Lcom/google/zxing/common/d;->g()I

    move-result v5

    if-ge v11, v5, :cond_45

    aget-object v5, v1, v3

    aget-object v5, v5, v11

    if-eqz v5, :cond_42

    if-ge v3, v0, :cond_42

    aget-object v5, v1, v3

    aget-object v9, v5, v11

    move-object v5, p0

    move-object v6, p1

    move-object v7, v1

    move v8, v3

    move v10, p2

    invoke-static/range {v5 .. v10}, Lcom/google/zxing/common/g;->d(Ljava/lang/String;Lcom/google/zxing/common/d;[[Lcom/google/zxing/common/g$b;ILcom/google/zxing/common/g$b;I)V

    :cond_42
    add-int/lit8 v11, v11, 0x1

    goto :goto_28

    :cond_45
    const/4 v5, 0x0

    :goto_46
    invoke-virtual {p1}, Lcom/google/zxing/common/d;->g()I

    move-result v6

    if-ge v5, v6, :cond_56

    add-int/lit8 v6, v3, -0x1

    aget-object v6, v1, v6

    const/4 v7, 0x0

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_59
    const p2, 0x7fffffff

    const/4 v3, -0x1

    const/4 v5, 0x0

    :goto_5e
    invoke-virtual {p1}, Lcom/google/zxing/common/d;->g()I

    move-result v6

    if-ge v5, v6, :cond_7c

    aget-object v6, v1, v0

    aget-object v6, v6, v5

    if-eqz v6, :cond_79

    aget-object v6, v1, v0

    aget-object v6, v6, v5

    invoke-static {v6}, Lcom/google/zxing/common/g$b;->b(Lcom/google/zxing/common/g$b;)I

    move-result v7

    if-ge v7, p2, :cond_79

    invoke-static {v6}, Lcom/google/zxing/common/g$b;->b(Lcom/google/zxing/common/g$b;)I

    move-result p2

    move v3, v5

    :cond_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    :cond_7c
    if-ltz v3, :cond_fb

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    aget-object p2, v1, v0

    aget-object p2, p2, v3

    :goto_87
    if-eqz p2, :cond_e3

    invoke-virtual {p2}, Lcom/google/zxing/common/g$b;->e()Z

    move-result v0

    if-eqz v0, :cond_99

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_b7

    :cond_99
    invoke-static {p2}, Lcom/google/zxing/common/g$b;->c(Lcom/google/zxing/common/g$b;)C

    move-result v0

    invoke-static {p2}, Lcom/google/zxing/common/g$b;->a(Lcom/google/zxing/common/g$b;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/d;->b(CI)[B

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v4

    :goto_a7
    if-ltz v1, :cond_b7

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a7

    :cond_b7
    :goto_b7
    invoke-static {p2}, Lcom/google/zxing/common/g$b;->d(Lcom/google/zxing/common/g$b;)Lcom/google/zxing/common/g$b;

    move-result-object v0

    if-nez v0, :cond_bf

    const/4 v0, 0x0

    goto :goto_c7

    :cond_bf
    invoke-static {p2}, Lcom/google/zxing/common/g$b;->d(Lcom/google/zxing/common/g$b;)Lcom/google/zxing/common/g$b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/common/g$b;->a(Lcom/google/zxing/common/g$b;)I

    move-result v0

    :goto_c7
    invoke-static {p2}, Lcom/google/zxing/common/g$b;->a(Lcom/google/zxing/common/g$b;)I

    move-result v1

    if-eq v0, v1, :cond_de

    invoke-static {p2}, Lcom/google/zxing/common/g$b;->a(Lcom/google/zxing/common/g$b;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/d;->e(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_de
    invoke-static {p2}, Lcom/google/zxing/common/g$b;->d(Lcom/google/zxing/common/g$b;)Lcom/google/zxing/common/g$b;

    move-result-object p2

    goto :goto_87

    :cond_e3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p2, p1, [I

    :goto_e9
    if-ge v2, p1, :cond_fa

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e9

    :cond_fa
    return-object p2

    :cond_fb
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to encode \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(I)Z
    .registers 5

    if-ltz p1, :cond_1a

    invoke-virtual {p0}, Lcom/google/zxing/common/g;->length()I

    move-result v0

    if-ge p1, v0, :cond_1a

    iget-object v0, p0, Lcom/google/zxing/common/g;->a:[I

    aget v1, v0, p1

    const/16 v2, 0xff

    if-le v1, v2, :cond_18

    aget p1, v0, p1

    const/16 v0, 0x3e7

    if-gt p1, v0, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1

    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)I
    .registers 5

    if-ltz p1, :cond_31

    invoke-virtual {p0}, Lcom/google/zxing/common/g;->length()I

    move-result v0

    if-ge p1, v0, :cond_31

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/zxing/common/g;->a:[I

    aget p1, v0, p1

    add-int/lit16 p1, p1, -0x100

    return p1

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not an ECI but a character"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public charAt(I)C
    .registers 5

    if-ltz p1, :cond_39

    invoke-virtual {p0}, Lcom/google/zxing/common/g;->length()I

    move-result v0

    if-ge p1, v0, :cond_39

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/g;->h(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget p1, p0, Lcom/google/zxing/common/g;->b:I

    goto :goto_1b

    :cond_17
    iget-object v0, p0, Lcom/google/zxing/common/g;->a:[I

    aget p1, v0, p1

    :goto_1b
    int-to-char p1, p1

    return p1

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a character but an ECI"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/common/g;->b:I

    return v0
.end method

.method public g(II)Z
    .registers 7

    add-int v0, p1, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/zxing/common/g;->a:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_b

    return v3

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-ge v0, p2, :cond_1a

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_17

    return v3

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1a
    return v1
.end method

.method public h(I)Z
    .registers 5

    if-ltz p1, :cond_14

    invoke-virtual {p0}, Lcom/google/zxing/common/g;->length()I

    move-result v0

    if-ge p1, v0, :cond_14

    iget-object v0, p0, Lcom/google/zxing/common/g;->a:[I

    aget p1, v0, p1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1

    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/common/g;->a:[I

    array-length v0, v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5

    if-ltz p1, :cond_3e

    if-gt p1, p2, :cond_3e

    invoke-virtual {p0}, Lcom/google/zxing/common/g;->length()I

    move-result v0

    if-gt p2, v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f
    if-ge p1, p2, :cond_3d

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/g;->a(I)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_21
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a character but an ECI"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3d
    return-object v0

    :cond_3e
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/google/zxing/common/g;->length()I

    move-result v2

    if-ge v1, v2, :cond_4d

    if-lez v1, :cond_13

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "ECI("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/g;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_2b
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_43

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_43
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
