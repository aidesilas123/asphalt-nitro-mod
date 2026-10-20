###### Class com.applovin.exoplayer2.h.t.a (com.applovin.exoplayer2.h.t$a)
.class final Lcom/applovin/exoplayer2/h/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/h/i$a;
.implements Lcom/applovin/exoplayer2/k/w$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/h/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final LW:Lcom/applovin/exoplayer2/h/s;

.field private final LX:Lcom/applovin/exoplayer2/l/g;

.field private final Lq:J

.field private final Mo:Lcom/applovin/exoplayer2/k/z;

.field private final Mp:Lcom/applovin/exoplayer2/e/u;

.field private volatile Mq:Z

.field private Mr:Z

.field private Ms:Lcom/applovin/exoplayer2/e/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Mt:Z

.field final synthetic Mu:Lcom/applovin/exoplayer2/h/t;

.field private final ef:Landroid/net/Uri;

.field private tL:J

.field private tw:Lcom/applovin/exoplayer2/k/l;

.field private final vG:Lcom/applovin/exoplayer2/e/j;

.field private wC:J


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/h/t;Landroid/net/Uri;Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/h/s;Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/l/g;)V
    .registers 7

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t$a;->Mu:Lcom/applovin/exoplayer2/h/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/t$a;->ef:Landroid/net/Uri;

    new-instance p1, Lcom/applovin/exoplayer2/k/z;

    invoke-direct {p1, p3}, Lcom/applovin/exoplayer2/k/z;-><init>(Lcom/applovin/exoplayer2/k/i;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t$a;->Mo:Lcom/applovin/exoplayer2/k/z;

    iput-object p4, p0, Lcom/applovin/exoplayer2/h/t$a;->LW:Lcom/applovin/exoplayer2/h/s;

    iput-object p5, p0, Lcom/applovin/exoplayer2/h/t$a;->vG:Lcom/applovin/exoplayer2/e/j;

    iput-object p6, p0, Lcom/applovin/exoplayer2/h/t$a;->LX:Lcom/applovin/exoplayer2/l/g;

    new-instance p1, Lcom/applovin/exoplayer2/e/u;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/u;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t$a;->Mp:Lcom/applovin/exoplayer2/e/u;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/t$a;->Mr:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/t$a;->wC:J

    invoke-static {}, Lcom/applovin/exoplayer2/h/j;->kV()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/t$a;->Lq:J

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/h/t$a;->aX(J)Lcom/applovin/exoplayer2/k/l;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t$a;->tw:Lcom/applovin/exoplayer2/k/l;

    return-void
.end method

.method private aX(J)Lcom/applovin/exoplayer2/k/l;
    .registers 5

    new-instance v0, Lcom/applovin/exoplayer2/k/l$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/k/l$a;-><init>()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/t$a;->ef:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/k/l$a;->e(Landroid/net/Uri;)Lcom/applovin/exoplayer2/k/l$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/k/l$a;->bl(J)Lcom/applovin/exoplayer2/k/l$a;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/t$a;->Mu:Lcom/applovin/exoplayer2/h/t;

    invoke-static {p2}, Lcom/applovin/exoplayer2/h/t;->f(Lcom/applovin/exoplayer2/h/t;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/k/l$a;->aL(Ljava/lang/String;)Lcom/applovin/exoplayer2/k/l$a;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/k/l$a;->fi(I)Lcom/applovin/exoplayer2/k/l$a;

    move-result-object p1

    invoke-static {}, Lcom/applovin/exoplayer2/h/t;->lp()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/k/l$a;->d(Ljava/util/Map;)Lcom/applovin/exoplayer2/k/l$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/k/l$a;->oj()Lcom/applovin/exoplayer2/k/l;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/h/t$a;)Lcom/applovin/exoplayer2/k/z;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/h/t$a;->Mo:Lcom/applovin/exoplayer2/k/z;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/h/t$a;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/h/t$a;->w(JJ)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/h/t$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/t$a;->Lq:J

    return-wide v0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/h/t$a;)Lcom/applovin/exoplayer2/k/l;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/h/t$a;->tw:Lcom/applovin/exoplayer2/k/l;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/h/t$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/t$a;->tL:J

    return-wide v0
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/h/t$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/t$a;->wC:J

    return-wide v0
