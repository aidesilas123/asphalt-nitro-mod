###### Class com.tapjoy.internal.k0 (com.tapjoy.internal.k0)
.class public final Lcom/tapjoy/internal/k0;
.super Lcom/tapjoy/internal/b4;
.source "SourceFile"


# static fields
.field public static final b:Lcom/tapjoy/internal/z;


# instance fields
.field public final c:Lcom/tapjoy/internal/f3;

.field public final d:Ljava/io/Reader;

.field public final e:[C

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Ljava/util/ArrayList;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/z;

    invoke-direct {v0}, Lcom/tapjoy/internal/z;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/k0;->b:Lcom/tapjoy/internal/z;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    invoke-direct {p0}, Lcom/tapjoy/internal/b4;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/f3;

    invoke-direct {v0}, Lcom/tapjoy/internal/f3;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/k0;->c:Lcom/tapjoy/internal/f3;

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/tapjoy/internal/k0;->e:[C

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/k0;->f:I

    iput v0, p0, Lcom/tapjoy/internal/k0;->g:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/tapjoy/internal/k0;->h:I

    iput v1, p0, Lcom/tapjoy/internal/k0;->i:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->V()V

    iput-boolean v0, p0, Lcom/tapjoy/internal/k0;->p:Z

    iput-object p1, p0, Lcom/tapjoy/internal/k0;->d:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public final I(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    iget v0, p0, Lcom/tapjoy/internal/k0;->k:I

    if-ne v0, p1, :cond_b

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->M()I

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    move-result p1

    invoke-static {p1}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final J(Z)I
    .registers 6

    const/16 v0, 0x7d

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->S()I

    move-result p1

    if-eq p1, v0, :cond_13

    iget p1, p0, Lcom/tapjoy/internal/k0;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tapjoy/internal/k0;->f:I

    goto :goto_49

    :cond_13
    iget-object p1, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/e4;

    iput v2, p0, Lcom/tapjoy/internal/k0;->k:I

    return v2

    :cond_24
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->S()I

    move-result p1

    const/16 v3, 0x2c

    if-eq p1, v3, :cond_49

    const/16 v3, 0x3b

    if-eq p1, v3, :cond_49

    if-ne p1, v0, :cond_43

    iget-object p1, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/e4;

    iput v2, p0, Lcom/tapjoy/internal/k0;->k:I

    return v2

    :cond_43
    const-string p1, "Unterminated object"

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/k0;->K(Ljava/lang/String;)V

    throw v1

    :cond_49
    :goto_49
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->S()I

    move-result p1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_5d

    const/16 v0, 0x27

    if-eq p1, v0, :cond_59

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->N()V

    throw v1

    :cond_59
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->N()V

    throw v1

    :cond_5d
    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/k0;->x(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/k0;->l:Ljava/lang/String;

    sget-object p1, Lcom/tapjoy/internal/e4;->d:Lcom/tapjoy/internal/e4;

    iget-object v0, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/tapjoy/internal/k0;->k:I

    return p1
.end method

.method public final K(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/tapjoy/internal/i4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at line "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/tapjoy/internal/k0;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    iget v4, p0, Lcom/tapjoy/internal/k0;->f:I

    const/16 v5, 0xa

    if-ge v3, v4, :cond_24

    iget-object v4, p0, Lcom/tapjoy/internal/k0;->e:[C

    aget-char v4, v4, v3

    if-ne v4, v5, :cond_21

    add-int/lit8 p1, p1, 0x1

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " column "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/tapjoy/internal/k0;->i:I

    :goto_2e
    iget v3, p0, Lcom/tapjoy/internal/k0;->f:I

    if-ge v2, v3, :cond_3f

    iget-object v3, p0, Lcom/tapjoy/internal/k0;->e:[C

    aget-char v3, v3, v2

    if-ne v3, v5, :cond_3a

    const/4 p1, 0x1

    goto :goto_3c

    :cond_3a
    add-int/lit8 p1, p1, 0x1

    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_3f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/i4;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L(I)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/tapjoy/internal/k0;->f:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Lcom/tapjoy/internal/k0;->e:[C

    aget-char v2, v2, v1

    const/16 v4, 0xa

    if-ne v2, v4, :cond_17

    iget v2, p0, Lcom/tapjoy/internal/k0;->h:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tapjoy/internal/k0;->h:I

    iput v3, p0, Lcom/tapjoy/internal/k0;->i:I

    goto :goto_1c

    :cond_17
    iget v2, p0, Lcom/tapjoy/internal/k0;->i:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tapjoy/internal/k0;->i:I

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    iget v1, p0, Lcom/tapjoy/internal/k0;->g:I

    if-eq v1, v2, :cond_2c

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tapjoy/internal/k0;->g:I

    iget-object v4, p0, Lcom/tapjoy/internal/k0;->e:[C

    invoke-static {v4, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e

    :cond_2c
    iput v0, p0, Lcom/tapjoy/internal/k0;->g:I

    :goto_2e
    iput v0, p0, Lcom/tapjoy/internal/k0;->f:I

    :cond_30
    iget-object v1, p0, Lcom/tapjoy/internal/k0;->d:Ljava/io/Reader;

    iget-object v2, p0, Lcom/tapjoy/internal/k0;->e:[C

    iget v4, p0, Lcom/tapjoy/internal/k0;->g:I

    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    iget v2, p0, Lcom/tapjoy/internal/k0;->g:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tapjoy/internal/k0;->g:I

    iget v1, p0, Lcom/tapjoy/internal/k0;->h:I

    if-ne v1, v3, :cond_60

    iget v1, p0, Lcom/tapjoy/internal/k0;->i:I

    if-ne v1, v3, :cond_60

    if-lez v2, :cond_60

    iget-object v4, p0, Lcom/tapjoy/internal/k0;->e:[C

    aget-char v4, v4, v0

    const v5, 0xfeff

    if-ne v4, v5, :cond_60

    iget v4, p0, Lcom/tapjoy/internal/k0;->f:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/tapjoy/internal/k0;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tapjoy/internal/k0;->i:I

    :cond_60
    if-lt v2, p1, :cond_30

    return v3

    :cond_63
    return v0
.end method

.method public final M()I
    .registers 3

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    iget v0, p0, Lcom/tapjoy/internal/k0;->k:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tapjoy/internal/k0;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/k0;->l:Ljava/lang/String;

    return v0
.end method

.method public final N()V
    .registers 2

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/k0;->K(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Q()J
    .registers 8

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    iget v0, p0, Lcom/tapjoy/internal/k0;->k:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    goto :goto_1e

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/tapjoy/internal/k0;->k:I

    invoke-static {v1}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected a long but was "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v0, p0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_33

    :catch_25
    nop

    iget-object v0, p0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v6, v4, v0

    if-nez v6, :cond_37

    move-wide v0, v2

    :goto_33
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->M()I

    return-wide v0

    :cond_37
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final S()I
    .registers 6

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/k0;->f:I

    iget v1, p0, Lcom/tapjoy/internal/k0;->g:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_16

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/k0;->L(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    :cond_e
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/tapjoy/internal/k0;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/k0;->f:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/tapjoy/internal/k0;->f:I

    aget-char v0, v0, v1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    const/4 v4, 0x0

    if-eq v0, v1, :cond_49

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3a

    return v0

    :cond_3a
    iget v1, p0, Lcom/tapjoy/internal/k0;->g:I

    if-ne v3, v1, :cond_45

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/k0;->L(I)Z

    move-result v1

    if-nez v1, :cond_45

    return v0

    :cond_45
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->N()V

    throw v4

    :cond_49
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->N()V

    throw v4
.end method

.method public final U()I
    .registers 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/internal/k0;->S()I

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x22

    if-eq v1, v3, :cond_216

    const/16 v3, 0x27

    const/4 v4, 0x0

    if-eq v1, v3, :cond_212

    const/16 v3, 0x5b

    const/4 v5, 0x1

    if-eq v1, v3, :cond_208

    const/16 v3, 0x7b

    if-eq v1, v3, :cond_1fd

    iget v1, v0, Lcom/tapjoy/internal/k0;->f:I

    sub-int/2addr v1, v5

    iput v1, v0, Lcom/tapjoy/internal/k0;->f:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/tapjoy/internal/k0;->n:I

    const/4 v6, 0x0

    iput v6, v0, Lcom/tapjoy/internal/k0;->o:I

    move-object v8, v4

    :cond_25
    const/4 v7, 0x0

    :goto_26
    iget v9, v0, Lcom/tapjoy/internal/k0;->f:I

    add-int/2addr v9, v7

    iget v10, v0, Lcom/tapjoy/internal/k0;->g:I

    const/16 v11, 0x9

    if-ge v9, v10, :cond_6d

    iget-object v10, v0, Lcom/tapjoy/internal/k0;->e:[C

    aget-char v9, v10, v9

    if-eq v9, v11, :cond_81

    const/16 v10, 0xa

    if-eq v9, v10, :cond_81

    const/16 v10, 0xc

    if-eq v9, v10, :cond_81

    const/16 v10, 0xd

    if-eq v9, v10, :cond_81

    const/16 v10, 0x20

    if-eq v9, v10, :cond_81

    const/16 v10, 0x23

    if-eq v9, v10, :cond_69

    const/16 v10, 0x2c

    if-eq v9, v10, :cond_81

    const/16 v10, 0x2f

    if-eq v9, v10, :cond_69

    const/16 v10, 0x3d

    if-eq v9, v10, :cond_69

    if-eq v9, v3, :cond_81

    const/16 v10, 0x7d

    if-eq v9, v10, :cond_81

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_81

    const/16 v10, 0x3b

    if-eq v9, v10, :cond_69

    packed-switch v9, :pswitch_data_220

    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_69
    :pswitch_69
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/internal/k0;->N()V

    throw v4

    :cond_6d
    iget-object v9, v0, Lcom/tapjoy/internal/k0;->e:[C

    array-length v9, v9

    if-ge v7, v9, :cond_83

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v9}, Lcom/tapjoy/internal/k0;->L(I)Z

    move-result v9

    if-eqz v9, :cond_7b

    goto :goto_26

    :cond_7b
    iget-object v3, v0, Lcom/tapjoy/internal/k0;->e:[C

    iget v9, v0, Lcom/tapjoy/internal/k0;->g:I

    aput-char v6, v3, v9

    :cond_81
    :pswitch_81
    move v6, v7

    goto :goto_a1

    :cond_83
    if-nez v8, :cond_8a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :cond_8a
    iget-object v9, v0, Lcom/tapjoy/internal/k0;->e:[C

    iget v10, v0, Lcom/tapjoy/internal/k0;->f:I

    invoke-virtual {v8, v9, v10, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/tapjoy/internal/k0;->o:I

    add-int/2addr v9, v7

    iput v9, v0, Lcom/tapjoy/internal/k0;->o:I

    iget v9, v0, Lcom/tapjoy/internal/k0;->f:I

    add-int/2addr v9, v7

    iput v9, v0, Lcom/tapjoy/internal/k0;->f:I

    invoke-virtual {v0, v5}, Lcom/tapjoy/internal/k0;->L(I)Z

    move-result v7

    if-nez v7, :cond_25

    :goto_a1
    if-nez v8, :cond_a9

    iget v3, v0, Lcom/tapjoy/internal/k0;->f:I

    iput v3, v0, Lcom/tapjoy/internal/k0;->n:I

    move-object v3, v4

    goto :goto_bb

    :cond_a9
    iget-boolean v3, v0, Lcom/tapjoy/internal/k0;->p:Z

    if-eqz v3, :cond_b0

    const-string v3, "skipped!"

    goto :goto_bb

    :cond_b0
    iget-object v3, v0, Lcom/tapjoy/internal/k0;->e:[C

    iget v7, v0, Lcom/tapjoy/internal/k0;->f:I

    invoke-virtual {v8, v3, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_bb
    iget v7, v0, Lcom/tapjoy/internal/k0;->o:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/tapjoy/internal/k0;->o:I

    iget v8, v0, Lcom/tapjoy/internal/k0;->f:I

    add-int/2addr v8, v6

    iput v8, v0, Lcom/tapjoy/internal/k0;->f:I

    iput-object v3, v0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    if-eqz v7, :cond_1f7

    iget v3, v0, Lcom/tapjoy/internal/k0;->n:I

    const/16 v6, 0x8

    if-ne v3, v1, :cond_d1

    goto/16 :goto_1ed

    :cond_d1
    const/16 v1, 0x55

    const/16 v8, 0x75

    const/16 v9, 0x4c

    const/16 v10, 0x6c

    const/4 v12, 0x4

    if-ne v7, v12, :cond_106

    iget-object v13, v0, Lcom/tapjoy/internal/k0;->e:[C

    aget-char v14, v13, v3

    const/16 v15, 0x6e

    if-eq v15, v14, :cond_e8

    const/16 v15, 0x4e

    if-ne v15, v14, :cond_106

    :cond_e8
    add-int/lit8 v14, v3, 0x1

    aget-char v14, v13, v14

    if-eq v8, v14, :cond_f0

    if-ne v1, v14, :cond_106

    :cond_f0
    add-int/lit8 v14, v3, 0x2

    aget-char v14, v13, v14

    if-eq v10, v14, :cond_f8

    if-ne v9, v14, :cond_106

    :cond_f8
    add-int/lit8 v14, v3, 0x3

    aget-char v13, v13, v14

    if-eq v10, v13, :cond_100

    if-ne v9, v13, :cond_106

    :cond_100
    const-string v1, "null"

    iput-object v1, v0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    goto/16 :goto_1ee

    :cond_106
    const/16 v11, 0x45

    const/16 v13, 0x65

    if-ne v7, v12, :cond_13c

    iget-object v12, v0, Lcom/tapjoy/internal/k0;->e:[C

    aget-char v14, v12, v3

    const/16 v15, 0x74

    if-eq v15, v14, :cond_118

    const/16 v15, 0x54

    if-ne v15, v14, :cond_13c

    :cond_118
    add-int/lit8 v14, v3, 0x1

    aget-char v14, v12, v14

    const/16 v15, 0x72

    if-eq v15, v14, :cond_124

    const/16 v15, 0x52

    if-ne v15, v14, :cond_13c

    :cond_124
    add-int/lit8 v14, v3, 0x2

    aget-char v14, v12, v14

    if-eq v8, v14, :cond_12c

    if-ne v1, v14, :cond_13c

    :cond_12c
    add-int/lit8 v1, v3, 0x3

    aget-char v1, v12, v1

    if-eq v13, v1, :cond_134

    if-ne v11, v1, :cond_13c

    :cond_134
    const-string v1, "true"

    iput-object v1, v0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    :goto_138
    const/16 v11, 0x8

    goto/16 :goto_1ee

    :cond_13c
    const/4 v1, 0x5

    if-ne v7, v1, :cond_178

    iget-object v1, v0, Lcom/tapjoy/internal/k0;->e:[C

    aget-char v8, v1, v3

    const/16 v12, 0x66

    if-eq v12, v8, :cond_14b

    const/16 v12, 0x46

    if-ne v12, v8, :cond_178

    :cond_14b
    add-int/lit8 v8, v3, 0x1

    aget-char v8, v1, v8

    const/16 v12, 0x61

    if-eq v12, v8, :cond_157

    const/16 v12, 0x41

    if-ne v12, v8, :cond_178

    :cond_157
    add-int/lit8 v8, v3, 0x2

    aget-char v8, v1, v8

    if-eq v10, v8, :cond_15f

    if-ne v9, v8, :cond_178

    :cond_15f
    add-int/lit8 v8, v3, 0x3

    aget-char v8, v1, v8

    const/16 v9, 0x73

    if-eq v9, v8, :cond_16b

    const/16 v9, 0x53

    if-ne v9, v8, :cond_178

    :cond_16b
    add-int/lit8 v8, v3, 0x4

    aget-char v1, v1, v8

    if-eq v13, v1, :cond_173

    if-ne v11, v1, :cond_178

    :cond_173
    const-string v1, "false"

    iput-object v1, v0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    goto :goto_138

    :cond_178
    iget-object v1, v0, Lcom/tapjoy/internal/k0;->c:Lcom/tapjoy/internal/f3;

    iget-object v6, v0, Lcom/tapjoy/internal/k0;->e:[C

    invoke-virtual {v1, v6, v3, v7}, Lcom/tapjoy/internal/f3;->a([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    iget-object v1, v0, Lcom/tapjoy/internal/k0;->e:[C

    iget v3, v0, Lcom/tapjoy/internal/k0;->n:I

    iget v6, v0, Lcom/tapjoy/internal/k0;->o:I

    aget-char v7, v1, v3

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_198

    add-int/lit8 v7, v3, 0x1

    aget-char v9, v1, v7

    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    goto :goto_199

    :cond_198
    move v9, v3

    :goto_199
    const/16 v10, 0x39

    const/16 v12, 0x30

    if-ne v7, v12, :cond_1a3

    add-int/2addr v9, v5

    aget-char v7, v1, v9

    goto :goto_1b5

    :cond_1a3
    const/16 v14, 0x31

    if-lt v7, v14, :cond_1ed

    if-gt v7, v10, :cond_1ed

    add-int/2addr v9, v5

    aget-char v7, v1, v9

    :goto_1ac
    if-lt v7, v12, :cond_1b5

    if-gt v7, v10, :cond_1b5

    add-int/lit8 v9, v9, 0x1

    aget-char v7, v1, v9

    goto :goto_1ac

    :cond_1b5
    :goto_1b5
    const/16 v14, 0x2e

    if-ne v7, v14, :cond_1c6

    add-int/lit8 v9, v9, 0x1

    aget-char v7, v1, v9

    :goto_1bd
    if-lt v7, v12, :cond_1c6

    if-gt v7, v10, :cond_1c6

    add-int/lit8 v9, v9, 0x1

    aget-char v7, v1, v9

    goto :goto_1bd

    :cond_1c6
    if-eq v7, v13, :cond_1ca

    if-ne v7, v11, :cond_1e8

    :cond_1ca
    add-int/lit8 v9, v9, 0x1

    aget-char v7, v1, v9

    const/16 v11, 0x2b

    if-eq v7, v11, :cond_1d4

    if-ne v7, v8, :cond_1d8

    :cond_1d4
    add-int/lit8 v9, v9, 0x1

    aget-char v7, v1, v9

    :cond_1d8
    if-lt v7, v12, :cond_1ed

    if-gt v7, v10, :cond_1ed

    add-int/2addr v9, v5

    aget-char v5, v1, v9

    :goto_1df
    if-lt v5, v12, :cond_1e8

    if-gt v5, v10, :cond_1e8

    add-int/lit8 v9, v9, 0x1

    aget-char v5, v1, v9

    goto :goto_1df

    :cond_1e8
    add-int/2addr v3, v6

    if-ne v9, v3, :cond_1ed

    const/4 v11, 0x7

    goto :goto_1ee

    :cond_1ed
    :goto_1ed
    const/4 v11, 0x6

    :goto_1ee
    iput v11, v0, Lcom/tapjoy/internal/k0;->k:I

    if-eq v11, v2, :cond_1f3

    return v11

    :cond_1f3
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/internal/k0;->N()V

    throw v4

    :cond_1f7
    const-string v1, "Expected literal value"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/k0;->K(Ljava/lang/String;)V

    throw v4

    :cond_1fd
    sget-object v1, Lcom/tapjoy/internal/e4;->c:Lcom/tapjoy/internal/e4;

    iget-object v2, v0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    iput v1, v0, Lcom/tapjoy/internal/k0;->k:I

    return v1

    :cond_208
    sget-object v1, Lcom/tapjoy/internal/e4;->a:Lcom/tapjoy/internal/e4;

    iget-object v2, v0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v5, v0, Lcom/tapjoy/internal/k0;->k:I

    return v5

    :cond_212
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/internal/k0;->N()V

    throw v4

    :cond_216
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/k0;->x(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    iput v2, v0, Lcom/tapjoy/internal/k0;->k:I

    return v2

    :pswitch_data_220
    .packed-switch 0x5b
        :pswitch_81
        :pswitch_69
        :pswitch_81
    .end packed-switch
.end method

.method public final V()V
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/e4;->f:Lcom/tapjoy/internal/e4;

    iget-object v1, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/k0;->I(I)V

    return-void
.end method

.method public final close()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/k0;->k:I

    iget-object v0, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/internal/e4;->h:Lcom/tapjoy/internal/e4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tapjoy/internal/k0;->d:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/k0;->I(I)V

    return-void
.end method

.method public final e()Z
    .registers 3

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    iget v0, p0, Lcom/tapjoy/internal/k0;->k:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public final i()Z
    .registers 4

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    iget v0, p0, Lcom/tapjoy/internal/k0;->k:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    const-string v1, "true"

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->M()I

    return v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/tapjoy/internal/k0;->k:I

    invoke-static {v1}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()D
    .registers 4

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    iget v0, p0, Lcom/tapjoy/internal/k0;->k:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    goto :goto_1e

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/tapjoy/internal/k0;->k:I

    invoke-static {v1}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected a double but was "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->M()I

    return-wide v0
.end method

.method public final k()I
    .registers 7

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    iget v0, p0, Lcom/tapjoy/internal/k0;->k:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    goto :goto_1e

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/tapjoy/internal/k0;->k:I

    invoke-static {v1}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected an int but was "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v0, p0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_33

    :catch_25
    nop

    iget-object v0, p0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    cmpl-double v5, v3, v0

    if-nez v5, :cond_37

    move v0, v2

    :goto_33
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->M()I

    return v0

    :cond_37
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    iget v0, p0, Lcom/tapjoy/internal/k0;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/tapjoy/internal/k0;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->M()I

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    move-result v1

    invoke-static {v1}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected a name but was "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    iget v0, p0, Lcom/tapjoy/internal/k0;->k:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_20

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    goto :goto_20

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    move-result v1

    invoke-static {v1}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected a string but was "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/tapjoy/internal/k0;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->M()I

    return-object v0
.end method

.method public final t()I
    .registers 5

    iget v0, p0, Lcom/tapjoy/internal/k0;->k:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/e4;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_9e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2a
    :try_start_2a
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->U()I

    const-string v0, "Expected EOF"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/k0;->K(Ljava/lang/String;)V

    throw v3
    :try_end_33
    .catch Ljava/io/EOFException; {:try_start_2a .. :try_end_33} :catch_33

    :catch_33
    const/16 v0, 0xa

    iput v0, p0, Lcom/tapjoy/internal/k0;->k:I

    return v0

    :pswitch_38
    sget-object v0, Lcom/tapjoy/internal/e4;->g:Lcom/tapjoy/internal/e4;

    iget-object v1, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->U()I

    move-result v0

    iget v1, p0, Lcom/tapjoy/internal/k0;->k:I

    if-eq v1, v2, :cond_62

    const/4 v2, 0x3

    if-ne v1, v2, :cond_50

    goto :goto_62

    :cond_50
    new-instance v0, Ljava/io/IOException;

    iget v1, p0, Lcom/tapjoy/internal/k0;->k:I

    invoke-static {v1}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    :goto_62
    return v0

    :pswitch_63
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/k0;->J(Z)I

    move-result v0

    return v0

    :pswitch_68
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->S()I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_7e

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_7a

    const-string v0, "Expected \':\'"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/k0;->K(Ljava/lang/String;)V

    throw v3

    :cond_7a
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->N()V

    throw v3

    :cond_7e
    sget-object v0, Lcom/tapjoy/internal/e4;->e:Lcom/tapjoy/internal/e4;

    iget-object v1, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->U()I

    move-result v0

    return v0

    :pswitch_8f
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/k0;->J(Z)I

    move-result v0

    return v0

    :pswitch_94
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/k0;->w(Z)I

    move-result v0

    return v0

    :pswitch_99
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/k0;->w(Z)I

    move-result v0

    return v0

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_99
        :pswitch_94
        :pswitch_8f
        :pswitch_68
        :pswitch_63
        :pswitch_38
        :pswitch_2a
        :pswitch_22
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/tapjoy/internal/k0;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/tapjoy/internal/k0;->f:I

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Lcom/tapjoy/internal/k0;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/k0;->f:I

    sub-int/2addr v5, v2

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tapjoy/internal/k0;->g:I

    iget v4, p0, Lcom/tapjoy/internal/k0;->f:I

    sub-int/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/tapjoy/internal/k0;->e:[C

    iget v4, p0, Lcom/tapjoy/internal/k0;->f:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .registers 8

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->t()I

    iget v0, p0, Lcom/tapjoy/internal/k0;->k:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/k0;->p:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->M()I

    move-result v5
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_28

    if-eq v5, v0, :cond_21

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1a

    goto :goto_21

    :cond_1a
    if-eq v5, v1, :cond_1e

    if-ne v5, v2, :cond_23

    :cond_1e
    add-int/lit8 v4, v4, -0x1

    goto :goto_23

    :cond_21
    :goto_21
    add-int/lit8 v4, v4, 0x1

    :cond_23
    :goto_23
    if-nez v4, :cond_10

    iput-boolean v3, p0, Lcom/tapjoy/internal/k0;->p:Z

    return-void

    :catchall_28
    move-exception v0

    iput-boolean v3, p0, Lcom/tapjoy/internal/k0;->p:Z

    throw v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/tapjoy/internal/k0;->k:I

    invoke-static {v1}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected a value but was "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w(Z)I
    .registers 10

    const/16 v0, 0x5d

    const/16 v1, 0x3b

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_18

    sget-object v5, Lcom/tapjoy/internal/e4;->b:Lcom/tapjoy/internal/e4;

    iget-object v6, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :cond_18
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->S()I

    move-result v5

    if-eq v5, v2, :cond_3d

    if-eq v5, v1, :cond_39

    if-ne v5, v0, :cond_33

    iget-object p1, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/e4;

    iput v4, p0, Lcom/tapjoy/internal/k0;->k:I

    return v4

    :cond_33
    const-string p1, "Unterminated array"

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/k0;->K(Ljava/lang/String;)V

    throw v3

    :cond_39
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->N()V

    throw v3

    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->S()I

    move-result v5

    if-eq v5, v2, :cond_65

    if-eq v5, v1, :cond_65

    if-eq v5, v0, :cond_52

    iget p1, p0, Lcom/tapjoy/internal/k0;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tapjoy/internal/k0;->f:I

    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->U()I

    move-result p1

    return p1

    :cond_52
    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/tapjoy/internal/k0;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/e4;

    iput v4, p0, Lcom/tapjoy/internal/k0;->k:I

    return v4

    :cond_65
    invoke-virtual {p0}, Lcom/tapjoy/internal/k0;->N()V

    throw v3
.end method

.method public final x(C)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    iget v2, p0, Lcom/tapjoy/internal/k0;->f:I

    :cond_4
    :goto_4
    iget v3, p0, Lcom/tapjoy/internal/k0;->f:I

    iget v4, p0, Lcom/tapjoy/internal/k0;->g:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_b9

    iget-object v4, p0, Lcom/tapjoy/internal/k0;->e:[C

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/tapjoy/internal/k0;->f:I

    aget-char v3, v4, v3

    if-ne v3, p1, :cond_31

    iget-boolean p1, p0, Lcom/tapjoy/internal/k0;->p:Z

    if-eqz p1, :cond_1c

    const-string p1, "skipped!"

    return-object p1

    :cond_1c
    if-nez v1, :cond_27

    iget-object p1, p0, Lcom/tapjoy/internal/k0;->c:Lcom/tapjoy/internal/f3;

    sub-int/2addr v6, v2

    sub-int/2addr v6, v5

    invoke-virtual {p1, v4, v2, v6}, Lcom/tapjoy/internal/f3;->a([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27
    sub-int/2addr v6, v2

    sub-int/2addr v6, v5

    invoke-virtual {v1, v4, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_31
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_4

    if-nez v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_3c
    iget-object v3, p0, Lcom/tapjoy/internal/k0;->e:[C

    iget v4, p0, Lcom/tapjoy/internal/k0;->f:I

    sub-int/2addr v4, v2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tapjoy/internal/k0;->f:I

    iget v3, p0, Lcom/tapjoy/internal/k0;->g:I

    const-string v4, "Unterminated escape sequence"

    if-ne v2, v3, :cond_58

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/k0;->L(I)Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_58

    :cond_54
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/k0;->K(Ljava/lang/String;)V

    throw v0

    :cond_58
    :goto_58
    iget-object v2, p0, Lcom/tapjoy/internal/k0;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/k0;->f:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/tapjoy/internal/k0;->f:I

    aget-char v2, v2, v3

    const/16 v3, 0x62

    if-eq v2, v3, :cond_b0

    const/16 v3, 0x66

    if-eq v2, v3, :cond_ad

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_aa

    const/16 v3, 0x72

    if-eq v2, v3, :cond_a7

    const/16 v3, 0x74

    if-eq v2, v3, :cond_a4

    const/16 v3, 0x75

    if-eq v2, v3, :cond_7b

    goto :goto_b2

    :cond_7b
    add-int/lit8 v5, v5, 0x4

    iget v2, p0, Lcom/tapjoy/internal/k0;->g:I

    const/4 v3, 0x4

    if-le v5, v2, :cond_8d

    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/k0;->L(I)Z

    move-result v2

    if-eqz v2, :cond_89

    goto :goto_8d

    :cond_89
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/k0;->K(Ljava/lang/String;)V

    throw v0

    :cond_8d
    :goto_8d
    iget-object v2, p0, Lcom/tapjoy/internal/k0;->c:Lcom/tapjoy/internal/f3;

    iget-object v4, p0, Lcom/tapjoy/internal/k0;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/k0;->f:I

    invoke-virtual {v2, v4, v5, v3}, Lcom/tapjoy/internal/f3;->a([CII)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/tapjoy/internal/k0;->f:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/tapjoy/internal/k0;->f:I

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    goto :goto_b2

    :cond_a4
    const/16 v2, 0x9

    goto :goto_b2

    :cond_a7
    const/16 v2, 0xd

    goto :goto_b2

    :cond_aa
    const/16 v2, 0xa

    goto :goto_b2

    :cond_ad
    const/16 v2, 0xc

    goto :goto_b2

    :cond_b0
    const/16 v2, 0x8

    :goto_b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tapjoy/internal/k0;->f:I

    goto/16 :goto_4

    :cond_b9
    if-nez v1, :cond_c0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_c0
    iget-object v3, p0, Lcom/tapjoy/internal/k0;->e:[C

    iget v4, p0, Lcom/tapjoy/internal/k0;->f:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/k0;->L(I)Z

    move-result v2

    if-eqz v2, :cond_d0

    goto/16 :goto_2

    :cond_d0
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/k0;->K(Ljava/lang/String;)V

    throw v0
.end method
