###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.b (com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.b)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b$a;
    }
.end annotation


# instance fields
.field public n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/e;

.field public o:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)J
    .registers 16

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-nez v2, :cond_11

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_11
    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x4

    shr-int/2addr v0, v5

    packed-switch v0, :pswitch_data_b4

    goto/16 :goto_b1

    :pswitch_1d
    add-int/lit8 v0, v0, -0x8

    const/16 p1, 0x100

    goto/16 :goto_ac

    :pswitch_23
    invoke-virtual {p1, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    const/4 v5, 0x7

    const/4 v6, 0x7

    :goto_2f
    const/4 v7, 0x6

    if-ltz v6, :cond_4a

    shl-int v8, v4, v6

    int-to-long v9, v8

    and-long/2addr v9, v2

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_47

    if-ge v6, v7, :cond_43

    sub-int/2addr v8, v4

    int-to-long v8, v8

    and-long/2addr v2, v8

    sub-int/2addr v5, v6

    goto :goto_4b

    :cond_43
    if-ne v6, v5, :cond_4a

    const/4 v5, 0x1

    goto :goto_4b

    :cond_47
    add-int/lit8 v6, v6, -0x1

    goto :goto_2f

    :cond_4a
    const/4 v5, 0x0

    :goto_4b
    if-eqz v5, :cond_92

    const/4 v6, 0x1

    :goto_4e
    if-ge v6, v5, :cond_7c

    iget-object v8, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    iget v9, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    add-int/2addr v9, v6

    aget-byte v8, v8, v9

    and-int/lit16 v9, v8, 0xc0

    const/16 v10, 0x80

    if-ne v9, v10, :cond_65

    shl-long/2addr v2, v7

    and-int/lit8 v8, v8, 0x3f

    int-to-long v8, v8

    or-long/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    :cond_65
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7c
    iget v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    add-int/2addr v2, v5

    iput v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    if-ne v0, v7, :cond_88

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result v0

    goto :goto_8c

    :cond_88
    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->q()I

    move-result v0

    :goto_8c
    invoke-virtual {p1, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    add-int/lit8 v3, v0, 0x1

    goto :goto_b1

    :cond_92
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a9
    sub-int/2addr v0, v2

    const/16 p1, 0x240

    :goto_ac
    shl-int v3, p1, v0

    goto :goto_b1

    :pswitch_af
    const/16 v3, 0xc0

    :goto_b1
    int-to-long v0, v3

    return-wide v0

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_af
        :pswitch_a9
        :pswitch_a9
        :pswitch_a9
        :pswitch_a9
        :pswitch_23
        :pswitch_23
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public a(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/h;->a(Z)V

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/e;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b$a;

    :cond_a
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;JLcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/h$a;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/e;

    const/4 v5, 0x1

    if-nez v4, :cond_43

    new-instance v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/e;

    const/16 v6, 0x11

    invoke-direct {v4, v3, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/e;-><init>([BI)V

    iput-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/e;

    iget v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c:I

    const/16 v4, 0x9

    invoke-static {v3, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v3, 0x4

    const/16 v4, -0x80

    aput-byte v4, v1, v3

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/e;

    iget v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/e;->c:I

    iget v12, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/e;->a:I

    mul-int v10, v3, v12

    iget v11, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/e;->b:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v13, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v7, "audio/flac"

    invoke-static/range {v6 .. v17}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;ILjava/lang/String;)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v1

    iput-object v1, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    goto :goto_91

    :cond_43
    const/4 v4, 0x0

    aget-byte v6, v3, v4

    and-int/lit8 v6, v6, 0x7f

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7c

    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b$a;

    invoke-direct {v2, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b$a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b;)V

    iput-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b$a;

    invoke-virtual {v1, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->n()I

    move-result v3

    div-int/lit8 v3, v3, 0x12

    new-array v6, v3, [J

    iput-object v6, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b$a;->a:[J

    new-array v6, v3, [J

    iput-object v6, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b$a;->b:[J

    :goto_63
    if-ge v4, v3, :cond_91

    iget-object v6, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b$a;->a:[J

    invoke-virtual/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->i()J

    move-result-wide v7

    aput-wide v7, v6, v4

    iget-object v6, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b$a;->b:[J

    invoke-virtual/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->i()J

    move-result-wide v7

    aput-wide v7, v6, v4

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    :cond_7c
    aget-byte v1, v3, v4

    const/4 v3, -0x1

    if-ne v1, v3, :cond_83

    const/4 v1, 0x1

    goto :goto_84

    :cond_83
    const/4 v1, 0x0

    :goto_84
    if-eqz v1, :cond_91

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b$a;

    if-eqz v1, :cond_90

    move-wide/from16 v5, p2

    iput-wide v5, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/b$a;->c:J

    iput-object v1, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/h$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/f;

    :cond_90
    return v4

    :cond_91
    :goto_91
    return v5
.end method
