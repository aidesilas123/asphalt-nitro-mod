###### Class lzma.sdk.lzma.a (lzma.sdk.lzma.a)
.class public Llzma/sdk/lzma/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llzma/sdk/lzma/a$b;,
        Llzma/sdk/lzma/a$a;
    }
.end annotation


# instance fields
.field private final a:Lf/a/a/a;

.field private final b:Llzma/sdk/rangecoder/Decoder;

.field private final c:[S

.field private final d:[S

.field private final e:[S

.field private final f:[S

.field private final g:[S

.field private final h:[S

.field private final i:[Llzma/sdk/rangecoder/BitTreeDecoder;

.field private final j:[S

.field private final k:Llzma/sdk/rangecoder/BitTreeDecoder;

.field private final l:Llzma/sdk/lzma/a$a;

.field private final m:Llzma/sdk/lzma/a$a;

.field private final n:Llzma/sdk/lzma/a$b;

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/a/a/a;

    invoke-direct {v0}, Lf/a/a/a;-><init>()V

    iput-object v0, p0, Llzma/sdk/lzma/a;->a:Lf/a/a/a;

    new-instance v0, Llzma/sdk/rangecoder/Decoder;

    invoke-direct {v0}, Llzma/sdk/rangecoder/Decoder;-><init>()V

    iput-object v0, p0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    const/16 v0, 0xc0

    new-array v1, v0, [S

    iput-object v1, p0, Llzma/sdk/lzma/a;->c:[S

    const/16 v1, 0xc

    new-array v2, v1, [S

    iput-object v2, p0, Llzma/sdk/lzma/a;->d:[S

    new-array v2, v1, [S

    iput-object v2, p0, Llzma/sdk/lzma/a;->e:[S

    new-array v2, v1, [S

    iput-object v2, p0, Llzma/sdk/lzma/a;->f:[S

    new-array v1, v1, [S

    iput-object v1, p0, Llzma/sdk/lzma/a;->g:[S

    new-array v0, v0, [S

    iput-object v0, p0, Llzma/sdk/lzma/a;->h:[S

    const/4 v0, 0x4

    new-array v1, v0, [Llzma/sdk/rangecoder/BitTreeDecoder;

    iput-object v1, p0, Llzma/sdk/lzma/a;->i:[Llzma/sdk/rangecoder/BitTreeDecoder;

    const/16 v1, 0x72

    new-array v1, v1, [S

    iput-object v1, p0, Llzma/sdk/lzma/a;->j:[S

    new-instance v1, Llzma/sdk/rangecoder/BitTreeDecoder;

    invoke-direct {v1, v0}, Llzma/sdk/rangecoder/BitTreeDecoder;-><init>(I)V

    iput-object v1, p0, Llzma/sdk/lzma/a;->k:Llzma/sdk/rangecoder/BitTreeDecoder;

    new-instance v1, Llzma/sdk/lzma/a$a;

    invoke-direct {v1, p0}, Llzma/sdk/lzma/a$a;-><init>(Llzma/sdk/lzma/a;)V

    iput-object v1, p0, Llzma/sdk/lzma/a;->l:Llzma/sdk/lzma/a$a;

    new-instance v1, Llzma/sdk/lzma/a$a;

    invoke-direct {v1, p0}, Llzma/sdk/lzma/a$a;-><init>(Llzma/sdk/lzma/a;)V

    iput-object v1, p0, Llzma/sdk/lzma/a;->m:Llzma/sdk/lzma/a$a;

    new-instance v1, Llzma/sdk/lzma/a$b;

    invoke-direct {v1, p0}, Llzma/sdk/lzma/a$b;-><init>(Llzma/sdk/lzma/a;)V

    iput-object v1, p0, Llzma/sdk/lzma/a;->n:Llzma/sdk/lzma/a$b;

    const/4 v1, -0x1

    iput v1, p0, Llzma/sdk/lzma/a;->o:I

    iput v1, p0, Llzma/sdk/lzma/a;->p:I

    const/4 v1, 0x0

    :goto_5a
    if-ge v1, v0, :cond_69

    iget-object v2, p0, Llzma/sdk/lzma/a;->i:[Llzma/sdk/rangecoder/BitTreeDecoder;

    new-instance v3, Llzma/sdk/rangecoder/BitTreeDecoder;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Llzma/sdk/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_69
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Llzma/sdk/rangecoder/Decoder;->e(Ljava/io/InputStream;)V

    iget-object v1, v0, Llzma/sdk/lzma/a;->a:Lf/a/a/a;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lf/a/a/a;->h(Ljava/io/OutputStream;)V

    invoke-virtual/range {p0 .. p0}, Llzma/sdk/lzma/a;->b()V

    invoke-static {}, Llzma/sdk/lzma/Base;->stateInit()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_20
    const/4 v12, 0x1

    cmp-long v13, p3, v2

    if-ltz v13, :cond_29

    cmp-long v13, v5, p3

    if-gez v13, :cond_115

    :cond_29
    long-to-int v13, v5

    iget v14, v0, Llzma/sdk/lzma/a;->q:I

    and-int/2addr v14, v13

    iget-object v15, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    iget-object v2, v0, Llzma/sdk/lzma/a;->c:[S

    shl-int/lit8 v3, v1, 0x4

    add-int/2addr v3, v14

    invoke-virtual {v15, v2, v3}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v2

    if-nez v2, :cond_68

    iget-object v2, v0, Llzma/sdk/lzma/a;->n:Llzma/sdk/lzma/a$b;

    invoke-virtual {v2, v13, v7}, Llzma/sdk/lzma/a$b;->b(IB)Llzma/sdk/lzma/a$b$a;

    move-result-object v2

    invoke-static {v1}, Llzma/sdk/lzma/Base;->stateIsCharState(I)Z

    move-result v3

    if-nez v3, :cond_53

    iget-object v3, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    iget-object v7, v0, Llzma/sdk/lzma/a;->a:Lf/a/a/a;

    invoke-virtual {v7, v10}, Lf/a/a/a;->d(I)B

    move-result v7

    invoke-virtual {v2, v3, v7}, Llzma/sdk/lzma/a$b$a;->b(Llzma/sdk/rangecoder/Decoder;B)B

    move-result v2

    goto :goto_59

    :cond_53
    iget-object v3, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    invoke-virtual {v2, v3}, Llzma/sdk/lzma/a$b$a;->a(Llzma/sdk/rangecoder/Decoder;)B

    move-result v2

    :goto_59
    iget-object v3, v0, Llzma/sdk/lzma/a;->a:Lf/a/a/a;

    invoke-virtual {v3, v2}, Lf/a/a/a;->f(B)V

    invoke-static {v1}, Llzma/sdk/lzma/Base;->stateUpdateChar(I)I

    move-result v1

    const-wide/16 v12, 0x1

    add-long/2addr v5, v12

    :goto_65
    move v7, v2

    goto/16 :goto_14a

    :cond_68
    iget-object v2, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    iget-object v7, v0, Llzma/sdk/lzma/a;->d:[S

    invoke-virtual {v2, v7, v1}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v2

    if-ne v2, v12, :cond_c5

    iget-object v2, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    iget-object v7, v0, Llzma/sdk/lzma/a;->e:[S

    invoke-virtual {v2, v7, v1}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v2

    if-nez v2, :cond_8d

    iget-object v2, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    iget-object v7, v0, Llzma/sdk/lzma/a;->h:[S

    invoke-virtual {v2, v7, v3}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v2

    if-nez v2, :cond_8b

    invoke-static {v1}, Llzma/sdk/lzma/Base;->stateUpdateShortRep(I)I

    move-result v1

    goto :goto_b3

    :cond_8b
    const/4 v12, 0x0

    goto :goto_b3

    :cond_8d
    iget-object v2, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    iget-object v3, v0, Llzma/sdk/lzma/a;->f:[S

    invoke-virtual {v2, v3, v1}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v2

    if-nez v2, :cond_98

    goto :goto_ad

    :cond_98
    iget-object v2, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    iget-object v3, v0, Llzma/sdk/lzma/a;->g:[S

    invoke-virtual {v2, v3, v1}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v2

    if-nez v2, :cond_a7

    move/from16 v16, v11

    move v11, v8

    move/from16 v8, v16

    :cond_a7
    move/from16 v16, v11

    move v11, v8

    move v8, v9

    move/from16 v9, v16

    :goto_ad
    const/4 v12, 0x0

    move/from16 v16, v10

    move v10, v9

    move/from16 v9, v16

    :goto_b3
    if-nez v12, :cond_131

    iget-object v2, v0, Llzma/sdk/lzma/a;->m:Llzma/sdk/lzma/a$a;

    iget-object v3, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    invoke-virtual {v2, v3, v14}, Llzma/sdk/lzma/a$a;->b(Llzma/sdk/rangecoder/Decoder;I)I

    move-result v2

    add-int/lit8 v12, v2, 0x2

    invoke-static {v1}, Llzma/sdk/lzma/Base;->stateUpdateRep(I)I

    move-result v1

    goto/16 :goto_131

    :cond_c5
    iget-object v2, v0, Llzma/sdk/lzma/a;->l:Llzma/sdk/lzma/a$a;

    iget-object v3, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    invoke-virtual {v2, v3, v14}, Llzma/sdk/lzma/a$a;->b(Llzma/sdk/rangecoder/Decoder;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Llzma/sdk/lzma/Base;->stateUpdateMatch(I)I

    move-result v1

    iget-object v3, v0, Llzma/sdk/lzma/a;->i:[Llzma/sdk/rangecoder/BitTreeDecoder;

    invoke-static {v2}, Llzma/sdk/lzma/Base;->getLenToPosState(I)I

    move-result v7

    aget-object v3, v3, v7

    iget-object v7, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    invoke-virtual {v3, v7}, Llzma/sdk/rangecoder/BitTreeDecoder;->a(Llzma/sdk/rangecoder/Decoder;)I

    move-result v3

    const/4 v7, 0x4

    if-lt v3, v7, :cond_12c

    shr-int/lit8 v11, v3, 0x1

    sub-int/2addr v11, v12

    and-int/lit8 v13, v3, 0x1

    or-int/lit8 v13, v13, 0x2

    shl-int/2addr v13, v11

    const/16 v14, 0xe

    if-ge v3, v14, :cond_fd

    iget-object v7, v0, Llzma/sdk/lzma/a;->j:[S

    sub-int v3, v13, v3

    sub-int/2addr v3, v12

    iget-object v12, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    invoke-static {v7, v3, v12, v11}, Llzma/sdk/rangecoder/BitTreeDecoder;->reverseDecode([SILlzma/sdk/rangecoder/Decoder;I)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_126

    :cond_fd
    iget-object v3, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v3, v11}, Llzma/sdk/rangecoder/Decoder;->b(I)I

    move-result v3

    shl-int/2addr v3, v7

    add-int/2addr v13, v3

    iget-object v3, v0, Llzma/sdk/lzma/a;->k:Llzma/sdk/rangecoder/BitTreeDecoder;

    iget-object v7, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    invoke-virtual {v3, v7}, Llzma/sdk/rangecoder/BitTreeDecoder;->c(Llzma/sdk/rangecoder/Decoder;)I

    move-result v3

    add-int/2addr v13, v3

    if-gez v13, :cond_126

    const/4 v1, -0x1

    if-ne v13, v1, :cond_125

    :cond_115
    iget-object v1, v0, Llzma/sdk/lzma/a;->a:Lf/a/a/a;

    invoke-virtual {v1}, Lf/a/a/a;->c()V

    iget-object v1, v0, Llzma/sdk/lzma/a;->a:Lf/a/a/a;

    invoke-virtual {v1}, Lf/a/a/a;->g()V

    iget-object v1, v0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    invoke-virtual {v1}, Llzma/sdk/rangecoder/Decoder;->d()V

    return v12

    :cond_125
    return v4

    :cond_126
    :goto_126
    move v12, v2

    move v11, v8

    move v8, v9

    move v9, v10

    move v10, v13

    goto :goto_131

    :cond_12c
    move v12, v2

    move v11, v8

    move v8, v9

    move v9, v10

    move v10, v3

    :cond_131
    :goto_131
    int-to-long v2, v10

    cmp-long v7, v2, v5

    if-gez v7, :cond_14e

    iget v2, v0, Llzma/sdk/lzma/a;->p:I

    if-lt v10, v2, :cond_13b

    goto :goto_14e

    :cond_13b
    iget-object v2, v0, Llzma/sdk/lzma/a;->a:Lf/a/a/a;

    invoke-virtual {v2, v10, v12}, Lf/a/a/a;->a(II)V

    int-to-long v2, v12

    add-long/2addr v5, v2

    iget-object v2, v0, Llzma/sdk/lzma/a;->a:Lf/a/a/a;

    invoke-virtual {v2, v4}, Lf/a/a/a;->d(I)B

    move-result v2

    goto/16 :goto_65

    :goto_14a
    const-wide/16 v2, 0x0

    goto/16 :goto_20

    :cond_14e
    :goto_14e
    return v4
.end method

.method b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llzma/sdk/lzma/a;->a:Lf/a/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/a/a/a;->e(Z)V

    iget-object v0, p0, Llzma/sdk/lzma/a;->c:[S

    invoke-static {v0}, Llzma/sdk/rangecoder/Decoder;->initBitModels([S)V

    iget-object v0, p0, Llzma/sdk/lzma/a;->h:[S

    invoke-static {v0}, Llzma/sdk/rangecoder/Decoder;->initBitModels([S)V

    iget-object v0, p0, Llzma/sdk/lzma/a;->d:[S

    invoke-static {v0}, Llzma/sdk/rangecoder/Decoder;->initBitModels([S)V

    iget-object v0, p0, Llzma/sdk/lzma/a;->e:[S

    invoke-static {v0}, Llzma/sdk/rangecoder/Decoder;->initBitModels([S)V

    iget-object v0, p0, Llzma/sdk/lzma/a;->f:[S

    invoke-static {v0}, Llzma/sdk/rangecoder/Decoder;->initBitModels([S)V

    iget-object v0, p0, Llzma/sdk/lzma/a;->g:[S

    invoke-static {v0}, Llzma/sdk/rangecoder/Decoder;->initBitModels([S)V

    iget-object v0, p0, Llzma/sdk/lzma/a;->j:[S

    invoke-static {v0}, Llzma/sdk/rangecoder/Decoder;->initBitModels([S)V

    iget-object v0, p0, Llzma/sdk/lzma/a;->n:Llzma/sdk/lzma/a$b;

    invoke-virtual {v0}, Llzma/sdk/lzma/a$b;->c()V

    :goto_2e
    const/4 v0, 0x4

    if-ge v1, v0, :cond_3b

    iget-object v0, p0, Llzma/sdk/lzma/a;->i:[Llzma/sdk/rangecoder/BitTreeDecoder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Llzma/sdk/rangecoder/BitTreeDecoder;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3b
    iget-object v0, p0, Llzma/sdk/lzma/a;->l:Llzma/sdk/lzma/a$a;

    invoke-virtual {v0}, Llzma/sdk/lzma/a$a;->c()V

    iget-object v0, p0, Llzma/sdk/lzma/a;->m:Llzma/sdk/lzma/a$a;

    invoke-virtual {v0}, Llzma/sdk/lzma/a$a;->c()V

    iget-object v0, p0, Llzma/sdk/lzma/a;->k:Llzma/sdk/rangecoder/BitTreeDecoder;

    invoke-virtual {v0}, Llzma/sdk/rangecoder/BitTreeDecoder;->b()V

    iget-object v0, p0, Llzma/sdk/lzma/a;->b:Llzma/sdk/rangecoder/Decoder;

    invoke-virtual {v0}, Llzma/sdk/rangecoder/Decoder;->c()V

    return-void
.end method

.method public c([B)Z
    .registers 10

    array-length v0, p1

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ge v0, v1, :cond_6

    return v2

    :cond_6
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    rem-int/lit8 v3, v0, 0x9

    div-int/lit8 v0, v0, 0x9

    rem-int/lit8 v4, v0, 0x5

    div-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_13
    const/4 v6, 0x4

    if-ge v1, v6, :cond_23

    add-int/lit8 v6, v1, 0x1

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    mul-int/lit8 v1, v1, 0x8

    shl-int v1, v7, v1

    add-int/2addr v5, v1

    move v1, v6

    goto :goto_13

    :cond_23
    invoke-virtual {p0, v3, v4, v0}, Llzma/sdk/lzma/a;->e(III)Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-virtual {p0, v5}, Llzma/sdk/lzma/a;->d(I)Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 v2, 0x1

    :cond_30
    return v2
.end method

.method d(I)Z
    .registers 5

    if-gez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget v0, p0, Llzma/sdk/lzma/a;->o:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1c

    iput p1, p0, Llzma/sdk/lzma/a;->o:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Llzma/sdk/lzma/a;->p:I

    iget-object v0, p0, Llzma/sdk/lzma/a;->a:Lf/a/a/a;

    const/16 v2, 0x1000

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lf/a/a/a;->b(I)V

    :cond_1c
    return v1
.end method

.method e(III)Z
    .registers 5

    const/16 v0, 0x8

    if-gt p1, v0, :cond_20

    const/4 v0, 0x4

    if-gt p2, v0, :cond_20

    if-le p3, v0, :cond_a

    goto :goto_20

    :cond_a
    iget-object v0, p0, Llzma/sdk/lzma/a;->n:Llzma/sdk/lzma/a$b;

    invoke-virtual {v0, p2, p1}, Llzma/sdk/lzma/a$b;->a(II)V

    const/4 p1, 0x1

    shl-int p2, p1, p3

    iget-object p3, p0, Llzma/sdk/lzma/a;->l:Llzma/sdk/lzma/a$a;

    invoke-virtual {p3, p2}, Llzma/sdk/lzma/a$a;->a(I)V

    iget-object p3, p0, Llzma/sdk/lzma/a;->m:Llzma/sdk/lzma/a$a;

    invoke-virtual {p3, p2}, Llzma/sdk/lzma/a$a;->a(I)V

    sub-int/2addr p2, p1

    iput p2, p0, Llzma/sdk/lzma/a;->q:I

    return p1

    :cond_20
    :goto_20
    const/4 p1, 0x0

    return p1
.end method

###### Class lzma.sdk.lzma.a.C0602a (lzma.sdk.lzma.a$a)
.class Llzma/sdk/lzma/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llzma/sdk/lzma/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:[S

.field final b:[Llzma/sdk/rangecoder/BitTreeDecoder;

.field final c:[Llzma/sdk/rangecoder/BitTreeDecoder;

.field final d:Llzma/sdk/rangecoder/BitTreeDecoder;

.field e:I

.field final synthetic f:Llzma/sdk/lzma/a;


# direct methods
.method constructor <init>(Llzma/sdk/lzma/a;)V
    .registers 3

    iput-object p1, p0, Llzma/sdk/lzma/a$a;->f:Llzma/sdk/lzma/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [S

    iput-object p1, p0, Llzma/sdk/lzma/a$a;->a:[S

    const/16 p1, 0x10

    new-array v0, p1, [Llzma/sdk/rangecoder/BitTreeDecoder;

    iput-object v0, p0, Llzma/sdk/lzma/a$a;->b:[Llzma/sdk/rangecoder/BitTreeDecoder;

    new-array p1, p1, [Llzma/sdk/rangecoder/BitTreeDecoder;

    iput-object p1, p0, Llzma/sdk/lzma/a$a;->c:[Llzma/sdk/rangecoder/BitTreeDecoder;

    new-instance p1, Llzma/sdk/rangecoder/BitTreeDecoder;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Llzma/sdk/rangecoder/BitTreeDecoder;-><init>(I)V

    iput-object p1, p0, Llzma/sdk/lzma/a$a;->d:Llzma/sdk/rangecoder/BitTreeDecoder;

    const/4 p1, 0x0

    iput p1, p0, Llzma/sdk/lzma/a$a;->e:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    :goto_0
    iget v0, p0, Llzma/sdk/lzma/a$a;->e:I

    if-ge v0, p1, :cond_20

    iget-object v1, p0, Llzma/sdk/lzma/a$a;->b:[Llzma/sdk/rangecoder/BitTreeDecoder;

    new-instance v2, Llzma/sdk/rangecoder/BitTreeDecoder;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Llzma/sdk/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v1, v0

    iget-object v0, p0, Llzma/sdk/lzma/a$a;->c:[Llzma/sdk/rangecoder/BitTreeDecoder;

    iget v1, p0, Llzma/sdk/lzma/a$a;->e:I

    new-instance v2, Llzma/sdk/rangecoder/BitTreeDecoder;

    invoke-direct {v2, v3}, Llzma/sdk/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v0, v1

    iget v0, p0, Llzma/sdk/lzma/a$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llzma/sdk/lzma/a$a;->e:I

    goto :goto_0

    :cond_20
    return-void
.end method

.method public b(Llzma/sdk/rangecoder/Decoder;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llzma/sdk/lzma/a$a;->a:[S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Llzma/sdk/lzma/a$a;->b:[Llzma/sdk/rangecoder/BitTreeDecoder;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Llzma/sdk/rangecoder/BitTreeDecoder;->a(Llzma/sdk/rangecoder/Decoder;)I

    move-result p1

    return p1

    :cond_12
    iget-object v0, p0, Llzma/sdk/lzma/a$a;->a:[S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Llzma/sdk/lzma/a$a;->c:[Llzma/sdk/rangecoder/BitTreeDecoder;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Llzma/sdk/rangecoder/BitTreeDecoder;->a(Llzma/sdk/rangecoder/Decoder;)I

    move-result p1

    goto :goto_2c

    :cond_24
    iget-object p2, p0, Llzma/sdk/lzma/a$a;->d:Llzma/sdk/rangecoder/BitTreeDecoder;

    invoke-virtual {p2, p1}, Llzma/sdk/rangecoder/BitTreeDecoder;->a(Llzma/sdk/rangecoder/Decoder;)I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    :goto_2c
    add-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Llzma/sdk/lzma/a$a;->a:[S

    invoke-static {v0}, Llzma/sdk/rangecoder/Decoder;->initBitModels([S)V

    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Llzma/sdk/lzma/a$a;->e:I

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Llzma/sdk/lzma/a$a;->b:[Llzma/sdk/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Llzma/sdk/rangecoder/BitTreeDecoder;->b()V

    iget-object v1, p0, Llzma/sdk/lzma/a$a;->c:[Llzma/sdk/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Llzma/sdk/rangecoder/BitTreeDecoder;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1b
    iget-object v0, p0, Llzma/sdk/lzma/a$a;->d:Llzma/sdk/rangecoder/BitTreeDecoder;

    invoke-virtual {v0}, Llzma/sdk/rangecoder/BitTreeDecoder;->b()V

    return-void
.end method

###### Class lzma.sdk.lzma.a.b (lzma.sdk.lzma.a$b)
.class Llzma/sdk/lzma/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llzma/sdk/lzma/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llzma/sdk/lzma/a$b$a;
    }
.end annotation


# instance fields
.field a:[Llzma/sdk/lzma/a$b$a;

.field b:I

.field c:I

.field d:I

.field final synthetic e:Llzma/sdk/lzma/a;


# direct methods
.method constructor <init>(Llzma/sdk/lzma/a;)V
    .registers 2

    iput-object p1, p0, Llzma/sdk/lzma/a$b;->e:Llzma/sdk/lzma/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 5

    iget-object v0, p0, Llzma/sdk/lzma/a$b;->a:[Llzma/sdk/lzma/a$b$a;

    if-eqz v0, :cond_d

    iget v0, p0, Llzma/sdk/lzma/a$b;->b:I

    if-ne v0, p2, :cond_d

    iget v0, p0, Llzma/sdk/lzma/a$b;->c:I

    if-ne v0, p1, :cond_d

    return-void

    :cond_d
    iput p1, p0, Llzma/sdk/lzma/a$b;->c:I

    const/4 v0, 0x1

    shl-int v1, v0, p1

    sub-int/2addr v1, v0

    iput v1, p0, Llzma/sdk/lzma/a$b;->d:I

    iput p2, p0, Llzma/sdk/lzma/a$b;->b:I

    add-int/2addr p2, p1

    shl-int p1, v0, p2

    new-array p2, p1, [Llzma/sdk/lzma/a$b$a;

    iput-object p2, p0, Llzma/sdk/lzma/a$b;->a:[Llzma/sdk/lzma/a$b$a;

    const/4 p2, 0x0

    :goto_1f
    if-ge p2, p1, :cond_2d

    iget-object v0, p0, Llzma/sdk/lzma/a$b;->a:[Llzma/sdk/lzma/a$b$a;

    new-instance v1, Llzma/sdk/lzma/a$b$a;

    invoke-direct {v1, p0}, Llzma/sdk/lzma/a$b$a;-><init>(Llzma/sdk/lzma/a$b;)V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_2d
    return-void
.end method

.method b(IB)Llzma/sdk/lzma/a$b$a;
    .registers 5

    iget-object v0, p0, Llzma/sdk/lzma/a$b;->a:[Llzma/sdk/lzma/a$b$a;

    iget v1, p0, Llzma/sdk/lzma/a$b;->d:I

    and-int/2addr p1, v1

    iget v1, p0, Llzma/sdk/lzma/a$b;->b:I

    shl-int/2addr p1, v1

    and-int/lit16 p2, p2, 0xff

    rsub-int/lit8 v1, v1, 0x8

    ushr-int/2addr p2, v1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c()V
    .registers 4

    iget v0, p0, Llzma/sdk/lzma/a$b;->b:I

    iget v1, p0, Llzma/sdk/lzma/a$b;->c:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Llzma/sdk/lzma/a$b;->a:[Llzma/sdk/lzma/a$b$a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Llzma/sdk/lzma/a$b$a;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-void
.end method

###### Class lzma.sdk.lzma.a.b.C0603a (lzma.sdk.lzma.a$b$a)
.class Llzma/sdk/lzma/a$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llzma/sdk/lzma/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:[S

.field final synthetic b:Llzma/sdk/lzma/a$b;


# direct methods
.method constructor <init>(Llzma/sdk/lzma/a$b;)V
    .registers 2

    iput-object p1, p0, Llzma/sdk/lzma/a$b$a;->b:Llzma/sdk/lzma/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x300

    new-array p1, p1, [S

    iput-object p1, p0, Llzma/sdk/lzma/a$b$a;->a:[S

    return-void
.end method


# virtual methods
.method public a(Llzma/sdk/rangecoder/Decoder;)B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :cond_1
    shl-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Llzma/sdk/lzma/a$b$a;->a:[S

    invoke-virtual {p1, v2, v0}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v0

    or-int/2addr v0, v1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_1

    int-to-byte p1, v0

    return p1
.end method

.method public b(Llzma/sdk/rangecoder/Decoder;B)B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_2
    shr-int/lit8 v2, p2, 0x7

    and-int/2addr v2, v0

    shl-int/2addr p2, v0

    int-to-byte p2, p2

    iget-object v3, p0, Llzma/sdk/lzma/a$b$a;->a:[S

    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v3

    shl-int/2addr v1, v0

    or-int/2addr v1, v3

    const/16 v4, 0x100

    if-eq v2, v3, :cond_25

    :goto_18
    if-ge v1, v4, :cond_27

    shl-int/lit8 p2, v1, 0x1

    iget-object v0, p0, Llzma/sdk/lzma/a$b$a;->a:[S

    invoke-virtual {p1, v0, v1}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v0

    or-int v1, p2, v0

    goto :goto_18

    :cond_25
    if-lt v1, v4, :cond_2

    :cond_27
    int-to-byte p1, v1

    return p1
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Llzma/sdk/lzma/a$b$a;->a:[S

    invoke-static {v0}, Llzma/sdk/rangecoder/Decoder;->initBitModels([S)V

    return-void
.end method
