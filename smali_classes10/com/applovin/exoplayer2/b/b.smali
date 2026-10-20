###### Class com.applovin.exoplayer2.b.b (com.applovin.exoplayer2.b.b)
.class public final Lcom/applovin/exoplayer2/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/b/b$a;
    }
.end annotation


# static fields
.field private static final jt:[I

.field private static final ju:[I

.field private static final jv:[I

.field private static final jw:[I

.field private static final jx:[I

.field private static final jy:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/applovin/exoplayer2/b/b;->jt:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_3e

    sput-object v1, Lcom/applovin/exoplayer2/b/b;->ju:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/applovin/exoplayer2/b/b;->jv:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    sput-object v0, Lcom/applovin/exoplayer2/b/b;->jw:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_66

    sput-object v1, Lcom/applovin/exoplayer2/b/b;->jx:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/applovin/exoplayer2/b/b;->jy:[I

    return-void

    nop

    :array_32
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_3e
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_48
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_52
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_66
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_90
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .registers 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    const/16 v2, 0xa

    if-le v0, v2, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    if-ne v0, v1, :cond_28

    goto :goto_36

    :cond_28
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 v1, p0, 0x4

    :goto_36
    sget-object p0, Lcom/applovin/exoplayer2/b/b;->jt:[I

    aget p0, p0, v1

    mul-int/lit16 p0, p0, 0x100

    return p0

    :cond_3d
    const/16 p0, 0x600

    return p0
.end method

.method public static a(Ljava/nio/ByteBuffer;I)I
    .registers 5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const/16 v1, 0x28

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    if-eqz v0, :cond_20

    const/16 p1, 0x9

    goto :goto_22

    :cond_20
    const/16 p1, 0x8

    :goto_22
    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    shl-int p0, v1, p0

    return p0
.end method

.method public static a(Lcom/applovin/exoplayer2/l/y;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/exoplayer2/d/e;)Lcom/applovin/exoplayer2/v;
    .registers 7
    .param p3    # Lcom/applovin/exoplayer2/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    sget-object v1, Lcom/applovin/exoplayer2/b/b;->ju:[I

    aget v0, v1, v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p0

    sget-object v1, Lcom/applovin/exoplayer2/b/b;->jw:[I

    and-int/lit8 v2, p0, 0x38

    shr-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1e

    add-int/lit8 v1, v1, 0x1

    :cond_1e
    new-instance p0, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/v$a;->g(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p0

    const-string p1, "audio/ac3"

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/v$a;->N(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/v$a;->O(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/v$a;->a(Lcom/applovin/exoplayer2/d/e;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/applovin/exoplayer2/v$a;->j(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/nio/ByteBuffer;)I
    .registers 6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    move v2, v0

    :goto_b
    if-gt v2, v1, :cond_1f

    add-int/lit8 v3, v2, 0x4

    invoke-static {p0, v3}, Lcom/applovin/exoplayer2/l/ai;->b(Ljava/nio/ByteBuffer;I)I

    move-result v3

    and-int/lit8 v3, v3, -0x2

    const v4, -0x78d9046

    if-ne v3, v4, :cond_1c

    sub-int/2addr v2, v0

    return v2

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Lcom/applovin/exoplayer2/l/y;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/exoplayer2/d/e;)Lcom/applovin/exoplayer2/v;
    .registers 9
    .param p3    # Lcom/applovin/exoplayer2/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v1

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v1, v1, 0x6

    sget-object v2, Lcom/applovin/exoplayer2/b/b;->ju:[I

    aget v1, v2, v1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v2

    sget-object v3, Lcom/applovin/exoplayer2/b/b;->jw:[I

    and-int/lit8 v4, v2, 0xe

    shr-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_22

    add-int/lit8 v3, v3, 0x1

    :cond_22
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v2

    and-int/lit8 v2, v2, 0x1e

    shr-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_35

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_35

    add-int/lit8 v3, v3, 0x2

    :cond_35
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    if-lez v0, :cond_46

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_46

    const-string p0, "audio/eac3-joc"

    goto :goto_48

    :cond_46
    const-string p0, "audio/eac3"

    :goto_48
    new-instance v0, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/v$a;->g(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/applovin/exoplayer2/v$a;->N(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/v$a;->O(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/v$a;->a(Lcom/applovin/exoplayer2/d/e;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/applovin/exoplayer2/v$a;->j(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p0

    return-object p0
.end method

.method public static c([B)I
    .registers 6

    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-le v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_27

    const/4 v0, 0x2

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x8

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    add-int/2addr p0, v4

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_27
    const/4 v0, 0x4

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v1, v2, 0x6

    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x3f

    invoke-static {v1, p0}, Lcom/applovin/exoplayer2/b/b;->j(II)I

    move-result p0

    return p0
.end method

.method public static c(Lcom/applovin/exoplayer2/l/x;)Lcom/applovin/exoplayer2/b/b$a;
    .registers 28

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->il()I

    move-result v1

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v3

    const/16 v4, 0xa

    const/4 v6, 0x1

    if-le v3, v4, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->fx(I)V

    const/4 v1, -0x1

    const/16 v7, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v3, :cond_21d

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v11

    if-eqz v11, :cond_36

    if-eq v11, v6, :cond_34

    if-eq v11, v10, :cond_32

    goto :goto_37

    :cond_32
    const/4 v1, 0x2

    goto :goto_37

    :cond_34
    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    invoke-virtual {v0, v9}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v11

    add-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v12

    if-ne v12, v9, :cond_55

    sget-object v13, Lcom/applovin/exoplayer2/b/b;->jv:[I

    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v14

    aget v13, v13, v14

    move v15, v13

    const/4 v13, 0x3

    const/4 v14, 0x6

    goto :goto_61

    :cond_55
    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v13

    sget-object v14, Lcom/applovin/exoplayer2/b/b;->jt:[I

    aget v14, v14, v13

    sget-object v15, Lcom/applovin/exoplayer2/b/b;->ju:[I

    aget v15, v15, v12

    :goto_61
    mul-int/lit16 v5, v14, 0x100

    invoke-virtual {v0, v9}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    sget-object v18, Lcom/applovin/exoplayer2/b/b;->jw:[I

    aget v18, v18, v8

    add-int v18, v18, v17

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_7d
    if-nez v8, :cond_8b

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_8b
    if-ne v1, v6, :cond_96

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_96
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_1b4

    if-le v8, v10, :cond_a2

    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_a2
    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_ad

    if-le v8, v10, :cond_ad

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto :goto_ae

    :cond_ad
    const/4 v3, 0x6

    :goto_ae
    and-int/lit8 v16, v8, 0x4

    if-eqz v16, :cond_b5

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_b5
    if-eqz v17, :cond_c0

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v3

    if-eqz v3, :cond_c0

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_c0
    if-nez v1, :cond_1b4

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v3

    if-eqz v3, :cond_cd

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto :goto_ce

    :cond_cd
    const/4 v3, 0x6

    :goto_ce
    if-nez v8, :cond_d9

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v16

    if-eqz v16, :cond_d9

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_d9
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v16

    if-eqz v16, :cond_e2

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_e2
    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v3

    if-ne v3, v6, :cond_ed

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto/16 :goto_181

    :cond_ed
    if-ne v3, v10, :cond_f6

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto/16 :goto_181

    :cond_f6
    if-ne v3, v9, :cond_181

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_15c

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_10e

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_10e
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_117

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_117
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_120

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_120
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_129

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_129
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_132

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_132
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_13b

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_13b
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_144

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_144
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_15c

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_153

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_153
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_15c

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_15c
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_178

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v17

    if-eqz v17, :cond_178

    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v6

    if-eqz v6, :cond_178

    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_178
    add-int/2addr v3, v10

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->pi()V

    :cond_181
    :goto_181
    if-ge v8, v10, :cond_199

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v3

    const/16 v6, 0xe

    if-eqz v3, :cond_18e

    invoke-virtual {v0, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_18e
    if-nez v8, :cond_199

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v3

    if-eqz v3, :cond_199

    invoke-virtual {v0, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_199
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v3

    if-eqz v3, :cond_1b4

    if-nez v13, :cond_1a5

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto :goto_1b4

    :cond_1a5
    const/4 v3, 0x0

    :goto_1a6
    if-ge v3, v14, :cond_1b4

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v6

    if-eqz v6, :cond_1b1

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_1b1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a6

    :cond_1b4
    :goto_1b4
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v3

    if-eqz v3, :cond_1e1

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    if-ne v8, v10, :cond_1c2

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_1c2
    const/4 v2, 0x6

    if-lt v8, v2, :cond_1c8

    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_1c8
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v2

    if-eqz v2, :cond_1d1

    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_1d1
    if-nez v8, :cond_1dc

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v2

    if-eqz v2, :cond_1dc

    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_1dc
    if-ge v12, v9, :cond_1e1

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    :cond_1e1
    if-nez v1, :cond_1e8

    if-eq v13, v9, :cond_1e8

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    :cond_1e8
    if-ne v1, v10, :cond_1f7

    if-eq v13, v9, :cond_1f2

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v2

    if-eqz v2, :cond_1f7

    :cond_1f2
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto :goto_1f8

    :cond_1f7
    const/4 v2, 0x6

    :goto_1f8
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v3

    if-eqz v3, :cond_20e

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20e

    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    if-ne v0, v3, :cond_20e

    const-string v0, "audio/eac3-joc"

    goto :goto_210

    :cond_20e
    const-string v0, "audio/eac3"

    :goto_210
    move-object/from16 v20, v0

    move/from16 v21, v1

    move/from16 v25, v5

    move/from16 v24, v11

    move/from16 v23, v15

    move/from16 v22, v18

    goto :goto_274

    :cond_21d
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v2

    if-ne v2, v9, :cond_22a

    const/4 v3, 0x0

    goto :goto_22c

    :cond_22a
    const-string v3, "audio/ac3"

    :goto_22c
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/applovin/exoplayer2/b/b;->j(II)I

    move-result v11

    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual {v0, v9}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_246

    const/4 v5, 0x1

    if-eq v4, v5, :cond_246

    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_246
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_24d

    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_24d
    if-ne v4, v10, :cond_252

    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_252
    sget-object v5, Lcom/applovin/exoplayer2/b/b;->ju:[I

    array-length v6, v5

    if-ge v2, v6, :cond_25b

    aget v2, v5, v2

    move v15, v2

    goto :goto_25c

    :cond_25b
    const/4 v15, -0x1

    :goto_25c
    const/16 v5, 0x600

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v0

    sget-object v2, Lcom/applovin/exoplayer2/b/b;->jw:[I

    aget v2, v2, v4

    add-int v18, v2, v0

    move-object/from16 v20, v3

    move/from16 v24, v11

    move/from16 v23, v15

    move/from16 v22, v18

    const/16 v21, -0x1

    const/16 v25, 0x600

    :goto_274
    new-instance v0, Lcom/applovin/exoplayer2/b/b$a;

    const/16 v26, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v26}, Lcom/applovin/exoplayer2/b/b$a;-><init>(Ljava/lang/String;IIIIILcom/applovin/exoplayer2/b/b$1;)V

    return-object v0
.end method

.method public static d([B)I
    .registers 6

    const/4 v0, 0x4

    aget-byte v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, -0x8

    if-ne v1, v3, :cond_38

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v3, 0x72

    if-ne v1, v3, :cond_38

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_38

    const/4 v1, 0x7

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xfe

    const/16 v4, 0xba

    if-eq v3, v4, :cond_1f

    goto :goto_38

    :cond_1f
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xbb

    if-ne v3, v4, :cond_28

    const/4 v2, 0x1

    :cond_28
    const/16 v3, 0x28

    if-eqz v2, :cond_2f

    const/16 v2, 0x9

    goto :goto_31

    :cond_2f
    const/16 v2, 0x8

    :goto_31
    aget-byte p0, p0, v2

    shr-int/2addr p0, v0

    and-int/2addr p0, v1

    shl-int p0, v3, p0

    return p0

    :cond_38
    :goto_38
    return v2
.end method

.method private static j(II)I
    .registers 6

    div-int/lit8 v0, p1, 0x2

    if-ltz p0, :cond_2e

    sget-object v1, Lcom/applovin/exoplayer2/b/b;->ju:[I

    array-length v2, v1

    if-ge p0, v2, :cond_2e

    if-ltz p1, :cond_2e

    sget-object v2, Lcom/applovin/exoplayer2/b/b;->jy:[I

    array-length v3, v2

    if-lt v0, v3, :cond_11

    goto :goto_2e

    :cond_11
    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_20

    aget p0, v2, v0

    rem-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_20
    sget-object p1, Lcom/applovin/exoplayer2/b/b;->jx:[I

    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2b

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2b
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_2e
    :goto_2e
    const/4 p0, -0x1

    return p0
.end method
