###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.d (com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.d)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

.field public final d:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

.field public final e:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

.field public j:Z

.field public k:Landroid/net/Uri;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:J

.field public o:J

.field public p:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;

.field public q:Z

.field public r:Z

.field public s:J


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;ILcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d$a;)V
    .registers 8
    .param p6    # Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    and-int/lit8 p1, p5, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->f:Z

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->g:Z

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_20

    const/4 p3, 0x1

    :cond_20
    iput-boolean p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->h:Z

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    if-eqz p4, :cond_2e

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;

    invoke-direct {p1, p2, p4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    goto :goto_31

    :cond_2e
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    :goto_31
    iput-object p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d$a;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    const/4 p1, -0x1

    return p1

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-interface {v1, p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->a([BII)I

    move-result v1

    const-wide/16 v5, -0x1

    if-ltz v1, :cond_34

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    if-ne p1, p2, :cond_24

    iget-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->s:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->s:J

    :cond_24
    iget-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->n:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->n:J

    iget-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    cmp-long p3, p1, v5

    if-eqz p3, :cond_61

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    goto :goto_61

    :cond_34
    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->j:Z

    if-eqz v2, :cond_49

    iget-wide v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->n:J

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-object v9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    if-ne v2, v9, :cond_47

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;

    iget-object v9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->m:Ljava/lang/String;

    invoke-interface {v2, v9, v7, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;->a(Ljava/lang/String;J)V

    :cond_47
    iput-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    :cond_49
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->b()V

    iget-wide v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    cmp-long v2, v7, v3

    if-gtz v2, :cond_56

    cmp-long v2, v7, v5

    if-nez v2, :cond_61

    :cond_56
    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a([BII)I

    move-result p1
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_60} :catch_62

    return p1

    :cond_61
    :goto_61
    return v1

    :catch_62
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a(Ljava/io/IOException;)V

    throw p1
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->k:Landroid/net/Uri;

    iget v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->g:I

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->l:I

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->f:Ljava/lang/String;

    if-eqz v1, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_11
    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->m:Ljava/lang/String;

    iget-wide v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->d:J

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->n:J

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->g:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->q:Z

    if-nez v0, :cond_2d

    :cond_23
    iget-wide v6, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->e:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->h:Z

    if-eqz v0, :cond_2f

    :cond_2d
    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->r:Z

    iget-wide v6, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->e:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_59

    if-eqz v0, :cond_3b

    goto :goto_59

    :cond_3b
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_5b

    iget-wide v4, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->d:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-lez p1, :cond_53

    goto :goto_5b

    :cond_53
    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/h;

    invoke-direct {p1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/h;-><init>(I)V

    throw p1

    :cond_59
    :goto_59
    iput-wide v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    :cond_5b
    :goto_5b
    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a(Z)Z

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_60} :catch_61

    return-wide v0

    :catch_61
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a(Ljava/io/IOException;)V

    throw p1
.end method

.method public a()Landroid/net/Uri;
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    if-ne v0, v1, :cond_b

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->a()Landroid/net/Uri;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->k:Landroid/net/Uri;

    :goto_d
    return-object v0
.end method

.method public final a(Ljava/io/IOException;)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    if-eq v0, v1, :cond_a

    instance-of p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a$a;

    if-eqz p1, :cond_d

    :cond_a
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->q:Z

    :cond_d
    return-void
.end method

.method public final a(Z)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->r:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move-object v0, v2

    goto :goto_28

    :cond_9
    iget-boolean v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->f:Z

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->m:Ljava/lang/String;

    iget-wide v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->n:J

    invoke-interface {v0, v3, v4, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;->b(Ljava/lang/String;J)Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_28

    :catch_18
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_1e
    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->m:Ljava/lang/String;

    iget-wide v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->n:J

    invoke-interface {v0, v3, v4, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;->c(Ljava/lang/String;J)Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;

    move-result-object v0

    :goto_28
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    if-nez v0, :cond_4a

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iput-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iget-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->k:Landroid/net/Uri;

    iget-wide v12, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->n:J

    iget-wide v14, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    iget-object v10, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->m:Ljava/lang/String;

    iget v11, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->l:I

    const/4 v9, 0x0

    move-object v7, v0

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-wide v10, v12

    invoke-direct/range {v7 .. v17}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    goto/16 :goto_c2

    :cond_4a
    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;->d:Z

    if-eqz v7, :cond_82

    iget-object v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;->e:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    iget-wide v7, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->n:J

    iget-wide v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;->b:J

    sub-long v13, v7, v10

    iget-wide v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;->c:J

    sub-long/2addr v7, v13

    iget-wide v10, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    cmp-long v0, v10, v5

    if-eqz v0, :cond_67

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_67
    move-wide v15, v7

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iget-wide v11, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->n:J

    iget-object v7, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->m:Ljava/lang/String;

    iget v10, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->l:I

    const/16 v17, 0x0

    move-object v8, v0

    move/from16 v18, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v7

    invoke-direct/range {v8 .. v18}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    iget-object v7, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iput-object v7, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    move-object v7, v0

    goto :goto_c2

    :cond_82
    iget-wide v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;->c:J

    cmp-long v9, v7, v5

    if-nez v9, :cond_8a

    const/4 v9, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v9, 0x0

    :goto_8b
    if-eqz v9, :cond_90

    iget-wide v7, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    goto :goto_9a

    :cond_90
    iget-wide v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    cmp-long v11, v9, v5

    if-eqz v11, :cond_9a

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_9a
    :goto_9a
    move-wide/from16 v16, v7

    new-instance v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iget-object v10, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->k:Landroid/net/Uri;

    iget-wide v14, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->n:J

    iget-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->m:Ljava/lang/String;

    iget v12, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->l:I

    const/4 v11, 0x0

    move-object v9, v7

    move/from16 v19, v12

    move-wide v12, v14

    move-object/from16 v18, v8

    invoke-direct/range {v9 .. v19}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    iget-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    if-eqz v8, :cond_b9

    iput-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iput-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;

    goto :goto_c2

    :cond_b9
    iget-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iput-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;

    invoke-interface {v8, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;)V

    :goto_c2
    iget-wide v8, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->e:J

    cmp-long v0, v8, v5

    if-nez v0, :cond_ca

    const/4 v0, 0x1

    goto :goto_cb

    :cond_ca
    const/4 v0, 0x0

    :goto_cb
    iput-boolean v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->j:Z

    const-wide/16 v8, 0x0

    :try_start_cf
    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-interface {v0, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)J

    move-result-wide v8
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d5} :catch_d6

    goto :goto_f5

    :catch_d6
    move-exception v0

    if-nez p1, :cond_f1

    iget-boolean v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->j:Z

    if-eqz v3, :cond_f1

    move-object v3, v0

    :goto_de
    if-eqz v3, :cond_f1

    instance-of v10, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/h;

    if-eqz v10, :cond_ec

    move-object v10, v3

    check-cast v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/h;

    iget v10, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/h;->a:I

    if-nez v10, :cond_ec

    goto :goto_f2

    :cond_ec
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_de

    :cond_f1
    move-object v2, v0

    :goto_f2
    if-nez v2, :cond_110

    const/4 v3, 0x0

    :goto_f5
    iget-boolean v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->j:Z

    if-eqz v0, :cond_10f

    cmp-long v0, v8, v5

    if-eqz v0, :cond_10f

    iput-wide v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->o:J

    iget-wide v4, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->d:J

    add-long/2addr v4, v8

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    if-ne v0, v2, :cond_10f

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->m:Ljava/lang/String;

    invoke-interface {v0, v2, v4, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;->a(Ljava/lang/String;J)V

    :cond_10f
    return v3

    :cond_110
    throw v2
.end method

.method public final b()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->close()V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->j:Z
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_1a

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;

    if-eqz v0, :cond_19

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;

    invoke-interface {v2, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;

    if-eqz v2, :cond_26

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;

    invoke-interface {v3, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/g;

    :cond_26
    throw v0
.end method

.method public close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->k:Landroid/net/Uri;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d$a;

    if-eqz v0, :cond_1c

    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->s:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1c

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/a;->a()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->s:J

    invoke-interface {v0, v1, v2, v5, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d$a;->a(JJ)V

    iput-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->s:J

    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->b()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/cache/d;->a(Ljava/io/IOException;)V

    throw v0
.end method
