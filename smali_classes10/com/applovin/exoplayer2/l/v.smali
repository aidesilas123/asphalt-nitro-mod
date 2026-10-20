###### Class com.applovin.exoplayer2.l.v (com.applovin.exoplayer2.l.v)
.class public final Lcom/applovin/exoplayer2/l/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/l/v$a;,
        Lcom/applovin/exoplayer2/l/v$b;
    }
.end annotation


# static fields
.field public static final abK:[B

.field public static final acq:[F

.field private static final acr:Ljava/lang/Object;

.field private static acs:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/applovin/exoplayer2/l/v;->abK:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    sput-object v0, Lcom/applovin/exoplayer2/l/v;->acq:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/l/v;->acr:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/applovin/exoplayer2/l/v;->acs:[I

    return-void

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static a([BII[Z)I
    .registers 11

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    if-nez v0, :cond_f

    return p2

    :cond_f
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_19

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/v;->b([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_19
    const/4 v3, 0x2

    if-le v0, v2, :cond_29

    aget-boolean v4, p3, v2

    if-eqz v4, :cond_29

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_29

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/v;->b([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_29
    if-le v0, v3, :cond_3e

    aget-boolean v4, p3, v3

    if-eqz v4, :cond_3e

    aget-byte v4, p0, p1

    if-nez v4, :cond_3e

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_3e

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/v;->b([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_3e
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_41
    if-ge p1, v4, :cond_63

    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xfe

    if-eqz v5, :cond_4a

    goto :goto_60

    :cond_4a
    add-int/lit8 v5, p1, -0x2

    aget-byte v6, p0, v5

    if-nez v6, :cond_5e

    add-int/lit8 v6, p1, -0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_5e

    aget-byte v6, p0, p1

    if-ne v6, v2, :cond_5e

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/v;->b([Z)V

    return v5

    :cond_5e
    add-int/lit8 p1, p1, -0x2

    :goto_60
    add-int/lit8 p1, p1, 0x3

    goto :goto_41

    :cond_63
    if-le v0, v3, :cond_78

    add-int/lit8 p1, p2, -0x3

    aget-byte p1, p0, p1

    if-nez p1, :cond_76

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_76

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_76

    goto :goto_91

    :cond_76
    const/4 p1, 0x0

    goto :goto_92

    :cond_78
    if-ne v0, v3, :cond_89

    aget-boolean p1, p3, v3

    if-eqz p1, :cond_76

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_76

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_76

    goto :goto_91

    :cond_89
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_76

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_76

    :goto_91
    const/4 p1, 0x1

    :goto_92
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_a1

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_ab

    aget-byte p1, p0, v4

    if-nez p1, :cond_ab

    goto :goto_a9

    :cond_a1
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_ab

    aget-byte p1, p0, v4

    if-nez p1, :cond_ab

    :goto_a9
    const/4 p1, 0x1

    goto :goto_ac

    :cond_ab
    const/4 p1, 0x0

    :goto_ac
    aput-boolean p1, p3, v2

    aget-byte p0, p0, v4

    if-nez p0, :cond_b3

    const/4 v1, 0x1

    :cond_b3
    aput-boolean v1, p3, v3

    return p2
.end method

.method private static a(Lcom/applovin/exoplayer2/l/z;I)V
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_6
    if-ge v2, p1, :cond_1a

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->pN()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    :cond_13
    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v0

    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public static a(Ljava/lang/String;B)Z
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1f

    :cond_e
    const-string v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static b([Z)V
    .registers 3

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    return-void
.end method

.method public static i([BI)I
    .registers 10

    sget-object v0, Lcom/applovin/exoplayer2/l/v;->acr:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_6
    :goto_6
    if-ge v2, p1, :cond_28

    :try_start_8
    invoke-static {p0, v2, p1}, Lcom/applovin/exoplayer2/l/v;->p([BII)I

    move-result v2

    if-ge v2, p1, :cond_6

    sget-object v4, Lcom/applovin/exoplayer2/l/v;->acs:[I

    array-length v5, v4

    if-gt v5, v3, :cond_1c

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lcom/applovin/exoplayer2/l/v;->acs:[I

    :cond_1c
    sget-object v4, Lcom/applovin/exoplayer2/l/v;->acs:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_6

    :catchall_26
    move-exception p0

    goto :goto_4c

    :cond_28
    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2c
    if-ge v2, v3, :cond_45

    sget-object v6, Lcom/applovin/exoplayer2/l/v;->acs:[I

    aget v6, v6, v2

    sub-int/2addr v6, v5

    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    aput-byte v1, p0, v4

    add-int/lit8 v4, v7, 0x1

    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_45
    sub-int v1, p1, v4

    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return p1

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_26

    throw p0
.end method

.method public static j([BI)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static k([BI)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static m(Ljava/nio/ByteBuffer;)V
    .registers 10

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_3b

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    if-ne v3, v6, :cond_32

    const/4 v7, 0x1

    if-ne v5, v7, :cond_36

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x7

    if-ne v7, v8, :cond_36

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v2, v6

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_32
    if-nez v5, :cond_36

    add-int/lit8 v3, v3, 0x1

    :cond_36
    if-eqz v5, :cond_39

    const/4 v3, 0x0

    :cond_39
    move v2, v4

    goto :goto_7

    :cond_3b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public static n([BII)Lcom/applovin/exoplayer2/l/v$b;
    .registers 24

    new-instance v0, Lcom/applovin/exoplayer2/l/z;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/l/z;-><init>([BII)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v3

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v4

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v5

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v6

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/16 v10, 0x64

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x6e

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x7a

    if-eq v3, v10, :cond_4e

    const/16 v10, 0xf4

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x2c

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x53

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x56

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x76

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x80

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x8a

    if-ne v3, v10, :cond_4b

    goto :goto_4e

    :cond_4b
    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_87

    :cond_4e
    :goto_4e
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v10

    if-ne v10, v2, :cond_59

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v11

    goto :goto_5a

    :cond_59
    const/4 v11, 0x0

    :goto_5a
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v12

    if-eqz v12, :cond_87

    if-eq v10, v2, :cond_6e

    const/16 v12, 0x8

    goto :goto_70

    :cond_6e
    const/16 v12, 0xc

    :goto_70
    const/4 v13, 0x0

    :goto_71
    if-ge v13, v12, :cond_87

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v14

    if-eqz v14, :cond_84

    const/4 v14, 0x6

    if-ge v13, v14, :cond_7f

    const/16 v14, 0x10

    goto :goto_81

    :cond_7f
    const/16 v14, 0x40

    :goto_81
    invoke-static {v0, v14}, Lcom/applovin/exoplayer2/l/v;->a(Lcom/applovin/exoplayer2/l/z;I)V

    :cond_84
    add-int/lit8 v13, v13, 0x1

    goto :goto_71

    :cond_87
    :goto_87
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v13

    if-nez v13, :cond_9a

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    goto :goto_bb

    :cond_9a
    if-ne v13, v9, :cond_ba

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v14

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pN()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pN()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v15

    int-to-long v1, v15

    const/4 v15, 0x0

    :goto_ac
    int-to-long v7, v15

    cmp-long v17, v7, v1

    if-gez v17, :cond_b7

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    add-int/lit8 v15, v15, 0x1

    goto :goto_ac

    :cond_b7
    move v15, v14

    const/4 v14, 0x0

    goto :goto_bc

    :cond_ba
    const/4 v14, 0x0

    :goto_bb
    const/4 v15, 0x0

    :goto_bc
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v16

    rsub-int/lit8 v7, v16, 0x2

    mul-int v7, v7, v2

    if-nez v16, :cond_d9

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    :cond_d9
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    const/16 v2, 0x10

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v7, v7, 0x10

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v2

    if-eqz v2, :cond_11c

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v2

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v8

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v17

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v18

    if-nez v10, :cond_fd

    rsub-int/lit8 v10, v16, 0x2

    goto :goto_112

    :cond_fd
    const/16 v19, 0x2

    const/4 v9, 0x3

    if-ne v10, v9, :cond_106

    const/4 v9, 0x1

    const/16 v20, 0x1

    goto :goto_109

    :cond_106
    const/4 v9, 0x1

    const/16 v20, 0x2

    :goto_109
    if-ne v10, v9, :cond_10c

    const/4 v9, 0x2

    :cond_10c
    rsub-int/lit8 v10, v16, 0x2

    mul-int v10, v10, v9

    move/from16 v9, v20

    :goto_112
    add-int/2addr v2, v8

    mul-int v2, v2, v9

    sub-int/2addr v1, v2

    add-int v17, v17, v18

    mul-int v17, v17, v10

    sub-int v7, v7, v17

    :cond_11c
    move v8, v7

    move v7, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v2

    if-eqz v2, :cond_168

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v2

    if-eqz v2, :cond_168

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v2

    const/16 v9, 0xff

    if-ne v2, v9, :cond_149

    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v2

    invoke-virtual {v0, v9}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v0

    if-eqz v2, :cond_147

    if-eqz v0, :cond_147

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_147
    move v9, v1

    goto :goto_16a

    :cond_149
    sget-object v0, Lcom/applovin/exoplayer2/l/v;->acq:[F

    array-length v9, v0

    if-ge v2, v9, :cond_152

    aget v0, v0, v2

    move v9, v0

    goto :goto_16a

    :cond_152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NalUnitUtil"

    invoke-static {v2, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_168
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_16a
    new-instance v0, Lcom/applovin/exoplayer2/l/v$b;

    move-object v2, v0

    move v10, v11

    move/from16 v11, v16

    invoke-direct/range {v2 .. v15}, Lcom/applovin/exoplayer2/l/v$b;-><init>(IIIIIIFZZIIIZ)V

    return-object v0
.end method

.method public static o([BII)Lcom/applovin/exoplayer2/l/v$a;
    .registers 4

    new-instance v0, Lcom/applovin/exoplayer2/l/z;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/exoplayer2/l/z;-><init>([BII)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result p0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result p1

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result p2

    new-instance v0, Lcom/applovin/exoplayer2/l/v$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/exoplayer2/l/v$a;-><init>(IIZ)V

    return-object v0
.end method

.method private static p([BII)I
    .registers 5

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_19

    aget-byte v0, p0, p1

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    return p1

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_19
    return p2
.end method
