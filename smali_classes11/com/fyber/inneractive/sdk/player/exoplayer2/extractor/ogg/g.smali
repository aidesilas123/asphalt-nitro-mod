###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.g (com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.g)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/g;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/h;
.source "SourceFile"


# static fields
.field public static final o:I

.field public static final p:[B


# instance fields
.field public n:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "Opus"

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/g;->o:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/g;->p:[B

    return-void

    :array_12
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)J
    .registers 8

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    if-eq v1, v3, :cond_17

    if-eq v1, v2, :cond_17

    aget-byte p1, p1, v3

    and-int/lit8 v2, p1, 0x3f

    goto :goto_17

    :cond_16
    const/4 v2, 0x1

    :cond_17
    :goto_17
    const/4 p1, 0x3

    shr-int/2addr v0, p1

    and-int/lit8 v1, v0, 0x3

    const/16 v4, 0x10

    if-lt v0, v4, :cond_23

    const/16 p1, 0x9c4

    shl-int/2addr p1, v1

    goto :goto_36

    :cond_23
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v0, v4, :cond_2e

    and-int/lit8 p1, v1, 0x1

    shl-int p1, v5, p1

    goto :goto_36

    :cond_2e
    if-ne v1, p1, :cond_34

    const p1, 0xea60

    goto :goto_36

    :cond_34
    shl-int p1, v5, v1

    :goto_36
    mul-int v2, v2, p1

    int-to-long v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/h;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    int-to-long v0, p2

    const-wide/32 v2, 0x3b9aca00

    mul-long v0, v0, v2

    const-wide/32 v2, 0xbb80

    div-long/2addr v0, v2

    const/16 p2, 0x8

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/h;->a(Z)V

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/g;->n:Z

    :cond_8
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;JLcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/h$a;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/g;->n:Z

    const/4 v3, 0x1

    if-nez v2, :cond_4f

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    iget v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c:I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/16 v2, 0x9

    aget-byte v2, v1, v2

    and-int/lit16 v9, v2, 0xff

    const/16 v2, 0xb

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/16 v4, 0xa

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    new-instance v12, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v12, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/g;->a(Ljava/util/List;I)V

    const/16 v1, 0xf00

    invoke-virtual {v0, v12, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/g;->a(Ljava/util/List;I)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const v10, 0xbb80

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, -0x1

    const-string v5, "audio/opus"

    invoke-static/range {v4 .. v15}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;ILjava/lang/String;)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v1

    move-object/from16 v2, p4

    iput-object v1, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iput-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/g;->n:Z

    return v3

    :cond_4f
    invoke-virtual/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v2

    sget v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/g;->o:I

    const/4 v5, 0x0

    if-ne v2, v4, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v3, 0x0

    :goto_5a
    invoke-virtual {v1, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    return v3
.end method
