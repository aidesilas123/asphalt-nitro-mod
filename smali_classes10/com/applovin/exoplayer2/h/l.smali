###### Class com.applovin.exoplayer2.h.l (com.applovin.exoplayer2.h.l)
.class public final Lcom/applovin/exoplayer2/h/l;
.super Lcom/applovin/exoplayer2/h/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/h/l$b;,
        Lcom/applovin/exoplayer2/h/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/h/e<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private LA:Z

.field private LB:Z

.field private Ly:Lcom/applovin/exoplayer2/h/l$a;

.field private Lz:Lcom/applovin/exoplayer2/h/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final U:Lcom/applovin/exoplayer2/ba$c;

.field private final bI:Lcom/applovin/exoplayer2/ba$a;

.field private final bK:Z

.field private gb:Z

.field private final gf:Lcom/applovin/exoplayer2/h/p;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/h/p;Z)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/e;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/l;->gf:Lcom/applovin/exoplayer2/h/p;

    const/4 v0, 0x1

    if-eqz p2, :cond_10

    invoke-interface {p1}, Lcom/applovin/exoplayer2/h/p;->lc()Z

    move-result p2

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    iput-boolean p2, p0, Lcom/applovin/exoplayer2/h/l;->bK:Z

    new-instance p2, Lcom/applovin/exoplayer2/ba$c;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/ba$c;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/l;->U:Lcom/applovin/exoplayer2/ba$c;

    new-instance p2, Lcom/applovin/exoplayer2/ba$a;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/ba$a;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/l;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/h/p;->lb()Lcom/applovin/exoplayer2/ba;

    move-result-object p2

    if-eqz p2, :cond_31

    const/4 p1, 0x0

    invoke-static {p2, p1, p1}, Lcom/applovin/exoplayer2/h/l$a;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;Ljava/lang/Object;)Lcom/applovin/exoplayer2/h/l$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/l;->LB:Z

    goto :goto_3b

    :cond_31
    invoke-interface {p1}, Lcom/applovin/exoplayer2/h/p;->kZ()Lcom/applovin/exoplayer2/ab;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/h/l$a;->b(Lcom/applovin/exoplayer2/ab;)Lcom/applovin/exoplayer2/h/l$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    :goto_3b
    return-void
.end method

