###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.k (com.fyber.inneractive.sdk.player.exoplayer2.extractor.k)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:[Ljava/lang/String;

.field public static final i:[I

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:[I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "audio/mpeg-L1"

    const-string v1, "audio/mpeg-L2"

    const-string v2, "audio/mpeg"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->h:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->i:[I

    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_44

    sput-object v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->j:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_64

    sput-object v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->k:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_84

    sput-object v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->l:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_a4

    sput-object v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->m:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_c4

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->n:[I

    return-void

    :array_3a
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_44
    .array-data 4
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    :array_64
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    :array_84
    .array-data 4
        0x20
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
    .end array-data

    :array_a4
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
    .end array-data

    :array_c4
    .array-data 4
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 8

    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v0, :cond_8

    return v2

    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v2

    :cond_10
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v1

    if-nez v4, :cond_16

    return v2

    :cond_16
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_76

    if-ne v5, v6, :cond_20

    goto :goto_76

    :cond_20
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_26

    return v2

    :cond_26
    sget-object v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->i:[I

    aget v2, v2, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_30

    div-int/lit8 v2, v2, 0x2

    goto :goto_34

    :cond_30
    if-nez v0, :cond_34

    div-int/lit8 v2, v2, 0x4

    :cond_34
    :goto_34
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v1, :cond_4d

    if-ne v0, v1, :cond_41

    sget-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->j:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_46

    :cond_41
    sget-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->k:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_46
    mul-int/lit16 v0, v0, 0x2ee0

    div-int/2addr v0, v2

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_4d
    if-ne v0, v1, :cond_5d

    if-ne v4, v6, :cond_57

    sget-object v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->l:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_62

    :cond_57
    sget-object v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->m:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_62

    :cond_5d
    sget-object v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->n:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    :goto_62
    const v6, 0x23280

    if-ne v0, v1, :cond_6c

    mul-int v5, v5, v6

    div-int/2addr v5, v2

    add-int/2addr v5, p0

    return v5

    :cond_6c
    if-ne v4, v3, :cond_71

    const v6, 0x11940

    :cond_71
    mul-int v6, v6, v5

    div-int/2addr v6, v2

    add-int/2addr v6, p0

    return v6

    :cond_76
    :goto_76
    return v2
.end method

.method public static a(ILcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;)Z
    .registers 13

    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_8

    return v2

    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v2

    :cond_10
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v1

    if-nez v4, :cond_16

    return v2

    :cond_16
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_9b

    if-ne v5, v6, :cond_21

    goto/16 :goto_9b

    :cond_21
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_27

    return v2

    :cond_27
    sget-object v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->i:[I

    aget v2, v2, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_31

    div-int/lit8 v2, v2, 0x2

    goto :goto_35

    :cond_31
    if-nez v0, :cond_35

    div-int/lit8 v2, v2, 0x4

    :cond_35
    :goto_35
    ushr-int/lit8 v7, p0, 0x9

    and-int/2addr v7, v3

    const/16 v8, 0x480

    if-ne v4, v1, :cond_55

    if-ne v0, v1, :cond_44

    sget-object v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->j:[I

    sub-int/2addr v5, v3

    aget v5, v8, v5

    goto :goto_49

    :cond_44
    sget-object v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->k:[I

    sub-int/2addr v5, v3

    aget v5, v8, v5

    :goto_49
    mul-int/lit16 v8, v5, 0x2ee0

    div-int/2addr v8, v2

    add-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0x4

    const/16 v7, 0x180

    move v7, v8

    const/16 v8, 0x180

    goto :goto_7e

    :cond_55
    const v9, 0x23280

    if-ne v0, v1, :cond_6c

    if-ne v4, v6, :cond_62

    sget-object v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->l:[I

    sub-int/2addr v5, v3

    aget v5, v10, v5

    goto :goto_67

    :cond_62
    sget-object v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->m:[I

    sub-int/2addr v5, v3

    aget v5, v10, v5

    :goto_67
    mul-int v9, v9, v5

    div-int/2addr v9, v2

    :goto_6a
    add-int/2addr v7, v9

    goto :goto_7e

    :cond_6c
    sget-object v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->n:[I

    sub-int/2addr v5, v3

    aget v5, v10, v5

    if-ne v4, v3, :cond_75

    const/16 v8, 0x240

    :cond_75
    if-ne v4, v3, :cond_7a

    const v9, 0x11940

    :cond_7a
    mul-int v9, v9, v5

    div-int/2addr v9, v2

    goto :goto_6a

    :goto_7e
    sget-object v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->h:[Ljava/lang/String;

    rsub-int/lit8 v4, v4, 0x3

    aget-object v4, v9, v4

    shr-int/lit8 p0, p0, 0x6

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_8a

    const/4 v6, 0x1

    :cond_8a
    mul-int/lit16 v5, v5, 0x3e8

    iput v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->a:I

    iput-object v4, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->b:Ljava/lang/String;

    iput v7, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->c:I

    iput v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->d:I

    iput v6, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->e:I

    iput v5, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->f:I

    iput v8, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->g:I

    return v3

    :cond_9b
    :goto_9b
    return v2
.end method
