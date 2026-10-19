###### Class com.applovin.exoplayer2.i.m (com.applovin.exoplayer2.i.m)
.class public final Lcom/applovin/exoplayer2/i/m;
.super Lcom/applovin/exoplayer2/e;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private IF:Z

.field private IG:Z

.field private final Jd:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OA:Lcom/applovin/exoplayer2/i/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OB:Lcom/applovin/exoplayer2/i/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OC:Lcom/applovin/exoplayer2/i/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OD:Lcom/applovin/exoplayer2/i/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OE:I

.field private OF:J

.field private final Ov:Lcom/applovin/exoplayer2/i/l;

.field private final Ow:Lcom/applovin/exoplayer2/i/i;

.field private Ox:Z

.field private Oy:I

.field private Oz:Lcom/applovin/exoplayer2/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final W:Lcom/applovin/exoplayer2/w;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/i/l;Landroid/os/Looper;)V
    .registers 4
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/applovin/exoplayer2/i/i;->Ot:Lcom/applovin/exoplayer2/i/i;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/i/m;-><init>(Lcom/applovin/exoplayer2/i/l;Landroid/os/Looper;Lcom/applovin/exoplayer2/i/i;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/exoplayer2/i/l;Landroid/os/Looper;Lcom/applovin/exoplayer2/i/i;)V
    .registers 5
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e;-><init>(I)V

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/i/l;

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/m;->Ov:Lcom/applovin/exoplayer2/i/l;

    if-nez p2, :cond_10

    const/4 p1, 0x0

    goto :goto_14

    :cond_10
    invoke-static {p2, p0}, Lcom/applovin/exoplayer2/l/ai;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_14
    iput-object p1, p0, Lcom/applovin/exoplayer2/i/m;->Jd:Landroid/os/Handler;

    iput-object p3, p0, Lcom/applovin/exoplayer2/i/m;->Ow:Lcom/applovin/exoplayer2/i/i;

    new-instance p1, Lcom/applovin/exoplayer2/w;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/w;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/m;->W:Lcom/applovin/exoplayer2/w;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/applovin/exoplayer2/i/m;->OF:J

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/i/h;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/m;->Oz:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->mf()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->md()V

    return-void
.end method

