###### Class com.fyber.inneractive.sdk.player.exoplayer2.util.i (com.fyber.inneractive.sdk.player.exoplayer2.util.i)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[F

.field public static final c:Ljava/lang/Object;

.field public static d:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->b:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->c:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->d:[I

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

.method public static a([BI)I
    .registers 10

    sget-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_6
    :goto_6
    if-ge v2, p1, :cond_3e

    :goto_8
    add-int/lit8 v4, p1, -0x2

    if-ge v2, v4, :cond_23

    :try_start_c
    aget-byte v4, p0, v2

    if-nez v4, :cond_1e

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_1e

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1e

    goto :goto_24

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catchall_21
    move-exception p0

    goto :goto_62

    :cond_23
    move v2, p1

    :goto_24
    if-ge v2, p1, :cond_6

    sget-object v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->d:[I

    array-length v5, v4

    if-gt v5, v3, :cond_34

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->d:[I

    :cond_34
    sget-object v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->d:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_6

    :cond_3e
    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_42
    if-ge v2, v3, :cond_5b

    sget-object v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->d:[I

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

    goto :goto_42

    :cond_5b
    sub-int v1, p1, v4

    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return p1

    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_c .. :try_end_63} :catchall_21

    throw p0
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
    invoke-static {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    if-nez v0, :cond_f

    return p2

    :cond_f
    const/4 v3, 0x2

    if-eqz p3, :cond_40

    aget-boolean v4, p3, v1

    if-eqz v4, :cond_1c

    invoke-static {p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_1c
    if-le v0, v2, :cond_2b

    aget-boolean v4, p3, v2

    if-eqz v4, :cond_2b

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_2b

    invoke-static {p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_2b
    if-le v0, v3, :cond_40

    aget-boolean v4, p3, v3

    if-eqz v4, :cond_40

    aget-byte v4, p0, p1

    if-nez v4, :cond_40

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_40

    invoke-static {p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_40
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_43
    if-ge p1, v4, :cond_67

    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xfe

    if-eqz v5, :cond_4c

    goto :goto_64

    :cond_4c
    add-int/lit8 v5, p1, -0x2

    aget-byte v6, p0, v5

    if-nez v6, :cond_62

    add-int/lit8 v6, p1, -0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_62

    aget-byte v6, p0, p1

    if-ne v6, v2, :cond_62

    if-eqz p3, :cond_61

    invoke-static {p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([Z)V

    :cond_61
    return v5

    :cond_62
    add-int/lit8 p1, p1, -0x2

    :goto_64
    add-int/lit8 p1, p1, 0x3

    goto :goto_43

    :cond_67
    if-eqz p3, :cond_bb

    if-le v0, v3, :cond_7c

    add-int/lit8 p1, p2, -0x3

    aget-byte p1, p0, p1

    if-nez p1, :cond_97

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_97

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_97

    goto :goto_95

    :cond_7c
    if-ne v0, v3, :cond_8d

    aget-boolean p1, p3, v3

    if-eqz p1, :cond_97

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_97

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_97

    goto :goto_95

    :cond_8d
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_97

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_97

    :goto_95
    const/4 p1, 0x1

    goto :goto_98

    :cond_97
    const/4 p1, 0x0

    :goto_98
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_a7

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_b1

    aget-byte p1, p0, v4

    if-nez p1, :cond_b1

    goto :goto_af

    :cond_a7
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_b1

    aget-byte p1, p0, v4

    if-nez p1, :cond_b1

    :goto_af
    const/4 p1, 0x1

    goto :goto_b2

    :cond_b1
    const/4 p1, 0x0

    :goto_b2
    aput-boolean p1, p3, v2

    aget-byte p0, p0, v4

    if-nez p0, :cond_b9

    const/4 v1, 0x1

    :cond_b9
    aput-boolean v1, p3, v3

    :cond_bb
    return p2
.end method

.method public static a([BII)Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;
    .registers 4

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;-><init>([BII)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result p0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result p1

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result p2

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;-><init>(IIZ)V

    return-object v0
.end method

.method public static a([Z)V
    .registers 3

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    return-void
.end method

.method public static b([BII)Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;
    .registers 22

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;-><init>([BII)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v5

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x64

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x6e

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x7a

    if-eq v2, v8, :cond_4c

    const/16 v8, 0xf4

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x2c

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x53

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x56

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x76

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x80

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x8a

    if-ne v2, v8, :cond_49

    goto :goto_4c

    :cond_49
    const/4 v2, 0x1

    const/4 v9, 0x0

    goto :goto_9c

    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v2

    if-ne v2, v4, :cond_57

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v8

    goto :goto_58

    :cond_57
    const/4 v8, 0x0

    :goto_58
    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v9

    if-eqz v9, :cond_9b

    if-eq v2, v4, :cond_6c

    const/16 v9, 0x8

    goto :goto_6e

    :cond_6c
    const/16 v9, 0xc

    :goto_6e
    const/4 v10, 0x0

    :goto_6f
    if-ge v10, v9, :cond_9b

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v11

    if-eqz v11, :cond_98

    const/4 v11, 0x6

    if-ge v10, v11, :cond_7d

    const/16 v11, 0x10

    goto :goto_7f

    :cond_7d
    const/16 v11, 0x40

    :goto_7f
    const/4 v12, 0x0

    const/16 v13, 0x8

    const/16 v14, 0x8

    :goto_84
    if-ge v12, v11, :cond_98

    if-eqz v13, :cond_91

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->e()I

    move-result v13

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x100

    rem-int/lit16 v13, v13, 0x100

    :cond_91
    if-nez v13, :cond_94

    goto :goto_95

    :cond_94
    move v14, v13

    :goto_95
    add-int/lit8 v12, v12, 0x1

    goto :goto_84

    :cond_98
    add-int/lit8 v10, v10, 0x1

    goto :goto_6f

    :cond_9b
    move v9, v8

    :goto_9c
    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v8

    add-int/lit8 v11, v8, 0x4

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v12

    if-nez v12, :cond_b2

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    move/from16 p0, v5

    move v13, v8

    goto :goto_d7

    :cond_b2
    if-ne v12, v7, :cond_d4

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v8

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->e()I

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->e()I

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v10

    int-to-long v13, v10

    move/from16 p0, v5

    const/4 v10, 0x0

    :goto_c6
    int-to-long v4, v10

    cmp-long v15, v4, v13

    if-gez v15, :cond_d1

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    add-int/lit8 v10, v10, 0x1

    goto :goto_c6

    :cond_d1
    move v14, v8

    const/4 v13, 0x0

    goto :goto_d8

    :cond_d4
    move/from16 p0, v5

    const/4 v13, 0x0

    :goto_d7
    const/4 v14, 0x0

    :goto_d8
    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v10

    rsub-int/lit8 v6, v10, 0x2

    mul-int v5, v5, v6

    if-nez v10, :cond_f5

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    :cond_f5
    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    mul-int/lit8 v4, v4, 0x10

    mul-int/lit8 v5, v5, 0x10

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v8

    if-eqz v8, :cond_12d

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v8

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v15

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v16

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v17

    if-nez v2, :cond_115

    goto :goto_123

    :cond_115
    const/16 v18, 0x2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11c

    const/4 v3, 0x1

    goto :goto_11d

    :cond_11c
    const/4 v3, 0x2

    :goto_11d
    if-ne v2, v7, :cond_120

    const/4 v7, 0x2

    :cond_120
    mul-int v6, v6, v7

    move v7, v3

    :goto_123
    add-int/2addr v8, v15

    mul-int v8, v8, v7

    sub-int/2addr v4, v8

    add-int v16, v16, v17

    mul-int v16, v16, v6

    sub-int v5, v5, v16

    :cond_12d
    move v6, v4

    move v7, v5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v3

    if-eqz v3, :cond_177

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v3

    if-eqz v3, :cond_177

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b(I)I

    move-result v1

    const/16 v3, 0xff

    if-ne v1, v3, :cond_158

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b(I)I

    move-result v1

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b(I)I

    move-result v0

    if-eqz v1, :cond_177

    if-eqz v0, :cond_177

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    move v8, v1

    goto :goto_179

    :cond_158
    sget-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->b:[F

    array-length v3, v0

    if-ge v1, v3, :cond_161

    aget v0, v0, v1

    move v8, v0

    goto :goto_179

    :cond_161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NalUnitUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_177
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_179
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;

    move-object v4, v0

    move/from16 v5, p0

    invoke-direct/range {v4 .. v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;-><init>(IIIFZZIIIZ)V

    return-object v0
.end method
