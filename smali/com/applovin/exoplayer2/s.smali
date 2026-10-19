###### Class com.applovin.exoplayer2.s (com.applovin.exoplayer2.s)
.class final Lcom/applovin/exoplayer2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/applovin/exoplayer2/ah$d;
.implements Lcom/applovin/exoplayer2/ao$a;
.implements Lcom/applovin/exoplayer2/h/n$a;
.implements Lcom/applovin/exoplayer2/j/j$a;
.implements Lcom/applovin/exoplayer2/m$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/s$b;,
        Lcom/applovin/exoplayer2/s$a;,
        Lcom/applovin/exoplayer2/s$c;,
        Lcom/applovin/exoplayer2/s$f;,
        Lcom/applovin/exoplayer2/s$g;,
        Lcom/applovin/exoplayer2/s$e;,
        Lcom/applovin/exoplayer2/s$d;
    }
.end annotation


# instance fields
.field private final U:Lcom/applovin/exoplayer2/ba$c;

.field private final aT:J

.field private final aU:Z

.field private final bB:[Lcom/applovin/exoplayer2/ar;

.field private final bC:Lcom/applovin/exoplayer2/j/j;

.field private final bE:Lcom/applovin/exoplayer2/s$e;

.field private final bI:Lcom/applovin/exoplayer2/ba$a;

.field private final bO:Lcom/applovin/exoplayer2/k/d;

.field private final bR:Lcom/applovin/exoplayer2/l/d;

.field private bS:I

.field private bT:Z

.field private bY:Lcom/applovin/exoplayer2/av;

.field private final bz:Lcom/applovin/exoplayer2/j/k;

.field private cA:Z

.field private cB:Z

.field private cC:Z

.field private cD:Z

.field private cE:I

.field private cF:Lcom/applovin/exoplayer2/s$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cG:J

.field private cH:I

.field private cI:Z

.field private cJ:Lcom/applovin/exoplayer2/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cK:J

.field private cd:Lcom/applovin/exoplayer2/al;

.field private final cj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/exoplayer2/ar;",
            ">;"
        }
    .end annotation
.end field

.field private final ck:[Lcom/applovin/exoplayer2/as;

.field private final cl:Lcom/applovin/exoplayer2/aa;

.field private final cm:Lcom/applovin/exoplayer2/l/o;

.field private final cn:Landroid/os/HandlerThread;

.field private final co:Landroid/os/Looper;

.field private final cp:Lcom/applovin/exoplayer2/m;

.field private final cq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/applovin/exoplayer2/s$c;",
            ">;"
        }
    .end annotation
.end field

.field private final cr:Lcom/applovin/exoplayer2/af;

.field private final cs:Lcom/applovin/exoplayer2/ah;

.field private final ct:Lcom/applovin/exoplayer2/z;

.field private final cu:J

.field private cv:Lcom/applovin/exoplayer2/s$d;

.field private cw:Z

.field private cx:Z

.field private cy:Z

.field private cz:Z


# direct methods
.method public constructor <init>([Lcom/applovin/exoplayer2/ar;Lcom/applovin/exoplayer2/j/j;Lcom/applovin/exoplayer2/j/k;Lcom/applovin/exoplayer2/aa;Lcom/applovin/exoplayer2/k/d;IZLcom/applovin/exoplayer2/a/a;Lcom/applovin/exoplayer2/av;Lcom/applovin/exoplayer2/z;JZLandroid/os/Looper;Lcom/applovin/exoplayer2/l/d;Lcom/applovin/exoplayer2/s$e;)V
    .registers 28
    .param p8    # Lcom/applovin/exoplayer2/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v8, p16

    iput-object v8, v0, Lcom/applovin/exoplayer2/s;->bE:Lcom/applovin/exoplayer2/s$e;

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    iput-object v2, v0, Lcom/applovin/exoplayer2/s;->bC:Lcom/applovin/exoplayer2/j/j;

    move-object v8, p3

    iput-object v8, v0, Lcom/applovin/exoplayer2/s;->bz:Lcom/applovin/exoplayer2/j/k;

    move-object v9, p4

    iput-object v9, v0, Lcom/applovin/exoplayer2/s;->cl:Lcom/applovin/exoplayer2/aa;

    iput-object v3, v0, Lcom/applovin/exoplayer2/s;->bO:Lcom/applovin/exoplayer2/k/d;

    move/from16 v10, p6

    iput v10, v0, Lcom/applovin/exoplayer2/s;->bS:I

    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/applovin/exoplayer2/s;->bT:Z

    move-object/from16 v10, p9

    iput-object v10, v0, Lcom/applovin/exoplayer2/s;->bY:Lcom/applovin/exoplayer2/av;

    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/applovin/exoplayer2/s;->ct:Lcom/applovin/exoplayer2/z;

    iput-wide v5, v0, Lcom/applovin/exoplayer2/s;->cu:J

    iput-wide v5, v0, Lcom/applovin/exoplayer2/s;->cK:J

    move/from16 v5, p13

    iput-boolean v5, v0, Lcom/applovin/exoplayer2/s;->cx:Z

    iput-object v7, v0, Lcom/applovin/exoplayer2/s;->bR:Lcom/applovin/exoplayer2/l/d;

    invoke-interface {p4}, Lcom/applovin/exoplayer2/aa;->as()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/applovin/exoplayer2/s;->aT:J

    invoke-interface {p4}, Lcom/applovin/exoplayer2/aa;->at()Z

    move-result v5

    iput-boolean v5, v0, Lcom/applovin/exoplayer2/s;->aU:Z

    invoke-static {p3}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/j/k;)Lcom/applovin/exoplayer2/al;

    move-result-object v5

    iput-object v5, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    new-instance v6, Lcom/applovin/exoplayer2/s$d;

    invoke-direct {v6, v5}, Lcom/applovin/exoplayer2/s$d;-><init>(Lcom/applovin/exoplayer2/al;)V

    iput-object v6, v0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    array-length v5, v1

    new-array v5, v5, [Lcom/applovin/exoplayer2/as;

    iput-object v5, v0, Lcom/applovin/exoplayer2/s;->ck:[Lcom/applovin/exoplayer2/as;

    const/4 v5, 0x0

    :goto_57
    array-length v6, v1

    if-ge v5, v6, :cond_6c

    aget-object v6, v1, v5

    invoke-interface {v6, v5}, Lcom/applovin/exoplayer2/ar;->p(I)V

    iget-object v6, v0, Lcom/applovin/exoplayer2/s;->ck:[Lcom/applovin/exoplayer2/as;

    aget-object v8, v1, v5

    invoke-interface {v8}, Lcom/applovin/exoplayer2/ar;->N()Lcom/applovin/exoplayer2/as;

    move-result-object v8

    aput-object v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    :cond_6c
    new-instance v1, Lcom/applovin/exoplayer2/m;

    invoke-direct {v1, p0, v7}, Lcom/applovin/exoplayer2/m;-><init>(Lcom/applovin/exoplayer2/m$a;Lcom/applovin/exoplayer2/l/d;)V

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/aq;->gT()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->cj:Ljava/util/Set;

    new-instance v1, Lcom/applovin/exoplayer2/ba$c;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/ba$c;-><init>()V

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    new-instance v1, Lcom/applovin/exoplayer2/ba$a;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/ba$a;-><init>()V

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p2, p0, v3}, Lcom/applovin/exoplayer2/j/j;->a(Lcom/applovin/exoplayer2/j/j$a;Lcom/applovin/exoplayer2/k/d;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/s;->cI:Z

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/applovin/exoplayer2/af;

    invoke-direct {v2, v4, v1}, Lcom/applovin/exoplayer2/af;-><init>(Lcom/applovin/exoplayer2/a/a;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    new-instance v2, Lcom/applovin/exoplayer2/ah;

    invoke-direct {v2, p0, v4, v1}, Lcom/applovin/exoplayer2/ah;-><init>(Lcom/applovin/exoplayer2/ah$d;Lcom/applovin/exoplayer2/a/a;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/applovin/exoplayer2/s;->cs:Lcom/applovin/exoplayer2/ah;

    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->cn:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->co:Landroid/os/Looper;

    invoke-interface {v7, v1, p0}, Lcom/applovin/exoplayer2/l/d;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/applovin/exoplayer2/l/o;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)J
    .registers 9

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-wide v0, p1, Lcom/applovin/exoplayer2/ba$c;->iK:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3d

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba$c;->dn()Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-boolean p2, p1, Lcom/applovin/exoplayer2/ba$c;->iN:Z

    if-nez p2, :cond_27

    goto :goto_3d

    :cond_27
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba$c;->dm()J

    move-result-wide p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/ba$c;->iK:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba$a;->df()J

    move-result-wide v0

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_3d
    :goto_3d
    return-wide v2
.end method

.method private a(Lcom/applovin/exoplayer2/h/p$a;JZ)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->cs()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_13
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(Lcom/applovin/exoplayer2/h/p$a;JZZ)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bn()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cz:Z

    const/4 v1, 0x2

    if-nez p5, :cond_10

    iget-object p5, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget p5, p5, Lcom/applovin/exoplayer2/al;->gs:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_13

    :cond_10
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/s;->v(I)V

    :cond_13
    iget-object p5, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p5}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object p5

    move-object v2, p5

    :goto_1a
    if-eqz v2, :cond_2c

    iget-object v3, v2, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v3, v3, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/h/o;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_2c

    :cond_27
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    goto :goto_1a

    :cond_2c
    :goto_2c
    const-wide/16 v3, 0x0

    if-nez p4, :cond_3c

    if-ne p5, v2, :cond_3c

    if-eqz v2, :cond_65

    invoke-virtual {v2, p2, p3}, Lcom/applovin/exoplayer2/ad;->q(J)J

    move-result-wide p4

    cmp-long p1, p4, v3

    if-gez p1, :cond_65

    :cond_3c
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length p4, p1

    const/4 p5, 0x0

    :goto_40
    if-ge p5, p4, :cond_4a

    aget-object v5, p1, p5

    invoke-direct {p0, v5}, Lcom/applovin/exoplayer2/s;->d(Lcom/applovin/exoplayer2/ar;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_40

    :cond_4a
    if-eqz v2, :cond_65

    :goto_4c
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object p1

    if-eq p1, v2, :cond_5a

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/af;->cu()Lcom/applovin/exoplayer2/ad;

    goto :goto_4c

    :cond_5a
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ad;)Z

    invoke-virtual {v2, v3, v4}, Lcom/applovin/exoplayer2/ad;->s(J)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bL()V

    :cond_65
    if-eqz v2, :cond_96

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ad;)Z

    iget-boolean p1, v2, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-nez p1, :cond_79

    iget-object p1, v2, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/ae;->v(J)Lcom/applovin/exoplayer2/ae;

    move-result-object p1

    iput-object p1, v2, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    goto :goto_8f

    :cond_79
    iget-boolean p1, v2, Lcom/applovin/exoplayer2/ad;->fw:Z

    if-eqz p1, :cond_8f

    iget-object p1, v2, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {p1, p2, p3}, Lcom/applovin/exoplayer2/h/n;->aQ(J)J

    move-result-wide p1

    iget-object p3, v2, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    iget-wide p4, p0, Lcom/applovin/exoplayer2/s;->aT:J

    sub-long p4, p1, p4

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/s;->aU:Z

    invoke-interface {p3, p4, p5, v2}, Lcom/applovin/exoplayer2/h/n;->d(JZ)V

    move-wide p2, p1

    :cond_8f
    :goto_8f
    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/s;->l(J)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bH()V

    goto :goto_9e

    :cond_96
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/af;->clear()V

    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/s;->l(J)V

    :goto_9e
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/s;->s(Z)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/l/o;->fs(I)Z

    return-wide p2
.end method

.method private a(Lcom/applovin/exoplayer2/ba;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/ba;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/applovin/exoplayer2/h/p$a;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/applovin/exoplayer2/al;->cB()Lcom/applovin/exoplayer2/h/p$a;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_15
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->bT:Z

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ba;->d(Z)I

    move-result v6

    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-object v5, p0, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, v3, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, v0, v4}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    iget p1, v3, Lcom/applovin/exoplayer2/h/o;->gQ:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget v4, v3, Lcom/applovin/exoplayer2/h/o;->gP:I

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/ba$a;->am(I)I

    move-result v0

    if-ne p1, v0, :cond_58

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba$a;->di()J

    move-result-wide v1

    :cond_58
    move-wide v4, v1

    :cond_59
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$g;ZIZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Landroid/util/Pair;
    .registers 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/ba;",
            "Lcom/applovin/exoplayer2/s$g;",
            "ZIZ",
            "Lcom/applovin/exoplayer2/ba$c;",
            "Lcom/applovin/exoplayer2/ba$a;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    iget-object v1, v0, Lcom/applovin/exoplayer2/s$g;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_e

    return-object v9

    :cond_e
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object v10, v7

    goto :goto_17

    :cond_16
    move-object v10, v1

    :goto_17
    :try_start_17
    iget v4, v0, Lcom/applovin/exoplayer2/s$g;->cN:I

    iget-wide v5, v0, Lcom/applovin/exoplayer2/s$g;->di:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_24} :catch_8e

    invoke-virtual {p0, v10}, Lcom/applovin/exoplayer2/ba;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return-object v1

    :cond_2b
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_64

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v2

    iget-boolean v2, v2, Lcom/applovin/exoplayer2/ba$a;->iz:Z

    if-eqz v2, :cond_63

    iget v2, v8, Lcom/applovin/exoplayer2/ba$a;->cN:I

    move-object/from16 v11, p5

    invoke-virtual {v10, v2, v11}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v2

    iget v2, v2, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v3}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_63

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v1

    iget v3, v1, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iget-wide v4, v0, Lcom/applovin/exoplayer2/s$g;->di:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_63
    return-object v1

    :cond_64
    move-object/from16 v11, p5

    if-eqz p2, :cond_8e

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IZLjava/lang/Object;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-virtual {p0, v0, v8}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v3, v0, Lcom/applovin/exoplayer2/ba$a;->cN:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_8e
    :cond_8e
    return-object v9
.end method

