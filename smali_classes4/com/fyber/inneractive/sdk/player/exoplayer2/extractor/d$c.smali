###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.d.c (com.fyber.inneractive.sdk.player.exoplayer2.extractor.d$c)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:[I

.field public c:[J

.field public d:[I

.field public e:[I

.field public f:[J

.field public g:[[B

.field public h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

.field public r:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->a:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->b:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->c:[J

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->f:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->e:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->d:[I

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->g:[[B

    new-array v0, v0, [Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->m:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->n:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->p:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->o:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(JIJI[B)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->o:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d6

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->o:Z

    :cond_e
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->p:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    monitor-enter p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_d6

    :try_start_16
    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->n:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->n:J
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_d3

    :try_start_1e
    monitor-exit p0

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->f:[J

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->l:I

    aput-wide p1, v0, v2

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->c:[J

    aput-wide p4, p1, v2

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->d:[I

    aput p6, p2, v2

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->e:[I

    aput p3, p2, v2

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->g:[[B

    aput-object p7, p2, v2

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aput-object p3, p2, v2

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->b:[I

    iget p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->r:I

    aput p3, p2, v2

    iget p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->i:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->i:I

    iget p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->a:I

    if-ne p2, p3, :cond_c9

    add-int/lit16 p2, p3, 0x3e8

    new-array p4, p2, [I

    new-array p5, p2, [J

    new-array p6, p2, [J

    new-array p7, p2, [I

    new-array v0, p2, [I

    new-array v2, p2, [[B

    new-array v3, p2, [Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->k:I

    sub-int/2addr p3, v4

    invoke-static {p1, v4, p5, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->f:[J

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->k:I

    invoke-static {p1, v4, p6, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->e:[I

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->k:I

    invoke-static {p1, v4, p7, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->d:[I

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->k:I

    invoke-static {p1, v4, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->g:[[B

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->k:I

    invoke-static {p1, v4, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->k:I

    invoke-static {p1, v4, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->b:[I

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->k:I

    invoke-static {p1, v4, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->k:I

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->c:[J

    invoke-static {v4, v1, p5, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->f:[J

    invoke-static {v4, v1, p6, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->e:[I

    invoke-static {v4, v1, p7, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->d:[I

    invoke-static {v4, v1, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->g:[[B

    invoke-static {v4, v1, v2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    invoke-static {v4, v1, v3, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->b:[I

    invoke-static {v4, v1, p4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->c:[J

    iput-object p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->f:[J

    iput-object p7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->e:[I

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->d:[I

    iput-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->g:[[B

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->b:[I

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->k:I

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->a:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->l:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->i:I

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->a:I

    goto :goto_d1

    :cond_c9
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->l:I

    if-ne v2, p3, :cond_d1

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->l:I
    :try_end_d1
    .catchall {:try_start_1e .. :try_end_d1} :catchall_d6

    :cond_d1
    :goto_d1
    monitor-exit p0

    return-void

    :catchall_d3
    move-exception p1

    :try_start_d4
    monitor-exit p0

    throw p1
    :try_end_d6
    .catchall {:try_start_d4 .. :try_end_d6} :catchall_d6

    :catchall_d6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(J)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->m:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_81

    const/4 v2, 0x0

    cmp-long v3, v0, p1

    if-ltz v3, :cond_a

    monitor-exit p0

    return v2

    :cond_a
    :try_start_a
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->i:I

    :goto_c
    const/4 v1, 0x1

    if-lez v0, :cond_21

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->f:[J

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->k:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->a:I

    rem-int/2addr v4, v5

    aget-wide v4, v3, v4

    cmp-long v3, v4, p1

    if-ltz v3, :cond_21

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_21
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->j:I

    add-int/2addr v0, p1

    iget p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->i:I

    add-int/2addr p1, p2

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2d

    if-gt p1, p2, :cond_2d

    const/4 v2, 0x1

    :cond_2d
    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Z)V

    if-nez p1, :cond_47

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->j:I

    if-nez p1, :cond_37

    goto :goto_7f

    :cond_37
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->l:I

    if-nez p1, :cond_3d

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->a:I

    :cond_3d
    sub-int/2addr p1, v1

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->c:[J

    aget-wide v2, p2, p1

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->d:[I

    aget p1, p2, p1

    goto :goto_7f

    :cond_47
    iget p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->i:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->i:I

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->l:I

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->a:I

    add-int/2addr v0, v2

    sub-int/2addr v0, p1

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->l:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->n:J

    sub-int/2addr p2, v1

    :goto_5a
    if-ltz p2, :cond_79

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->k:I

    add-int/2addr p1, p2

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->a:I

    rem-int/2addr p1, v0

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->n:J

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->f:[J

    aget-wide v4, v0, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->n:J

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->e:[I

    aget p1, v0, p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_76

    goto :goto_79

    :cond_76
    add-int/lit8 p2, p2, -0x1

    goto :goto_5a

    :cond_79
    :goto_79
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->c:[J

    iget p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->l:I

    aget-wide v2, p1, p2
    :try_end_7f
    .catchall {:try_start_a .. :try_end_7f} :catchall_81

    :goto_7f
    monitor-exit p0

    return v1

    :catchall_81
    move-exception p1

    monitor-exit p0

    throw p1
.end method
