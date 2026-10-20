###### Class com.applovin.exoplayer2.ui.g.a (com.applovin.exoplayer2.ui.g$a)
.class final Lcom/applovin/exoplayer2/ui/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/applovin/exoplayer2/an$d;
.implements Lcom/applovin/exoplayer2/ui/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ui/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private Yh:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic Yi:Lcom/applovin/exoplayer2/ui/g;

.field private final bI:Lcom/applovin/exoplayer2/ba$a;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/ui/g;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/applovin/exoplayer2/ba$a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/ba$a;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->bI:Lcom/applovin/exoplayer2/ba$a;

    return-void
.end method


# virtual methods
.method public synthetic A(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->a(Lcom/applovin/exoplayer2/an$d;Z)V

    return-void
.end method

.method public Z(I)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->e(Lcom/applovin/exoplayer2/ui/g;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->f(Lcom/applovin/exoplayer2/ui/g;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->g(Lcom/applovin/exoplayer2/ui/g;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/ab;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/x1;->c(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/ab;I)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/ac;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->d(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/ac;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/ak;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->e(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/ak;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/an$e;I)V
    .registers 4

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->h(Lcom/applovin/exoplayer2/ui/g;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->i(Lcom/applovin/exoplayer2/ui/g;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ui/g;->nG()V

    :cond_15
    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/an$c;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/x1;->g(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/an$c;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/g/a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->h(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/g/a;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/h;)V
    .registers 6

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->d(Lcom/applovin/exoplayer2/ui/g;)Lcom/applovin/exoplayer2/an;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/an;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iput-object v1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yh:Ljava/lang/Object;

    goto :goto_50

    :cond_1a
    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aU()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/ad;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aK()I

    move-result p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->bI:Lcom/applovin/exoplayer2/ba$a;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p1

    iget-object p1, p1, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yh:Ljava/lang/Object;

    goto :goto_50

    :cond_34
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yh:Ljava/lang/Object;

    if-eqz v0, :cond_50

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4e

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/g$a;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p2, v0, v2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$a;->cN:I

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result p1

    if-ne p1, p2, :cond_4e

    return-void

    :cond_4e
    iput-object v1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yh:Ljava/lang/Object;

    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ui/g;->a(Lcom/applovin/exoplayer2/ui/g;Z)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/m/o;)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->b(Lcom/applovin/exoplayer2/ui/g;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/o;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->k(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/o;)V

    return-void
.end method

.method public synthetic aa(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->l(Lcom/applovin/exoplayer2/an$d;I)V

    return-void
.end method

.method public synthetic ab(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->m(Lcom/applovin/exoplayer2/an$d;I)V

    return-void
.end method

.method public synthetic ac(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->j(Lcom/applovin/exoplayer2/an$b;I)V

    return-void
.end method

.method public synthetic b(Lcom/applovin/exoplayer2/ak;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->n(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/ak;)V

    return-void
.end method

.method public synthetic b(Lcom/applovin/exoplayer2/am;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->o(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/am;)V

    return-void
.end method

.method public synthetic b(Lcom/applovin/exoplayer2/ba;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/x1;->p(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/ba;I)V

    return-void
.end method

.method public synthetic cD()V
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/w1;->n(Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method

.method public cE()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/g;->c(Lcom/applovin/exoplayer2/ui/g;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/g;->c(Lcom/applovin/exoplayer2/ui/g;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method public synthetic d(Lcom/applovin/exoplayer2/an$a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->r(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/an$a;)V

    return-void
.end method

.method public synthetic d(ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/w1;->p(Lcom/applovin/exoplayer2/an$b;ZI)V

    return-void
.end method

.method public synthetic e(IZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/x1;->s(Lcom/applovin/exoplayer2/an$d;IZ)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/g;->a(Lcom/applovin/exoplayer2/ui/g;)Lcom/applovin/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/g;->a(Lcom/applovin/exoplayer2/ui/g;)Lcom/applovin/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public e(ZI)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->e(Lcom/applovin/exoplayer2/ui/g;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->g(Lcom/applovin/exoplayer2/ui/g;)V

    return-void
.end method

.method public eZ(I)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->l(Lcom/applovin/exoplayer2/ui/g;)V

    return-void
.end method

.method public synthetic f(II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/x1;->v(Lcom/applovin/exoplayer2/an$d;II)V

    return-void
.end method

.method public synthetic g(F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->w(Lcom/applovin/exoplayer2/an$d;F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->k(Lcom/applovin/exoplayer2/ui/g;)Z

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p2}, Lcom/applovin/exoplayer2/ui/g;->j(Lcom/applovin/exoplayer2/ui/g;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ui/g;->b(Landroid/view/TextureView;I)V

    return-void
.end method

.method public synthetic w(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->x(Lcom/applovin/exoplayer2/an$d;Z)V

    return-void
.end method

.method public synthetic x(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->s(Lcom/applovin/exoplayer2/an$b;Z)V

    return-void
.end method

.method public synthetic y(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->y(Lcom/applovin/exoplayer2/an$d;Z)V

    return-void
.end method

.method public synthetic z(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->z(Lcom/applovin/exoplayer2/an$d;Z)V

    return-void
.end method
