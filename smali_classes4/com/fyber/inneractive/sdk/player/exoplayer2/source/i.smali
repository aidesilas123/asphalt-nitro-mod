###### Class com.fyber.inneractive.sdk.player.exoplayer2.source.i (com.fyber.inneractive.sdk.player.exoplayer2.source.i)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a<",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;",
        ">;",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$d;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:J

.field public C:J

.field public D:J

.field public E:I

.field public F:Z

.field public G:Z

.field public final a:Landroid/net/Uri;

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

.field public final c:I

.field public final d:Landroid/os/Handler;

.field public final e:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l$a;

.field public final f:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;

.field public final g:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/b;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

.field public final j:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;

.field public final k:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/d;

.field public final l:Ljava/lang/Runnable;

.field public final m:Ljava/lang/Runnable;

.field public final n:Landroid/os/Handler;

.field public final o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m$a;

.field public q:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;

.field public x:J

.field public y:[Z

.field public z:[Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;ILandroid/os/Handler;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l$a;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/b;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iput p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->c:I

    iput-object p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->d:Landroid/os/Handler;

    iput-object p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l$a;

    iput-object p7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;

    iput-object p8, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/b;

    iput-object p9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->h:Ljava/lang/String;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;

    invoke-direct {p1, p3, p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;-><init>([Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/d;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/d;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/d;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$a;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->l:Ljava/lang/Runnable;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$b;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$b;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->m:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->n:Landroid/os/Handler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->D:J

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->B:J

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;JJLjava/io/IOException;)I
    .registers 11

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;

    iget-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->B:J

    const-wide/16 p4, -0x1

    cmp-long v0, p2, p4

    if-nez v0, :cond_e

    iget-wide p2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;->i:J

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->B:J

    :cond_e
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->d:Landroid/os/Handler;

    if-eqz p2, :cond_1e

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l$a;

    if-eqz p3, :cond_1e

    new-instance p3, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/k;

    invoke-direct {p3, p0, p6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/k;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;Ljava/io/IOException;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    instance-of p2, p6, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/t;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_45

    instance-of p2, p6, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/v;

    if-nez p2, :cond_45

    instance-of p2, p6, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/t;

    if-eqz p2, :cond_43

    invoke-virtual {p6}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_43

    invoke-virtual {p6}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/net/MalformedURLException;

    if-nez p2, :cond_45

    invoke-virtual {p6}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/net/UnknownHostException;

    if-eqz p2, :cond_43

    goto :goto_45

    :cond_43
    const/4 p2, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 p2, 0x1

    :goto_46
    if-eqz p2, :cond_4a

    const/4 p1, 0x3

    goto :goto_a9

    :cond_4a
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->g()I

    move-result p2

    iget p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->E:I

    if-le p2, p6, :cond_54

    const/4 p2, 0x1

    goto :goto_55

    :cond_54
    const/4 p2, 0x0

    :goto_55
    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->B:J

    cmp-long p6, v1, p4

    if-nez p6, :cond_a2

    iget-object p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;

    if-eqz p4, :cond_6d

    invoke-interface {p4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;->c()J

    move-result-wide p4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p6, p4, v1

    if-eqz p6, :cond_6d

    goto :goto_a2

    :cond_6d
    const-wide/16 p4, 0x0

    iput-wide p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->C:J

    iget-boolean p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->s:Z

    iput-boolean p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->u:Z

    iget-object p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {p6}, Landroid/util/SparseArray;->size()I

    move-result p6

    const/4 v1, 0x0

    :goto_7c
    if-ge v1, p6, :cond_9a

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    iget-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->s:Z

    if-eqz v3, :cond_93

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->y:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_91

    goto :goto_93

    :cond_91
    const/4 v3, 0x0

    goto :goto_94

    :cond_93
    :goto_93
    const/4 v3, 0x1

    :goto_94
    invoke-virtual {v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_9a
    iget-object p3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/l;

    iput-wide p4, p3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/l;->a:J

    iput-wide p4, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;->h:J

    iput-boolean v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;->g:Z

    :cond_a2
    :goto_a2
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->g()I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->E:I

    move p1, p2

    :goto_a9
    return p1
.end method

.method public a()J
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->v:I

    if-nez v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->d()J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public a([Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;[Z[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;[ZJ)J
    .registers 12

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->s:Z

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3e

    aget-object v2, p3, v1

    if-eqz v2, :cond_3b

    aget-object v2, p1, v1

    if-eqz v2, :cond_17

    aget-boolean v2, p2, v1

    if-nez v2, :cond_3b

    :cond_17
    aget-object v2, p3, v1

    check-cast v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$e;

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$e;->a:I

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->y:[Z

    aget-boolean v4, v4, v2

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->v:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->v:I

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->y:[Z

    aput-boolean v0, v3, v2

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;->b()V

    const/4 v2, 0x0

    aput-object v2, p3, v1

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3e
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_40
    array-length v2, p1

    if-ge p2, v2, :cond_8d

    aget-object v2, p3, p2

    if-nez v2, :cond_8a

    aget-object v2, p1, p2

    if-eqz v2, :cond_8a

    aget-object v1, p1, p2

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;->f()I

    move-result v2

    if-ne v2, v3, :cond_55

    const/4 v2, 0x1

    goto :goto_56

    :cond_55
    const/4 v2, 0x0

    :goto_56
    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    invoke-interface {v1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;->b(I)I

    move-result v2

    if-nez v2, :cond_61

    const/4 v2, 0x1

    goto :goto_62

    :cond_61
    const/4 v2, 0x0

    :goto_62
    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->w:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;->b()Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;)I

    move-result v1

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->y:[Z

    aget-boolean v2, v2, v1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->v:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->v:I

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->y:[Z

    aput-boolean v3, v2, v1

    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$e;

    invoke-direct {v2, p0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$e;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;I)V

    aput-object v2, p3, p2

    aput-boolean v3, p4, p2

    const/4 v1, 0x1

    :cond_8a
    add-int/lit8 p2, p2, 0x1

    goto :goto_40

    :cond_8d
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->t:Z

    if-nez p1, :cond_ae

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_98
    if-ge p2, p1, :cond_ae

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->y:[Z

    aget-boolean v2, v2, p2

    if-nez v2, :cond_ab

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;->b()V

    :cond_ab
    add-int/lit8 p2, p2, 0x1

    goto :goto_98

    :cond_ae
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->v:I

    if-nez p1, :cond_c2

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->u:Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b()Z

    move-result p1

    if-eqz p1, :cond_df

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->a()V

    goto :goto_df

    :cond_c2
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->t:Z

    if-eqz p1, :cond_c9

    if-eqz v1, :cond_df

    goto :goto_cf

    :cond_c9
    const-wide/16 p1, 0x0

    cmp-long v1, p5, p1

    if-eqz v1, :cond_df

    :goto_cf
    invoke-virtual {p0, p5, p6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->b(J)J

    move-result-wide p5

    :goto_d3
    array-length p1, p3

    if-ge v0, p1, :cond_df

    aget-object p1, p3, v0

    if-eqz p1, :cond_dc

    aput-boolean v3, p4, v0

    :cond_dc
    add-int/lit8 v0, v0, 0x1

    goto :goto_d3

    :cond_df
    :goto_df
    iput-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->t:Z

    return-wide p5
.end method

.method public a(II)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;
    .registers 4

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    if-nez p2, :cond_18

    new-instance p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/b;

    invoke-direct {p2, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/b;)V

    iput-object p0, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$d;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    return-object p2
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V
    .registers 3

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m$a;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m$a;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/d;

    monitor-enter p1

    :try_start_5
    iget-boolean v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/d;->a:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_16

    if-eqz v0, :cond_b

    monitor-exit p1

    goto :goto_12

    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/d;->a:Z

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_16

    monitor-exit p1

    :goto_12
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->j()V

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;JJ)V
    .registers 7

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;

    iget-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->B:J

    const-wide/16 p4, -0x1

    cmp-long v0, p2, p4

    if-nez v0, :cond_e

    iget-wide p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;->i:J

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->B:J

    :cond_e
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->F:Z

    iget-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->x:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p1, p3

    if-nez p5, :cond_41

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->h()J

    move-result-wide p1

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p5, p1, p3

    if-nez p5, :cond_29

    const-wide/16 p1, 0x0

    goto :goto_2c

    :cond_29
    const-wide/16 p3, 0x2710

    add-long/2addr p1, p3

    :goto_2c
    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->x:J

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;

    new-instance p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;

    iget-wide p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->x:J

    iget-object p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;

    invoke-interface {p5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;->a()Z

    move-result p5

    invoke-direct {p2, p3, p4, p5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;-><init>(JZ)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;Ljava/lang/Object;)V

    :cond_41
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m$a;

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;

    invoke-virtual {p1, p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/p;)V

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;JJZ)V
    .registers 8

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;

    iget-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->B:J

    const-wide/16 p4, -0x1

    cmp-long v0, p2, p4

    if-nez v0, :cond_e

    iget-wide p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;->i:J

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->B:J

    :cond_e
    if-nez p6, :cond_36

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->v:I

    if-lez p1, :cond_36

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1b
    if-ge p2, p1, :cond_2f

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    iget-object p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->y:[Z

    aget-boolean p4, p4, p2

    invoke-virtual {p3, p4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;->a(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    :cond_2f
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->p:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m$a;

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;

    invoke-virtual {p1, p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/p;)V

    :cond_36
    return-void
.end method

.method public a(J)Z
    .registers 5

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->F:Z

    const/4 p2, 0x0

    if-nez p1, :cond_30

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->s:Z

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->v:I

    if-nez p1, :cond_e

    goto :goto_30

    :cond_e
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/d;

    monitor-enter p1

    :try_start_11
    iget-boolean v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/d;->a:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_2d

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    monitor-exit p1

    goto :goto_1f

    :cond_18
    :try_start_18
    iput-boolean v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/d;->a:Z

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_2d

    monitor-exit p1

    const/4 p2, 0x1

    :goto_1f
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b()Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->j()V

    goto :goto_2c

    :cond_2b
    move v1, p2

    :goto_2c
    return v1

    :catchall_2d
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_30
    :goto_30
    return p2
.end method

.method public b(J)J
    .registers 8

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const-wide/16 p1, 0x0

    :goto_b
    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->C:J

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->i()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-eqz v1, :cond_34

    if-ge v3, v0, :cond_34

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->y:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_31

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    invoke-virtual {v1, p1, p2, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;->a(JZ)Z

    move-result v1

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_34
    if-nez v1, :cond_5d

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->D:J

    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->F:Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->a()V

    goto :goto_5d

    :cond_48
    const/4 v1, 0x0

    :goto_49
    if-ge v1, v0, :cond_5d

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->y:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_5d
    :goto_5d
    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->u:Z

    return-wide p1
.end method

.method public b()Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->w:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;

    return-object v0
.end method

.method public c()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->r:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(J)V
    .registers 3

    return-void
.end method

.method public d()J
    .registers 9

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->F:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_7

    return-wide v1

    :cond_7
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->D:J

    return-wide v0

    :cond_10
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->A:Z

    if-eqz v0, :cond_3b

    const-wide v3, 0x7fffffffffffffffL

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v0, :cond_3f

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->z:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_38

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;->d()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_3b
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->h()J

    move-result-wide v3

    :cond_3f
    cmp-long v0, v3, v1

    if-nez v0, :cond_45

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->C:J

    :cond_45
    return-wide v3
.end method

.method public e()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->c()V

    return-void
.end method

.method public f()J
    .registers 3

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->u:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->u:Z

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->C:J

    return-wide v0

    :cond_a
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final g()I
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_1d

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;

    iget v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->j:I

    iget v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d$c;->i:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    return v2
.end method

.method public final h()J
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_1e

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;->d()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1e
    return-wide v1
.end method

.method public final i()Z
    .registers 6

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->D:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public final j()V
    .registers 10

    new-instance v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/d;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;Landroid/net/Uri;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/d;)V

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->s:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->i()Z

    move-result v0

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->x:J

    const/4 v0, 0x1

    cmp-long v5, v3, v1

    if-eqz v5, :cond_31

    iget-wide v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->D:J

    cmp-long v5, v7, v3

    if-ltz v5, :cond_31

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->F:Z

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->D:J

    return-void

    :cond_31
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;

    iget-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->D:J

    invoke-interface {v3, v4, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;->a(J)J

    move-result-wide v3

    iget-wide v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->D:J

    iget-object v5, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/l;

    iput-wide v3, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/l;->a:J

    iput-wide v7, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;->h:J

    iput-boolean v0, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$c;->g:Z

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->D:J

    :cond_45
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->g()I

    move-result v0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->E:I

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->c:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6c

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->s:Z

    if-eqz v0, :cond_6b

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->B:J

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;

    if-eqz v0, :cond_69

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;->c()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_69

    goto :goto_6b

    :cond_69
    const/4 v0, 0x6

    goto :goto_6c

    :cond_6b
    :goto_6b
    const/4 v0, 0x3

    :cond_6c
    :goto_6c
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-virtual {v1, v6, p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;I)J

    return-void
.end method
