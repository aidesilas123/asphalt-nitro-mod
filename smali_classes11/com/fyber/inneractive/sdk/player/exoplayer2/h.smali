###### Class com.fyber.inneractive.sdk.player.exoplayer2.h (com.fyber.inneractive.sdk.player.exoplayer2.h)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m$a;
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/h$d;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;
    }
.end annotation


# instance fields
.field public A:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;

.field public B:J

.field public C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

.field public D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

.field public E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

.field public F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

.field public final a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

.field public final b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/a;

.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/g;

.field public final d:Lcom/fyber/inneractive/sdk/player/exoplayer2/c;

.field public final e:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

.field public final f:Landroid/os/Handler;

.field public final g:Landroid/os/HandlerThread;

.field public final h:Landroid/os/Handler;

.field public final i:Lcom/fyber/inneractive/sdk/player/exoplayer2/e;

.field public final j:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

.field public final k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

.field public l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

.field public m:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

.field public n:Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

.field public o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

.field public p:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;

.field public q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:J

.field public z:I


# direct methods
.method public constructor <init>([Lcom/fyber/inneractive/sdk/player/exoplayer2/n;Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/c;ZLandroid/os/Handler;Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;Lcom/fyber/inneractive/sdk/player/exoplayer2/e;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/g;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/c;

    iput-boolean p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->s:Z

    iput-object p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    const/4 p2, 0x1

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->v:I

    iput-object p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iput-object p7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/e;

    array-length p2, p1

    new-array p2, p2, [Lcom/fyber/inneractive/sdk/player/exoplayer2/a;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/a;

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_1b
    array-length p4, p1

    if-ge p3, p4, :cond_30

    aget-object p4, p1, p3

    invoke-interface {p4, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->a(I)V

    iget-object p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/a;

    aget-object p5, p1, p3

    invoke-interface {p5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->m()Lcom/fyber/inneractive/sdk/player/exoplayer2/a;

    move-result-object p5

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1b

    :cond_30
    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

    new-array p1, p2, [Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    sget-object p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->g:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p;Lcom/fyber/inneractive/sdk/player/exoplayer2/p;)I
    .registers 8

    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_2
    if-ne v1, v0, :cond_1b

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_1b

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {p2, p1, v1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v1

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->b:Ljava/lang/Object;

    invoke-virtual {p3, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(Ljava/lang/Object;)I

    move-result v1

    goto :goto_2

    :cond_1b
    return v1
.end method

.method public final a(IJ)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;IJJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    :cond_a
    :try_start_a
    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;->b:I

    iget-wide v4, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;->c:J

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;IJJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_16} :catch_65

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    if-ne v1, v0, :cond_1b

    return-object p1

    :cond_1b
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v2

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3e
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-virtual {p0, p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p;Lcom/fyber/inneractive/sdk/player/exoplayer2/p;)I

    move-result p1

    if-eq p1, v2, :cond_63

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object p1

    iget p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->c:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_63
    const/4 p1, 0x0

    return-object p1

    :catch_65
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/k;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;->b:I

    iget-wide v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;->c:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/k;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;IJ)V

    throw v0
.end method

.method public final a(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;IJJ)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/p;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(III)I

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$c;ZJ)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p3, p5

    if-nez p2, :cond_24

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    iget-wide p3, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->e:J

    cmp-long p2, p3, p5

    if-nez p2, :cond_24

    const/4 p1, 0x0

    return-object p1

    :cond_24
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    iget v0, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->c:I

    iget-wide v2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->g:J

    add-long/2addr v2, p3

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {p1, v0, p2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object p2

    iget-wide p2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->d:J

    :goto_33
    cmp-long p4, p2, p5

    if-eqz p4, :cond_4d

    cmp-long p4, v2, p2

    if-ltz p4, :cond_4d

    iget-object p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    iget p4, p4, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->d:I

    if-ge v0, p4, :cond_4d

    sub-long/2addr v2, p2

    add-int/lit8 v0, v0, 0x1

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {p1, v0, p2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object p2

    iget-wide p2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->d:J

    goto :goto_33

    :cond_4d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_18

    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;->a()V

    goto/16 :goto_253

    :cond_18
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-nez v0, :cond_21

    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->a:I

    goto :goto_4f

    :cond_21
    iget v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    iget-boolean v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->h:Z

    if-nez v2, :cond_13a

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->b()Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v2, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {v0, v1, v2, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v0

    iget-wide v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->d:J

    cmp-long v0, v2, v10

    if-nez v0, :cond_3d

    goto/16 :goto_13a

    :cond_3d
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v0, :cond_4a

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    sub-int/2addr v1, v0

    const/16 v0, 0x64

    if-ne v1, v0, :cond_4a

    goto/16 :goto_13a

    :cond_4a
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    add-int/2addr v0, v13

    :goto_4f
    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a()I

    move-result v1

    if-lt v0, v1, :cond_5e

    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;->a()V

    goto/16 :goto_13a

    :cond_5e
    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_6b

    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-wide v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->c:J

    :goto_68
    move-wide/from16 v25, v2

    goto :goto_c6

    :cond_6b
    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v4, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {v1, v0, v4, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v1

    iget v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->c:I

    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v5, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    invoke-virtual {v1, v4, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$c;)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    move-result-object v1

    iget v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->c:I

    if-eq v0, v1, :cond_82

    goto :goto_68

    :cond_82
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a()J

    move-result-wide v0

    iget-object v5, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v6, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    iget-object v14, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {v5, v6, v14, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v5

    iget-wide v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->d:J

    add-long/2addr v0, v5

    iget-wide v5, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    sub-long/2addr v0, v5

    iget-object v5, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-wide/from16 v3, v16

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_b4

    goto/16 :goto_13a

    :cond_b4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move v0, v1

    goto :goto_68

    :goto_c6
    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-nez v1, :cond_d0

    const-wide/32 v1, 0x3938700

    add-long v1, v25, v1

    goto :goto_e3

    :cond_d0
    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a()J

    move-result-wide v1

    iget-object v3, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v4, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    iget-object v5, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {v3, v4, v5, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v3

    iget-wide v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->d:J

    add-long/2addr v1, v3

    :goto_e3
    move-wide/from16 v17, v1

    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v2, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {v1, v0, v2, v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a()I

    move-result v1

    sub-int/2addr v1, v13

    if-ne v0, v1, :cond_108

    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v2, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->c:I

    iget-object v3, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    invoke-virtual {v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$c;)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    move-result-object v1

    iget-boolean v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->b:Z

    if-nez v1, :cond_108

    const/16 v24, 0x1

    goto :goto_10a

    :cond_108
    const/16 v24, 0x0

    :goto_10a
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v15, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    iget-object v2, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/a;

    iget-object v3, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/g;

    iget-object v4, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/c;

    iget-object v5, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;

    iget-object v6, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->b:Ljava/lang/Object;

    move-object v14, v1

    move-object/from16 v16, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v0

    invoke-direct/range {v14 .. v26}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;-><init>([Lcom/fyber/inneractive/sdk/player/exoplayer2/n;[Lcom/fyber/inneractive/sdk/player/exoplayer2/a;JLcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/c;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;Ljava/lang/Object;IZJ)V

    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v0, :cond_130

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    :cond_130
    iput-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    invoke-interface {v0, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m$a;)V

    invoke-virtual {v7, v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->c(Z)V

    :cond_13a
    :goto_13a
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v0, :cond_151

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->b()Z

    move-result v0

    if-eqz v0, :cond_145

    goto :goto_151

    :cond_145
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v0, :cond_154

    iget-boolean v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->l:Z

    if-eqz v0, :cond_154

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b()V

    goto :goto_154

    :cond_151
    :goto_151
    invoke-virtual {v7, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->c(Z)V

    :cond_154
    :goto_154
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-nez v0, :cond_15a

    goto/16 :goto_253

    :cond_15a
    :goto_15a
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eq v0, v1, :cond_191

    iget-wide v2, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-wide v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->e:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_191

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->c()V

    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    invoke-virtual {v7, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;)V

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    iget-wide v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->g:J

    invoke-direct {v0, v2, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->i()V

    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_15a

    :cond_191
    iget-boolean v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->h:Z

    if-eqz v0, :cond_1b7

    const/4 v0, 0x0

    :goto_196
    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v2, v1

    if-ge v0, v2, :cond_253

    aget-object v1, v1, v0

    iget-object v2, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1b4

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->n()Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;

    move-result-object v3

    if-ne v3, v2, :cond_1b4

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->g()Z

    move-result v2

    if-eqz v2, :cond_1b4

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->c()V

    :cond_1b4
    add-int/lit8 v0, v0, 0x1

    goto :goto_196

    :cond_1b7
    const/4 v0, 0x0

    :goto_1b8
    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v2, v1

    if-ge v0, v2, :cond_1d8

    aget-object v1, v1, v0

    iget-object v2, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;

    aget-object v2, v2, v0

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->n()Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;

    move-result-object v3

    if-ne v3, v2, :cond_253

    if-eqz v2, :cond_1d5

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->g()Z

    move-result v1

    if-nez v1, :cond_1d5

    goto/16 :goto_253

    :cond_1d5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b8

    :cond_1d8
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v1, :cond_253

    iget-boolean v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->i:Z

    if-eqz v2, :cond_253

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;

    iput-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;->f()J

    move-result-wide v3

    cmp-long v1, v3, v10

    if-eqz v1, :cond_1f4

    const/4 v1, 0x1

    goto :goto_1f5

    :cond_1f4
    const/4 v1, 0x0

    :goto_1f5
    const/4 v3, 0x0

    :goto_1f6
    iget-object v4, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v5, v4

    if-ge v3, v5, :cond_253

    aget-object v4, v4, v3

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    aget-object v5, v5, v3

    if-nez v5, :cond_206

    goto :goto_24b

    :cond_206
    if-eqz v1, :cond_20c

    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->c()V

    goto :goto_24b

    :cond_20c
    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->h()Z

    move-result v5

    if-nez v5, :cond_24b

    iget-object v5, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    aget-object v5, v5, v3

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;->d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/o;

    aget-object v6, v6, v3

    iget-object v14, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;->d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/o;

    aget-object v14, v14, v3

    if-eqz v5, :cond_248

    invoke-virtual {v14, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/o;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_248

    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;->f()I

    move-result v6

    new-array v14, v6, [Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    const/4 v15, 0x0

    :goto_22f
    if-ge v15, v6, :cond_23a

    invoke-interface {v5, v15}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;->a(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v16

    aput-object v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_22f

    :cond_23a
    iget-object v5, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v6, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;

    aget-object v6, v6, v3

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a()J

    move-result-wide v10

    invoke-interface {v4, v14, v6, v10, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->a([Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;J)V

    goto :goto_24b

    :cond_248
    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->c()V

    :cond_24b
    :goto_24b
    add-int/lit8 v3, v3, 0x1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1f6

    :cond_253
    :goto_253
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    const-wide/16 v1, 0xa

    if-nez v0, :cond_260

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->c()V

    invoke-virtual {v7, v8, v9, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(JJ)V

    return-void

    :cond_260
    const-string v0, "doSomeWork"

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->i()V

    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    iget-object v3, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-wide v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->c:J

    invoke-interface {v0, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;->c(J)V

    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_279
    if-ge v4, v3, :cond_2b1

    aget-object v10, v0, v4

    iget-wide v13, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    iget-wide v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->y:J

    invoke-interface {v10, v13, v14, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->a(JJ)V

    if-eqz v6, :cond_28e

    invoke-interface {v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->b()Z

    move-result v1

    if-eqz v1, :cond_28e

    const/4 v6, 0x1

    goto :goto_28f

    :cond_28e
    const/4 v6, 0x0

    :goto_28f
    invoke-interface {v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->isReady()Z

    move-result v1

    if-nez v1, :cond_29e

    invoke-interface {v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->b()Z

    move-result v1

    if-eqz v1, :cond_29c

    goto :goto_29e

    :cond_29c
    const/4 v1, 0x0

    goto :goto_29f

    :cond_29e
    :goto_29e
    const/4 v1, 0x1

    :goto_29f
    if-nez v1, :cond_2a4

    invoke-interface {v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->e()V

    :cond_2a4
    if-eqz v5, :cond_2aa

    if-eqz v1, :cond_2aa

    const/4 v5, 0x1

    goto :goto_2ab

    :cond_2aa
    const/4 v5, 0x0

    :goto_2ab
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v1, 0xa

    const/4 v13, 0x1

    goto :goto_279

    :cond_2b1
    if-nez v5, :cond_2b6

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->c()V

    :cond_2b6
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    if-eqz v0, :cond_2d9

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;->i()Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    move-result-object v0

    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d9

    iput-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

    iget-object v2, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;)V

    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2d9
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v1, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    iget-object v2, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {v0, v1, v2, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v0

    iget-wide v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->d:J

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v6, :cond_30a

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v13

    if-eqz v4, :cond_2fc

    iget-object v4, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-wide v13, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->c:J

    cmp-long v4, v0, v13

    if-gtz v4, :cond_30a

    :cond_2fc
    iget-object v4, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-boolean v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->h:Z

    if-eqz v4, :cond_30a

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h()V

    goto :goto_34a

    :cond_30a
    iget v4, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->v:I

    if-ne v4, v3, :cond_332

    iget-object v4, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v4, v4

    if-lez v4, :cond_321

    if-eqz v5, :cond_31f

    iget-boolean v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->t:Z

    invoke-virtual {v7, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_31f

    const/4 v13, 0x1

    goto :goto_325

    :cond_31f
    const/4 v13, 0x0

    goto :goto_325

    :cond_321
    invoke-virtual {v7, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(J)Z

    move-result v13

    :goto_325
    if-eqz v13, :cond_34a

    invoke-virtual {v7, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(I)V

    iget-boolean v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->s:Z

    if-eqz v0, :cond_34a

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f()V

    goto :goto_34a

    :cond_332
    if-ne v4, v2, :cond_34a

    iget-object v4, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v4, v4

    if-lez v4, :cond_33a

    goto :goto_33e

    :cond_33a
    invoke-virtual {v7, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(J)Z

    move-result v5

    :goto_33e
    if-nez v5, :cond_34a

    iget-boolean v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->s:Z

    iput-boolean v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->t:Z

    invoke-virtual {v7, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h()V

    :cond_34a
    :goto_34a
    iget v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->v:I

    if-ne v0, v3, :cond_35b

    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v1, v0

    :goto_351
    if-ge v12, v1, :cond_35b

    aget-object v4, v0, v12

    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->e()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_351

    :cond_35b
    iget-boolean v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->s:Z

    if-eqz v0, :cond_363

    iget v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->v:I

    if-eq v0, v2, :cond_367

    :cond_363
    iget v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->v:I

    if-ne v0, v3, :cond_36d

    :cond_367
    const-wide/16 v0, 0xa

    invoke-virtual {v7, v8, v9, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(JJ)V

    goto :goto_37d

    :cond_36d
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v0, v0

    if-eqz v0, :cond_378

    const-wide/16 v0, 0x3e8

    invoke-virtual {v7, v8, v9, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(JJ)V

    goto :goto_37d

    :cond_378
    iget-object v0, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :goto_37d
    invoke-static {}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a()V

    return-void
.end method

.method public final a(I)V
    .registers 5

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->v:I

    if-eq v0, p1, :cond_11

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->v:I

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public final a(JJ)V
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    add-long/2addr p1, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_18

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1d

    :cond_18
    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1d
    return-void
.end method

.method public final a(Landroid/util/Pair;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/p;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    if-nez v0, :cond_6e

    iget v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->z:I

    if-lez v6, :cond_41

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->A:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;)Landroid/util/Pair;

    move-result-object v1

    iget v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->z:I

    iput v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->z:I

    iput-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->A:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;

    if-nez v1, :cond_29

    invoke-virtual {p0, p1, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Ljava/lang/Object;I)V

    return-void

    :cond_29
    new-instance v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v7, v8, v9, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    goto :goto_6f

    :cond_41
    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-wide v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->b:J

    cmp-long v8, v6, v3

    if-nez v8, :cond_6e

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->c()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Ljava/lang/Object;I)V

    return-void

    :cond_53
    invoke-virtual {p0, v5, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(IJ)Landroid/util/Pair;

    move-result-object v1

    new-instance v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    :cond_6e
    const/4 v6, 0x0

    :goto_6f
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v1, :cond_74

    goto :goto_76

    :cond_74
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    :goto_76
    if-nez v1, :cond_7c

    invoke-virtual {p0, p1, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Ljava/lang/Object;I)V

    return-void

    :cond_7c
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->b:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v7, v8, :cond_e2

    iget v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-virtual {p0, v2, v0, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p;Lcom/fyber/inneractive/sdk/player/exoplayer2/p;)I

    move-result v0

    if-ne v0, v8, :cond_96

    invoke-virtual {p0, p1, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Ljava/lang/Object;I)V

    return-void

    :cond_96
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {v2, v0, v7, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v0

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->c:I

    invoke-virtual {p0, v0, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {v0, v2, v5, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->b:Ljava/lang/Object;

    iput v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    :goto_c1
    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v1, :cond_d3

    iget-object v5, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->b:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cf

    move v5, v2

    goto :goto_d0

    :cond_cf
    const/4 v5, -0x1

    :goto_d0
    iput v5, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    goto :goto_c1

    :cond_d3
    invoke-virtual {p0, v2, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(IJ)J

    move-result-wide v0

    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    invoke-direct {v3, v2, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    invoke-virtual {p0, p1, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Ljava/lang/Object;I)V

    return-void

    :cond_e2
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {v0, v7, v3, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a()I

    move-result v0

    sub-int/2addr v0, v9

    if-ne v7, v0, :cond_104

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    iget v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->c:I

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    invoke-virtual {v0, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$c;)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->b:Z

    if-nez v0, :cond_104

    const/4 v0, 0x1

    goto :goto_105

    :cond_104
    const/4 v0, 0x0

    :goto_105
    iput v7, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    iput-boolean v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->h:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-ne v1, v0, :cond_10f

    const/4 v0, 0x1

    goto :goto_110

    :cond_10f
    const/4 v0, 0x0

    :goto_110
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->a:I

    if-eq v7, v4, :cond_127

    new-instance v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-wide v10, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->b:J

    invoke-direct {v4, v7, v10, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iget-wide v10, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->c:J

    iput-wide v10, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->c:J

    iget-wide v10, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->d:J

    iput-wide v10, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->d:J

    iput-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    :cond_127
    :goto_127
    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v3, :cond_186

    add-int/2addr v7, v9

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v8, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {v4, v7, v8, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a()I

    move-result v4

    sub-int/2addr v4, v9

    if-ne v7, v4, :cond_14e

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v8, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    iget v8, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->c:I

    iget-object v10, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    invoke-virtual {v4, v8, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$c;)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    move-result-object v4

    iget-boolean v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->b:Z

    if-nez v4, :cond_14e

    const/4 v4, 0x1

    goto :goto_14f

    :cond_14e
    const/4 v4, 0x0

    :goto_14f
    iget-object v8, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->b:Ljava/lang/Object;

    iget-object v10, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    iget-object v10, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->b:Ljava/lang/Object;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_169

    iput v7, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    iput-boolean v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->h:Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-ne v3, v1, :cond_165

    const/4 v1, 0x1

    goto :goto_166

    :cond_165
    const/4 v1, 0x0

    :goto_166
    or-int/2addr v0, v1

    move-object v1, v3

    goto :goto_127

    :cond_169
    if-nez v0, :cond_17f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-wide v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->c:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(IJ)J

    move-result-wide v1

    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    invoke-direct {v3, v0, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    goto :goto_186

    :cond_17f
    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    invoke-virtual {p0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;)V

    :cond_186
    :goto_186
    invoke-virtual {p0, p1, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method public final a(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;)V
    .registers 2

    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->c()V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final a(Lcom/fyber/inneractive/sdk/player/exoplayer2/m;)V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/m;)Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    move-result-object p1

    goto :goto_18

    :cond_9
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a:Z

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a(J)V

    :cond_16
    iput-object p1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    :goto_18
    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/fyber/inneractive/sdk/player/exoplayer2/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->d()V

    :cond_a
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v0, :cond_32

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    if-eq v1, p1, :cond_9

    goto :goto_32

    :cond_9
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->i:Z

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->d()Z

    iget-wide v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->g:J

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->n:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length p1, p1

    new-array p1, p1, [Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a(JZ[Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->g:J

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-wide v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->g:J

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(J)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;)V

    :cond_2f
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b()V

    :cond_32
    :goto_32
    return-void
.end method

.method public final a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;Z)V
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Z)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/c;

    invoke-virtual {v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->a(Z)V

    if-eqz p2, :cond_1d

    new-instance p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p2, v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    :cond_1d
    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/e;

    invoke-interface {p1, p2, v0, p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/e;ZLcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(I)V

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/p;)V
    .registers 4

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Ljava/lang/Object;I)V
    .registers 7

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Ljava/lang/Object;I)V

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(I)V

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Z)V

    return-void
.end method

.method public final a([Lcom/fyber/inneractive/sdk/player/exoplayer2/e$c;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/e$c;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/e$b;

    iget v4, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/e$c;->b:I

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/e$c;->c:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/e$b;->a(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_2b

    :cond_1c
    monitor-enter p0

    :try_start_1d
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->x:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->x:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    throw p1

    :catchall_2b
    move-exception p1

    monitor-enter p0

    :try_start_2d
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->x:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_38

    throw p1

    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public final a([ZI)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-array v1, v1, [Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v5, v4

    if-ge v2, v5, :cond_98

    aget-object v4, v4, v2

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    aget-object v5, v5, v2

    if-eqz v5, :cond_94

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    add-int/lit8 v15, v3, 0x1

    aput-object v4, v6, v3

    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->a()I

    move-result v3

    if-nez v3, :cond_93

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;->d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/o;

    aget-object v7, v3, v2

    iget-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->s:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_3e

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->v:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_3e

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    :goto_3f
    aget-boolean v8, p1, v2

    if-nez v8, :cond_47

    if-eqz v3, :cond_47

    const/4 v12, 0x1

    goto :goto_48

    :cond_47
    const/4 v12, 0x0

    :goto_48
    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;->f()I

    move-result v6

    new-array v8, v6, [Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    const/4 v9, 0x0

    :goto_4f
    if-ge v9, v6, :cond_5a

    invoke-interface {v5, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;->a(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4f

    :cond_5a
    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v6, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;

    aget-object v9, v6, v2

    iget-wide v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a()J

    move-result-wide v13

    move-object v6, v4

    invoke-interface/range {v6 .. v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/o;[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;JZJ)V

    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->j()Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    move-result-object v5

    if-eqz v5, :cond_8e

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    if-nez v6, :cond_7e

    iput-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    iput-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    invoke-interface {v5, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/m;)Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    goto :goto_8e

    :cond_7e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    :cond_8e
    :goto_8e
    if-eqz v3, :cond_93

    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->f()V

    :cond_93
    move v3, v15

    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :cond_98
    return-void
.end method

.method public final a(J)Z
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1e

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-wide v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->c:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1e

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz p1, :cond_1c

    iget-boolean p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->i:Z

    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    :goto_1f
    return p1
.end method

.method public final a(Z)Z
    .registers 10

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->i:Z

    if-nez v1, :cond_9

    iget-wide v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->g:J

    goto :goto_f

    :cond_9
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;->d()J

    move-result-wide v0

    :goto_f
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_2a

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->h:Z

    if-eqz v1, :cond_1e

    return v4

    :cond_1e
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {v1, v0, v2, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v0

    iget-wide v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->d:J

    :cond_2a
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/c;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-wide v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    invoke-virtual {v3, v6, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a(J)J

    move-result-wide v6

    sub-long/2addr v0, v6

    if-eqz p1, :cond_3a

    iget-wide v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->e:J

    goto :goto_3c

    :cond_3a
    iget-wide v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->d:J

    :goto_3c
    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-lez p1, :cond_48

    cmp-long p1, v0, v2

    if-ltz p1, :cond_47

    goto :goto_48

    :cond_47
    const/4 v4, 0x0

    :cond_48
    :goto_48
    return v4
.end method

.method public final b(IJ)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->t:Z

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(I)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    const/4 v3, 0x0

    if-nez v2, :cond_18

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->c()V

    :cond_16
    move-object v4, v3

    goto :goto_2b

    :cond_18
    move-object v4, v3

    :goto_19
    if-eqz v2, :cond_2b

    iget v5, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    if-ne v5, p1, :cond_25

    iget-boolean v5, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->i:Z

    if-eqz v5, :cond_25

    move-object v4, v2

    goto :goto_28

    :cond_25
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->c()V

    :goto_28
    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    goto :goto_19

    :cond_2b
    :goto_2b
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-ne p1, v4, :cond_33

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eq p1, v2, :cond_4b

    :cond_33
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v2, p1

    const/4 v5, 0x0

    :goto_37
    if-ge v5, v2, :cond_41

    aget-object v6, p1, v5

    invoke-interface {v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->l()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_41
    new-array p1, v0, [Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    :cond_4b
    if-eqz v4, :cond_6a

    iput-object v3, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    invoke-virtual {p0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-boolean v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->j:Z

    if-eqz v0, :cond_63

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    invoke-interface {p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;->b(J)J

    move-result-wide p1

    move-wide p2, p1

    :cond_63
    invoke-virtual {p0, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(J)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b()V

    goto :goto_73

    :cond_6a
    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    invoke-virtual {p0, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(J)V

    :goto_73
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method public final b()V
    .registers 8

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->i:Z

    if-nez v1, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;->a()J

    move-result-wide v0

    :goto_f
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1a

    invoke-virtual {p0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->c(Z)V

    goto :goto_3d

    :cond_1a
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-wide v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    invoke-virtual {v2, v5, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/c;

    invoke-virtual {v5, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->a(J)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->c(Z)V

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-boolean v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->l:Z

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    invoke-interface {v0, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;->a(J)Z

    goto :goto_3d

    :cond_38
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->l:Z

    :goto_3d
    return-void
.end method

.method public final b(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-nez v0, :cond_8

    const-wide/32 v0, 0x3938700

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a()J

    move-result-wide v0

    :goto_c
    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

    invoke-virtual {v0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a(J)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, p2, :cond_24

    aget-object v1, p1, v0

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    invoke-interface {v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_24
    return-void
.end method

.method public final b(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v5, v4

    if-ge v2, v5, :cond_5c

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->a()I

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v5, 0x0

    :goto_1d
    aput-boolean v5, v0, v2

    iget-object v5, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2b

    add-int/lit8 v3, v3, 0x1

    :cond_2b
    aget-boolean v6, v0, v2

    if-eqz v6, :cond_59

    if-eqz v5, :cond_43

    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->h()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->n()Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;

    move-result-object v5

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;

    aget-object v6, v6, v2

    if-ne v5, v6, :cond_59

    :cond_43
    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    if-ne v4, v5, :cond_53

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    invoke-virtual {v5, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    iput-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    :cond_53
    invoke-virtual {p0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/n;)V

    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->l()V

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_5c
    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0, v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a([ZI)V

    return-void
.end method

.method public final b(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    const/4 v1, 0x1

    if-nez v0, :cond_d

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->z:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->A:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;

    return-void

    :cond_d
    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;)Landroid/util/Pair;

    move-result-object v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-nez v0, :cond_3a

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    const-wide/16 v6, 0x0

    invoke-direct {p1, v5, v6, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    invoke-virtual {v0, v4, v1, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    invoke-direct {p1, v5, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    invoke-virtual {p0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(I)V

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Z)V

    return-void

    :cond_3a
    iget-wide v6, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;->c:J

    cmp-long p1, v6, v2

    if-nez p1, :cond_42

    const/4 p1, 0x1

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    :goto_43
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :try_start_53
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->a:I

    if-ne v2, v3, :cond_75

    const-wide/16 v8, 0x3e8

    div-long v10, v6, v8

    iget-wide v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->c:J

    div-long/2addr v12, v8
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_91

    cmp-long v0, v10, v12

    if-nez v0, :cond_75

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    invoke-direct {v0, v2, v6, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_75
    :try_start_75
    invoke-virtual {p0, v2, v6, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(IJ)J

    move-result-wide v8
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_91

    cmp-long v0, v6, v8

    if-eqz v0, :cond_7e

    goto :goto_7f

    :cond_7e
    const/4 v1, 0x0

    :goto_7f
    or-int/2addr p1, v1

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    invoke-direct {v0, v2, v8, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_91
    move-exception v0

    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    invoke-direct {v1, v2, v6, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    invoke-virtual {v2, v4, p1, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    throw v0
.end method

.method public final b(Ljava/lang/Object;I)V
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$d;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$d;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;Ljava/lang/Object;Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b(Z)V
    .registers 10

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->t:Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

    iget-boolean v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a:Z

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->o()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a(J)V

    iput-boolean v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a:Z

    :cond_18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    const-wide/32 v2, 0x3938700

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v3, :cond_3e

    aget-object v5, v2, v4

    :try_start_2a
    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/n;)V

    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->l()V
    :try_end_30
    .catch Lcom/fyber/inneractive/sdk/player/exoplayer2/d; {:try_start_2a .. :try_end_30} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_30} :catch_31

    goto :goto_3b

    :catch_31
    move-exception v5

    goto :goto_34

    :catch_33
    move-exception v5

    :goto_34
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_3e
    new-array v2, v0, [Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    iput-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v2, :cond_47

    goto :goto_49

    :cond_47
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    :goto_49
    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->c(Z)V

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;

    if-eqz p1, :cond_60

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;->b()V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;

    :cond_60
    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    :cond_62
    return-void
.end method

.method public final c()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v0, :cond_29

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->i:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-ne v1, v0, :cond_29

    :cond_10
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->g()Z

    move-result v3

    if-nez v3, :cond_1f

    return-void

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_22
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;->e()V

    :cond_29
    return-void
.end method

.method public final c(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->u:Z

    if-eq v0, p1, :cond_11

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->u:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public final d()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Z)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/c;

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->a(Z)V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(I)V

    monitor-enter p0

    :try_start_d
    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->r:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method

.method public final d(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->t:Z

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->s:Z

    if-nez p1, :cond_11

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->i()V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Z)V

    goto :goto_27

    :cond_11
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->v:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_20

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_27

    :cond_20
    if-ne p1, v1, :cond_27

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_27
    :goto_27
    return-void
.end method

.method public final e()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_7
    if-eqz v0, :cond_ec

    iget-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->i:Z

    if-nez v3, :cond_f

    goto/16 :goto_ec

    :cond_f
    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->d()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e3

    const/4 v3, 0x0

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eq v2, v5, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;)V

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-object v3, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v6, v6

    new-array v6, v6, [Z

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-wide v7, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->c:J

    invoke-virtual {v5, v7, v8, v2, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a(JZ[Z)J

    move-result-wide v7

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget-wide v9, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->c:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iput-wide v7, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->c:J

    invoke-virtual {p0, v7, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(J)V

    :cond_4b
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_52
    iget-object v8, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v9, v8

    if-ge v5, v9, :cond_9c

    aget-object v8, v8, v5

    invoke-interface {v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->a()I

    move-result v9

    if-eqz v9, :cond_61

    const/4 v9, 0x1

    goto :goto_62

    :cond_61
    const/4 v9, 0x0

    :goto_62
    aput-boolean v9, v2, v5

    iget-object v9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v9, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;

    aget-object v9, v9, v5

    if-eqz v9, :cond_6e

    add-int/lit8 v7, v7, 0x1

    :cond_6e
    aget-boolean v10, v2, v5

    if-eqz v10, :cond_99

    invoke-interface {v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->n()Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;

    move-result-object v10

    if-eq v9, v10, :cond_90

    iget-object v10, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    if-ne v8, v10, :cond_89

    if-nez v9, :cond_85

    iget-object v9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

    iget-object v10, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    invoke-virtual {v9, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;)V

    :cond_85
    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    :cond_89
    invoke-virtual {p0, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/n;)V

    invoke-interface {v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->l()V

    goto :goto_99

    :cond_90
    aget-boolean v9, v6, v5

    if-eqz v9, :cond_99

    iget-wide v9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    invoke-interface {v8, v9, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->a(J)V

    :cond_99
    :goto_99
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    :cond_9c
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0, v2, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a([ZI)V

    goto :goto_d6

    :cond_ac
    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    :goto_b0
    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->c()V

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    goto :goto_b0

    :cond_b8
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iput-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->i:Z

    if-eqz v1, :cond_d6

    iget-wide v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->g:J

    iget-wide v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    invoke-virtual {v0, v5, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a(J)J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->n:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v3, v3

    new-array v3, v3, [Z

    invoke-virtual {v2, v0, v1, v4, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a(JZ[Z)J

    :cond_d6
    :goto_d6
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->i()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_e3
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-ne v0, v3, :cond_e8

    const/4 v2, 0x0

    :cond_e8
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    goto/16 :goto_7

    :cond_ec
    :goto_ec
    return-void
.end method

.method public final f()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->t:Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

    iget-boolean v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a:Z

    if-nez v2, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->c:J

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a:Z

    :cond_12
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v2, v1

    :goto_15
    if-ge v0, v2, :cond_1f

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_1f
    return-void
.end method

.method public final g()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Z)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/c;

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->a(Z)V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(I)V

    return-void
.end method

.method public final h()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->o()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a(J)V

    iput-boolean v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a:Z

    :cond_10
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v1, v0

    :goto_13
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/n;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    const-string v0, "ExoPlayerImplInternal"

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_8
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_b6

    return v4

    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/fyber/inneractive/sdk/player/exoplayer2/e$c;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a([Lcom/fyber/inneractive/sdk/player/exoplayer2/e$c;)V

    return v5

    :pswitch_16
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->e()V

    return v5

    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-eqz v6, :cond_2a

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    if-eq v6, p1, :cond_27

    goto :goto_2a

    :cond_27
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b()V

    :cond_2a
    :goto_2a
    return v5

    :pswitch_2b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;)V

    return v5

    :pswitch_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Landroid/util/Pair;)V

    return v5

    :pswitch_3b
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->d()V

    return v5

    :pswitch_3f
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->g()V

    return v5

    :pswitch_43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/m;)V

    return v5

    :pswitch_4b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;)V

    return v5

    :pswitch_53
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a()V

    return v5

    :pswitch_57
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_5d

    const/4 p1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 p1, 0x0

    :goto_5e
    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->d(Z)V

    return v5

    :pswitch_62
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6c

    const/4 p1, 0x1

    goto :goto_6d

    :cond_6c
    const/4 p1, 0x0

    :goto_6d
    invoke-virtual {p0, v6, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;Z)V
    :try_end_70
    .catch Lcom/fyber/inneractive/sdk/player/exoplayer2/d; {:try_start_8 .. :try_end_70} :catch_a2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_70} :catch_8a
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_70} :catch_71

    return v5

    :catch_71
    move-exception p1

    const-string v4, "Internal runtime error."

    invoke-static {v0, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    new-instance v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    const/4 v6, 0x2

    invoke-direct {v4, v6, v2, p1, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->g()V

    return v5

    :catch_8a
    move-exception p1

    const-string v6, "Source error."

    invoke-static {v0, v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    new-instance v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    invoke-direct {v6, v4, v2, p1, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v3, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->g()V

    return v5

    :catch_a2
    move-exception p1

    const-string v1, "Renderer error."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->h:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->g()V

    return v5

    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_62
        :pswitch_57
        :pswitch_53
        :pswitch_4b
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_1a
        :pswitch_16
        :pswitch_e
    .end packed-switch
.end method

.method public final i()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;->f()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->b(J)V

    goto :goto_40

    :cond_18
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/n;->b()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

    invoke-virtual {v2, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a(J)V

    goto :goto_38

    :cond_30
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    :goto_38
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->B:J

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a(J)J

    move-result-wide v0

    :goto_40
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iput-wide v0, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->y:J

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_57

    move-wide v3, v1

    goto :goto_5f

    :cond_57
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;->d()J

    move-result-wide v3

    :goto_5f
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    cmp-long v5, v3, v1

    if-nez v5, :cond_74

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->F:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->E:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$a;->f:I

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v1

    iget-wide v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->d:J

    :cond_74
    iput-wide v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->d:J

    return-void
.end method
