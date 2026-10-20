###### Class com.json.adqualitysdk.sdk.i.hf (com.ironsource.adqualitysdk.sdk.i.hf)
.class public final enum Lcom/ironsource/adqualitysdk/sdk/i/hf;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adqualitysdk/sdk/i/hf;",
        ">;"
    }
.end annotation


# static fields
.field private static enum a:Lcom/ironsource/adqualitysdk/sdk/i/hf; = null

.field private static enum b:Lcom/ironsource/adqualitysdk/sdk/i/hf; = null

.field private static enum c:Lcom/ironsource/adqualitysdk/sdk/i/hf; = null

.field private static enum d:Lcom/ironsource/adqualitysdk/sdk/i/hf; = null

.field private static enum e:Lcom/ironsource/adqualitysdk/sdk/i/hf; = null

.field private static enum f:Lcom/ironsource/adqualitysdk/sdk/i/hf; = null

.field private static enum g:Lcom/ironsource/adqualitysdk/sdk/i/hf; = null

.field private static enum h:Lcom/ironsource/adqualitysdk/sdk/i/hf; = null

.field private static enum i:Lcom/ironsource/adqualitysdk/sdk/i/hf; = null

.field private static final synthetic j:[Lcom/ironsource/adqualitysdk/sdk/i/hf;

.field private static k:[I = null

.field private static l:I = 0x0

.field private static m:I = 0x1


# instance fields
.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->e()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_148

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x5

    const/16 v7, 0x8

    const-string v8, ""

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/16 v11, 0x9

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x6

    cmpl-float v3, v3, v4

    add-int/2addr v3, v14

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v13, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->a:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-array v2, v1, [I

    fill-array-data v2, :array_154

    invoke-static {v13, v13}, Landroid/view/View;->getDefaultSize(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x6

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v10, v13}, Lcom/ironsource/adqualitysdk/sdk/i/hf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->b:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-array v2, v14, [I

    fill-array-data v2, :array_160

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v3, v15, v17

    add-int/lit8 v3, v3, 0xb

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v12, v10}, Lcom/ironsource/adqualitysdk/sdk/i/hf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->c:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-array v2, v14, [I

    fill-array-data v2, :array_170

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    cmpl-float v3, v3, v4

    add-int/2addr v3, v11

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v9, v12}, Lcom/ironsource/adqualitysdk/sdk/i/hf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->d:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-array v2, v14, [I

    fill-array-data v2, :array_180

    invoke-static {v8, v8, v13}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    add-int/2addr v3, v11

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v9}, Lcom/ironsource/adqualitysdk/sdk/i/hf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->e:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-array v2, v1, [I

    fill-array-data v2, :array_190

    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x8

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->f:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-array v2, v1, [I

    fill-array-data v2, :array_19c

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    rsub-int/lit8 v3, v3, 0x6

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v14, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->g:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-array v2, v14, [I

    fill-array-data v2, :array_1a8

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0xa

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5, v14}, Lcom/ironsource/adqualitysdk/sdk/i/hf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->h:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-array v2, v14, [I

    fill-array-data v2, :array_1b8

    invoke-static {v13, v13}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x9

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->i:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    new-array v2, v11, [Lcom/ironsource/adqualitysdk/sdk/i/hf;

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/hf;->a:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    aput-object v3, v2, v13

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/hf;->b:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    aput-object v3, v2, v10

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/hf;->c:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    aput-object v3, v2, v12

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/hf;->d:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    aput-object v3, v2, v9

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/hf;->e:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    aput-object v3, v2, v1

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/hf;->f:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    aput-object v1, v2, v6

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/hf;->g:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    aput-object v1, v2, v14

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/hf;->h:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    aput-object v1, v2, v5

    aput-object v0, v2, v7

    sput-object v2, Lcom/ironsource/adqualitysdk/sdk/i/hf;->j:[Lcom/ironsource/adqualitysdk/sdk/i/hf;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->l:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hf;->m:I

    rem-int/2addr v0, v12

    const/16 v1, 0x43

    if-nez v0, :cond_13c

    const/16 v0, 0x39

    goto :goto_13e

    :cond_13c
    const/16 v0, 0x43

    :goto_13e
    if-eq v0, v1, :cond_147

    const/16 v0, 0x3f

    :try_start_142
    div-int/2addr v0, v13
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_144

    return-void

    :catchall_144
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_147
    return-void

    :array_148
    .array-data 4
        0x264253c0
        -0x4533015
        -0xacf269b
        -0x7f4a5b8a
    .end array-data

    :array_154
    .array-data 4
        0x5be9999c
        -0x74667f43
        0x5bf3bc2
        -0x39b4326f
    .end array-data

    :array_160
    .array-data 4
        0x1655aea
        0x44e92595
        -0x6a61c7f3
        -0x923c991
        0x3674aa68
        -0x6717433
    .end array-data

    :array_170
    .array-data 4
        0x5dd3249b
        -0x7a87813d
        0x2665dc73
        0x66389cab
        -0x54ad371a
        -0x2322257d
    .end array-data

    :array_180
    .array-data 4
        0x42ba9596
        -0x3dcd36ca
        -0x688bf35e
        -0x541c9348
        -0x54ad371a
        -0x2322257d
    .end array-data

    :array_190
    .array-data 4
        -0x69da8386
        -0x45d060b9
        0x3674aa68
        -0x6717433
    .end array-data

    :array_19c
    .array-data 4
        0x7507d3d
        -0xdd136e3
        0x7c6a93f1
        -0x107943be
    .end array-data

    :array_1a8
    .array-data 4
        -0x70a4994c
        0x5dac5ef3    # 1.552579E18f
        -0x3be80ad8
        0x7ede8149
        -0x1e7ce5de
        -0x32cd2d5e    # -1.8750928E8f
    .end array-data

    :array_1b8
    .array-data 4
        0x78688fa2
        0x5d06d780
        0x3d3d7dae
        -0x2030f5f2
        -0x54ad371a
        -0x2322257d
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->n:I

    return-void
.end method

.method static e()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->k:[I

    return-void

    :array_a
    .array-data 4
        -0x10e97d9c
        -0x402f552e
        -0x1d5e6643
        -0x78a0014d
        -0x9664355
        -0x7516ae21
        0x41c19968    # 24.199905f
        0x3583bde6
        -0x5cb1a354
        0xfa26858
        -0x1331bbae
        -0x1b10394b
        -0x38e4e6c6
        0x4a97989
        -0x7dc72575
        0x11975c79
        0x5594ff9a
        -0x6b2eb746
    .end array-data
.end method

.method private static f([II)Ljava/lang/String;
    .registers 14

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_4
    new-array v1, v1, [C

    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/hf;->k:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    :goto_16
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    array-length v7, p0

    if-ge v6, v7, :cond_bc

    aget v7, p0, v6

    const/16 v8, 0x10

    shr-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    aget v7, p0, v6

    int-to-char v7, v7

    aput-char v7, v1, v3

    add-int/lit8 v7, v6, 0x1

    aget v7, p0, v7

    shr-int/2addr v7, v8

    int-to-char v7, v7

    const/4 v9, 0x2

    aput-char v7, v1, v9

    add-int/lit8 v6, v6, 0x1

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v7, 0x3

    aput-char v6, v1, v7

    aget-char v6, v1, v5

    shl-int/2addr v6, v8

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget-char v6, v1, v9

    shl-int/2addr v6, v8

    aget-char v10, v1, v7

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    const/4 v6, 0x0

    :goto_4d
    if-ge v6, v8, :cond_6a

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    invoke-static {v10}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ(I)I

    move-result v10

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_6a
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    const/16 v8, 0x11

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v5

    int-to-char v6, v6

    aput-char v6, v1, v3

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v9

    int-to-char v6, v6

    aput-char v6, v1, v7

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    shl-int/lit8 v8, v6, 0x1

    aget-char v10, v1, v5

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v3

    aget-char v10, v1, v3

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v9

    aget-char v9, v1, v9

    aput-char v9, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v7

    aget-char v7, v1, v7

    aput-char v7, v2, v8

    add-int/lit8 v6, v6, 0x2

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    goto/16 :goto_16

    :cond_bc
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_4 .. :try_end_c2} :catchall_c3

    return-object p0

    :catchall_c3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/hf;
    .registers 4

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hf;->l:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hf;->m:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eq v1, v2, :cond_25

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/hf;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->l:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hf;->m:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :cond_25
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    const/4 p0, 0x0

    :try_start_29
    throw p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    throw p0
.end method

.method public static values()[Lcom/ironsource/adqualitysdk/sdk/i/hf;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->l:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hf;->m:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->j:[Lcom/ironsource/adqualitysdk/sdk/i/hf;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/i/hf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adqualitysdk/sdk/i/hf;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hf;->l:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hf;->m:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public static ﻛ(I)Lcom/ironsource/adqualitysdk/sdk/i/hf;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->l:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hf;->m:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const/4 v2, 0x0

    if-nez v0, :cond_42

    packed-switch p0, :pswitch_data_46

    goto :goto_41

    :pswitch_16
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->i:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->h:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->l:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0

    :pswitch_24
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->g:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    return-object p0

    :pswitch_27
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->f:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    return-object p0

    :pswitch_2a
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->e:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    return-object p0

    :pswitch_2d
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->d:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    return-object p0

    :pswitch_30
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->c:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    return-object p0

    :pswitch_33
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->b:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    return-object p0

    :pswitch_36
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->a:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->l:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0

    :goto_41
    return-object v2

    :cond_42
    :try_start_42
    throw v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p0

    throw p0

    nop

    :pswitch_data_46
    .packed-switch -0x1
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method public final ﾒ()I
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->m:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hf;->l:I

    rem-int/lit8 v0, v0, 0x2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hf;->n:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hf;->m:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x47

    if-nez v1, :cond_1b

    const/16 v1, 0x3f

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x47

    :goto_1d
    if-eq v1, v2, :cond_26

    const/16 v1, 0x41

    :try_start_21
    div-int/lit8 v1, v1, 0x0
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    return v0

    :catchall_24
    move-exception v0

    throw v0

    :cond_26
    return v0
.end method
