###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.k (com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.k)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;

.field public b:Ljava/lang/String;

.field public c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

.field public d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;

.field public e:Z

.field public final f:[Z

.field public final g:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

.field public final h:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

.field public final i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

.field public final j:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

.field public final k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

.field public l:J

.field public m:J

.field public final n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->f:[Z

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;-><init>(II)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;-><init>(II)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;-><init>(II)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;-><init>(II)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;-><init>(II)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->f:[Z

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->f:Z

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->g:Z

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->h:Z

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->i:Z

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->j:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->l:J

    return-void
.end method

.method public a(JZ)V
    .registers 4

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->m:J

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;)V
    .registers 5

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;->a()V

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->a(II)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;

    invoke-direct {v1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;

    invoke-virtual {v0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;)V

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)V
    .registers 40

    move-object/from16 v0, p0

    :cond_2
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v2

    if-lez v2, :cond_3ee

    iget v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    iget v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c:I

    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    iget-wide v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->l:J

    invoke-virtual/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->l:J

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    invoke-virtual/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;I)V

    :goto_23
    if-ge v2, v3, :cond_2

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->f:[Z

    invoke-static {v4, v2, v3, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_31

    invoke-virtual {v0, v4, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->a([BII)V

    return-void

    :cond_31
    add-int/lit8 v6, v5, 0x3

    aget-byte v7, v4, v6

    and-int/lit8 v7, v7, 0x7e

    const/4 v8, 0x1

    shr-int/2addr v7, v8

    sub-int v9, v5, v2

    if-lez v9, :cond_40

    invoke-virtual {v0, v4, v2, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->a([BII)V

    :cond_40
    sub-int v15, v3, v5

    iget-wide v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->l:J

    int-to-long v12, v15

    sub-long/2addr v10, v12

    const/4 v2, 0x0

    if-gez v9, :cond_4b

    neg-int v5, v9

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x0

    :goto_4c
    iget-wide v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->m:J

    iget-boolean v9, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->e:Z

    if-eqz v9, :cond_b5

    iget-object v9, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;

    iget-boolean v14, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->j:Z

    if-eqz v14, :cond_63

    iget-boolean v14, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->g:Z

    if-eqz v14, :cond_63

    iget-boolean v14, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->c:Z

    iput-boolean v14, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->m:Z

    iput-boolean v2, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->j:Z

    goto :goto_6c

    :cond_63
    iget-boolean v14, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->h:Z

    if-nez v14, :cond_78

    iget-boolean v14, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->g:Z

    if-eqz v14, :cond_6c

    goto :goto_78

    :cond_6c
    :goto_6c
    move/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v25, v15

    goto/16 :goto_310

    :cond_78
    :goto_78
    iget-boolean v14, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->i:Z

    move/from16 v17, v3

    if-eqz v14, :cond_a1

    iget-wide v2, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->b:J

    move-object v14, v9

    sub-long v8, v10, v2

    long-to-int v9, v8

    add-int v23, v15, v9

    move-object v8, v14

    iget-boolean v9, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->m:Z

    move/from16 v25, v15

    iget-wide v14, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->k:J

    sub-long/2addr v2, v14

    long-to-int v3, v2

    iget-object v2, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iget-wide v14, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->l:J

    const/16 v24, 0x0

    move-object/from16 v18, v2

    move-wide/from16 v19, v14

    move/from16 v21, v9

    move/from16 v22, v3

    invoke-interface/range {v18 .. v24}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(JIII[B)V

    goto :goto_a4

    :cond_a1
    move-object v8, v9

    move/from16 v25, v15

    :goto_a4
    iget-wide v2, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->b:J

    iput-wide v2, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->k:J

    iget-wide v2, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->e:J

    iput-wide v2, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->l:J

    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->i:Z

    iget-boolean v2, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->c:Z

    iput-boolean v2, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->m:Z

    goto/16 :goto_30a

    :cond_b5
    move/from16 v17, v3

    move/from16 v25, v15

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v2, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a(I)Z

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v2, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a(I)Z

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v2, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a(I)Z

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-boolean v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->c:Z

    if-eqz v3, :cond_30a

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-boolean v8, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->c:Z

    if-eqz v8, :cond_30a

    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-boolean v9, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->c:Z

    if-eqz v9, :cond_30a

    iget-object v9, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iget-object v14, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->b:Ljava/lang/String;

    iget v15, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    iget v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    add-int/2addr v1, v15

    move-object/from16 v18, v4

    iget v4, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    add-int/2addr v1, v4

    new-array v1, v1, [B

    iget-object v4, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    move/from16 v19, v6

    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    iget v15, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    move/from16 v20, v7

    iget v7, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    invoke-static {v4, v6, v1, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    iget v7, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    add-int/2addr v2, v7

    iget v7, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    invoke-static {v4, v6, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    iget v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    invoke-direct {v2, v4, v6, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;-><init>([BII)V

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b(I)I

    move-result v4

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    const/16 v6, 0x58

    invoke-virtual {v2, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_12b
    if-ge v7, v4, :cond_140

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v15

    if-eqz v15, :cond_135

    add-int/lit8 v8, v8, 0x59

    :cond_135
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v15

    if-eqz v15, :cond_13d

    add-int/lit8 v8, v8, 0x8

    :cond_13d
    add-int/lit8 v7, v7, 0x1

    goto :goto_12b

    :cond_140
    invoke-virtual {v2, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    const/4 v7, 0x2

    if-lez v4, :cond_14d

    rsub-int/lit8 v8, v4, 0x8

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v2, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    :cond_14d
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v8

    if-ne v8, v3, :cond_159

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    :cond_159
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v15

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v21

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v22

    if-eqz v22, :cond_193

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v22

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v23

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v24

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v26

    const/4 v6, 0x1

    if-eq v8, v6, :cond_180

    if-ne v8, v7, :cond_17d

    goto :goto_180

    :cond_17d
    const/16 v28, 0x1

    goto :goto_182

    :cond_180
    :goto_180
    const/16 v28, 0x2

    :goto_182
    if-ne v8, v6, :cond_186

    const/4 v6, 0x2

    goto :goto_187

    :cond_186
    const/4 v6, 0x1

    :goto_187
    add-int v22, v22, v23

    mul-int v28, v28, v22

    sub-int v15, v15, v28

    add-int v24, v24, v26

    mul-int v6, v6, v24

    sub-int v21, v21, v6

    :cond_193
    move/from16 v31, v15

    move/from16 v32, v21

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v6

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v8

    if-eqz v8, :cond_1a9

    const/4 v8, 0x0

    goto :goto_1aa

    :cond_1a9
    move v8, v4

    :goto_1aa
    if-gt v8, v4, :cond_1b8

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    add-int/lit8 v8, v8, 0x1

    goto :goto_1aa

    :cond_1b8
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v4

    const/4 v8, 0x4

    if-eqz v4, :cond_210

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v4

    if-eqz v4, :cond_210

    const/4 v4, 0x0

    :goto_1d8
    if-ge v4, v8, :cond_210

    const/4 v15, 0x0

    :goto_1db
    const/4 v7, 0x6

    if-ge v15, v7, :cond_20b

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v7

    if-nez v7, :cond_1e8

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    goto :goto_203

    :cond_1e8
    shl-int/lit8 v7, v4, 0x1

    add-int/2addr v7, v8

    const/4 v8, 0x1

    shl-int v7, v8, v7

    const/16 v3, 0x40

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-le v4, v8, :cond_1f9

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->e()I

    :cond_1f9
    const/4 v7, 0x0

    :goto_1fa
    if-ge v7, v3, :cond_202

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->e()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1fa

    :cond_202
    const/4 v3, 0x3

    :goto_203
    if-ne v4, v3, :cond_207

    const/4 v7, 0x3

    goto :goto_208

    :cond_207
    const/4 v7, 0x1

    :goto_208
    add-int/2addr v15, v7

    const/4 v8, 0x4

    goto :goto_1db

    :cond_20b
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x4

    goto :goto_1d8

    :cond_210
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v3

    if-eqz v3, :cond_228

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    :cond_228
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_22f
    if-ge v4, v3, :cond_27c

    if-eqz v4, :cond_237

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v7

    :cond_237
    if-eqz v7, :cond_251

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    const/4 v15, 0x0

    :goto_240
    if-gt v15, v8, :cond_24e

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v23

    if-eqz v23, :cond_24b

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    :cond_24b
    add-int/lit8 v15, v15, 0x1

    goto :goto_240

    :cond_24e
    move/from16 v24, v3

    goto :goto_277

    :cond_251
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v8

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v15

    add-int v23, v8, v15

    move/from16 v24, v3

    const/4 v3, 0x0

    :goto_25e
    if-ge v3, v8, :cond_269

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_25e

    :cond_269
    const/4 v3, 0x0

    :goto_26a
    if-ge v3, v15, :cond_275

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_26a

    :cond_275
    move/from16 v8, v23

    :goto_277
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v24

    goto :goto_22f

    :cond_27c
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v3

    if-eqz v3, :cond_294

    const/4 v3, 0x0

    :goto_283
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v4

    if-ge v3, v4, :cond_294

    const/4 v4, 0x4

    add-int/lit8 v8, v6, 0x4

    const/4 v7, 0x1

    add-int/2addr v8, v7

    invoke-virtual {v2, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_283

    :cond_294
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v4

    if-eqz v4, :cond_2e7

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v4

    if-eqz v4, :cond_2e7

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b(I)I

    move-result v4

    const/16 v6, 0xff

    if-ne v4, v6, :cond_2c4

    const/16 v6, 0x10

    invoke-virtual {v2, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b(I)I

    move-result v4

    invoke-virtual {v2, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b(I)I

    move-result v2

    if-eqz v4, :cond_2e9

    if-eqz v2, :cond_2e9

    int-to-float v3, v4

    int-to-float v2, v2

    div-float/2addr v3, v2

    move/from16 v36, v3

    goto :goto_2eb

    :cond_2c4
    const/16 v6, 0x10

    sget-object v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->b:[F

    array-length v7, v2

    if-ge v4, v7, :cond_2d0

    aget v2, v2, v4

    move/from16 v36, v2

    goto :goto_2eb

    :cond_2d0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "H265Reader"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e9

    :cond_2e7
    const/16 v6, 0x10

    :cond_2e9
    :goto_2e9
    const/high16 v36, 0x3f800000    # 1.0f

    :goto_2eb
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/high16 v33, -0x40800000    # -1.0f

    const/16 v35, -0x1

    const/16 v37, 0x0

    const-string v27, "video/hevc"

    move-object/from16 v26, v14

    invoke-static/range {v26 .. v37}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v1

    invoke-interface {v9, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->e:Z

    goto :goto_312

    :cond_30a
    :goto_30a
    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    :goto_310
    const/16 v6, 0x10

    :goto_312
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v1, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a(I)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_33c

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    iget v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    invoke-static {v3, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([BI)I

    move-result v1

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    invoke-virtual {v3, v4, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a([BI)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    invoke-static {v12, v13, v3, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/text/cea/a;->a(JLcom/fyber/inneractive/sdk/player/exoplayer2/util/k;[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;)V

    :cond_33c
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v1, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a(I)Z

    move-result v1

    if-eqz v1, :cond_365

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    iget v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    invoke-static {v3, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([BI)I

    move-result v1

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    invoke-virtual {v3, v4, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a([BI)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    invoke-static {v12, v13, v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/text/cea/a;->a(JLcom/fyber/inneractive/sdk/player/exoplayer2/util/k;[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;)V

    :cond_365
    iget-wide v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->m:J

    iget-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->e:Z

    if-eqz v3, :cond_3c9

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->g:Z

    iput-boolean v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->h:Z

    iput-wide v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->e:J

    iput v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->d:I

    iput-wide v10, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->b:J

    const/16 v1, 0x20

    move/from16 v2, v20

    if-lt v2, v1, :cond_3ad

    iget-boolean v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->j:Z

    if-nez v1, :cond_39d

    iget-boolean v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->i:Z

    if-eqz v1, :cond_39d

    iget-boolean v13, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->m:Z

    iget-wide v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->k:J

    sub-long/2addr v10, v4

    long-to-int v14, v10

    iget-object v10, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iget-wide v11, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->l:J

    const/16 v16, 0x0

    const/16 v1, 0x10

    move/from16 v15, v25

    invoke-interface/range {v10 .. v16}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(JIII[B)V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->i:Z

    goto :goto_3a0

    :cond_39d
    const/16 v1, 0x10

    const/4 v4, 0x0

    :goto_3a0
    const/16 v5, 0x22

    if-gt v2, v5, :cond_3b0

    iget-boolean v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->j:Z

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    iput-boolean v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->h:Z

    iput-boolean v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->j:Z

    goto :goto_3b1

    :cond_3ad
    const/16 v1, 0x10

    const/4 v4, 0x0

    :cond_3b0
    const/4 v6, 0x1

    :goto_3b1
    if-lt v2, v1, :cond_3b9

    const/16 v1, 0x15

    if-gt v2, v1, :cond_3b9

    const/4 v1, 0x1

    goto :goto_3ba

    :cond_3b9
    const/4 v1, 0x0

    :goto_3ba
    iput-boolean v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->c:Z

    if-nez v1, :cond_3c5

    const/16 v1, 0x9

    if-gt v2, v1, :cond_3c3

    goto :goto_3c5

    :cond_3c3
    const/4 v8, 0x0

    goto :goto_3c6

    :cond_3c5
    :goto_3c5
    const/4 v8, 0x1

    :goto_3c6
    iput-boolean v8, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->f:Z

    goto :goto_3da

    :cond_3c9
    move/from16 v2, v20

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->b(I)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->b(I)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->b(I)V

    :goto_3da
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->b(I)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->b(I)V

    move-object/from16 v1, p1

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v2, v19

    goto/16 :goto_23

    :cond_3ee
    return-void
.end method

.method public final a([BII)V
    .registers 7

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->e:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->f:Z

    if-eqz v1, :cond_35

    add-int/lit8 v1, p2, 0x2

    iget v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->d:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_20

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->g:Z

    iput-boolean v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->f:Z

    goto :goto_35

    :cond_20
    sub-int v1, p3, p2

    add-int/2addr v2, v1

    iput v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k$a;->d:I

    goto :goto_35

    :cond_26
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a([BII)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a([BII)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a([BII)V

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a([BII)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/k;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a([BII)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
