###### Class com.applovin.exoplayer2.h.u (com.applovin.exoplayer2.h.u)
.class public final Lcom/applovin/exoplayer2/h/u;
.super Lcom/applovin/exoplayer2/h/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/h/t$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/h/u$a;
    }
.end annotation


# instance fields
.field private final LS:Lcom/applovin/exoplayer2/d/h;

.field private final Lc:Lcom/applovin/exoplayer2/k/i$a;

.field private final MA:Lcom/applovin/exoplayer2/h/s$a;

.field private final MB:Lcom/applovin/exoplayer2/k/v;

.field private final MC:I

.field private MD:Z

.field private ME:J

.field private MF:Z

.field private MG:Z

.field private MH:Lcom/applovin/exoplayer2/k/aa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final ea:Lcom/applovin/exoplayer2/ab$f;

.field private final gL:Lcom/applovin/exoplayer2/ab;


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/ab;Lcom/applovin/exoplayer2/k/i$a;Lcom/applovin/exoplayer2/h/s$a;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/k/v;I)V
    .registers 8

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/a;-><init>()V

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab;->ea:Lcom/applovin/exoplayer2/ab$f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/ab$f;

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/u;->ea:Lcom/applovin/exoplayer2/ab$f;

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/u;->gL:Lcom/applovin/exoplayer2/ab;

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/u;->Lc:Lcom/applovin/exoplayer2/k/i$a;

    iput-object p3, p0, Lcom/applovin/exoplayer2/h/u;->MA:Lcom/applovin/exoplayer2/h/s$a;

    iput-object p4, p0, Lcom/applovin/exoplayer2/h/u;->LS:Lcom/applovin/exoplayer2/d/h;

    iput-object p5, p0, Lcom/applovin/exoplayer2/h/u;->MB:Lcom/applovin/exoplayer2/k/v;

    iput p6, p0, Lcom/applovin/exoplayer2/h/u;->MC:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/u;->MD:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/u;->ME:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/ab;Lcom/applovin/exoplayer2/k/i$a;Lcom/applovin/exoplayer2/h/s$a;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/k/v;ILcom/applovin/exoplayer2/h/u$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/applovin/exoplayer2/h/u;-><init>(Lcom/applovin/exoplayer2/ab;Lcom/applovin/exoplayer2/k/i$a;Lcom/applovin/exoplayer2/h/s$a;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/k/v;I)V

    return-void
.end method

.method private ls()V
    .registers 10

    new-instance v8, Lcom/applovin/exoplayer2/h/aa;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/h/u;->ME:J

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/h/u;->MF:Z

    iget-boolean v5, p0, Lcom/applovin/exoplayer2/h/u;->MG:Z

    iget-object v7, p0, Lcom/applovin/exoplayer2/h/u;->gL:Lcom/applovin/exoplayer2/ab;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/applovin/exoplayer2/h/aa;-><init>(JZZZLjava/lang/Object;Lcom/applovin/exoplayer2/ab;)V

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/u;->MD:Z

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/applovin/exoplayer2/h/u$1;

    invoke-direct {v0, p0, v8}, Lcom/applovin/exoplayer2/h/u$1;-><init>(Lcom/applovin/exoplayer2/h/u;Lcom/applovin/exoplayer2/ba;)V

    move-object v8, v0

    :cond_1a
    invoke-virtual {p0, v8}, Lcom/applovin/exoplayer2/h/a;->e(Lcom/applovin/exoplayer2/ba;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/k/b;J)Lcom/applovin/exoplayer2/h/n;
    .registers 19

    move-object v12, p0

    iget-object v0, v12, Lcom/applovin/exoplayer2/h/u;->Lc:Lcom/applovin/exoplayer2/k/i$a;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/k/i$a;->of()Lcom/applovin/exoplayer2/k/i;

    move-result-object v2

    iget-object v0, v12, Lcom/applovin/exoplayer2/h/u;->MH:Lcom/applovin/exoplayer2/k/aa;

    if-eqz v0, :cond_e

    invoke-interface {v2, v0}, Lcom/applovin/exoplayer2/k/i;->c(Lcom/applovin/exoplayer2/k/aa;)V

    :cond_e
    new-instance v13, Lcom/applovin/exoplayer2/h/t;

    iget-object v0, v12, Lcom/applovin/exoplayer2/h/u;->ea:Lcom/applovin/exoplayer2/ab$f;

    iget-object v1, v0, Lcom/applovin/exoplayer2/ab$f;->ef:Landroid/net/Uri;

    iget-object v0, v12, Lcom/applovin/exoplayer2/h/u;->MA:Lcom/applovin/exoplayer2/h/s$a;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/s$a;->createProgressiveMediaExtractor()Lcom/applovin/exoplayer2/h/s;

    move-result-object v3

    iget-object v4, v12, Lcom/applovin/exoplayer2/h/u;->LS:Lcom/applovin/exoplayer2/d/h;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/h/a;->f(Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/d/g$a;

    move-result-object v5

    iget-object v6, v12, Lcom/applovin/exoplayer2/h/u;->MB:Lcom/applovin/exoplayer2/k/v;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/h/a;->e(Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/h/q$a;

    move-result-object v7

    iget-object v0, v12, Lcom/applovin/exoplayer2/h/u;->ea:Lcom/applovin/exoplayer2/ab$f;

    iget-object v10, v0, Lcom/applovin/exoplayer2/ab$f;->eo:Ljava/lang/String;

    iget v11, v12, Lcom/applovin/exoplayer2/h/u;->MC:I

    move-object v0, v13

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/applovin/exoplayer2/h/t;-><init>(Landroid/net/Uri;Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/h/s;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/k/v;Lcom/applovin/exoplayer2/h/q$a;Lcom/applovin/exoplayer2/h/t$b;Lcom/applovin/exoplayer2/k/b;Ljava/lang/String;I)V

    return-object v13
.end method

.method public a(JZZ)V
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    iget-wide p1, p0, Lcom/applovin/exoplayer2/h/u;->ME:J

    :cond_b
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/u;->MD:Z

    if-nez v0, :cond_1e

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/u;->ME:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1e

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/u;->MF:Z

    if-ne v0, p3, :cond_1e

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/u;->MG:Z

    if-ne v0, p4, :cond_1e

    return-void

    :cond_1e
    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/u;->ME:J

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/h/u;->MF:Z

    iput-boolean p4, p0, Lcom/applovin/exoplayer2/h/u;->MG:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/u;->MD:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/u;->ls()V

    return-void
.end method

.method protected b(Lcom/applovin/exoplayer2/k/aa;)V
    .registers 2
    .param p1    # Lcom/applovin/exoplayer2/k/aa;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/u;->MH:Lcom/applovin/exoplayer2/k/aa;

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/u;->LS:Lcom/applovin/exoplayer2/d/h;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/d/h;->aD()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/u;->ls()V

    return-void
.end method

.method public f(Lcom/applovin/exoplayer2/h/n;)V
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/h/t;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/t;->release()V

    return-void
.end method

.method protected kJ()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/u;->LS:Lcom/applovin/exoplayer2/d/h;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/h;->release()V

    return-void
.end method

.method public kS()V
    .registers 1

    return-void
.end method

.method public kZ()Lcom/applovin/exoplayer2/ab;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/u;->gL:Lcom/applovin/exoplayer2/ab;

    return-object v0
.end method
