###### Class com.applovin.exoplayer2.e.z (com.applovin.exoplayer2.e.z)
.class public final Lcom/applovin/exoplayer2/e/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/z$a;,
        Lcom/applovin/exoplayer2/e/z$c;,
        Lcom/applovin/exoplayer2/e/z$d;,
        Lcom/applovin/exoplayer2/e/z$b;
    }
.end annotation


# direct methods
.method public static a(Lcom/applovin/exoplayer2/l/y;ZZ)Lcom/applovin/exoplayer2/e/z$b;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    invoke-static {p1, p0, v0}, Lcom/applovin/exoplayer2/e/z;->a(ILcom/applovin/exoplayer2/l/y;Z)Z

    :cond_7
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pw()J

    move-result-wide v1

    long-to-int p1, v1

    const/16 v1, 0xb

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/l/y;->fB(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pw()J

    move-result-wide v2

    long-to-int v4, v2

    new-array v4, v4, [Ljava/lang/String;

    add-int/lit8 v1, v1, 0x4

    :goto_20
    int-to-long v5, v0

    cmp-long v7, v5, v2

    if-gez v7, :cond_3c

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pw()J

    move-result-wide v5

    long-to-int v6, v5

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v6}, Lcom/applovin/exoplayer2/l/y;->fB(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3c
    if-eqz p2, :cond_4f

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_47

    goto :goto_4f

    :cond_47
    const/4 p0, 0x0

    const-string p1, "framing bit expected to be set"

    invoke-static {p1, p0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    new-instance p0, Lcom/applovin/exoplayer2/e/z$b;

    invoke-direct {p0, p1, v4, v1}, Lcom/applovin/exoplayer2/e/z$b;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0
.end method

.method private static a(ILcom/applovin/exoplayer2/e/y;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_87

    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v4

    if-eqz v4, :cond_2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapping type other than 0 not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Lcom/applovin/exoplayer2/l/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    :cond_2a
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/y;->ik()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_37

    invoke-virtual {p1, v5}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_38

    :cond_37
    const/4 v4, 0x1

    :goto_38
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/y;->ik()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_5b

    invoke-virtual {p1, v7}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v6

    add-int/2addr v6, v1

    const/4 v8, 0x0

    :goto_46
    if-ge v8, v6, :cond_5b

    add-int/lit8 v9, p0, -0x1

    invoke-static {v9}, Lcom/applovin/exoplayer2/e/z;->bS(I)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-static {v9}, Lcom/applovin/exoplayer2/e/z;->bS(I)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    :cond_5b
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v6

    if-nez v6, :cond_7f

    if-le v4, v1, :cond_6d

    const/4 v6, 0x0

    :goto_65
    if-ge v6, p0, :cond_6d

    invoke-virtual {p1, v5}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    :cond_6d
    const/4 v5, 0x0

    :goto_6e
    if-ge v5, v4, :cond_7c

    invoke-virtual {p1, v7}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p1, v7}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p1, v7}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    :cond_7c
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_7f
    const/4 p0, 0x0

    const-string p1, "to reserved bits must be zero after mapping coupling steps"

    invoke-static {p1, p0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_87
    return-void
.end method

.method public static a(ILcom/applovin/exoplayer2/l/y;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-ge v0, v3, :cond_26

    if-eqz p2, :cond_c

    return v1

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "too short header: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_26
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    if-eq v0, p0, :cond_49

    if-eqz p2, :cond_2f

    return v1

    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "expected header type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_49
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_7c

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_7c

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_7c

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_7c

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_7c

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_7a

    goto :goto_7c

    :cond_7a
    const/4 p0, 0x1

    return p0

    :cond_7c
    :goto_7c
    if-eqz p2, :cond_7f

    return v1

    :cond_7f
    const-string p0, "expected characters \'vorbis\'"

    invoke-static {p0, v2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/applovin/exoplayer2/e/y;)[Lcom/applovin/exoplayer2/e/z$c;
    .registers 9

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Lcom/applovin/exoplayer2/e/z$c;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_2a

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/y;->ik()Z

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v4

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v6

    new-instance v7, Lcom/applovin/exoplayer2/e/z$c;

    invoke-direct {v7, v3, v5, v4, v6}, Lcom/applovin/exoplayer2/e/z$c;-><init>(ZIII)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2a
    return-object v1
.end method

.method private static b(Lcom/applovin/exoplayer2/e/y;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_69

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_61

    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p0, v5}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p0, v5}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_2c
    if-ge v8, v5, :cond_48

    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/y;->ik()Z

    move-result v10

    if-eqz v10, :cond_3f

    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v10

    goto :goto_40

    :cond_3f
    const/4 v10, 0x0

    :goto_40
    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v9

    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_48
    const/4 v8, 0x0

    :goto_49
    if-ge v8, v5, :cond_5e

    const/4 v9, 0x0

    :goto_4c
    if-ge v9, v6, :cond_5b

    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_58

    invoke-virtual {p0, v6}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    :cond_58
    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_61
    const/4 p0, 0x0

    const-string v0, "residueType greater than 2 is not decodable"

    invoke-static {v0, p0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_69
    return-void
.end method

.method public static bS(I)I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-lez p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method public static c(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/e/z$d;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-static {v0, v2, v1}, Lcom/applovin/exoplayer2/e/z;->a(ILcom/applovin/exoplayer2/l/y;Z)Z

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pE()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->py()I

    move-result v6

    const/4 v7, -0x1

    if-gtz v6, :cond_1b

    const/4 v6, -0x1

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->py()I

    move-result v8

    if-gtz v8, :cond_22

    const/4 v8, -0x1

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->py()I

    move-result v9

    if-gtz v9, :cond_29

    const/4 v9, -0x1

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v7

    and-int/lit8 v10, v7, 0xf

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v10, v10

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    int-to-double v14, v7

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v11, v11

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v7

    and-int/2addr v7, v0

    if-lez v7, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    new-instance v1, Lcom/applovin/exoplayer2/e/z$d;

    move-object v2, v1

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v0

    invoke-direct/range {v2 .. v12}, Lcom/applovin/exoplayer2/e/z$d;-><init>(IIIIIIIIZ[B)V

    return-object v1
.end method

.method private static c(Lcom/applovin/exoplayer2/e/y;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_ad

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v6, :cond_8c

    if-ne v6, v2, :cond_75

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v5

    const/4 v6, -0x1

    new-array v9, v5, [I

    const/4 v10, 0x0

    :goto_21
    if-ge v10, v5, :cond_32

    invoke-virtual {p0, v7}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v11

    aput v11, v9, v10

    aget v11, v9, v10

    if-le v11, v6, :cond_2f

    aget v6, v9, v10

    :cond_2f
    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_32
    add-int/lit8 v6, v6, 0x1

    new-array v10, v6, [I

    const/4 v11, 0x0

    :goto_37
    const/4 v12, 0x2

    if-ge v11, v6, :cond_59

    const/4 v13, 0x3

    invoke-virtual {p0, v13}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v13

    add-int/2addr v13, v2

    aput v13, v10, v11

    invoke-virtual {p0, v12}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v12

    if-lez v12, :cond_4b

    invoke-virtual {p0, v8}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    :cond_4b
    const/4 v13, 0x0

    :goto_4c
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_56

    invoke-virtual {p0, v8}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4c

    :cond_56
    add-int/lit8 v11, v11, 0x1

    goto :goto_37

    :cond_59
    invoke-virtual {p0, v12}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p0, v7}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_63
    if-ge v7, v5, :cond_a9

    aget v12, v9, v7

    aget v12, v10, v12

    add-int/2addr v8, v12

    :goto_6a
    if-ge v11, v8, :cond_72

    invoke-virtual {p0, v6}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    :cond_72
    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    :cond_75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "floor type greater than 1 not decodable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_8c
    invoke-virtual {p0, v8}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p0, v5}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p0, v5}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p0, v8}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p0, v7}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v5

    add-int/2addr v5, v2

    const/4 v6, 0x0

    :goto_a1
    if-ge v6, v5, :cond_a9

    invoke-virtual {p0, v8}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a1

    :cond_a9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_ad
    return-void
.end method

.method private static d(Lcom/applovin/exoplayer2/e/y;)Lcom/applovin/exoplayer2/e/z$a;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x564342

    if-ne v1, v3, :cond_b9

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v4

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v5

    new-array v6, v5, [J

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/y;->ik()Z

    move-result v8

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x5

    const/4 v9, 0x1

    if-nez v8, :cond_48

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/y;->ik()Z

    move-result v10

    :goto_27
    if-ge v3, v5, :cond_6a

    if-eqz v10, :cond_3d

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/y;->ik()Z

    move-result v11

    if-eqz v11, :cond_3a

    invoke-virtual {p0, v7}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v11

    add-int/2addr v11, v9

    int-to-long v11, v11

    aput-wide v11, v6, v3

    goto :goto_45

    :cond_3a
    aput-wide v0, v6, v3

    goto :goto_45

    :cond_3d
    invoke-virtual {p0, v7}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v11

    add-int/2addr v11, v9

    int-to-long v11, v11

    aput-wide v11, v6, v3

    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_48
    invoke-virtual {p0, v7}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v7

    add-int/2addr v7, v9

    const/4 v10, 0x0

    :goto_4e
    if-ge v10, v5, :cond_6a

    sub-int v11, v5, v10

    invoke-static {v11}, Lcom/applovin/exoplayer2/e/z;->bS(I)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v11

    const/4 v12, 0x0

    :goto_5b
    if-ge v12, v11, :cond_67

    if-ge v10, v5, :cond_67

    int-to-long v13, v7

    aput-wide v13, v6, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_5b

    :cond_67
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    :cond_6a
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v7

    const/4 v10, 0x2

    if-gt v7, v10, :cond_a3

    if-eq v7, v9, :cond_76

    if-ne v7, v10, :cond_9c

    :cond_76
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    invoke-virtual {p0, v3}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {p0, v9}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    if-ne v7, v9, :cond_91

    if-eqz v4, :cond_95

    int-to-long v0, v5

    int-to-long v9, v4

    invoke-static {v0, v1, v9, v10}, Lcom/applovin/exoplayer2/e/z;->q(JJ)J

    move-result-wide v0

    goto :goto_95

    :cond_91
    int-to-long v0, v5

    int-to-long v9, v4

    mul-long v0, v0, v9

    :cond_95
    :goto_95
    int-to-long v2, v2

    mul-long v0, v0, v2

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    :cond_9c
    new-instance p0, Lcom/applovin/exoplayer2/e/z$a;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/applovin/exoplayer2/e/z$a;-><init>(II[JIZ)V

    return-object p0

    :cond_a3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lookup type greater than 2 not decodable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_b9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/y;->il()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
.end method

.method public static d(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/e/z$b;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/applovin/exoplayer2/e/z;->a(Lcom/applovin/exoplayer2/l/y;ZZ)Lcom/applovin/exoplayer2/e/z$b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/applovin/exoplayer2/l/y;I)[Lcom/applovin/exoplayer2/e/z$c;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/applovin/exoplayer2/e/z;->a(ILcom/applovin/exoplayer2/l/y;Z)Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v2, Lcom/applovin/exoplayer2/e/y;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/applovin/exoplayer2/e/y;-><init>([B)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v2, p0}, Lcom/applovin/exoplayer2/e/y;->bR(I)V

    const/4 p0, 0x0

    :goto_1e
    if-ge p0, v0, :cond_26

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/z;->d(Lcom/applovin/exoplayer2/e/y;)Lcom/applovin/exoplayer2/e/z$a;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1e

    :cond_26
    const/4 p0, 0x6

    invoke-virtual {v2, p0}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_2d
    const/4 v0, 0x0

    if-ge v1, p0, :cond_42

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/e/y;->bQ(I)I

    move-result v3

    if-nez v3, :cond_3b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_3b
    const-string p0, "placeholder of time domain transforms not zeroed out"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_42
    invoke-static {v2}, Lcom/applovin/exoplayer2/e/z;->c(Lcom/applovin/exoplayer2/e/y;)V

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/z;->b(Lcom/applovin/exoplayer2/e/y;)V

    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/e/z;->a(ILcom/applovin/exoplayer2/e/y;)V

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/z;->a(Lcom/applovin/exoplayer2/e/y;)[Lcom/applovin/exoplayer2/e/z$c;

    move-result-object p0

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/e/y;->ik()Z

    move-result p1

    if-eqz p1, :cond_56

    return-object p0

    :cond_56
    const-string p0, "framing bit after modes not set as expected"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
.end method

.method private static q(JJ)J
    .registers 6

    long-to-double p0, p0

    long-to-double p2, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method