.method private k(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->Jd:Landroid/os/Handler;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_10

    :cond_d
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/m;->l(Ljava/util/List;)V

    :goto_10
    return-void
.end method

.method private l(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->Ov:Lcom/applovin/exoplayer2/i/l;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/i/l;->e(Ljava/util/List;)V

    return-void
.end method

.method private ma()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/m;->OB:Lcom/applovin/exoplayer2/i/j;

    const/4 v1, -0x1

    iput v1, p0, Lcom/applovin/exoplayer2/i/m;->OE:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/m;->OC:Lcom/applovin/exoplayer2/i/k;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c/i;->release()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/m;->OC:Lcom/applovin/exoplayer2/i/k;

    :cond_f
    iget-object v1, p0, Lcom/applovin/exoplayer2/i/m;->OD:Lcom/applovin/exoplayer2/i/k;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c/i;->release()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/m;->OD:Lcom/applovin/exoplayer2/i/k;

    :cond_18
    return-void
.end method

.method private mb()V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->ma()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->OA:Lcom/applovin/exoplayer2/i/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/c/d;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/m;->OA:Lcom/applovin/exoplayer2/i/g;

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/i/m;->Oy:I

    return-void
.end method

.method private mc()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/m;->Ox:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->Ow:Lcom/applovin/exoplayer2/i/i;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/m;->Oz:Lcom/applovin/exoplayer2/v;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/v;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/i/i;->x(Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/i/g;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/m;->OA:Lcom/applovin/exoplayer2/i/g;

    return-void
.end method

.method private md()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->mb()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->mc()V

    return-void
.end method

.method private me()J
    .registers 5

    iget v0, p0, Lcom/applovin/exoplayer2/i/m;->OE:I

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, -0x1

    if-ne v0, v3, :cond_b

    return-wide v1

    :cond_b
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->OC:Lcom/applovin/exoplayer2/i/k;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/applovin/exoplayer2/i/m;->OE:I

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/m;->OC:Lcom/applovin/exoplayer2/i/k;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/i/k;->lX()I

    move-result v3

    if-lt v0, v3, :cond_1b

    goto :goto_23

    :cond_1b
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->OC:Lcom/applovin/exoplayer2/i/k;

    iget v1, p0, Lcom/applovin/exoplayer2/i/m;->OE:I

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/i/k;->ej(I)J

    move-result-wide v1

    :goto_23
    return-wide v1
.end method

.method private mf()V
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/i/m;->k(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected a(JZ)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->mf()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/i/m;->IF:Z

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/i/m;->IG:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/applovin/exoplayer2/i/m;->OF:J

    iget p1, p0, Lcom/applovin/exoplayer2/i/m;->Oy:I

    if-eqz p1, :cond_17

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->md()V

    goto :goto_25

    :cond_17
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->ma()V

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/m;->OA:Lcom/applovin/exoplayer2/i/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/c/d;->dI()V

    :goto_25
    return-void
.end method

.method protected a([Lcom/applovin/exoplayer2/v;JJ)V
    .registers 6

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/m;->Oz:Lcom/applovin/exoplayer2/v;

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/m;->OA:Lcom/applovin/exoplayer2/i/g;

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    iput p1, p0, Lcom/applovin/exoplayer2/i/m;->Oy:I

    goto :goto_10

    :cond_d
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->mc()V

    :goto_10
    return-void
.end method

.method protected ac()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/m;->Oz:Lcom/applovin/exoplayer2/v;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/i/m;->OF:J

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->mf()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->mb()V

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/v;)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->Ow:Lcom/applovin/exoplayer2/i/i;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/i/i;->d(Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget p1, p1, Lcom/applovin/exoplayer2/v;->dR:I

    if-nez p1, :cond_e

    const/4 p1, 0x4

    goto :goto_f

    :cond_e
    const/4 p1, 0x2

    :goto_f
    invoke-static {p1}, Lcom/applovin/exoplayer2/z1;->b(I)I

    move-result p1

    return p1

    :cond_14
    iget-object p1, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/u;->aY(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/applovin/exoplayer2/z1;->b(I)I

    move-result p1

    return p1

    :cond_22
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/applovin/exoplayer2/z1;->b(I)I

    move-result p1

    return p1
.end method

.method public bg(J)V
    .registers 4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->U()Z

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/i/m;->OF:J

    return-void
.end method

.method public cR()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/m;->IG:Z

    return v0
.end method

.method public g(JJ)V
    .registers 13

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->U()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_1b

    iget-wide v0, p0, Lcom/applovin/exoplayer2/i/m;->OF:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1b

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1b

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->ma()V

    iput-boolean p4, p0, Lcom/applovin/exoplayer2/i/m;->IG:Z

    :cond_1b
    iget-boolean p3, p0, Lcom/applovin/exoplayer2/i/m;->IG:Z

    if-eqz p3, :cond_20

    return-void

    :cond_20
    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->OD:Lcom/applovin/exoplayer2/i/k;

    if-nez p3, :cond_45

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->OA:Lcom/applovin/exoplayer2/i/g;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {p3, p1, p2}, Lcom/applovin/exoplayer2/i/g;->bd(J)V

    :try_start_2f
    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->OA:Lcom/applovin/exoplayer2/i/g;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {p3}, Lcom/applovin/exoplayer2/c/d;->hd()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/applovin/exoplayer2/i/k;

    iput-object p3, p0, Lcom/applovin/exoplayer2/i/m;->OD:Lcom/applovin/exoplayer2/i/k;
    :try_end_3f
    .catch Lcom/applovin/exoplayer2/i/h; {:try_start_2f .. :try_end_3f} :catch_40

    goto :goto_45

    :catch_40
    move-exception p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/m;->a(Lcom/applovin/exoplayer2/i/h;)V

    return-void

    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->P()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4d

    return-void

    :cond_4d
    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->OC:Lcom/applovin/exoplayer2/i/k;

    const/4 v1, 0x0

    if-eqz p3, :cond_66

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->me()J

    move-result-wide v2

    const/4 p3, 0x0

    :goto_57
    cmp-long v4, v2, p1

    if-gtz v4, :cond_67

    iget p3, p0, Lcom/applovin/exoplayer2/i/m;->OE:I

    add-int/2addr p3, p4

    iput p3, p0, Lcom/applovin/exoplayer2/i/m;->OE:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->me()J

    move-result-wide v2

    const/4 p3, 0x1

    goto :goto_57

    :cond_66
    const/4 p3, 0x0

    :cond_67
    iget-object v2, p0, Lcom/applovin/exoplayer2/i/m;->OD:Lcom/applovin/exoplayer2/i/k;

    const/4 v3, 0x0

    if-eqz v2, :cond_a7

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/c/a;->gY()Z

    move-result v4

    if-eqz v4, :cond_8f

    if-nez p3, :cond_a7

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->me()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_a7

    iget v2, p0, Lcom/applovin/exoplayer2/i/m;->Oy:I

    if-ne v2, v0, :cond_89

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->md()V

    goto :goto_a7

    :cond_89
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->ma()V

    iput-boolean p4, p0, Lcom/applovin/exoplayer2/i/m;->IG:Z

    goto :goto_a7

    :cond_8f
    iget-wide v4, v2, Lcom/applovin/exoplayer2/c/i;->rJ:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_a7

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->OC:Lcom/applovin/exoplayer2/i/k;

    if-eqz p3, :cond_9c

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/c/i;->release()V

    :cond_9c
    invoke-virtual {v2, p1, p2}, Lcom/applovin/exoplayer2/i/k;->be(J)I

    move-result p3

    iput p3, p0, Lcom/applovin/exoplayer2/i/m;->OE:I

    iput-object v2, p0, Lcom/applovin/exoplayer2/i/m;->OC:Lcom/applovin/exoplayer2/i/k;

    iput-object v3, p0, Lcom/applovin/exoplayer2/i/m;->OD:Lcom/applovin/exoplayer2/i/k;

    const/4 p3, 0x1

    :cond_a7
    :goto_a7
    if-eqz p3, :cond_b7

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->OC:Lcom/applovin/exoplayer2/i/k;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->OC:Lcom/applovin/exoplayer2/i/k;

    invoke-virtual {p3, p1, p2}, Lcom/applovin/exoplayer2/i/k;->bf(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/m;->k(Ljava/util/List;)V

    :cond_b7
    iget p1, p0, Lcom/applovin/exoplayer2/i/m;->Oy:I

    if-ne p1, v0, :cond_bc

    return-void

    :cond_bc
    :goto_bc
    :try_start_bc
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/i/m;->IF:Z

    if-nez p1, :cond_139

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/m;->OB:Lcom/applovin/exoplayer2/i/j;

    if-nez p1, :cond_d7

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/m;->OA:Lcom/applovin/exoplayer2/i/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/c/d;->hc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/i/j;

    if-nez p1, :cond_d5

    return-void

    :cond_d5
    iput-object p1, p0, Lcom/applovin/exoplayer2/i/m;->OB:Lcom/applovin/exoplayer2/i/j;

    :cond_d7
    iget p2, p0, Lcom/applovin/exoplayer2/i/m;->Oy:I

    if-ne p2, p4, :cond_ef

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/c/a;->bs(I)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/i/m;->OA:Lcom/applovin/exoplayer2/i/g;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/c/d;->D(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/applovin/exoplayer2/i/m;->OB:Lcom/applovin/exoplayer2/i/j;

    iput v0, p0, Lcom/applovin/exoplayer2/i/m;->Oy:I

    return-void

    :cond_ef
    iget-object p2, p0, Lcom/applovin/exoplayer2/i/m;->W:Lcom/applovin/exoplayer2/w;

    invoke-virtual {p0, p2, p1, v1}, Lcom/applovin/exoplayer2/e;->a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_131

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/a;->gY()Z

    move-result p2

    if-eqz p2, :cond_103

    iput-boolean p4, p0, Lcom/applovin/exoplayer2/i/m;->IF:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/i/m;->Ox:Z

    goto :goto_11f

    :cond_103
    iget-object p2, p0, Lcom/applovin/exoplayer2/i/m;->W:Lcom/applovin/exoplayer2/w;

    iget-object p2, p2, Lcom/applovin/exoplayer2/w;->dU:Lcom/applovin/exoplayer2/v;

    if-nez p2, :cond_10a

    return-void

    :cond_10a
    iget-wide p2, p2, Lcom/applovin/exoplayer2/v;->dD:J

    iput-wide p2, p1, Lcom/applovin/exoplayer2/i/j;->dD:J

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/g;->hh()V

    iget-boolean p2, p0, Lcom/applovin/exoplayer2/i/m;->Ox:Z

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/a;->gZ()Z

    move-result p3

    if-nez p3, :cond_11b

    const/4 p3, 0x1

    goto :goto_11c

    :cond_11b
    const/4 p3, 0x0

    :goto_11c
    and-int/2addr p2, p3

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/i/m;->Ox:Z

    :goto_11f
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/i/m;->Ox:Z

    if-nez p2, :cond_bc

    iget-object p2, p0, Lcom/applovin/exoplayer2/i/m;->OA:Lcom/applovin/exoplayer2/i/g;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/c/d;->D(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/applovin/exoplayer2/i/m;->OB:Lcom/applovin/exoplayer2/i/j;
    :try_end_130
    .catch Lcom/applovin/exoplayer2/i/h; {:try_start_bc .. :try_end_130} :catch_135

    goto :goto_bc

    :cond_131
    const/4 p1, -0x3

    if-ne p2, p1, :cond_bc

    return-void

    :catch_135
    move-exception p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/m;->a(Lcom/applovin/exoplayer2/i/h;)V

    :cond_139
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/m;->l(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isReady()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
