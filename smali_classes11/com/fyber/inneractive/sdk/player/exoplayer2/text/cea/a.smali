###### Class com.fyber.inneractive.sdk.player.exoplayer2.text.cea.a (com.fyber.inneractive.sdk.player.exoplayer2.text.cea.a)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/text/cea/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JLcom/fyber/inneractive/sdk/player/exoplayer2/util/k;[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;)V
    .registers 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_ac

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v5

    const/16 v6, 0xff

    const/4 v7, -0x1

    if-nez v5, :cond_18

    const/4 v5, -0x1

    goto :goto_20

    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result v5

    add-int/2addr v4, v5

    if-eq v5, v6, :cond_d

    move v5, v4

    :goto_20
    const/4 v4, 0x0

    :cond_21
    invoke-virtual/range {p2 .. p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v8

    if-nez v8, :cond_29

    const/4 v4, -0x1

    goto :goto_30

    :cond_29
    invoke-virtual/range {p2 .. p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result v8

    add-int/2addr v4, v8

    if-eq v8, v6, :cond_21

    :goto_30
    if-eq v4, v7, :cond_9e

    invoke-virtual/range {p2 .. p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v6

    if-le v4, v6, :cond_39

    goto :goto_9e

    :cond_39
    const/4 v6, 0x4

    const/4 v7, 0x3

    const/16 v8, 0x8

    if-ne v5, v6, :cond_68

    if-ge v4, v8, :cond_42

    goto :goto_68

    :cond_42
    iget v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    invoke-virtual/range {p2 .. p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->q()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result v11

    invoke-virtual {v0, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    const/16 v5, 0xb5

    if-ne v6, v5, :cond_68

    const/16 v5, 0x31

    if-ne v9, v5, :cond_68

    const v5, 0x47413934

    if-ne v10, v5, :cond_68

    if-ne v11, v7, :cond_68

    const/4 v5, 0x1

    goto :goto_69

    :cond_68
    :goto_68
    const/4 v5, 0x0

    :goto_69
    if-eqz v5, :cond_99

    invoke-virtual {v0, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    mul-int/lit8 v5, v5, 0x3

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    array-length v6, v1

    :goto_7c
    if-ge v2, v6, :cond_91

    aget-object v8, v1, v2

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    invoke-interface {v8, v0, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;I)V

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide v9, p0

    move v12, v5

    invoke-interface/range {v8 .. v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(JIII[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_91
    add-int/lit8 v5, v5, 0xa

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    goto/16 :goto_4

    :cond_99
    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    goto/16 :goto_4

    :cond_9e
    :goto_9e
    const-string v2, "CeaUtil"

    const-string v3, "Skipping remainder of malformed SEI NAL unit."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c:I

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    goto/16 :goto_4

    :cond_ac
    return-void
.end method