.method private a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;
    .registers 24
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object v0, p0

    move-object v2, p1

    move-wide/from16 v5, p4

    iget-boolean v1, v0, Lcom/applovin/exoplayer2/s;->cI:Z

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v3, v1, Lcom/applovin/exoplayer2/al;->cO:J

    cmp-long v1, p2, v3

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/h/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    :goto_1e
    iput-boolean v1, v0, Lcom/applovin/exoplayer2/s;->cI:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bE()V

    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v3, v1, Lcom/applovin/exoplayer2/al;->fB:Lcom/applovin/exoplayer2/h/ad;

    iget-object v4, v1, Lcom/applovin/exoplayer2/al;->fC:Lcom/applovin/exoplayer2/j/k;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->gu:Ljava/util/List;

    iget-object v7, v0, Lcom/applovin/exoplayer2/s;->cs:Lcom/applovin/exoplayer2/ah;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/ah;->cw()Z

    move-result v7

    if-eqz v7, :cond_65

    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    if-nez v1, :cond_3e

    sget-object v3, Lcom/applovin/exoplayer2/h/ad;->NG:Lcom/applovin/exoplayer2/h/ad;

    goto :goto_42

    :cond_3e
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->cj()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v3

    :goto_42
    if-nez v1, :cond_47

    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->bz:Lcom/applovin/exoplayer2/j/k;

    goto :goto_4b

    :cond_47
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v4

    :goto_4b
    iget-object v7, v4, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    invoke-direct {p0, v7}, Lcom/applovin/exoplayer2/s;->a([Lcom/applovin/exoplayer2/j/d;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v7

    if-eqz v1, :cond_61

    iget-object v8, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v9, v8, Lcom/applovin/exoplayer2/ae;->de:J

    cmp-long v11, v9, v5

    if-eqz v11, :cond_61

    invoke-virtual {v8, v5, v6}, Lcom/applovin/exoplayer2/ae;->w(J)Lcom/applovin/exoplayer2/ae;

    move-result-object v8

    iput-object v8, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    :cond_61
    move-object v11, v3

    move-object v12, v4

    move-object v13, v7

    goto :goto_7e

    :cond_65
    iget-object v7, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v7, v7, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {p1, v7}, Lcom/applovin/exoplayer2/h/o;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7b

    sget-object v1, Lcom/applovin/exoplayer2/h/ad;->NG:Lcom/applovin/exoplayer2/h/ad;

    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->bz:Lcom/applovin/exoplayer2/j/k;

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v4

    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    goto :goto_7e

    :cond_7b
    move-object v13, v1

    move-object v11, v3

    move-object v12, v4

    :goto_7e
    if-eqz p8, :cond_87

    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    move/from16 v3, p9

    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/s$d;->y(I)V

    :cond_87
    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bM()J

    move-result-wide v9

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-virtual/range {v1 .. v13}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/h/p$a;JJJJLcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/k;Ljava/util/List;)Lcom/applovin/exoplayer2/al;

    move-result-object v1

    return-object v1
.end method

.method private a([Lcom/applovin/exoplayer2/j/d;)Lcom/applovin/exoplayer2/common/a/s;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/applovin/exoplayer2/j/d;",
            ")",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/g/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/s$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/common/a/s$a;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v3, v1, :cond_29

    aget-object v5, p1, v3

    if-eqz v5, :cond_26

    invoke-interface {v5, v2}, Lcom/applovin/exoplayer2/j/g;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v5

    iget-object v5, v5, Lcom/applovin/exoplayer2/v;->dx:Lcom/applovin/exoplayer2/g/a;

    if-nez v5, :cond_22

    new-instance v5, Lcom/applovin/exoplayer2/g/a;

    new-array v6, v2, [Lcom/applovin/exoplayer2/g/a$a;

    invoke-direct {v5, v6}, Lcom/applovin/exoplayer2/g/a;-><init>([Lcom/applovin/exoplayer2/g/a$a;)V

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/common/a/s$a;->v(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s$a;

    goto :goto_26

    :cond_22
    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/common/a/s$a;->v(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s$a;

    const/4 v4, 0x1

    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_29
    if-eqz v4, :cond_30

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/s$a;->gd()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    goto :goto_34

    :cond_30
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    :goto_34
    return-object p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/s;)Lcom/applovin/exoplayer2/l/o;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    return-object p0
.end method

.method private static a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/al;Lcom/applovin/exoplayer2/s$g;Lcom/applovin/exoplayer2/af;IZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/s$f;
    .registers 38
    .param p2    # Lcom/applovin/exoplayer2/s$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lcom/applovin/exoplayer2/s$f;

    invoke-static {}, Lcom/applovin/exoplayer2/al;->cB()Lcom/applovin/exoplayer2/h/p$a;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/applovin/exoplayer2/s$f;-><init>(Lcom/applovin/exoplayer2/h/p$a;JJZZZ)V

    return-object v0

    :cond_25
    iget-object v12, v8, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v13, v12, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-static {v8, v11}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/al;Lcom/applovin/exoplayer2/ba$a;)Z

    move-result v14

    iget-object v0, v8, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v0

    if-nez v0, :cond_3b

    if-eqz v14, :cond_38

    goto :goto_3b

    :cond_38
    iget-wide v0, v8, Lcom/applovin/exoplayer2/al;->cO:J

    goto :goto_3d

    :cond_3b
    :goto_3b
    iget-wide v0, v8, Lcom/applovin/exoplayer2/al;->de:J

    :goto_3d
    move-wide v15, v0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-eqz v9, :cond_9d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v21, v12

    const/4 v12, -0x1

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$g;ZIZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_6a

    invoke-virtual {v7, v10}, Lcom/applovin/exoplayer2/ba;->d(Z)I

    move-result v0

    move v6, v0

    move-wide v0, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_90

    :cond_6a
    iget-wide v1, v9, Lcom/applovin/exoplayer2/s$g;->di:J

    cmp-long v3, v1, v17

    if-nez v3, :cond_7b

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v6, v0, Lcom/applovin/exoplayer2/ba$a;->cN:I

    move-wide v0, v15

    const/4 v2, 0x0

    goto :goto_87

    :cond_7b
    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v6, -0x1

    :goto_87
    iget v3, v8, Lcom/applovin/exoplayer2/al;->gs:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8e

    const/4 v3, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v3, 0x0

    :goto_8f
    const/4 v4, 0x0

    :goto_90
    move-object/from16 v9, p6

    move/from16 v29, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move v3, v6

    move-object/from16 v6, v21

    goto/16 :goto_14b

    :cond_9d
    move-object/from16 v21, v12

    const/4 v12, -0x1

    iget-object v0, v8, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {v7, v10}, Lcom/applovin/exoplayer2/ba;->d(Z)I

    move-result v0

    :goto_ac
    move-object/from16 v9, p6

    move v3, v0

    move-wide v0, v15

    move-object/from16 v6, v21

    :goto_b2
    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_b6
    const/16 v29, 0x0

    goto/16 :goto_14b

    :cond_ba
    invoke-virtual {v7, v13}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v12, :cond_eb

    iget-object v5, v8, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v13

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IZLjava/lang/Object;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d9

    invoke-virtual {v7, v10}, Lcom/applovin/exoplayer2/ba;->d(Z)I

    move-result v0

    const/4 v4, 0x1

    goto :goto_e0

    :cond_d9
    invoke-virtual {v7, v0, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$a;->cN:I

    const/4 v4, 0x0

    :goto_e0
    move-object/from16 v9, p6

    move v3, v0

    move/from16 v28, v4

    move-wide v0, v15

    move-object/from16 v6, v21

    const/16 v27, 0x0

    goto :goto_b6

    :cond_eb
    cmp-long v0, v15, v17

    if-nez v0, :cond_f6

    invoke-virtual {v7, v13, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$a;->cN:I

    goto :goto_ac

    :cond_f6
    if-eqz v14, :cond_143

    iget-object v0, v8, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    move-object/from16 v6, v21

    iget-object v1, v6, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    iget-object v0, v8, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget v1, v11, Lcom/applovin/exoplayer2/ba$a;->cN:I

    move-object/from16 v9, p6

    invoke-virtual {v0, v1, v9}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    iget-object v1, v8, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget-object v2, v6, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_13a

    invoke-virtual/range {p7 .. p7}, Lcom/applovin/exoplayer2/ba$a;->df()J

    move-result-wide v0

    add-long v4, v15, v0

    invoke-virtual {v7, v13, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v3, v0, Lcom/applovin/exoplayer2/ba$a;->cN:I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v13, v1

    move-wide v0, v2

    goto :goto_13b

    :cond_13a
    move-wide v0, v15

    :goto_13b
    const/4 v3, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    goto :goto_14b

    :cond_143
    move-object/from16 v9, p6

    move-object/from16 v6, v21

    move-wide v0, v15

    const/4 v3, -0x1

    goto/16 :goto_b2

    :goto_14b
    if-eq v3, v12, :cond_16b

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object/from16 v2, p3

    move-wide/from16 v25, v17

    goto :goto_16f

    :cond_16b
    move-object/from16 v2, p3

    move-wide/from16 v25, v0

    :goto_16f
    invoke-virtual {v2, v7, v13, v0, v1}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object v2

    iget v3, v2, Lcom/applovin/exoplayer2/h/o;->LM:I

    if-eq v3, v12, :cond_182

    iget v3, v6, Lcom/applovin/exoplayer2/h/o;->LM:I

    if-eq v3, v12, :cond_180

    iget v4, v2, Lcom/applovin/exoplayer2/h/o;->gP:I

    if-lt v4, v3, :cond_180

    goto :goto_182

    :cond_180
    const/4 v3, 0x0

    goto :goto_183

    :cond_182
    :goto_182
    const/4 v3, 0x1

    :goto_183
    iget-object v4, v6, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19b

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v5

    if-nez v5, :cond_19b

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v5

    if-nez v5, :cond_19b

    if-eqz v3, :cond_19b

    const/4 v3, 0x1

    goto :goto_19c

    :cond_19b
    const/4 v3, 0x0

    :goto_19c
    invoke-virtual {v7, v13, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    if-eqz v4, :cond_1c5

    if-nez v14, :cond_1c5

    cmp-long v4, v15, v25

    if-nez v4, :cond_1c5

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v4

    if-eqz v4, :cond_1b5

    iget v4, v2, Lcom/applovin/exoplayer2/h/o;->gP:I

    invoke-virtual {v11, v4}, Lcom/applovin/exoplayer2/ba$a;->ap(I)Z

    move-result v4

    if-nez v4, :cond_1c3

    :cond_1b5
    invoke-virtual {v6}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v4

    if-eqz v4, :cond_1c5

    iget v4, v6, Lcom/applovin/exoplayer2/h/o;->gP:I

    invoke-virtual {v11, v4}, Lcom/applovin/exoplayer2/ba$a;->ap(I)Z

    move-result v4

    if-eqz v4, :cond_1c5

    :cond_1c3
    const/16 v19, 0x1

    :cond_1c5
    if-nez v3, :cond_1c9

    if-eqz v19, :cond_1ca

    :cond_1c9
    move-object v2, v6

    :cond_1ca
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v3

    if-eqz v3, :cond_1ef

    invoke-virtual {v2, v6}, Lcom/applovin/exoplayer2/h/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d9

    iget-wide v0, v8, Lcom/applovin/exoplayer2/al;->cO:J

    goto :goto_1ef

    :cond_1d9
    iget-object v0, v2, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    iget v0, v2, Lcom/applovin/exoplayer2/h/o;->gQ:I

    iget v1, v2, Lcom/applovin/exoplayer2/h/o;->gP:I

    invoke-virtual {v11, v1}, Lcom/applovin/exoplayer2/ba$a;->am(I)I

    move-result v1

    if-ne v0, v1, :cond_1ed

    invoke-virtual/range {p7 .. p7}, Lcom/applovin/exoplayer2/ba$a;->di()J

    move-result-wide v0

    goto :goto_1ef

    :cond_1ed
    const-wide/16 v0, 0x0

    :cond_1ef
    :goto_1ef
    move-wide/from16 v23, v0

    new-instance v0, Lcom/applovin/exoplayer2/s$f;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v29}, Lcom/applovin/exoplayer2/s$f;-><init>(Lcom/applovin/exoplayer2/h/p$a;JJZZZ)V

    return-object v0
.end method

.method static a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IZLjava/lang/Object;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;)Ljava/lang/Object;
    .registers 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p5, p4}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p5}, Lcom/applovin/exoplayer2/ba;->cQ()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    const/4 p4, -0x1

    :goto_c
    if-ge v2, v0, :cond_27

    if-ne p4, v1, :cond_27

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Lcom/applovin/exoplayer2/ba$c;IZ)I

    move-result v4

    if-ne v4, v1, :cond_1c

    goto :goto_27

    :cond_1c
    invoke-virtual {p5, v4}, Lcom/applovin/exoplayer2/ba;->b(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_27
    :goto_27
    if-ne p4, v1, :cond_2b

    const/4 p0, 0x0

    goto :goto_2f

    :cond_2b
    invoke-virtual {p6, p4}, Lcom/applovin/exoplayer2/ba;->b(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2f
    return-object p0
.end method

.method private a(Lcom/applovin/exoplayer2/am;FZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    if-eqz p3, :cond_12

    if-eqz p4, :cond_a

    iget-object p3, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/applovin/exoplayer2/s$d;->x(I)V

    :cond_a
    iget-object p3, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual {p3, p1}, Lcom/applovin/exoplayer2/al;->d(Lcom/applovin/exoplayer2/am;)Lcom/applovin/exoplayer2/al;

    move-result-object p3

    iput-object p3, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    :cond_12
    iget p3, p1, Lcom/applovin/exoplayer2/am;->gD:F

    invoke-direct {p0, p3}, Lcom/applovin/exoplayer2/s;->c(F)V

    iget-object p3, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, p4, :cond_29

    aget-object v1, p3, v0

    if-eqz v1, :cond_26

    iget v2, p1, Lcom/applovin/exoplayer2/am;->gD:F

    invoke-interface {v1, p2, v2}, Lcom/applovin/exoplayer2/ar;->a(FF)V

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_29
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/am;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget v0, p1, Lcom/applovin/exoplayer2/am;->gD:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/am;FZZ)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/ar;J)V
    .registers 5

    invoke-interface {p1}, Lcom/applovin/exoplayer2/ar;->T()V

    instance-of v0, p1, Lcom/applovin/exoplayer2/i/m;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/applovin/exoplayer2/i/m;

    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/i/m;->bg(J)V

    :cond_c
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/av;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->bY:Lcom/applovin/exoplayer2/av;

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;J)V
    .registers 10

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_69

    :cond_d
    iget-object v0, p2, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->ct:Lcom/applovin/exoplayer2/z;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-object v1, v1, Lcom/applovin/exoplayer2/ba$c;->eb:Lcom/applovin/exoplayer2/ab$e;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/ab$e;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/z;->a(Lcom/applovin/exoplayer2/ab$e;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_40

    iget-object p3, p0, Lcom/applovin/exoplayer2/s;->ct:Lcom/applovin/exoplayer2/z;

    iget-object p2, p2, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-interface {p3, p1, p2}, Lcom/applovin/exoplayer2/z;->h(J)V

    goto :goto_68

    :cond_40
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ba$c;->ch:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_5d

    iget-object p2, p4, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object p4, p0, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p3, p2, p4}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iget-object p4, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p3, p2, p4}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object p2

    iget-object p2, p2, Lcom/applovin/exoplayer2/ba$c;->ch:Ljava/lang/Object;

    :cond_5d
    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->ct:Lcom/applovin/exoplayer2/z;

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/z;->h(J)V

    :cond_68
    :goto_68
    return-void

    :cond_69
    :goto_69
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/m;->av()Lcom/applovin/exoplayer2/am;

    move-result-object p1

    iget p1, p1, Lcom/applovin/exoplayer2/am;->gD:F

    iget-object p2, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object p2, p2, Lcom/applovin/exoplayer2/al;->gy:Lcom/applovin/exoplayer2/am;

    iget p3, p2, Lcom/applovin/exoplayer2/am;->gD:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_80

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/m;->a(Lcom/applovin/exoplayer2/am;)V

    :cond_80
    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$c;Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)V
    .registers 8

    iget-object v0, p1, Lcom/applovin/exoplayer2/s$c;->cV:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$a;->cN:I

    invoke-virtual {p0, v0, p2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$c;->iR:I

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p0

    iget-object p0, p0, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    iget-wide v0, p3, Lcom/applovin/exoplayer2/ba$a;->fH:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_24

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_29

    :cond_24
    const-wide v0, 0x7fffffffffffffffL

    :goto_29
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/applovin/exoplayer2/s$c;->a(IJLjava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Z)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v2, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v3, v11, Lcom/applovin/exoplayer2/s;->cF:Lcom/applovin/exoplayer2/s$g;

    iget-object v4, v11, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    iget v5, v11, Lcom/applovin/exoplayer2/s;->bS:I

    iget-boolean v6, v11, Lcom/applovin/exoplayer2/s;->bT:Z

    iget-object v7, v11, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-object v8, v11, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/al;Lcom/applovin/exoplayer2/s$g;Lcom/applovin/exoplayer2/af;IZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/s$f;

    move-result-object v7

    iget-object v8, v7, Lcom/applovin/exoplayer2/s$f;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide v9, v7, Lcom/applovin/exoplayer2/s$f;->de:J

    iget-boolean v0, v7, Lcom/applovin/exoplayer2/s$f;->df:Z

    iget-wide v13, v7, Lcom/applovin/exoplayer2/s$f;->dd:J

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v1, v8}, Lcom/applovin/exoplayer2/h/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_38

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v1, v1, Lcom/applovin/exoplayer2/al;->cO:J

    cmp-long v3, v13, v1

    if-eqz v3, :cond_35

    goto :goto_38

    :cond_35
    const/16 v16, 0x0

    goto :goto_3a

    :cond_38
    :goto_38
    const/16 v16, 0x1

    :goto_3a
    const/16 v17, 0x3

    const/4 v6, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x4

    :try_start_43
    iget-boolean v1, v7, Lcom/applovin/exoplayer2/s$f;->dg:Z

    if-eqz v1, :cond_53

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v1, v1, Lcom/applovin/exoplayer2/al;->gs:I

    if-eq v1, v15, :cond_50

    invoke-direct {v11, v4}, Lcom/applovin/exoplayer2/s;->v(I)V

    :cond_50
    invoke-direct {v11, v5, v5, v5, v15}, Lcom/applovin/exoplayer2/s;->a(ZZZZ)V

    :cond_53
    if-nez v16, :cond_6f

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    iget-wide v3, v11, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bx()J

    move-result-wide v21
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_121

    move-object/from16 v2, p1

    const/4 v15, -0x1

    const/16 v20, 0x4

    const/4 v15, 0x0

    move-wide/from16 v5, v21

    :try_start_65
    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;JJ)Z

    move-result v0

    if-nez v0, :cond_a1

    invoke-direct {v11, v15}, Lcom/applovin/exoplayer2/s;->q(Z)V

    goto :goto_a1

    :cond_6f
    const/4 v15, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a1

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    :goto_7e
    if-eqz v1, :cond_9c

    iget-object v2, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v2, v2, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v2, v8}, Lcom/applovin/exoplayer2/h/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v2, v11, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    iget-object v3, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    invoke-virtual {v2, v12, v3}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ae;)Lcom/applovin/exoplayer2/ae;

    move-result-object v2

    iput-object v2, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->cl()V

    :cond_97
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    goto :goto_7e

    :cond_9c
    invoke-direct {v11, v8, v13, v14, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JZ)J

    move-result-wide v0
    :try_end_a0
    .catchall {:try_start_65 .. :try_end_a0} :catchall_11e

    move-wide v13, v0

    :cond_a1
    :goto_a1
    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v4, v0, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget-object v5, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-boolean v0, v7, Lcom/applovin/exoplayer2/s$f;->dh:Z

    if-eqz v0, :cond_ad

    move-wide v6, v13

    goto :goto_af

    :cond_ad
    move-wide/from16 v6, v18

    :goto_af
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;J)V

    if-nez v16, :cond_c1

    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/al;->de:J

    cmp-long v2, v9, v0

    if-eqz v2, :cond_ff

    :cond_c1
    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v1, v1, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    if-eqz v16, :cond_e0

    if-eqz p2, :cond_e0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e0

    iget-object v2, v11, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/ba$a;->iz:Z

    if-nez v0, :cond_e0

    const/16 v23, 0x1

    goto :goto_e2

    :cond_e0
    const/16 v23, 0x0

    :goto_e2
    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v5, v0, Lcom/applovin/exoplayer2/al;->gr:J

    invoke-virtual {v12, v1}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_ef

    const/16 v17, 0x4

    :cond_ef
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    :cond_ff
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bE()V

    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-direct {v11, v12, v0}, Lcom/applovin/exoplayer2/s;->b(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;)V

    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0, v12}, Lcom/applovin/exoplayer2/al;->c(Lcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11a

    const/4 v6, 0x0

    iput-object v6, v11, Lcom/applovin/exoplayer2/s;->cF:Lcom/applovin/exoplayer2/s$g;

    :cond_11a
    invoke-direct {v11, v15}, Lcom/applovin/exoplayer2/s;->s(Z)V

    return-void

    :catchall_11e
    move-exception v0

    const/4 v6, 0x0

    goto :goto_125

    :catchall_121
    move-exception v0

    const/4 v15, 0x0

    const/16 v20, 0x4

    :goto_125
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v4, v1, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget-object v5, v1, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-boolean v1, v7, Lcom/applovin/exoplayer2/s$f;->dh:Z

    if-eqz v1, :cond_131

    move-wide/from16 v18, v13

    :cond_131
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v15, v6

    move-wide/from16 v6, v18

    invoke-direct/range {v1 .. v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;J)V

    if-nez v16, :cond_146

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v1, v1, Lcom/applovin/exoplayer2/al;->de:J

    cmp-long v3, v9, v1

    if-eqz v3, :cond_184

    :cond_146
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v2, v1, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v2, v2, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    if-eqz v16, :cond_165

    if-eqz p2, :cond_165

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_165

    iget-object v3, v11, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/ba$a;->iz:Z

    if-nez v1, :cond_165

    const/16 v23, 0x1

    goto :goto_167

    :cond_165
    const/16 v23, 0x0

    :goto_167
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v5, v1, Lcom/applovin/exoplayer2/al;->gr:J

    invoke-virtual {v12, v2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_174

    const/16 v17, 0x4

    :cond_174
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v1

    iput-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    :cond_184
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bE()V

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-direct {v11, v12, v1}, Lcom/applovin/exoplayer2/s;->b(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;)V

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v1, v12}, Lcom/applovin/exoplayer2/al;->c(Lcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/al;

    move-result-object v1

    iput-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19e

    iput-object v15, v11, Lcom/applovin/exoplayer2/s;->cF:Lcom/applovin/exoplayer2/s$g;

    :cond_19e
    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/applovin/exoplayer2/s;->s(Z)V

    throw v0
.end method

.method private declared-synchronized a(Lcom/applovin/exoplayer2/common/base/Supplier;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/common/base/Supplier<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->bR:Lcom/applovin/exoplayer2/l/d;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/l/d;->oK()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    :goto_9
    invoke-interface {p1}, Lcom/applovin/exoplayer2/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3a

    if-nez v3, :cond_2f

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_2f

    :try_start_1b
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->bR:Lcom/applovin/exoplayer2/l/d;

    invoke-interface {v3}, Lcom/applovin/exoplayer2/l/d;->oM()V

    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_23} :catch_24
    .catchall {:try_start_1b .. :try_end_23} :catchall_3a

    goto :goto_26

    :catch_24
    const/4 p2, 0x1

    const/4 v2, 0x1

    :goto_26
    :try_start_26
    iget-object p2, p0, Lcom/applovin/exoplayer2/s;->bR:Lcom/applovin/exoplayer2/l/d;

    invoke-interface {p2}, Lcom/applovin/exoplayer2/l/d;->oK()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_9

    :cond_2f
    if-eqz v2, :cond_38

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/k;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cl:Lcom/applovin/exoplayer2/aa;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    iget-object p2, p2, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    invoke-interface {v0, v1, p1, p2}, Lcom/applovin/exoplayer2/aa;->a([Lcom/applovin/exoplayer2/ar;Lcom/applovin/exoplayer2/h/ad;[Lcom/applovin/exoplayer2/j/d;)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/h/z;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->x(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cs:Lcom/applovin/exoplayer2/ah;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ah;->b(Lcom/applovin/exoplayer2/h/z;)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Z)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/s$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->x(I)V

    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->b(Lcom/applovin/exoplayer2/s$a;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    new-instance v0, Lcom/applovin/exoplayer2/s$g;

    new-instance v1, Lcom/applovin/exoplayer2/ap;

    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->c(Lcom/applovin/exoplayer2/s$a;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->d(Lcom/applovin/exoplayer2/s$a;)Lcom/applovin/exoplayer2/h/z;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/ap;-><init>(Ljava/util/Collection;Lcom/applovin/exoplayer2/h/z;)V

    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->b(Lcom/applovin/exoplayer2/s$a;)I

    move-result v2

    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->e(Lcom/applovin/exoplayer2/s$a;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/s$g;-><init>(Lcom/applovin/exoplayer2/ba;IJ)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/s;->cF:Lcom/applovin/exoplayer2/s$g;

    :cond_29
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cs:Lcom/applovin/exoplayer2/ah;

    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->c(Lcom/applovin/exoplayer2/s$a;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->d(Lcom/applovin/exoplayer2/s$a;)Lcom/applovin/exoplayer2/h/z;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/exoplayer2/ah;->a(Ljava/util/List;Lcom/applovin/exoplayer2/h/z;)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Z)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/s$a;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->x(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cs:Lcom/applovin/exoplayer2/ah;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_f

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ah;->cx()I

    move-result p2

    :cond_f
    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->c(Lcom/applovin/exoplayer2/s$a;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->d(Lcom/applovin/exoplayer2/s$a;)Lcom/applovin/exoplayer2/h/z;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Lcom/applovin/exoplayer2/ah;->a(ILjava/util/List;Lcom/applovin/exoplayer2/h/z;)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Z)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/s$b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->x(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cs:Lcom/applovin/exoplayer2/ah;

    iget v1, p1, Lcom/applovin/exoplayer2/s$b;->cP:I

    iget v2, p1, Lcom/applovin/exoplayer2/s$b;->cQ:I

    iget v3, p1, Lcom/applovin/exoplayer2/s$b;->cR:I

    iget-object p1, p1, Lcom/applovin/exoplayer2/s$b;->C:Lcom/applovin/exoplayer2/h/z;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/applovin/exoplayer2/ah;->a(IIILcom/applovin/exoplayer2/h/z;)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Z)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/s$g;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/applovin/exoplayer2/s$d;->x(I)V

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget v4, v11, Lcom/applovin/exoplayer2/s;->bS:I

    iget-boolean v5, v11, Lcom/applovin/exoplayer2/s;->bT:Z

    iget-object v6, v11, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-object v7, v11, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$g;ZIZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v1, :cond_4b

    iget-object v7, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v7, v7, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-direct {v11, v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;)Landroid/util/Pair;

    move-result-object v7

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/applovin/exoplayer2/h/p$a;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v7, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v7, v7, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v8

    move v10, v7

    move-wide/from16 v17, v4

    :goto_47
    move-wide v4, v12

    move-wide/from16 v12, v17

    goto :goto_a1

    :cond_4b
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v9, v0, Lcom/applovin/exoplayer2/s$g;->di:J

    cmp-long v14, v9, v4

    if-nez v14, :cond_5d

    move-wide v9, v4

    goto :goto_5e

    :cond_5d
    move-wide v9, v12

    :goto_5e
    iget-object v14, v11, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    iget-object v15, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v15, v15, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v14, v15, v7, v12, v13}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v14

    if-eqz v14, :cond_93

    iget-object v4, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v4, v4, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget-object v5, v7, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object v12, v11, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v4, v5, v12}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    iget-object v4, v11, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget v5, v7, Lcom/applovin/exoplayer2/h/o;->gP:I

    invoke-virtual {v4, v5}, Lcom/applovin/exoplayer2/ba$a;->am(I)I

    move-result v4

    iget v5, v7, Lcom/applovin/exoplayer2/h/o;->gQ:I

    if-ne v4, v5, :cond_8d

    iget-object v4, v11, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/ba$a;->di()J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_8e

    :cond_8d
    move-wide v12, v2

    :goto_8e
    move-wide v4, v12

    move-wide v12, v9

    const/4 v10, 0x1

    move-object v9, v7

    goto :goto_a1

    :cond_93
    iget-wide v14, v0, Lcom/applovin/exoplayer2/s$g;->di:J

    cmp-long v16, v14, v4

    if-nez v16, :cond_9b

    const/4 v4, 0x1

    goto :goto_9c

    :cond_9b
    const/4 v4, 0x0

    :goto_9c
    move-wide/from16 v17, v9

    move v10, v4

    move-object v9, v7

    goto :goto_47

    :goto_a1
    :try_start_a1
    iget-object v7, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v7, v7, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_ae

    iput-object v0, v11, Lcom/applovin/exoplayer2/s;->cF:Lcom/applovin/exoplayer2/s$g;

    goto :goto_bd

    :cond_ae
    const/4 v0, 0x4

    if-nez v1, :cond_c0

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v1, v1, Lcom/applovin/exoplayer2/al;->gs:I

    if-eq v1, v8, :cond_ba

    invoke-direct {v11, v0}, Lcom/applovin/exoplayer2/s;->v(I)V

    :cond_ba
    invoke-direct {v11, v6, v8, v6, v8}, Lcom/applovin/exoplayer2/s;->a(ZZZZ)V

    :goto_bd
    move-wide v7, v4

    goto/16 :goto_134

    :cond_c0
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v9, v1}, Lcom/applovin/exoplayer2/h/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    if-eqz v1, :cond_e3

    iget-boolean v7, v1, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-eqz v7, :cond_e3

    cmp-long v7, v4, v2

    if-eqz v7, :cond_e3

    iget-object v1, v1, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    iget-object v2, v11, Lcom/applovin/exoplayer2/s;->bY:Lcom/applovin/exoplayer2/av;

    invoke-interface {v1, v4, v5, v2}, Lcom/applovin/exoplayer2/h/n;->a(JLcom/applovin/exoplayer2/av;)J

    move-result-wide v1

    goto :goto_e4

    :cond_e3
    move-wide v1, v4

    :goto_e4
    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/h;->f(J)J

    move-result-wide v14

    iget-object v3, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v6, v3, Lcom/applovin/exoplayer2/al;->cO:J

    invoke-static {v6, v7}, Lcom/applovin/exoplayer2/h;->f(J)J

    move-result-wide v6

    cmp-long v3, v14, v6

    if-nez v3, :cond_110

    iget-object v3, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v6, v3, Lcom/applovin/exoplayer2/al;->gs:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_fe

    const/4 v7, 0x3

    if-ne v6, v7, :cond_110

    :cond_fe
    iget-wide v7, v3, Lcom/applovin/exoplayer2/al;->cO:J
    :try_end_100
    .catchall {:try_start_a1 .. :try_end_100} :catchall_147

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    return-void

    :cond_10f
    move-wide v1, v4

    :cond_110
    :try_start_110
    iget-object v3, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->gs:I

    if-ne v3, v0, :cond_118

    const/4 v0, 0x1

    goto :goto_119

    :cond_118
    const/4 v0, 0x0

    :goto_119
    invoke-direct {v11, v9, v1, v2, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JZ)J

    move-result-wide v14
    :try_end_11d
    .catchall {:try_start_110 .. :try_end_11d} :catchall_147

    cmp-long v0, v4, v14

    if-eqz v0, :cond_122

    goto :goto_123

    :cond_122
    const/4 v8, 0x0

    :goto_123
    or-int/2addr v8, v10

    :try_start_124
    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v4, v0, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget-object v5, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v9

    move-wide v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;J)V
    :try_end_132
    .catchall {:try_start_124 .. :try_end_132} :catchall_143

    move v10, v8

    move-wide v7, v14

    :goto_134
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    return-void

    :catchall_143
    move-exception v0

    move v10, v8

    move-wide v7, v14

    goto :goto_149

    :catchall_147
    move-exception v0

    move-wide v7, v4

    :goto_149
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v1

    iput-object v1, v11, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    throw v0
.end method

.method private a(ZIZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    invoke-virtual {v0, p3}, Lcom/applovin/exoplayer2/s$d;->x(I)V

    iget-object p3, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    invoke-virtual {p3, p4}, Lcom/applovin/exoplayer2/s$d;->z(I)V

    iget-object p3, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual {p3, p1, p2}, Lcom/applovin/exoplayer2/al;->c(ZI)Lcom/applovin/exoplayer2/al;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/s;->cz:Z

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->m(Z)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bN()Z

    move-result p1

    if-nez p1, :cond_25

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bn()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bp()V

    goto :goto_3d

    :cond_25
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget p1, p1, Lcom/applovin/exoplayer2/al;->gs:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_36

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bm()V

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    invoke-interface {p1, p3}, Lcom/applovin/exoplayer2/l/o;->fs(I)Z

    goto :goto_3d

    :cond_36
    if-ne p1, p3, :cond_3d

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    invoke-interface {p1, p3}, Lcom/applovin/exoplayer2/l/o;->fs(I)Z

    :cond_3d
    :goto_3d
    return-void
.end method

.method private a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 7
    .param p2    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cB:Z

    if-eq v0, p1, :cond_24

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/s;->cB:Z

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_24

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ar;)Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cj:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Lcom/applovin/exoplayer2/ar;->Y()V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_24
    if-eqz p2, :cond_33

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_28
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_33

    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw p1

    :cond_33
    :goto_33
    return-void
.end method

.method private a(ZZZZ)V
    .registers 34

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/applovin/exoplayer2/l/o;->ft(I)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/applovin/exoplayer2/s;->cJ:Lcom/applovin/exoplayer2/p;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/applovin/exoplayer2/s;->cz:Z

    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m;->W()V

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/applovin/exoplayer2/s;->cG:J

    iget-object v4, v1, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1b
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_30

    aget-object v0, v4, v6

    :try_start_21
    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/s;->d(Lcom/applovin/exoplayer2/ar;)V
    :try_end_24
    .catch Lcom/applovin/exoplayer2/p; {:try_start_21 .. :try_end_24} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_2d

    :catch_25
    move-exception v0

    goto :goto_28

    :catch_27
    move-exception v0

    :goto_28
    const-string v8, "Disable failed."

    invoke-static {v7, v8, v0}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_30
    if-eqz p1, :cond_50

    iget-object v4, v1, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_36
    if-ge v6, v5, :cond_50

    aget-object v0, v4, v6

    iget-object v8, v1, Lcom/applovin/exoplayer2/s;->cj:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    :try_start_42
    invoke-interface {v0}, Lcom/applovin/exoplayer2/ar;->Y()V
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4d

    :catch_46
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    invoke-static {v7, v0, v8}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_50
    iput v3, v1, Lcom/applovin/exoplayer2/s;->cE:I

    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v4, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide v5, v0, Lcom/applovin/exoplayer2/al;->cO:J

    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v7, v1, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-static {v0, v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/al;Lcom/applovin/exoplayer2/ba$a;)Z

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_72

    :cond_6d
    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v7, v0, Lcom/applovin/exoplayer2/al;->cO:J

    goto :goto_76

    :cond_72
    :goto_72
    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v7, v0, Lcom/applovin/exoplayer2/al;->de:J

    :goto_76
    if-eqz p2, :cond_a3

    iput-object v2, v1, Lcom/applovin/exoplayer2/s;->cF:Lcom/applovin/exoplayer2/s$g;

    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/applovin/exoplayer2/h/p$a;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v4, v0}, Lcom/applovin/exoplayer2/h/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    const/4 v0, 0x1

    move-object/from16 v17, v4

    move-wide/from16 v25, v5

    goto :goto_a8

    :cond_a3
    move-object/from16 v17, v4

    move-wide/from16 v25, v5

    const/4 v0, 0x0

    :goto_a8
    iget-object v4, v1, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/af;->clear()V

    iput-boolean v3, v1, Lcom/applovin/exoplayer2/s;->cA:Z

    new-instance v3, Lcom/applovin/exoplayer2/al;

    iget-object v4, v1, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v5, v4, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget v11, v4, Lcom/applovin/exoplayer2/al;->gs:I

    if-eqz p4, :cond_ba

    goto :goto_bc

    :cond_ba
    iget-object v2, v4, Lcom/applovin/exoplayer2/al;->gt:Lcom/applovin/exoplayer2/p;

    :goto_bc
    move-object v12, v2

    const/4 v13, 0x0

    if-eqz v0, :cond_c3

    sget-object v2, Lcom/applovin/exoplayer2/h/ad;->NG:Lcom/applovin/exoplayer2/h/ad;

    goto :goto_c5

    :cond_c3
    iget-object v2, v4, Lcom/applovin/exoplayer2/al;->fB:Lcom/applovin/exoplayer2/h/ad;

    :goto_c5
    move-object v14, v2

    if-eqz v0, :cond_cb

    iget-object v2, v1, Lcom/applovin/exoplayer2/s;->bz:Lcom/applovin/exoplayer2/j/k;

    goto :goto_cd

    :cond_cb
    iget-object v2, v4, Lcom/applovin/exoplayer2/al;->fC:Lcom/applovin/exoplayer2/j/k;

    :goto_cd
    move-object v15, v2

    if-eqz v0, :cond_d5

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    goto :goto_d7

    :cond_d5
    iget-object v0, v4, Lcom/applovin/exoplayer2/al;->gu:Ljava/util/List;

    :goto_d7
    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/al;->gw:Z

    move/from16 v18, v2

    iget v2, v0, Lcom/applovin/exoplayer2/al;->gx:I

    move/from16 v19, v2

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->gy:Lcom/applovin/exoplayer2/am;

    move-object/from16 v20, v0

    const-wide/16 v23, 0x0

    iget-boolean v0, v1, Lcom/applovin/exoplayer2/s;->cD:Z

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object v4, v3

    move-object/from16 v6, v17

    move-wide/from16 v9, v25

    move-wide/from16 v21, v25

    invoke-direct/range {v4 .. v28}, Lcom/applovin/exoplayer2/al;-><init>(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;JJILcom/applovin/exoplayer2/p;ZLcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/k;Ljava/util/List;Lcom/applovin/exoplayer2/h/p$a;ZILcom/applovin/exoplayer2/am;JJJZZ)V

    iput-object v3, v1, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    if-eqz p3, :cond_102

    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->cs:Lcom/applovin/exoplayer2/ah;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ah;->release()V

    :cond_102
    return-void
.end method

.method private a([Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cs()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v4, v4

    if-ge v3, v4, :cond_2d

    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/j/k;->eW(I)Z

    move-result v4

    if-nez v4, :cond_2a

    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->cj:Ljava/util/Set;

    iget-object v5, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/applovin/exoplayer2/ar;->Y()V

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2d
    :goto_2d
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v3, v3

    if-ge v2, v3, :cond_40

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/j/k;->eW(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    aget-boolean v3, p1, v2

    invoke-direct {p0, v2, v3}, Lcom/applovin/exoplayer2/s;->c(IZ)V

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_40
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/applovin/exoplayer2/ad;->fy:Z

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/al;Lcom/applovin/exoplayer2/ba$a;)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-object p0, p0, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/ba$a;->iz:Z

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private a(Lcom/applovin/exoplayer2/ar;Lcom/applovin/exoplayer2/ad;)Z
    .registers 6

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iget-object p2, p2, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-boolean p2, p2, Lcom/applovin/exoplayer2/ae;->fI:Z

    if-eqz p2, :cond_20

    iget-boolean p2, v0, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-eqz p2, :cond_20

    instance-of p2, p1, Lcom/applovin/exoplayer2/i/m;

    if-nez p2, :cond_1e

    invoke-interface {p1}, Lcom/applovin/exoplayer2/ar;->S()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ce()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_20

    :cond_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;)Z
    .registers 7

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_37

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_37

    :cond_e
    iget-object p2, p2, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba$c;->dn()Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-boolean p2, p1, Lcom/applovin/exoplayer2/ba$c;->iN:Z

    if-eqz p2, :cond_37

    iget-wide p1, p1, Lcom/applovin/exoplayer2/ba$c;->iK:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v2

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    :cond_37
    :goto_37
    return v1
.end method

.method private static a(Lcom/applovin/exoplayer2/s$c;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;IZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Z
    .registers 22

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    iget-object v2, v0, Lcom/applovin/exoplayer2/s$c;->cV:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v2, :cond_71

    iget-object v1, v0, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ao;->cJ()J

    move-result-wide v1

    cmp-long v3, v1, v13

    if-nez v3, :cond_21

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2b

    :cond_21
    iget-object v1, v0, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ao;->cJ()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide v1

    :goto_2b
    new-instance v3, Lcom/applovin/exoplayer2/s$g;

    iget-object v4, v0, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/ao;->bf()Lcom/applovin/exoplayer2/ba;

    move-result-object v4

    iget-object v5, v0, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/ao;->cK()I

    move-result v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/applovin/exoplayer2/s$g;-><init>(Lcom/applovin/exoplayer2/ba;IJ)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$g;ZIZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_50

    return v11

    :cond_50
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/applovin/exoplayer2/s$c;->a(IJLjava/lang/Object;)V

    iget-object v1, v0, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ao;->cJ()J

    move-result-wide v1

    cmp-long v3, v1, v13

    if-nez v3, :cond_70

    invoke-static {v8, p0, v9, v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$c;Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)V

    :cond_70
    return v12

    :cond_71
    invoke-virtual {v8, v2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_79

    return v11

    :cond_79
    iget-object v3, v0, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/ao;->cJ()J

    move-result-wide v3

    cmp-long v5, v3, v13

    if-nez v5, :cond_87

    invoke-static {v8, p0, v9, v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$c;Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)V

    return v12

    :cond_87
    iput v2, v0, Lcom/applovin/exoplayer2/s$c;->cT:I

    iget-object v2, v0, Lcom/applovin/exoplayer2/s$c;->cV:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    iget-boolean v2, v10, Lcom/applovin/exoplayer2/ba$a;->iz:Z

    if-eqz v2, :cond_cf

    iget v2, v10, Lcom/applovin/exoplayer2/ba$a;->cN:I

    invoke-virtual {v1, v2, v9}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v2

    iget v2, v2, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    iget-object v3, v0, Lcom/applovin/exoplayer2/s$c;->cV:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_cf

    iget-wide v1, v0, Lcom/applovin/exoplayer2/s$c;->cU:J

    invoke-virtual/range {p6 .. p6}, Lcom/applovin/exoplayer2/ba$a;->df()J

    move-result-wide v3

    add-long v5, v1, v3

    iget-object v1, v0, Lcom/applovin/exoplayer2/s$c;->cV:Ljava/lang/Object;

    invoke-virtual {v8, v1, v10}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v1

    iget v4, v1, Lcom/applovin/exoplayer2/ba$a;->cN:I

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/applovin/exoplayer2/s$c;->a(IJLjava/lang/Object;)V

    :cond_cf
    return v12
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/s;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/s;->cC:Z

    return p1
.end method

.method private static a(Lcom/applovin/exoplayer2/j/d;)[Lcom/applovin/exoplayer2/v;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/applovin/exoplayer2/j/g;->kD()I

    move-result v1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    new-array v2, v1, [Lcom/applovin/exoplayer2/v;

    :goto_b
    if-ge v0, v1, :cond_16

    invoke-interface {p0, v0}, Lcom/applovin/exoplayer2/j/g;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    return-object v2
.end method

.method private b(IILcom/applovin/exoplayer2/h/z;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->x(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cs:Lcom/applovin/exoplayer2/ah;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/ah;->c(IILcom/applovin/exoplayer2/h/z;)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Z)V

    return-void
.end method

.method private b(Lcom/applovin/exoplayer2/ao;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->cJ()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ao;)V

    goto :goto_4e

    :cond_11
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    new-instance v1, Lcom/applovin/exoplayer2/s$c;

    invoke-direct {v1, p1}, Lcom/applovin/exoplayer2/s$c;-><init>(Lcom/applovin/exoplayer2/ao;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_26
    new-instance v0, Lcom/applovin/exoplayer2/s$c;

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/s$c;-><init>(Lcom/applovin/exoplayer2/ao;)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v4, v1, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget v5, p0, Lcom/applovin/exoplayer2/s;->bS:I

    iget-boolean v6, p0, Lcom/applovin/exoplayer2/s;->bT:Z

    iget-object v7, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-object v8, p0, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    move-object v2, v0

    move-object v3, v4

    invoke-static/range {v2 .. v8}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s$c;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;IZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_4e

    :cond_4a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ao;->B(Z)V

    :goto_4e
    return-void
.end method

.method private b(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;)V
    .registers 12

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_46

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/applovin/exoplayer2/s$c;

    iget v5, p0, Lcom/applovin/exoplayer2/s;->bS:I

    iget-boolean v6, p0, Lcom/applovin/exoplayer2/s;->bT:Z

    iget-object v7, p0, Lcom/applovin/exoplayer2/s;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-object v8, p0, Lcom/applovin/exoplayer2/s;->bI:Lcom/applovin/exoplayer2/ba$a;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s$c;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;IZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/s$c;

    iget-object v1, v1, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/ao;->B(Z)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_46
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/io/IOException;I)V
    .registers 4

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/p;->a(Ljava/io/IOException;I)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object p2

    if-eqz p2, :cond_14

    iget-object p2, p2, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object p2, p2, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/p;->a(Lcom/applovin/exoplayer2/h/o;)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    :cond_14
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    invoke-static {p2, v0, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2}, Lcom/applovin/exoplayer2/s;->b(ZZ)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/p;)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    return-void
.end method

.method private b(ZZ)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/s;->cB:Z

    if-nez p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/applovin/exoplayer2/s;->a(ZZZZ)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/s$d;->x(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cl:Lcom/applovin/exoplayer2/aa;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/aa;->ab()V

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/s;->v(I)V

    return-void
.end method

.method private bA()V
    .registers 11

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cs()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    if-eqz v1, :cond_a6

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/s;->cy:Z

    if-eqz v1, :cond_1b

    goto/16 :goto_a6

    :cond_1b
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bG()Z

    move-result v1

    if-nez v1, :cond_22

    return-void

    :cond_22
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-nez v1, :cond_39

    iget-wide v5, p0, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->ce()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_39

    return-void

    :cond_39
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->ct()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v5

    iget-boolean v6, v1, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-eqz v6, :cond_5d

    iget-object v6, v1, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v6}, Lcom/applovin/exoplayer2/h/n;->kN()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-eqz v8, :cond_5d

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->ce()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->m(J)V

    return-void

    :cond_5d
    const/4 v2, 0x0

    :goto_5e
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v3, v3

    if-ge v2, v3, :cond_a5

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/j/k;->eW(I)Z

    move-result v3

    invoke-virtual {v5, v2}, Lcom/applovin/exoplayer2/j/k;->eW(I)Z

    move-result v6

    if-eqz v3, :cond_a2

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/applovin/exoplayer2/ar;->U()Z

    move-result v3

    if-nez v3, :cond_a2

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->ck:[Lcom/applovin/exoplayer2/as;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/applovin/exoplayer2/as;->M()I

    move-result v3

    const/4 v7, -0x2

    if-ne v3, v7, :cond_84

    const/4 v3, 0x1

    goto :goto_85

    :cond_84
    const/4 v3, 0x0

    :goto_85
    iget-object v7, v0, Lcom/applovin/exoplayer2/j/k;->VD:[Lcom/applovin/exoplayer2/at;

    aget-object v7, v7, v2

    iget-object v8, v5, Lcom/applovin/exoplayer2/j/k;->VD:[Lcom/applovin/exoplayer2/at;

    aget-object v8, v8, v2

    if-eqz v6, :cond_97

    invoke-virtual {v8, v7}, Lcom/applovin/exoplayer2/at;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    if-eqz v3, :cond_a2

    :cond_97
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    aget-object v3, v3, v2

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->ce()J

    move-result-wide v6

    invoke-direct {p0, v3, v6, v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ar;J)V

    :cond_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_a5
    return-void

    :cond_a6
    :goto_a6
    iget-object v1, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/ae;->fL:Z

    if-nez v1, :cond_b0

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/s;->cy:Z

    if-eqz v1, :cond_e8

    :cond_b0
    :goto_b0
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v5, v1

    if-ge v4, v5, :cond_e8

    aget-object v1, v1, v4

    iget-object v5, v0, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    aget-object v5, v5, v4

    if-eqz v5, :cond_e5

    invoke-interface {v1}, Lcom/applovin/exoplayer2/ar;->Q()Lcom/applovin/exoplayer2/h/x;

    move-result-object v6

    if-ne v6, v5, :cond_e5

    invoke-interface {v1}, Lcom/applovin/exoplayer2/ar;->R()Z

    move-result v5

    if-eqz v5, :cond_e5

    iget-object v5, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v5, v5, Lcom/applovin/exoplayer2/ae;->fH:J

    cmp-long v7, v5, v2

    if-eqz v7, :cond_e1

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v5, v7

    if-eqz v9, :cond_e1

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->cd()J

    move-result-wide v5

    iget-object v7, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v7, v7, Lcom/applovin/exoplayer2/ae;->fH:J

    add-long/2addr v5, v7

    goto :goto_e2

    :cond_e1
    move-wide v5, v2

    :goto_e2
    invoke-direct {p0, v1, v5, v6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ar;J)V

    :cond_e5
    add-int/lit8 v4, v4, 0x1

    goto :goto_b0

    :cond_e8
    return-void
.end method

.method private bB()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cs()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    if-eq v1, v0, :cond_1e

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/ad;->fy:Z

    if-eqz v0, :cond_15

    goto :goto_1e

    :cond_15
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bC()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bL()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private bC()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cs()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    iget-object v5, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_5e

    aget-object v8, v5, v3

    invoke-static {v8}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ar;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_5b

    :cond_1c
    invoke-interface {v8}, Lcom/applovin/exoplayer2/ar;->Q()Lcom/applovin/exoplayer2/h/x;

    move-result-object v5

    iget-object v6, v0, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    aget-object v6, v6, v3

    if-eq v5, v6, :cond_28

    const/4 v5, 0x1

    goto :goto_29

    :cond_28
    const/4 v5, 0x0

    :goto_29
    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/j/k;->eW(I)Z

    move-result v6

    if-eqz v6, :cond_32

    if-nez v5, :cond_32

    goto :goto_5b

    :cond_32
    invoke-interface {v8}, Lcom/applovin/exoplayer2/ar;->U()Z

    move-result v5

    if-nez v5, :cond_50

    iget-object v5, v1, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/j/d;)[Lcom/applovin/exoplayer2/v;

    move-result-object v9

    iget-object v5, v0, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    aget-object v10, v5, v3

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ce()J

    move-result-wide v11

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->cd()J

    move-result-wide v13

    invoke-interface/range {v8 .. v14}, Lcom/applovin/exoplayer2/ar;->a([Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/h/x;JJ)V

    goto :goto_5b

    :cond_50
    invoke-interface {v8}, Lcom/applovin/exoplayer2/ar;->cR()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-direct {p0, v8}, Lcom/applovin/exoplayer2/s;->d(Lcom/applovin/exoplayer2/ar;)V

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x1

    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_5e
    xor-int/lit8 v0, v4, 0x1

    return v0
.end method

.method private bD()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bF()Z

    move-result v1

    if-eqz v1, :cond_45

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bj()V

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->cu()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    iget-object v2, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v4, v2, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide v9, v2, Lcom/applovin/exoplayer2/ae;->fF:J

    iget-wide v7, v2, Lcom/applovin/exoplayer2/ae;->de:J

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v3, p0

    move-wide v5, v9

    invoke-direct/range {v3 .. v12}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v2

    iput-object v2, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v6, v2, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget-object v1, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v5, v1, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v7, v0, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, v6

    invoke-direct/range {v3 .. v9}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;J)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bE()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bp()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_45
    return-void
.end method

.method private bE()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/ae;->fK:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cx:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cy:Z

    return-void
.end method

.method private bF()Z
    .registers 8

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bN()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cy:Z

    if-eqz v0, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-wide v2, p0, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ce()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2b

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/ad;->fy:Z

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method private bG()Z
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cs()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iget-boolean v1, v0, Lcom/applovin/exoplayer2/ad;->fv:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x0

    :goto_d
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v4, v3

    if-ge v1, v4, :cond_31

    aget-object v3, v3, v1

    iget-object v4, v0, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    aget-object v4, v4, v1

    invoke-interface {v3}, Lcom/applovin/exoplayer2/ar;->Q()Lcom/applovin/exoplayer2/h/x;

    move-result-object v5

    if-ne v5, v4, :cond_30

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Lcom/applovin/exoplayer2/ar;->R()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-direct {p0, v3, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ar;Lcom/applovin/exoplayer2/ad;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_30

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_30
    :goto_30
    return v2

    :cond_31
    const/4 v0, 0x1

    return v0
.end method

.method private bH()V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cA:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cq()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iget-wide v1, p0, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ad;->u(J)V

    :cond_13
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bK()V

    return-void
.end method

.method private bI()Z
    .registers 10

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bJ()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cq()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ch()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/applovin/exoplayer2/s;->n(J)J

    move-result-wide v6

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    if-ne v0, v1, :cond_26

    iget-wide v1, p0, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ad;->r(J)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_32

    :cond_26
    iget-wide v1, p0, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ad;->r(J)J

    move-result-wide v1

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v3, v0, Lcom/applovin/exoplayer2/ae;->fF:J

    sub-long/2addr v1, v3

    move-wide v4, v1

    :goto_32
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cl:Lcom/applovin/exoplayer2/aa;

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m;->av()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    iget v8, v0, Lcom/applovin/exoplayer2/am;->gD:F

    invoke-interface/range {v3 .. v8}, Lcom/applovin/exoplayer2/aa;->b(JJF)Z

    move-result v0

    return v0
.end method

.method private bJ()Z
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cq()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ch()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method private bK()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cq()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/s;->cA:Z

    if-nez v1, :cond_17

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->kO()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-boolean v2, v1, Lcom/applovin/exoplayer2/al;->aW:Z

    if-eq v0, v2, :cond_24

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/al;->t(Z)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    :cond_24
    return-void
.end method

.method private bL()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/s;->a([Z)V

    return-void
.end method

.method private bM()J
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/al;->gA:J

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->n(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private bN()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-boolean v1, v0, Lcom/applovin/exoplayer2/al;->gw:Z

    if-eqz v1, :cond_c

    iget v0, v0, Lcom/applovin/exoplayer2/al;->gx:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private synthetic bO()Ljava/lang/Boolean;
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cw:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private bj()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->d(Lcom/applovin/exoplayer2/al;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    invoke-static {v0}, Lcom/applovin/exoplayer2/s$d;->d(Lcom/applovin/exoplayer2/s$d;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->bE:Lcom/applovin/exoplayer2/s$e;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/s$e;->onPlaybackInfoUpdate(Lcom/applovin/exoplayer2/s$d;)V

    new-instance v0, Lcom/applovin/exoplayer2/s$d;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/s$d;-><init>(Lcom/applovin/exoplayer2/al;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    :cond_1f
    return-void
.end method

.method private bk()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cv:Lcom/applovin/exoplayer2/s$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->x(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v1}, Lcom/applovin/exoplayer2/s;->a(ZZZZ)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cl:Lcom/applovin/exoplayer2/aa;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/aa;->ap()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x2

    :goto_1d
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/s;->v(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cs:Lcom/applovin/exoplayer2/ah;

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->bO:Lcom/applovin/exoplayer2/k/d;

    invoke-interface {v2}, Lcom/applovin/exoplayer2/k/d;->od()Lcom/applovin/exoplayer2/k/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/ah;->a(Lcom/applovin/exoplayer2/k/aa;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->fs(I)Z

    return-void
.end method

.method private bl()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cs:Lcom/applovin/exoplayer2/ah;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ah;->cy()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Z)V

    return-void
.end method

.method private bm()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cz:Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/m;->start()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_1b

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ar;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Lcom/applovin/exoplayer2/ar;->start()V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private bn()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m;->W()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ar;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-direct {p0, v3}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method private bo()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/s;->q(Z)V

    return-void
.end method

.method private bp()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-boolean v1, v0, Lcom/applovin/exoplayer2/ad;->fv:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/h/n;->kN()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_1b

    :cond_1a
    move-wide v6, v2

    :goto_1b
    const/4 v10, 0x0

    cmp-long v1, v6, v2

    if-eqz v1, :cond_3c

    invoke-direct {p0, v6, v7}, Lcom/applovin/exoplayer2/s;->l(J)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/al;->cO:J

    cmp-long v2, v6, v0

    if-eqz v2, :cond_5e

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide v4, v0, Lcom/applovin/exoplayer2/al;->de:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    invoke-direct/range {v0 .. v9}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    goto :goto_5e

    :cond_3c
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/af;->cs()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    if-eq v0, v2, :cond_48

    const/4 v2, 0x1

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/m;->f(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ad;->r(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v2, v2, Lcom/applovin/exoplayer2/al;->cO:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/applovin/exoplayer2/s;->e(JJ)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iput-wide v0, v2, Lcom/applovin/exoplayer2/al;->cO:J

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cq()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->cg()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/applovin/exoplayer2/al;->gA:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bM()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/applovin/exoplayer2/al;->gB:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-boolean v1, v0, Lcom/applovin/exoplayer2/al;->gw:Z

    if-eqz v1, :cond_cb

    iget v1, v0, Lcom/applovin/exoplayer2/al;->gs:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_cb

    iget-object v1, v0, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    invoke-direct {p0, v1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;)Z

    move-result v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->gy:Lcom/applovin/exoplayer2/am;

    iget v0, v0, Lcom/applovin/exoplayer2/am;->gD:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_cb

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->ct:Lcom/applovin/exoplayer2/z;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bs()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bM()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/z;->a(JJ)F

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/m;->av()Lcom/applovin/exoplayer2/am;

    move-result-object v1

    iget v1, v1, Lcom/applovin/exoplayer2/am;->gD:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_cb

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v2, v2, Lcom/applovin/exoplayer2/al;->gy:Lcom/applovin/exoplayer2/am;

    invoke-virtual {v2, v0}, Lcom/applovin/exoplayer2/am;->f(F)Lcom/applovin/exoplayer2/am;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/m;->a(Lcom/applovin/exoplayer2/am;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->gy:Lcom/applovin/exoplayer2/am;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/m;->av()Lcom/applovin/exoplayer2/am;

    move-result-object v1

    iget v1, v1, Lcom/applovin/exoplayer2/am;->gD:F

    invoke-direct {p0, v0, v1, v10, v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/am;FZZ)V

    :cond_cb
    return-void
.end method

.method private bq()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    iget-object v1, v1, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    invoke-interface {v4}, Lcom/applovin/exoplayer2/j/d;->no()V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1c
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method private br()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->bR:Lcom/applovin/exoplayer2/l/d;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/l/d;->oL()J

    move-result-wide v1

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->by()V

    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->gs:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1cd

    const/4 v6, 0x4

    if-ne v3, v6, :cond_17

    goto/16 :goto_1cd

    :cond_17
    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v3

    const-wide/16 v7, 0xa

    if-nez v3, :cond_25

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/applovin/exoplayer2/s;->c(JJ)V

    return-void

    :cond_25
    const-string v9, "doSomeWork"

    invoke-static {v9}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bp()V

    iget-boolean v9, v3, Lcom/applovin/exoplayer2/ad;->fv:Z

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    if-eqz v9, :cond_a5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long v13, v13, v10

    iget-object v9, v3, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    iget-object v15, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v10, v15, Lcom/applovin/exoplayer2/al;->cO:J

    iget-wide v7, v0, Lcom/applovin/exoplayer2/s;->aT:J

    sub-long/2addr v10, v7

    iget-boolean v7, v0, Lcom/applovin/exoplayer2/s;->aU:Z

    invoke-interface {v9, v10, v11, v7}, Lcom/applovin/exoplayer2/h/n;->d(JZ)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    :goto_4b
    iget-object v10, v0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v11, v10

    if-ge v7, v11, :cond_ac

    aget-object v10, v10, v7

    invoke-static {v10}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ar;)Z

    move-result v11

    if-nez v11, :cond_59

    goto :goto_a1

    :cond_59
    iget-wide v4, v0, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-interface {v10, v4, v5, v13, v14}, Lcom/applovin/exoplayer2/ar;->g(JJ)V

    if-eqz v8, :cond_68

    invoke-interface {v10}, Lcom/applovin/exoplayer2/ar;->cR()Z

    move-result v4

    if-eqz v4, :cond_68

    const/4 v8, 0x1

    goto :goto_69

    :cond_68
    const/4 v8, 0x0

    :goto_69
    iget-object v4, v3, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    aget-object v4, v4, v7

    invoke-interface {v10}, Lcom/applovin/exoplayer2/ar;->Q()Lcom/applovin/exoplayer2/h/x;

    move-result-object v5

    if-eq v4, v5, :cond_75

    const/4 v4, 0x1

    goto :goto_76

    :cond_75
    const/4 v4, 0x0

    :goto_76
    if-nez v4, :cond_80

    invoke-interface {v10}, Lcom/applovin/exoplayer2/ar;->R()Z

    move-result v5

    if-eqz v5, :cond_80

    const/4 v5, 0x1

    goto :goto_81

    :cond_80
    const/4 v5, 0x0

    :goto_81
    if-nez v4, :cond_94

    if-nez v5, :cond_94

    invoke-interface {v10}, Lcom/applovin/exoplayer2/ar;->isReady()Z

    move-result v4

    if-nez v4, :cond_94

    invoke-interface {v10}, Lcom/applovin/exoplayer2/ar;->cR()Z

    move-result v4

    if-eqz v4, :cond_92

    goto :goto_94

    :cond_92
    const/4 v4, 0x0

    goto :goto_95

    :cond_94
    :goto_94
    const/4 v4, 0x1

    :goto_95
    if-eqz v9, :cond_9b

    if-eqz v4, :cond_9b

    const/4 v9, 0x1

    goto :goto_9c

    :cond_9b
    const/4 v9, 0x0

    :goto_9c
    if-nez v4, :cond_a1

    invoke-interface {v10}, Lcom/applovin/exoplayer2/ar;->V()V

    :cond_a1
    :goto_a1
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto :goto_4b

    :cond_a5
    iget-object v4, v3, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v4}, Lcom/applovin/exoplayer2/h/n;->kM()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    :cond_ac
    iget-object v4, v3, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v4, v4, Lcom/applovin/exoplayer2/ae;->fH:J

    if-eqz v8, :cond_c9

    iget-boolean v7, v3, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-eqz v7, :cond_c9

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v4, v7

    if-eqz v10, :cond_c7

    iget-object v7, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v7, v7, Lcom/applovin/exoplayer2/al;->cO:J

    cmp-long v10, v4, v7

    if-gtz v10, :cond_c9

    :cond_c7
    const/4 v4, 0x1

    goto :goto_ca

    :cond_c9
    const/4 v4, 0x0

    :goto_ca
    if-eqz v4, :cond_da

    iget-boolean v5, v0, Lcom/applovin/exoplayer2/s;->cy:Z

    if-eqz v5, :cond_da

    iput-boolean v12, v0, Lcom/applovin/exoplayer2/s;->cy:Z

    iget-object v5, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v5, v5, Lcom/applovin/exoplayer2/al;->gx:I

    const/4 v7, 0x5

    invoke-direct {v0, v12, v5, v12, v7}, Lcom/applovin/exoplayer2/s;->a(ZIZI)V

    :cond_da
    const/4 v5, 0x3

    if-eqz v4, :cond_ea

    iget-object v4, v3, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-boolean v4, v4, Lcom/applovin/exoplayer2/ae;->fL:Z

    if-eqz v4, :cond_ea

    invoke-direct {v0, v6}, Lcom/applovin/exoplayer2/s;->v(I)V

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bn()V

    goto :goto_133

    :cond_ea
    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v4, v4, Lcom/applovin/exoplayer2/al;->gs:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_107

    invoke-direct {v0, v9}, Lcom/applovin/exoplayer2/s;->r(Z)Z

    move-result v4

    if-eqz v4, :cond_107

    invoke-direct {v0, v5}, Lcom/applovin/exoplayer2/s;->v(I)V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/applovin/exoplayer2/s;->cJ:Lcom/applovin/exoplayer2/p;

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bN()Z

    move-result v4

    if-eqz v4, :cond_133

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bm()V

    goto :goto_133

    :cond_107
    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v4, v4, Lcom/applovin/exoplayer2/al;->gs:I

    if-ne v4, v5, :cond_133

    iget v4, v0, Lcom/applovin/exoplayer2/s;->cE:I

    if-nez v4, :cond_118

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bw()Z

    move-result v4

    if-eqz v4, :cond_11a

    goto :goto_133

    :cond_118
    if-nez v9, :cond_133

    :cond_11a
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bN()Z

    move-result v4

    iput-boolean v4, v0, Lcom/applovin/exoplayer2/s;->cz:Z

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Lcom/applovin/exoplayer2/s;->v(I)V

    iget-boolean v4, v0, Lcom/applovin/exoplayer2/s;->cz:Z

    if-eqz v4, :cond_130

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bq()V

    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->ct:Lcom/applovin/exoplayer2/z;

    invoke-interface {v4}, Lcom/applovin/exoplayer2/z;->al()V

    :cond_130
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bn()V

    :cond_133
    :goto_133
    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v4, v4, Lcom/applovin/exoplayer2/al;->gs:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_17e

    const/4 v4, 0x0

    :goto_13b
    iget-object v7, v0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v8, v7

    if-ge v4, v8, :cond_160

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ar;)Z

    move-result v7

    if-eqz v7, :cond_15d

    iget-object v7, v0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/applovin/exoplayer2/ar;->Q()Lcom/applovin/exoplayer2/h/x;

    move-result-object v7

    iget-object v8, v3, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    aget-object v8, v8, v4

    if-ne v7, v8, :cond_15d

    iget-object v7, v0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/applovin/exoplayer2/ar;->V()V

    :cond_15d
    add-int/lit8 v4, v4, 0x1

    goto :goto_13b

    :cond_160
    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-boolean v4, v3, Lcom/applovin/exoplayer2/al;->aW:Z

    if-nez v4, :cond_17e

    iget-wide v3, v3, Lcom/applovin/exoplayer2/al;->gB:J

    const-wide/32 v7, 0x7a120

    cmp-long v9, v3, v7

    if-gez v9, :cond_17e

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bJ()Z

    move-result v3

    if-nez v3, :cond_176

    goto :goto_17e

    :cond_176
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17e
    :goto_17e
    iget-boolean v3, v0, Lcom/applovin/exoplayer2/s;->cD:Z

    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-boolean v7, v4, Lcom/applovin/exoplayer2/al;->cD:Z

    if-eq v3, v7, :cond_18c

    invoke-virtual {v4, v3}, Lcom/applovin/exoplayer2/al;->u(Z)Lcom/applovin/exoplayer2/al;

    move-result-object v3

    iput-object v3, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    :cond_18c
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bN()Z

    move-result v3

    if-eqz v3, :cond_198

    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->gs:I

    if-eq v3, v5, :cond_19f

    :cond_198
    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->gs:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a8

    :cond_19f
    const-wide/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/s;->d(JJ)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    goto :goto_1bb

    :cond_1a8
    iget v4, v0, Lcom/applovin/exoplayer2/s;->cE:I

    if-eqz v4, :cond_1b4

    if-eq v3, v6, :cond_1b4

    const-wide/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/s;->c(JJ)V

    goto :goto_1ba

    :cond_1b4
    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/l/o;->ft(I)V

    :goto_1ba
    const/4 v1, 0x0

    :goto_1bb
    iget-object v2, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-boolean v3, v2, Lcom/applovin/exoplayer2/al;->gz:Z

    if-eq v3, v1, :cond_1c7

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/al;->v(Z)Lcom/applovin/exoplayer2/al;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    :cond_1c7
    iput-boolean v12, v0, Lcom/applovin/exoplayer2/s;->cC:Z

    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    return-void

    :cond_1cd
    :goto_1cd
    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/l/o;->ft(I)V

    return-void
.end method

.method private bs()J
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v0, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget-object v2, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v2, v2, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-wide v3, v0, Lcom/applovin/exoplayer2/al;->cO:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private bt()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/applovin/exoplayer2/s;->a(ZZZZ)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cl:Lcom/applovin/exoplayer2/aa;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/aa;->aq()V

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/s;->v(I)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cn:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0

    :try_start_13
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cw:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private bu()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m;->av()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/am;->gD:F

    iget-object v1, v10, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    iget-object v2, v10, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/af;->cs()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    const/4 v3, 0x1

    :goto_17
    if-eqz v1, :cond_f3

    iget-boolean v4, v1, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-nez v4, :cond_1f

    goto/16 :goto_f3

    :cond_1f
    iget-object v4, v10, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v4, v4, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v1, v0, v4}, Lcom/applovin/exoplayer2/ad;->b(FLcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/j/k;

    move-result-object v13

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/applovin/exoplayer2/j/k;->b(Lcom/applovin/exoplayer2/j/k;)Z

    move-result v4

    const/4 v9, 0x0

    if-nez v4, :cond_e8

    const/4 v8, 0x4

    if-eqz v3, :cond_b5

    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v6

    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0, v6}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ad;)Z

    move-result v16

    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v0, v0

    new-array v7, v0, [Z

    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v14, v0, Lcom/applovin/exoplayer2/al;->cO:J

    move-object v12, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Lcom/applovin/exoplayer2/ad;->a(Lcom/applovin/exoplayer2/j/k;JZ[Z)J

    move-result-wide v12

    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v1, v0, Lcom/applovin/exoplayer2/al;->gs:I

    if-eq v1, v8, :cond_5f

    iget-wide v0, v0, Lcom/applovin/exoplayer2/al;->cO:J

    cmp-long v2, v12, v0

    if-eqz v2, :cond_5f

    const/4 v14, 0x1

    goto :goto_60

    :cond_5f
    const/4 v14, 0x0

    :goto_60
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide v4, v0, Lcom/applovin/exoplayer2/al;->de:J

    iget-wide v2, v0, Lcom/applovin/exoplayer2/al;->gr:J

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-object v11, v6

    move-object/from16 v18, v7

    move-wide/from16 v6, v16

    move v8, v14

    move v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, v10, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    if-eqz v14, :cond_80

    invoke-direct {v10, v12, v13}, Lcom/applovin/exoplayer2/s;->l(J)V

    :cond_80
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v9, 0x0

    :goto_86
    iget-object v1, v10, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v2, v1

    if-ge v9, v2, :cond_b1

    aget-object v1, v1, v9

    invoke-static {v1}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ar;)Z

    move-result v2

    aput-boolean v2, v0, v9

    iget-object v2, v11, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    aget-object v2, v2, v9

    aget-boolean v3, v0, v9

    if-eqz v3, :cond_ae

    invoke-interface {v1}, Lcom/applovin/exoplayer2/ar;->Q()Lcom/applovin/exoplayer2/h/x;

    move-result-object v3

    if-eq v2, v3, :cond_a5

    invoke-direct {v10, v1}, Lcom/applovin/exoplayer2/s;->d(Lcom/applovin/exoplayer2/ar;)V

    goto :goto_ae

    :cond_a5
    aget-boolean v2, v18, v9

    if-eqz v2, :cond_ae

    iget-wide v2, v10, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-interface {v1, v2, v3}, Lcom/applovin/exoplayer2/ar;->d(J)V

    :cond_ae
    :goto_ae
    add-int/lit8 v9, v9, 0x1

    goto :goto_86

    :cond_b1
    invoke-direct {v10, v0}, Lcom/applovin/exoplayer2/s;->a([Z)V

    goto :goto_d0

    :cond_b5
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ad;)Z

    iget-boolean v0, v1, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-eqz v0, :cond_d0

    iget-object v0, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v2, v0, Lcom/applovin/exoplayer2/ae;->fF:J

    iget-wide v4, v10, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-virtual {v1, v4, v5}, Lcom/applovin/exoplayer2/ad;->r(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v13, v2, v3, v4}, Lcom/applovin/exoplayer2/ad;->a(Lcom/applovin/exoplayer2/j/k;JZ)J

    :cond_d0
    :goto_d0
    const/4 v5, 0x1

    invoke-direct {v10, v5}, Lcom/applovin/exoplayer2/s;->s(Z)V

    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v0, v0, Lcom/applovin/exoplayer2/al;->gs:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e7

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bH()V

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bp()V

    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->fs(I)Z

    :cond_e7
    return-void

    :cond_e8
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_ed

    const/4 v3, 0x0

    :cond_ed
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    goto/16 :goto_17

    :cond_f3
    :goto_f3
    return-void
.end method

.method private bv()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    iget-object v1, v1, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    invoke-interface {v4}, Lcom/applovin/exoplayer2/j/d;->nn()V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1c
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method private bw()Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iget-object v1, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v1, v1, Lcom/applovin/exoplayer2/ae;->fH:J

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-eqz v0, :cond_27

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v3, v0, Lcom/applovin/exoplayer2/al;->cO:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_25

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bN()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_25
    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method private bx()J
    .registers 10

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cs()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_b
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->cd()J

    move-result-wide v1

    iget-boolean v3, v0, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-nez v3, :cond_14

    return-wide v1

    :cond_14
    const/4 v3, 0x0

    :goto_15
    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v5, v4

    if-ge v3, v5, :cond_47

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ar;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/applovin/exoplayer2/ar;->Q()Lcom/applovin/exoplayer2/h/x;

    move-result-object v4

    iget-object v5, v0, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_31

    goto :goto_44

    :cond_31
    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/applovin/exoplayer2/ar;->S()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_40

    return-wide v6

    :cond_40
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_47
    return-wide v1
.end method

.method private by()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cs:Lcom/applovin/exoplayer2/ah;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ah;->cw()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1f

    :cond_13
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bz()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bA()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bB()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bD()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private bz()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/af;->t(J)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cp()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/s;->cG:J

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/af;->a(JLcom/applovin/exoplayer2/al;)Lcom/applovin/exoplayer2/ae;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    iget-object v5, p0, Lcom/applovin/exoplayer2/s;->ck:[Lcom/applovin/exoplayer2/as;

    iget-object v6, p0, Lcom/applovin/exoplayer2/s;->bC:Lcom/applovin/exoplayer2/j/j;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cl:Lcom/applovin/exoplayer2/aa;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/aa;->ar()Lcom/applovin/exoplayer2/k/b;

    move-result-object v7

    iget-object v8, p0, Lcom/applovin/exoplayer2/s;->cs:Lcom/applovin/exoplayer2/ah;

    iget-object v10, p0, Lcom/applovin/exoplayer2/s;->bz:Lcom/applovin/exoplayer2/j/k;

    move-object v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/applovin/exoplayer2/af;->a([Lcom/applovin/exoplayer2/as;Lcom/applovin/exoplayer2/j/j;Lcom/applovin/exoplayer2/k/b;Lcom/applovin/exoplayer2/ah;Lcom/applovin/exoplayer2/ae;Lcom/applovin/exoplayer2/j/k;)Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    iget-object v2, v1, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    iget-wide v3, v0, Lcom/applovin/exoplayer2/ae;->fF:J

    invoke-interface {v2, p0, v3, v4}, Lcom/applovin/exoplayer2/h/n;->a(Lcom/applovin/exoplayer2/h/n$a;J)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-ne v0, v1, :cond_46

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->ce()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->l(J)V

    :cond_46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/s;->s(Z)V

    :cond_4a
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cA:Z

    if-eqz v0, :cond_58

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bJ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cA:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bK()V

    goto :goto_5b

    :cond_58
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bH()V

    :goto_5b
    return-void
.end method

.method private c(F)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    iget-object v1, v1, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    invoke-interface {v4, p1}, Lcom/applovin/exoplayer2/j/d;->v(F)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1c
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method private c(IZ)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ar;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-void

    :cond_d
    iget-object v2, v0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/af;->cs()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1f

    const/4 v9, 0x1

    goto :goto_20

    :cond_1f
    const/4 v9, 0x0

    :goto_20
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v3

    iget-object v6, v3, Lcom/applovin/exoplayer2/j/k;->VD:[Lcom/applovin/exoplayer2/at;

    aget-object v6, v6, p1

    iget-object v3, v3, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/j/d;)[Lcom/applovin/exoplayer2/v;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->bN()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->gs:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_3f

    const/4 v14, 0x1

    goto :goto_40

    :cond_3f
    const/4 v14, 0x0

    :goto_40
    if-nez p2, :cond_46

    if-eqz v14, :cond_46

    const/4 v8, 0x1

    goto :goto_47

    :cond_46
    const/4 v8, 0x0

    :goto_47
    iget v3, v0, Lcom/applovin/exoplayer2/s;->cE:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/applovin/exoplayer2/s;->cE:I

    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->cj:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    aget-object v5, v3, p1

    iget-wide v10, v0, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ad;->ce()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ad;->cd()J

    move-result-wide v15

    move-object v2, v1

    move-object v3, v6

    move-object v4, v7

    move-wide v6, v10

    move-wide v10, v12

    move-wide v12, v15

    invoke-interface/range {v2 .. v13}, Lcom/applovin/exoplayer2/ar;->a(Lcom/applovin/exoplayer2/at;[Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/h/x;JZZJJ)V

    const/16 v2, 0xb

    new-instance v3, Lcom/applovin/exoplayer2/s$1;

    invoke-direct {v3, v0}, Lcom/applovin/exoplayer2/s$1;-><init>(Lcom/applovin/exoplayer2/s;)V

    invoke-interface {v1, v2, v3}, Lcom/applovin/exoplayer2/ao$b;->a(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/m;->a(Lcom/applovin/exoplayer2/ar;)V

    if-eqz v14, :cond_7c

    invoke-interface {v1}, Lcom/applovin/exoplayer2/ar;->start()V

    :cond_7c
    return-void
.end method

.method private c(JJ)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->ft(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/applovin/exoplayer2/l/o;->k(IJ)Z

    return-void
.end method

.method private c(Lcom/applovin/exoplayer2/am;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/m;->a(Lcom/applovin/exoplayer2/am;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/m;->av()Lcom/applovin/exoplayer2/am;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/am;Z)V

    return-void
.end method

.method private c(Lcom/applovin/exoplayer2/ao;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->cI()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->co:Landroid/os/Looper;

    if-ne v0, v1, :cond_1b

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ao;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget p1, p1, Lcom/applovin/exoplayer2/al;->gs:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_15

    if-ne p1, v1, :cond_26

    :cond_15
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/l/o;->fs(I)Z

    goto :goto_26

    :cond_1b
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/l/o;->c(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->oY()V

    :cond_26
    :goto_26
    return-void
.end method

.method private c(Lcom/applovin/exoplayer2/ar;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-interface {p1}, Lcom/applovin/exoplayer2/ar;->P()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-interface {p1}, Lcom/applovin/exoplayer2/ar;->W()V

    :cond_a
    return-void
.end method

.method private c(Lcom/applovin/exoplayer2/h/n;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/af;->e(Lcom/applovin/exoplayer2/h/n;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/af;->cq()Lcom/applovin/exoplayer2/ad;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m;->av()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/am;->gD:F

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/exoplayer2/ad;->a(FLcom/applovin/exoplayer2/ba;)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ad;->cj()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/k;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-ne p1, v0, :cond_4f

    iget-object v0, p1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/ae;->fF:J

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->l(J)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bL()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v2, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v7, p1, Lcom/applovin/exoplayer2/ae;->fF:J

    iget-wide v5, v0, Lcom/applovin/exoplayer2/al;->de:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    move-wide v3, v7

    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    :cond_4f
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bH()V

    return-void
.end method

.method private d(Lcom/applovin/exoplayer2/ao;)V
    .registers 5

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->cI()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v0, "TAG"

    const-string v1, "Trying to send message on a dead thread."

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ao;->B(Z)V

    return-void

    :cond_1a
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->bR:Lcom/applovin/exoplayer2/l/d;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/applovin/exoplayer2/l/d;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/applovin/exoplayer2/l/o;

    move-result-object v0

    new-instance v1, Lcom/applovin/exoplayer2/s1;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/s1;-><init>(Lcom/applovin/exoplayer2/s;Lcom/applovin/exoplayer2/ao;)V

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->e(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d(Lcom/applovin/exoplayer2/ar;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-static {p1}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ar;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/m;->b(Lcom/applovin/exoplayer2/ar;)V

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)V

    invoke-interface {p1}, Lcom/applovin/exoplayer2/ar;->X()V

    iget p1, p0, Lcom/applovin/exoplayer2/s;->cE:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/s;->cE:I

    return-void
.end method

.method private d(Lcom/applovin/exoplayer2/h/n;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/af;->e(Lcom/applovin/exoplayer2/h/n;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    iget-wide v0, p0, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-virtual {p1, v0, v1}, Lcom/applovin/exoplayer2/af;->t(J)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bH()V

    return-void
.end method

.method private d(JJ)Z
    .registers 6

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cD:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cC:Z

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/s;->c(JJ)V

    const/4 p1, 0x1

    return p1
.end method

.method private e(JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f7

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_f7

    :cond_14
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cI:Z

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cI:Z

    :cond_1e
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v0, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/s;->cH:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_44

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/s$c;

    goto :goto_45

    :cond_44
    move-object v3, v2

    :goto_45
    if-eqz v3, :cond_62

    iget v4, v3, Lcom/applovin/exoplayer2/s$c;->cT:I

    if-gt v4, v0, :cond_53

    if-ne v4, v0, :cond_62

    iget-wide v3, v3, Lcom/applovin/exoplayer2/s$c;->cU:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_62

    :cond_53
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_44

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/s$c;

    goto :goto_45

    :cond_62
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_73

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/s$c;

    goto :goto_74

    :cond_73
    move-object v3, v2

    :goto_74
    if-eqz v3, :cond_99

    iget-object v4, v3, Lcom/applovin/exoplayer2/s$c;->cV:Ljava/lang/Object;

    if-eqz v4, :cond_99

    iget v4, v3, Lcom/applovin/exoplayer2/s$c;->cT:I

    if-lt v4, v0, :cond_86

    if-ne v4, v0, :cond_99

    iget-wide v4, v3, Lcom/applovin/exoplayer2/s$c;->cU:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_99

    :cond_86
    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_73

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/s$c;

    goto :goto_74

    :cond_99
    :goto_99
    if-eqz v3, :cond_f5

    iget-object v4, v3, Lcom/applovin/exoplayer2/s$c;->cV:Ljava/lang/Object;

    if-eqz v4, :cond_f5

    iget v4, v3, Lcom/applovin/exoplayer2/s$c;->cT:I

    if-ne v4, v0, :cond_f5

    iget-wide v4, v3, Lcom/applovin/exoplayer2/s$c;->cU:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_f5

    cmp-long v6, v4, p3

    if-gtz v6, :cond_f5

    :try_start_ad
    iget-object v4, v3, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    invoke-direct {p0, v4}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ao;)V
    :try_end_b2
    .catchall {:try_start_ad .. :try_end_b2} :catchall_de

    iget-object v4, v3, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/ao;->cL()Z

    move-result v4

    if-nez v4, :cond_c6

    iget-object v3, v3, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/ao;->cN()Z

    move-result v3

    if-eqz v3, :cond_c3

    goto :goto_c6

    :cond_c3
    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    :cond_c6
    :goto_c6
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_cb
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_dc

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/s$c;

    goto :goto_99

    :cond_dc
    move-object v3, v2

    goto :goto_99

    :catchall_de
    move-exception p1

    iget-object p2, v3, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/ao;->cL()Z

    move-result p2

    if-nez p2, :cond_ef

    iget-object p2, v3, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/ao;->cN()Z

    move-result p2

    if-eqz p2, :cond_f4

    :cond_ef
    iget-object p2, p0, Lcom/applovin/exoplayer2/s;->cq:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_f4
    throw p1

    :cond_f5
    iput v1, p0, Lcom/applovin/exoplayer2/s;->cH:I

    :cond_f7
    :goto_f7
    return-void
.end method

.method private e(Lcom/applovin/exoplayer2/ao;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->cN()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->cF()Lcom/applovin/exoplayer2/ao$b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->cG()I

    move-result v2

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->cH()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/applovin/exoplayer2/ao$b;->a(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1b

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ao;->B(Z)V

    return-void

    :catchall_1b
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ao;->B(Z)V

    throw v1
.end method

.method private static e(Lcom/applovin/exoplayer2/ar;)Z
    .registers 1

    invoke-interface {p0}, Lcom/applovin/exoplayer2/ar;->P()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private synthetic f(Lcom/applovin/exoplayer2/ao;)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ao;)V
    :try_end_3
    .catch Lcom/applovin/exoplayer2/p; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    invoke-static {v0, v1, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic g(Lcom/applovin/exoplayer2/s;Lcom/applovin/exoplayer2/ao;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->f(Lcom/applovin/exoplayer2/ao;)V

    return-void
.end method

.method public static synthetic h(Lcom/applovin/exoplayer2/s;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bO()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private l(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_d

    :cond_9
    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/ad;->q(J)J

    move-result-wide p1

    :goto_d
    iput-wide p1, p0, Lcom/applovin/exoplayer2/s;->cG:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/m;->d(J)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, p2, :cond_2a

    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ar;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-wide v2, p0, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-interface {v1, v2, v3}, Lcom/applovin/exoplayer2/ar;->d(J)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2a
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bv()V

    return-void
.end method

.method private m(J)V
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/applovin/exoplayer2/ar;->Q()Lcom/applovin/exoplayer2/h/x;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-direct {p0, v3, p1, p2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ar;J)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method private m(Z)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    iget-object v1, v1, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    invoke-interface {v4, p1}, Lcom/applovin/exoplayer2/j/d;->am(Z)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1c
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method private n(J)J
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cq()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_b

    return-wide v1

    :cond_b
    iget-wide v3, p0, Lcom/applovin/exoplayer2/s;->cG:J

    invoke-virtual {v0, v3, v4}, Lcom/applovin/exoplayer2/ad;->r(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private n(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/s;->cx:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bE()V

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/s;->cy:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/af;->cs()Lcom/applovin/exoplayer2/ad;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-eq p1, v0, :cond_1f

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->q(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->s(Z)V

    :cond_1f
    return-void
.end method

.method private o(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cD:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/s;->cD:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v1, v0, Lcom/applovin/exoplayer2/al;->gs:I

    if-nez p1, :cond_1b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1b

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    goto :goto_1b

    :cond_14
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/l/o;->fs(I)Z

    goto :goto_21

    :cond_1b
    :goto_1b
    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/al;->u(Z)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    :goto_21
    return-void
.end method

.method private p(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/s;->bT:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ba;Z)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->q(Z)V

    :cond_12
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->s(Z)V

    return-void
.end method

.method private q(Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v0, v0, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v3, v1, Lcom/applovin/exoplayer2/al;->cO:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JZZ)J

    move-result-wide v3

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v1, v1, Lcom/applovin/exoplayer2/al;->cO:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2e

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-wide v5, v1, Lcom/applovin/exoplayer2/al;->de:J

    iget-wide v7, v1, Lcom/applovin/exoplayer2/al;->gr:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    :cond_2e
    return-void
.end method

.method private r(Z)Z
    .registers 14

    iget v0, p0, Lcom/applovin/exoplayer2/s;->cE:I

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bw()Z

    move-result p1

    return p1

    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_d

    return v0

    :cond_d
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-boolean v1, p1, Lcom/applovin/exoplayer2/al;->aW:Z

    const/4 v2, 0x1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object p1, p1, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->cr()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    iget-object v1, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v1, v1, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-direct {p0, p1, v1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->ct:Lcom/applovin/exoplayer2/z;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/z;->am()J

    move-result-wide v3

    goto :goto_33

    :cond_2e
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_33
    move-wide v10, v3

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/af;->cq()Lcom/applovin/exoplayer2/ad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ad;->cf()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/ae;->fL:Z

    if-eqz v1, :cond_48

    const/4 v1, 0x1

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    iget-object v3, p1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v3, v3, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v3

    if-eqz v3, :cond_59

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-nez p1, :cond_59

    const/4 p1, 0x1

    goto :goto_5a

    :cond_59
    const/4 p1, 0x0

    :goto_5a
    if-nez v1, :cond_74

    if-nez p1, :cond_74

    iget-object v5, p0, Lcom/applovin/exoplayer2/s;->cl:Lcom/applovin/exoplayer2/aa;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bM()J

    move-result-wide v6

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cp:Lcom/applovin/exoplayer2/m;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/m;->av()Lcom/applovin/exoplayer2/am;

    move-result-object p1

    iget v8, p1, Lcom/applovin/exoplayer2/am;->gD:F

    iget-boolean v9, p0, Lcom/applovin/exoplayer2/s;->cz:Z

    invoke-interface/range {v5 .. v11}, Lcom/applovin/exoplayer2/aa;->a(JFZJ)Z

    move-result p1

    if-eqz p1, :cond_75

    :cond_74
    const/4 v0, 0x1

    :cond_75
    return v0
.end method

.method private s(Z)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->cq()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    goto :goto_11

    :cond_d
    iget-object v1, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v1, v1, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    :goto_11
    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v2, v2, Lcom/applovin/exoplayer2/al;->gv:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/h/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v3, v1}, Lcom/applovin/exoplayer2/al;->b(Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/al;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    :cond_25
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    if-nez v0, :cond_2c

    iget-wide v3, v1, Lcom/applovin/exoplayer2/al;->cO:J

    goto :goto_30

    :cond_2c
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->cg()J

    move-result-wide v3

    :goto_30
    iput-wide v3, v1, Lcom/applovin/exoplayer2/al;->gA:J

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bM()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/applovin/exoplayer2/al;->gB:J

    if-nez v2, :cond_3e

    if-eqz p1, :cond_4f

    :cond_3e
    if-eqz v0, :cond_4f

    iget-boolean p1, v0, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-eqz p1, :cond_4f

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->cj()Lcom/applovin/exoplayer2/h/ad;

    move-result-object p1

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ck()Lcom/applovin/exoplayer2/j/k;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/k;)V

    :cond_4f
    return-void
.end method

.method private v(I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget v1, v0, Lcom/applovin/exoplayer2/al;->gs:I

    if-eq v1, p1, :cond_c

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/al;->W(I)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    :cond_c
    return-void
.end method

.method private w(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iput p1, p0, Lcom/applovin/exoplayer2/s;->bS:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;I)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->q(Z)V

    :cond_12
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->s(Z)V

    return-void
.end method


# virtual methods
.method public W()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->fr(I)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/exoplayer2/l/o$a;->oY()V

    return-void
.end method

.method public a(IILcom/applovin/exoplayer2/h/z;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0x14

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/applovin/exoplayer2/l/o;->a(IIILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->oY()V

    return-void
.end method

.method public declared-synchronized a(Lcom/applovin/exoplayer2/ao;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cw:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cn:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1b

    :cond_e
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/l/o;->c(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->oY()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_28

    monitor-exit p0

    return-void

    :cond_1b
    :goto_1b
    :try_start_1b
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ao;->B(Z)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/applovin/exoplayer2/h/n;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/l/o;->c(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->oY()V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/h/y;)V
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/h/n;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/s;->b(Lcom/applovin/exoplayer2/h/n;)V

    return-void
.end method

.method public a(Ljava/util/List;IJLcom/applovin/exoplayer2/h/z;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/ah$c;",
            ">;IJ",
            "Lcom/applovin/exoplayer2/h/z;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    new-instance v8, Lcom/applovin/exoplayer2/s$a;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/applovin/exoplayer2/s$a;-><init>(Ljava/util/List;Lcom/applovin/exoplayer2/h/z;IJLcom/applovin/exoplayer2/s$1;)V

    const/16 p1, 0x11

    invoke-interface {v0, p1, v8}, Lcom/applovin/exoplayer2/l/o;->c(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->oY()V

    return-void
.end method

.method public aD()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->fr(I)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/exoplayer2/l/o$a;->oY()V

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/am;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/l/o;->c(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->oY()V

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/ba;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    new-instance v1, Lcom/applovin/exoplayer2/s$g;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/s$g;-><init>(Lcom/applovin/exoplayer2/ba;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Lcom/applovin/exoplayer2/l/o;->c(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->oY()V

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/h/n;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/l/o;->c(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->oY()V

    return-void
.end method

.method public b(ZI)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/applovin/exoplayer2/l/o;->j(III)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->oY()V

    return-void
.end method

.method public declared-synchronized bg()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cw:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cn:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_22

    :cond_e
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->fs(I)Z

    new-instance v0, Lcom/applovin/exoplayer2/t1;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/t1;-><init>(Lcom/applovin/exoplayer2/s;)V

    iget-wide v1, p0, Lcom/applovin/exoplayer2/s;->cu:J

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/common/base/Supplier;J)V

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->cw:Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_25

    monitor-exit p0

    return v0

    :cond_22
    :goto_22
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bh()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->co:Landroid/os/Looper;

    return-object v0
.end method

.method public bi()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->fs(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    const-string v0, "Playback error"

    const-string v1, "ExoPlayerImplInternal"

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_8
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_1a4

    return v3

    :pswitch_e
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bo()V

    goto/16 :goto_1a0

    :pswitch_13
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->o(Z)V

    goto/16 :goto_1a0

    :pswitch_1f
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->n(Z)V

    goto/16 :goto_1a0

    :pswitch_2b
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bl()V

    goto/16 :goto_1a0

    :pswitch_30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/h/z;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/z;)V

    goto/16 :goto_1a0

    :pswitch_39
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/h/z;

    invoke-direct {p0, v5, v6, p1}, Lcom/applovin/exoplayer2/s;->b(IILcom/applovin/exoplayer2/h/z;)V

    goto/16 :goto_1a0

    :pswitch_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/s$b;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s$b;)V

    goto/16 :goto_1a0

    :pswitch_4f
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/applovin/exoplayer2/s$a;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s$a;I)V

    goto/16 :goto_1a0

    :pswitch_5a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/s$a;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s$a;)V

    goto/16 :goto_1a0

    :pswitch_63
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/am;

    invoke-direct {p0, p1, v3}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/am;Z)V

    goto/16 :goto_1a0

    :pswitch_6c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/ao;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->d(Lcom/applovin/exoplayer2/ao;)V

    goto/16 :goto_1a0

    :pswitch_75
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/ao;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->b(Lcom/applovin/exoplayer2/ao;)V

    goto/16 :goto_1a0

    :pswitch_7e
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_84

    const/4 v5, 0x1

    goto :goto_85

    :cond_84
    const/4 v5, 0x0

    :goto_85
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v5, p1}, Lcom/applovin/exoplayer2/s;->a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_1a0

    :pswitch_8e
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_94

    const/4 p1, 0x1

    goto :goto_95

    :cond_94
    const/4 p1, 0x0

    :goto_95
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->p(Z)V

    goto/16 :goto_1a0

    :pswitch_9a
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->w(I)V

    goto/16 :goto_1a0

    :pswitch_a1
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bu()V

    goto/16 :goto_1a0

    :pswitch_a6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/h/n;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->d(Lcom/applovin/exoplayer2/h/n;)V

    goto/16 :goto_1a0

    :pswitch_af
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/h/n;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/h/n;)V

    goto/16 :goto_1a0

    :pswitch_b8
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bt()V

    return v4

    :pswitch_bc
    invoke-direct {p0, v3, v4}, Lcom/applovin/exoplayer2/s;->b(ZZ)V

    goto/16 :goto_1a0

    :pswitch_c1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/av;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/av;)V

    goto/16 :goto_1a0

    :pswitch_ca
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/am;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/am;)V

    goto/16 :goto_1a0

    :pswitch_d3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/s$g;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s$g;)V

    goto/16 :goto_1a0

    :pswitch_dc
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->br()V

    goto/16 :goto_1a0

    :pswitch_e1
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_e7

    const/4 v5, 0x1

    goto :goto_e8

    :cond_e7
    const/4 v5, 0x0

    :goto_e8
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, p1, v4, v4}, Lcom/applovin/exoplayer2/s;->a(ZIZI)V

    goto/16 :goto_1a0

    :pswitch_ef
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bk()V
    :try_end_f2
    .catch Lcom/applovin/exoplayer2/p; {:try_start_8 .. :try_end_f2} :catch_159
    .catch Lcom/applovin/exoplayer2/d/f$a; {:try_start_8 .. :try_end_f2} :catch_152
    .catch Lcom/applovin/exoplayer2/ai; {:try_start_8 .. :try_end_f2} :catch_12b
    .catch Lcom/applovin/exoplayer2/k/j; {:try_start_8 .. :try_end_f2} :catch_123
    .catch Lcom/applovin/exoplayer2/h/b; {:try_start_8 .. :try_end_f2} :catch_11b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f2} :catch_113
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_f2} :catch_f4

    goto/16 :goto_1a0

    :catch_f4
    move-exception p1

    instance-of v5, p1, Ljava/lang/IllegalStateException;

    if-nez v5, :cond_fd

    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_ff

    :cond_fd
    const/16 v2, 0x3ec

    :cond_ff
    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/p;->a(Ljava/lang/RuntimeException;I)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v4, v3}, Lcom/applovin/exoplayer2/s;->b(ZZ)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/p;)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    goto/16 :goto_1a0

    :catch_113
    move-exception p1

    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->b(Ljava/io/IOException;I)V

    goto/16 :goto_1a0

    :catch_11b
    move-exception p1

    const/16 v0, 0x3ea

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->b(Ljava/io/IOException;I)V

    goto/16 :goto_1a0

    :catch_123
    move-exception p1

    iget v0, p1, Lcom/applovin/exoplayer2/k/j;->tA:I

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->b(Ljava/io/IOException;I)V

    goto/16 :goto_1a0

    :catch_12b
    move-exception p1

    iget v0, p1, Lcom/applovin/exoplayer2/ai;->gn:I

    if-ne v0, v4, :cond_13e

    iget-boolean v0, p1, Lcom/applovin/exoplayer2/ai;->gm:Z

    if-eqz v0, :cond_139

    const/16 v0, 0xbb9

    const/16 v2, 0xbb9

    goto :goto_14e

    :cond_139
    const/16 v0, 0xbbb

    const/16 v2, 0xbbb

    goto :goto_14e

    :cond_13e
    const/4 v1, 0x4

    if-ne v0, v1, :cond_14e

    iget-boolean v0, p1, Lcom/applovin/exoplayer2/ai;->gm:Z

    if-eqz v0, :cond_14a

    const/16 v0, 0xbba

    const/16 v2, 0xbba

    goto :goto_14e

    :cond_14a
    const/16 v0, 0xbbc

    const/16 v2, 0xbbc

    :cond_14e
    :goto_14e
    invoke-direct {p0, p1, v2}, Lcom/applovin/exoplayer2/s;->b(Ljava/io/IOException;I)V

    goto :goto_1a0

    :catch_152
    move-exception p1

    iget v0, p1, Lcom/applovin/exoplayer2/d/f$a;->errorCode:I

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->b(Ljava/io/IOException;I)V

    goto :goto_1a0

    :catch_159
    move-exception p1

    iget v2, p1, Lcom/applovin/exoplayer2/p;->bs:I

    if-ne v2, v4, :cond_16e

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->cr:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/af;->cs()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    if-eqz v2, :cond_16e

    iget-object v2, v2, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v2, v2, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/p;->a(Lcom/applovin/exoplayer2/h/o;)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    :cond_16e
    iget-boolean v2, p1, Lcom/applovin/exoplayer2/p;->by:Z

    if-eqz v2, :cond_189

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->cJ:Lcom/applovin/exoplayer2/p;

    if-nez v2, :cond_189

    const-string v0, "Recoverable renderer error"

    invoke-static {v1, v0, p1}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->cJ:Lcom/applovin/exoplayer2/p;

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0x19

    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/l/o;->c(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/l/o;->a(Lcom/applovin/exoplayer2/l/o$a;)Z

    goto :goto_1a0

    :cond_189
    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->cJ:Lcom/applovin/exoplayer2/p;

    if-eqz v2, :cond_192

    invoke-virtual {v2, p1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->cJ:Lcom/applovin/exoplayer2/p;

    :cond_192
    invoke-static {v1, v0, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v4, v3}, Lcom/applovin/exoplayer2/s;->b(ZZ)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/p;)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->cd:Lcom/applovin/exoplayer2/al;

    :goto_1a0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->bj()V

    return v4

    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_e1
        :pswitch_dc
        :pswitch_d3
        :pswitch_ca
        :pswitch_c1
        :pswitch_bc
        :pswitch_b8
        :pswitch_af
        :pswitch_a6
        :pswitch_a1
        :pswitch_9a
        :pswitch_8e
        :pswitch_7e
        :pswitch_75
        :pswitch_6c
        :pswitch_63
        :pswitch_5a
        :pswitch_4f
        :pswitch_46
        :pswitch_39
        :pswitch_30
        :pswitch_2b
        :pswitch_1f
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method

.method public j(J)V
    .registers 3

    iput-wide p1, p0, Lcom/applovin/exoplayer2/s;->cK:J

    return-void
.end method

.method public l(Z)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Lcom/applovin/exoplayer2/l/o;->j(III)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->oY()V

    return-void
.end method

.method public u(I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->cm:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/applovin/exoplayer2/l/o;->j(III)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->oY()V

    return-void
.end method

###### Class com.applovin.exoplayer2.s.AnonymousClass1 (com.applovin.exoplayer2.s$1)
.class Lcom/applovin/exoplayer2/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/ar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/s;->c(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cL:Lcom/applovin/exoplayer2/s;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/s;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/s$1;->cL:Lcom/applovin/exoplayer2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bP()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/s$1;->cL:Lcom/applovin/exoplayer2/s;

    invoke-static {v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s;)Lcom/applovin/exoplayer2/l/o;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->fs(I)Z

    return-void
.end method

.method public o(J)V
    .registers 6

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_c

    iget-object p1, p0, Lcom/applovin/exoplayer2/s$1;->cL:Lcom/applovin/exoplayer2/s;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s;Z)Z

    :cond_c
    return-void
.end method

###### Class com.applovin.exoplayer2.s.a (com.applovin.exoplayer2.s$a)
.class final Lcom/applovin/exoplayer2/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final C:Lcom/applovin/exoplayer2/h/z;

.field private final cM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/ah$c;",
            ">;"
        }
    .end annotation
.end field

.field private final cN:I

.field private final cO:J


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/applovin/exoplayer2/h/z;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/ah$c;",
            ">;",
            "Lcom/applovin/exoplayer2/h/z;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/s$a;->cM:Ljava/util/List;

    iput-object p2, p0, Lcom/applovin/exoplayer2/s$a;->C:Lcom/applovin/exoplayer2/h/z;

    iput p3, p0, Lcom/applovin/exoplayer2/s$a;->cN:I

    iput-wide p4, p0, Lcom/applovin/exoplayer2/s$a;->cO:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/applovin/exoplayer2/h/z;IJLcom/applovin/exoplayer2/s$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/applovin/exoplayer2/s$a;-><init>(Ljava/util/List;Lcom/applovin/exoplayer2/h/z;IJ)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/s$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/s$a;->cN:I

    return p0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/s$a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/s$a;->cM:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/s$a;)Lcom/applovin/exoplayer2/h/z;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/s$a;->C:Lcom/applovin/exoplayer2/h/z;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/s$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/s$a;->cO:J

    return-wide v0
.end method

###### Class com.applovin.exoplayer2.s.b (com.applovin.exoplayer2.s$b)
.class Lcom/applovin/exoplayer2/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final C:Lcom/applovin/exoplayer2/h/z;

.field public final cP:I

.field public final cQ:I

.field public final cR:I

###### Class com.applovin.exoplayer2.s.c (com.applovin.exoplayer2.s$c)
.class final Lcom/applovin/exoplayer2/s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/applovin/exoplayer2/s$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final cS:Lcom/applovin/exoplayer2/ao;

.field public cT:I

.field public cU:J

.field public cV:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/ao;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/s$c;->cS:Lcom/applovin/exoplayer2/ao;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/s$c;)I
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/s$c;->cV:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    iget-object v4, p1, Lcom/applovin/exoplayer2/s$c;->cV:Ljava/lang/Object;

    if-nez v4, :cond_f

    const/4 v4, 0x1

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    :goto_10
    if-eq v3, v4, :cond_16

    if-eqz v0, :cond_15

    const/4 v1, -0x1

    :cond_15
    return v1

    :cond_16
    if-nez v0, :cond_19

    return v2

    :cond_19
    iget v0, p0, Lcom/applovin/exoplayer2/s$c;->cT:I

    iget v1, p1, Lcom/applovin/exoplayer2/s$c;->cT:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_21

    return v0

    :cond_21
    iget-wide v0, p0, Lcom/applovin/exoplayer2/s$c;->cU:J

    iget-wide v2, p1, Lcom/applovin/exoplayer2/s$c;->cU:J

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/l/ai;->B(JJ)I

    move-result p1

    return p1
.end method

.method public a(IJLjava/lang/Object;)V
    .registers 5

    iput p1, p0, Lcom/applovin/exoplayer2/s$c;->cT:I

    iput-wide p2, p0, Lcom/applovin/exoplayer2/s$c;->cU:J

    iput-object p4, p0, Lcom/applovin/exoplayer2/s$c;->cV:Ljava/lang/Object;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/s$c;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/s$c;->a(Lcom/applovin/exoplayer2/s$c;)I

    move-result p1

    return p1
.end method

###### Class com.applovin.exoplayer2.s.d (com.applovin.exoplayer2.s$d)
.class public final Lcom/applovin/exoplayer2/s$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private cW:Z

.field public cX:I

.field public cY:Z

.field public cZ:I

.field public cd:Lcom/applovin/exoplayer2/al;

.field public da:Z

.field public db:I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/al;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/s$d;->cd:Lcom/applovin/exoplayer2/al;

    return-void
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/s$d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/s$d;->cW:Z

    return p0
.end method


# virtual methods
.method public d(Lcom/applovin/exoplayer2/al;)V
    .registers 4

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s$d;->cW:Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/s$d;->cd:Lcom/applovin/exoplayer2/al;

    if-eq v1, p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s$d;->cW:Z

    iput-object p1, p0, Lcom/applovin/exoplayer2/s$d;->cd:Lcom/applovin/exoplayer2/al;

    return-void
.end method

.method public x(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s$d;->cW:Z

    if-lez p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s$d;->cW:Z

    iget v0, p0, Lcom/applovin/exoplayer2/s$d;->cX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/applovin/exoplayer2/s$d;->cX:I

    return-void
.end method

.method public y(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s$d;->cY:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/applovin/exoplayer2/s$d;->cZ:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_12

    if-ne p1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    return-void

    :cond_12
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/s$d;->cW:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/s$d;->cY:Z

    iput p1, p0, Lcom/applovin/exoplayer2/s$d;->cZ:I

    return-void
.end method

.method public z(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s$d;->cW:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s$d;->da:Z

    iput p1, p0, Lcom/applovin/exoplayer2/s$d;->db:I

    return-void
.end method

###### Class com.applovin.exoplayer2.s.e (com.applovin.exoplayer2.s$e)
.class public interface abstract Lcom/applovin/exoplayer2/s$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract onPlaybackInfoUpdate(Lcom/applovin/exoplayer2/s$d;)V
.end method

###### Class com.applovin.exoplayer2.s.f (com.applovin.exoplayer2.s$f)
.class final Lcom/applovin/exoplayer2/s$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field public final dc:Lcom/applovin/exoplayer2/h/p$a;

.field public final dd:J

.field public final de:J

.field public final df:Z

.field public final dg:Z

.field public final dh:Z


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/h/p$a;JJZZZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/s$f;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iput-wide p2, p0, Lcom/applovin/exoplayer2/s$f;->dd:J

    iput-wide p4, p0, Lcom/applovin/exoplayer2/s$f;->de:J

    iput-boolean p6, p0, Lcom/applovin/exoplayer2/s$f;->df:Z

    iput-boolean p7, p0, Lcom/applovin/exoplayer2/s$f;->dg:Z

    iput-boolean p8, p0, Lcom/applovin/exoplayer2/s$f;->dh:Z

    return-void
.end method

###### Class com.applovin.exoplayer2.s.g (com.applovin.exoplayer2.s$g)
.class final Lcom/applovin/exoplayer2/s$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field public final cN:I

.field public final ci:Lcom/applovin/exoplayer2/ba;

.field public final di:J


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/ba;IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/s$g;->ci:Lcom/applovin/exoplayer2/ba;

    iput p2, p0, Lcom/applovin/exoplayer2/s$g;->cN:I

    iput-wide p3, p0, Lcom/applovin/exoplayer2/s$g;->di:J

    return-void
.end method

###### Class com.applovin.exoplayer2.s1 (com.applovin.exoplayer2.s1)
.class public final synthetic Lcom/applovin/exoplayer2/s1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/s;

.field public final synthetic b:Lcom/applovin/exoplayer2/ao;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/s;Lcom/applovin/exoplayer2/ao;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/s1;->a:Lcom/applovin/exoplayer2/s;

    iput-object p2, p0, Lcom/applovin/exoplayer2/s1;->b:Lcom/applovin/exoplayer2/ao;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/s1;->a:Lcom/applovin/exoplayer2/s;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s1;->b:Lcom/applovin/exoplayer2/ao;

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/s;->g(Lcom/applovin/exoplayer2/s;Lcom/applovin/exoplayer2/ao;)V

    return-void
.end method

###### Class com.applovin.exoplayer2.t1 (com.applovin.exoplayer2.t1)
.class public final synthetic Lcom/applovin/exoplayer2/t1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/common/base/Supplier;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/s;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/s;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/t1;->a:Lcom/applovin/exoplayer2/s;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/t1;->a:Lcom/applovin/exoplayer2/s;

    invoke-static {v0}, Lcom/applovin/exoplayer2/s;->h(Lcom/applovin/exoplayer2/s;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