.end method

.method private w(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t$a;->Mp:Lcom/applovin/exoplayer2/e/u;

    iput-wide p1, v0, Lcom/applovin/exoplayer2/e/u;->uc:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/h/t$a;->tL:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/t$a;->Mr:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/t$a;->Mt:Z

    return-void
.end method


# virtual methods
.method public ab(Lcom/applovin/exoplayer2/l/y;)V
    .registers 11

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t$a;->Mt:Z

    if-nez v0, :cond_7

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/t$a;->tL:J

    goto :goto_13

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t$a;->Mu:Lcom/applovin/exoplayer2/h/t;

    invoke-static {v0}, Lcom/applovin/exoplayer2/h/t;->e(Lcom/applovin/exoplayer2/h/t;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/exoplayer2/h/t$a;->tL:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_13
    move-wide v3, v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v6

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t$a;->Ms:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v2, p1, v6}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/t$a;->Mt:Z

    return-void
.end method

.method public lq()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/t$a;->Mq:Z

    return-void
.end method

.method public lr()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_11a

    iget-boolean v3, v1, Lcom/applovin/exoplayer2/h/t$a;->Mq:Z

    if-nez v3, :cond_11a

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    :try_start_d
    iget-object v6, v1, Lcom/applovin/exoplayer2/h/t$a;->Mp:Lcom/applovin/exoplayer2/e/u;

    iget-wide v13, v6, Lcom/applovin/exoplayer2/e/u;->uc:J

    invoke-direct {v1, v13, v14}, Lcom/applovin/exoplayer2/h/t$a;->aX(J)Lcom/applovin/exoplayer2/k/l;

    move-result-object v6

    iput-object v6, v1, Lcom/applovin/exoplayer2/h/t$a;->tw:Lcom/applovin/exoplayer2/k/l;

    iget-object v7, v1, Lcom/applovin/exoplayer2/h/t$a;->Mo:Lcom/applovin/exoplayer2/k/z;

    invoke-virtual {v7, v6}, Lcom/applovin/exoplayer2/k/z;->a(Lcom/applovin/exoplayer2/k/l;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/applovin/exoplayer2/h/t$a;->wC:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_26

    add-long/2addr v6, v13

    iput-wide v6, v1, Lcom/applovin/exoplayer2/h/t$a;->wC:J

    :cond_26
    iget-object v6, v1, Lcom/applovin/exoplayer2/h/t$a;->Mu:Lcom/applovin/exoplayer2/h/t;

    iget-object v7, v1, Lcom/applovin/exoplayer2/h/t$a;->Mo:Lcom/applovin/exoplayer2/k/z;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/k/z;->kT()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/applovin/exoplayer2/g/d/b;->c(Ljava/util/Map;)Lcom/applovin/exoplayer2/g/d/b;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t;Lcom/applovin/exoplayer2/g/d/b;)Lcom/applovin/exoplayer2/g/d/b;

    iget-object v6, v1, Lcom/applovin/exoplayer2/h/t$a;->Mo:Lcom/applovin/exoplayer2/k/z;

    iget-object v7, v1, Lcom/applovin/exoplayer2/h/t$a;->Mu:Lcom/applovin/exoplayer2/h/t;

    invoke-static {v7}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t;)Lcom/applovin/exoplayer2/g/d/b;

    move-result-object v7

    if-eqz v7, :cond_68

    iget-object v7, v1, Lcom/applovin/exoplayer2/h/t$a;->Mu:Lcom/applovin/exoplayer2/h/t;

    invoke-static {v7}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t;)Lcom/applovin/exoplayer2/g/d/b;

    move-result-object v7

    iget v7, v7, Lcom/applovin/exoplayer2/g/d/b;->JD:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_68

    new-instance v6, Lcom/applovin/exoplayer2/h/i;

    iget-object v7, v1, Lcom/applovin/exoplayer2/h/t$a;->Mo:Lcom/applovin/exoplayer2/k/z;

    iget-object v8, v1, Lcom/applovin/exoplayer2/h/t$a;->Mu:Lcom/applovin/exoplayer2/h/t;

    invoke-static {v8}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t;)Lcom/applovin/exoplayer2/g/d/b;

    move-result-object v8

    iget v8, v8, Lcom/applovin/exoplayer2/g/d/b;->JD:I

    invoke-direct {v6, v7, v8, v1}, Lcom/applovin/exoplayer2/h/i;-><init>(Lcom/applovin/exoplayer2/k/i;ILcom/applovin/exoplayer2/h/i$a;)V

    iget-object v7, v1, Lcom/applovin/exoplayer2/h/t$a;->Mu:Lcom/applovin/exoplayer2/h/t;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/h/t;->lf()Lcom/applovin/exoplayer2/e/x;

    move-result-object v7

    iput-object v7, v1, Lcom/applovin/exoplayer2/h/t$a;->Ms:Lcom/applovin/exoplayer2/e/x;

    invoke-static {}, Lcom/applovin/exoplayer2/h/t;->lo()Lcom/applovin/exoplayer2/v;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    :cond_68
    move-object v8, v6

    iget-object v7, v1, Lcom/applovin/exoplayer2/h/t$a;->LW:Lcom/applovin/exoplayer2/h/s;

    iget-object v9, v1, Lcom/applovin/exoplayer2/h/t$a;->ef:Landroid/net/Uri;

    iget-object v6, v1, Lcom/applovin/exoplayer2/h/t$a;->Mo:Lcom/applovin/exoplayer2/k/z;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/k/z;->kT()Ljava/util/Map;

    move-result-object v10

    iget-wide v11, v1, Lcom/applovin/exoplayer2/h/t$a;->wC:J

    iget-object v15, v1, Lcom/applovin/exoplayer2/h/t$a;->vG:Lcom/applovin/exoplayer2/e/j;

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide v4, v13

    move-wide/from16 v13, v16

    invoke-interface/range {v7 .. v15}, Lcom/applovin/exoplayer2/h/s;->a(Lcom/applovin/exoplayer2/k/g;Landroid/net/Uri;Ljava/util/Map;JJLcom/applovin/exoplayer2/e/j;)V

    iget-object v6, v1, Lcom/applovin/exoplayer2/h/t$a;->Mu:Lcom/applovin/exoplayer2/h/t;

    invoke-static {v6}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t;)Lcom/applovin/exoplayer2/g/d/b;

    move-result-object v6

    if-eqz v6, :cond_8d

    iget-object v6, v1, Lcom/applovin/exoplayer2/h/t$a;->LW:Lcom/applovin/exoplayer2/h/s;

    invoke-interface {v6}, Lcom/applovin/exoplayer2/h/s;->kK()V

    :cond_8d
    iget-boolean v6, v1, Lcom/applovin/exoplayer2/h/t$a;->Mr:Z

    if-eqz v6, :cond_9a

    iget-object v6, v1, Lcom/applovin/exoplayer2/h/t$a;->LW:Lcom/applovin/exoplayer2/h/s;

    iget-wide v7, v1, Lcom/applovin/exoplayer2/h/t$a;->tL:J

    invoke-interface {v6, v4, v5, v7, v8}, Lcom/applovin/exoplayer2/h/s;->o(JJ)V

    iput-boolean v0, v1, Lcom/applovin/exoplayer2/h/t$a;->Mr:Z

    :cond_9a
    :goto_9a
    move-wide v13, v4

    :cond_9b
    if-nez v2, :cond_da

    iget-boolean v4, v1, Lcom/applovin/exoplayer2/h/t$a;->Mq:Z
    :try_end_9f
    .catchall {:try_start_d .. :try_end_9f} :catchall_fb

    if-nez v4, :cond_da

    :try_start_a1
    iget-object v4, v1, Lcom/applovin/exoplayer2/h/t$a;->LX:Lcom/applovin/exoplayer2/l/g;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/g;->oP()V
    :try_end_a6
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_a6} :catch_d4
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_fb

    :try_start_a6
    iget-object v4, v1, Lcom/applovin/exoplayer2/h/t$a;->LW:Lcom/applovin/exoplayer2/h/s;

    iget-object v5, v1, Lcom/applovin/exoplayer2/h/t$a;->Mp:Lcom/applovin/exoplayer2/e/u;

    invoke-interface {v4, v5}, Lcom/applovin/exoplayer2/h/s;->a(Lcom/applovin/exoplayer2/e/u;)I

    move-result v2

    iget-object v4, v1, Lcom/applovin/exoplayer2/h/t$a;->LW:Lcom/applovin/exoplayer2/h/s;

    invoke-interface {v4}, Lcom/applovin/exoplayer2/h/s;->kL()J

    move-result-wide v4

    iget-object v6, v1, Lcom/applovin/exoplayer2/h/t$a;->Mu:Lcom/applovin/exoplayer2/h/t;

    invoke-static {v6}, Lcom/applovin/exoplayer2/h/t;->b(Lcom/applovin/exoplayer2/h/t;)J

    move-result-wide v6

    add-long/2addr v6, v13

    cmp-long v8, v4, v6

    if-lez v8, :cond_9b

    iget-object v6, v1, Lcom/applovin/exoplayer2/h/t$a;->LX:Lcom/applovin/exoplayer2/l/g;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/g;->oO()Z

    iget-object v6, v1, Lcom/applovin/exoplayer2/h/t$a;->Mu:Lcom/applovin/exoplayer2/h/t;

    invoke-static {v6}, Lcom/applovin/exoplayer2/h/t;->d(Lcom/applovin/exoplayer2/h/t;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Lcom/applovin/exoplayer2/h/t$a;->Mu:Lcom/applovin/exoplayer2/h/t;

    invoke-static {v7}, Lcom/applovin/exoplayer2/h/t;->c(Lcom/applovin/exoplayer2/h/t;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9a

    :catch_d4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_da
    .catchall {:try_start_a6 .. :try_end_da} :catchall_fb

    :cond_da
    if-ne v2, v3, :cond_de

    const/4 v2, 0x0

    goto :goto_f4

    :cond_de
    iget-object v3, v1, Lcom/applovin/exoplayer2/h/t$a;->LW:Lcom/applovin/exoplayer2/h/s;

    invoke-interface {v3}, Lcom/applovin/exoplayer2/h/s;->kL()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_f4

    iget-object v3, v1, Lcom/applovin/exoplayer2/h/t$a;->Mp:Lcom/applovin/exoplayer2/e/u;

    iget-object v4, v1, Lcom/applovin/exoplayer2/h/t$a;->LW:Lcom/applovin/exoplayer2/h/s;

    invoke-interface {v4}, Lcom/applovin/exoplayer2/h/s;->kL()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/applovin/exoplayer2/e/u;->uc:J

    :cond_f4
    :goto_f4
    iget-object v3, v1, Lcom/applovin/exoplayer2/h/t$a;->Mo:Lcom/applovin/exoplayer2/k/z;

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/ai;->b(Lcom/applovin/exoplayer2/k/i;)V

    goto/16 :goto_4

    :catchall_fb
    move-exception v0

    if-eq v2, v3, :cond_114

    iget-object v2, v1, Lcom/applovin/exoplayer2/h/t$a;->LW:Lcom/applovin/exoplayer2/h/s;

    invoke-interface {v2}, Lcom/applovin/exoplayer2/h/s;->kL()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_114

    iget-object v2, v1, Lcom/applovin/exoplayer2/h/t$a;->Mp:Lcom/applovin/exoplayer2/e/u;

    iget-object v3, v1, Lcom/applovin/exoplayer2/h/t$a;->LW:Lcom/applovin/exoplayer2/h/s;

    invoke-interface {v3}, Lcom/applovin/exoplayer2/h/s;->kL()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/applovin/exoplayer2/e/u;->uc:J

    :cond_114
    iget-object v2, v1, Lcom/applovin/exoplayer2/h/t$a;->Mo:Lcom/applovin/exoplayer2/k/z;

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ai;->b(Lcom/applovin/exoplayer2/k/i;)V

    throw v0

    :cond_11a
    return-void
.end method