.method private E(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/h/l$a;->a(Lcom/applovin/exoplayer2/h/l$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/applovin/exoplayer2/h/l$a;->LC:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    invoke-static {p1}, Lcom/applovin/exoplayer2/h/l$a;->a(Lcom/applovin/exoplayer2/h/l$a;)Ljava/lang/Object;

    move-result-object p1

    :cond_16
    return-object p1
.end method

.method private F(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/h/l$a;->a(Lcom/applovin/exoplayer2/h/l$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/h/l$a;->a(Lcom/applovin/exoplayer2/h/l$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p1, Lcom/applovin/exoplayer2/h/l$a;->LC:Ljava/lang/Object;

    :cond_16
    return-object p1
.end method

.method private aV(J)V
    .registers 9

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l;->Lz:Lcom/applovin/exoplayer2/h/k;

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    iget-object v2, v0, Lcom/applovin/exoplayer2/h/k;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v2, v2, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/h/l$a;->c(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    return-void

    :cond_10
    iget-object v2, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/l;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v2, v1, v3}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v1

    iget-wide v1, v1, Lcom/applovin/exoplayer2/ba$a;->fH:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_30

    cmp-long v3, p1, v1

    if-ltz v3, :cond_30

    const-wide/16 p1, 0x0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_30
    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/h/k;->aT(J)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/k/b;J)Lcom/applovin/exoplayer2/h/n;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/h/l;->b(Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/k/b;J)Lcom/applovin/exoplayer2/h/k;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/h/p$a;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/h/l;->a(Ljava/lang/Void;Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Void;Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/h/p$a;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p2, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/l;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/h/p$a;->H(Ljava/lang/Object;)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/applovin/exoplayer2/h/p;Lcom/applovin/exoplayer2/ba;)V
    .registers 4

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/h/l;->a(Ljava/lang/Void;Lcom/applovin/exoplayer2/h/p;Lcom/applovin/exoplayer2/ba;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;Lcom/applovin/exoplayer2/h/p;Lcom/applovin/exoplayer2/ba;)V
    .registers 16

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/h/l;->gb:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/h/l$a;->f(Lcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/h/l$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/l;->Lz:Lcom/applovin/exoplayer2/h/k;

    if-eqz p1, :cond_ae

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/k;->kX()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/h/l;->aV(J)V

    goto/16 :goto_ae

    :cond_19
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/h/l;->LB:Z

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/h/l$a;->f(Lcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/h/l$a;

    move-result-object p1

    goto :goto_32

    :cond_2a
    sget-object p1, Lcom/applovin/exoplayer2/ba$c;->iF:Ljava/lang/Object;

    sget-object p2, Lcom/applovin/exoplayer2/h/l$a;->LC:Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lcom/applovin/exoplayer2/h/l$a;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;Ljava/lang/Object;)Lcom/applovin/exoplayer2/h/l$a;

    move-result-object p1

    :goto_32
    iput-object p1, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    goto/16 :goto_ae

    :cond_36
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/l;->U:Lcom/applovin/exoplayer2/ba$c;

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/l;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba$c;->dk()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/l;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ba$c;->ch:Ljava/lang/Object;

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/l;->Lz:Lcom/applovin/exoplayer2/h/k;

    if-eqz v2, :cond_74

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/h/k;->kW()J

    move-result-wide v2

    iget-object v4, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    iget-object v5, p0, Lcom/applovin/exoplayer2/h/l;->Lz:Lcom/applovin/exoplayer2/h/k;

    iget-object v5, v5, Lcom/applovin/exoplayer2/h/k;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v5, v5, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object v6, p0, Lcom/applovin/exoplayer2/h/l;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v4, v5, v6}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    iget-object v4, p0, Lcom/applovin/exoplayer2/h/l;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/ba$a;->df()J

    move-result-wide v4

    add-long/2addr v4, v2

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/l;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {v2, p2, v3}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/ba$c;->dk()J

    move-result-wide v2

    cmp-long p2, v4, v2

    if-eqz p2, :cond_74

    move-wide v10, v4

    goto :goto_75

    :cond_74
    move-wide v10, v0

    :goto_75
    iget-object v7, p0, Lcom/applovin/exoplayer2/h/l;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-object v8, p0, Lcom/applovin/exoplayer2/h/l;->bI:Lcom/applovin/exoplayer2/ba$a;

    const/4 v9, 0x0

    move-object v6, p3

    invoke-virtual/range {v6 .. v11}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object p2

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-boolean p2, p0, Lcom/applovin/exoplayer2/h/l;->LB:Z

    if-eqz p2, :cond_94

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/h/l$a;->f(Lcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/h/l$a;

    move-result-object p1

    goto :goto_98

    :cond_94
    invoke-static {p3, p1, v0}, Lcom/applovin/exoplayer2/h/l$a;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;Ljava/lang/Object;)Lcom/applovin/exoplayer2/h/l$a;

    move-result-object p1

    :goto_98
    iput-object p1, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/l;->Lz:Lcom/applovin/exoplayer2/h/k;

    if-eqz p1, :cond_ae

    invoke-direct {p0, v1, v2}, Lcom/applovin/exoplayer2/h/l;->aV(J)V

    iget-object p1, p1, Lcom/applovin/exoplayer2/h/k;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-object p2, p1, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/h/l;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/h/p$a;->H(Ljava/lang/Object;)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object p1

    goto :goto_af

    :cond_ae
    :goto_ae
    const/4 p1, 0x0

    :goto_af
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/h/l;->LB:Z

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/h/l;->gb:Z

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    invoke-virtual {p0, p2}, Lcom/applovin/exoplayer2/h/a;->e(Lcom/applovin/exoplayer2/ba;)V

    if-eqz p1, :cond_c6

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/l;->Lz:Lcom/applovin/exoplayer2/h/k;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/h/k;

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/h/k;->g(Lcom/applovin/exoplayer2/h/p$a;)V

    :cond_c6
    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/k/b;J)Lcom/applovin/exoplayer2/h/k;
    .registers 6

    new-instance v0, Lcom/applovin/exoplayer2/h/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/h/k;-><init>(Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/k/b;J)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/l;->gf:Lcom/applovin/exoplayer2/h/p;

    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/h/k;->a(Lcom/applovin/exoplayer2/h/p;)V

    iget-boolean p2, p0, Lcom/applovin/exoplayer2/h/l;->gb:Z

    if-eqz p2, :cond_1c

    iget-object p2, p1, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/h/l;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/h/p$a;->H(Ljava/lang/Object;)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/h/k;->g(Lcom/applovin/exoplayer2/h/p$a;)V

    goto :goto_2b

    :cond_1c
    iput-object v0, p0, Lcom/applovin/exoplayer2/h/l;->Lz:Lcom/applovin/exoplayer2/h/k;

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/h/l;->LA:Z

    if-nez p1, :cond_2b

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/l;->LA:Z

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/l;->gf:Lcom/applovin/exoplayer2/h/p;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/h/e;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/h/p;)V

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public b(Lcom/applovin/exoplayer2/k/aa;)V
    .registers 3
    .param p1    # Lcom/applovin/exoplayer2/k/aa;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/h/e;->b(Lcom/applovin/exoplayer2/k/aa;)V

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/h/l;->bK:Z

    if-nez p1, :cond_10

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/l;->LA:Z

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l;->gf:Lcom/applovin/exoplayer2/h/p;

    invoke-virtual {p0, p1, v0}, Lcom/applovin/exoplayer2/h/e;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/h/p;)V

    :cond_10
    return-void
.end method

.method public bf()Lcom/applovin/exoplayer2/ba;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l;->Ly:Lcom/applovin/exoplayer2/h/l$a;

    return-object v0
.end method

.method public f(Lcom/applovin/exoplayer2/h/n;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Lcom/applovin/exoplayer2/h/k;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/k;->kY()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l;->Lz:Lcom/applovin/exoplayer2/h/k;

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/l;->Lz:Lcom/applovin/exoplayer2/h/k;

    :cond_d
    return-void
.end method

.method public kJ()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/l;->gb:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/l;->LA:Z

    invoke-super {p0}, Lcom/applovin/exoplayer2/h/e;->kJ()V

    return-void
.end method

.method public kS()V
    .registers 1

    return-void
.end method

.method public kZ()Lcom/applovin/exoplayer2/ab;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l;->gf:Lcom/applovin/exoplayer2/h/p;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/p;->kZ()Lcom/applovin/exoplayer2/ab;

    move-result-object v0

    return-object v0
.end method
