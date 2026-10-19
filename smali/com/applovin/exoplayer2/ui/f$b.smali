###### Class com.applovin.exoplayer2.ui.f.b (com.applovin.exoplayer2.ui.f$b)
.class final Lcom/applovin/exoplayer2/ui/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/applovin/exoplayer2/an$d;
.implements Lcom/applovin/exoplayer2/ui/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ui/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic XG:Lcom/applovin/exoplayer2/ui/f;


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/ui/f;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/ui/f;Lcom/applovin/exoplayer2/ui/f$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/f$b;-><init>(Lcom/applovin/exoplayer2/ui/f;)V

    return-void
.end method


# virtual methods
.method public synthetic A(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->a(Lcom/applovin/exoplayer2/an$d;Z)V

    return-void
.end method

.method public synthetic Z(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->b(Lcom/applovin/exoplayer2/an$d;I)V

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

.method public synthetic a(Lcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/an$e;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/x1;->f(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/an$e;I)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/an$c;)V
    .registers 4

    const/4 p1, 0x2

    new-array v0, p1, [I

    fill-array-data v0, :array_5e

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/an$c;->b([I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/f;->a(Lcom/applovin/exoplayer2/ui/f;)V

    :cond_11
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_66

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/an$c;->b([I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/f;->b(Lcom/applovin/exoplayer2/ui/f;)V

    :cond_22
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/an$c;->X(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/f;->c(Lcom/applovin/exoplayer2/ui/f;)V

    :cond_2f
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/an$c;->X(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/f;->d(Lcom/applovin/exoplayer2/ui/f;)V

    :cond_3c
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_70

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/an$c;->b([I)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/f;->e(Lcom/applovin/exoplayer2/ui/f;)V

    :cond_4d
    new-array p1, p1, [I

    fill-array-data p1, :array_7e

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/an$c;->b([I)Z

    move-result p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->f(Lcom/applovin/exoplayer2/ui/f;)V

    :cond_5d
    return-void

    :array_5e
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_66
    .array-data 4
        0x4
        0x5
        0x7
    .end array-data

    :array_70
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0xd
    .end array-data

    :array_7e
    .array-data 4
        0xb
        0x0
    .end array-data
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/g/a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->h(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/g/a;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/h;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/x1;->i(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/h;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/m/o;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->j(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/m/o;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/o;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->k(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/o;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/ui/k;J)V
    .registers 6

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/ui/f;->a(Lcom/applovin/exoplayer2/ui/f;Z)Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->g(Lcom/applovin/exoplayer2/ui/f;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->g(Lcom/applovin/exoplayer2/ui/f;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/f;->h(Lcom/applovin/exoplayer2/ui/f;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v1}, Lcom/applovin/exoplayer2/ui/f;->i(Lcom/applovin/exoplayer2/ui/f;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/ui/k;JZ)V
    .registers 6

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/ui/f;->a(Lcom/applovin/exoplayer2/ui/f;Z)Z

    if-nez p4, :cond_19

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->j(Lcom/applovin/exoplayer2/ui/f;)Lcom/applovin/exoplayer2/an;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->j(Lcom/applovin/exoplayer2/ui/f;)Lcom/applovin/exoplayer2/an;

    move-result-object p4

    invoke-static {p1, p4, p2, p3}, Lcom/applovin/exoplayer2/ui/f;->a(Lcom/applovin/exoplayer2/ui/f;Lcom/applovin/exoplayer2/an;J)V

    :cond_19
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

.method public b(Lcom/applovin/exoplayer2/ui/k;J)V
    .registers 6

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->g(Lcom/applovin/exoplayer2/ui/f;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->g(Lcom/applovin/exoplayer2/ui/f;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/f;->h(Lcom/applovin/exoplayer2/ui/f;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v1}, Lcom/applovin/exoplayer2/ui/f;->i(Lcom/applovin/exoplayer2/ui/f;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    return-void
.end method

.method public synthetic cD()V
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/w1;->n(Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method

.method public synthetic cE()V
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/x1;->q(Lcom/applovin/exoplayer2/an$d;)V

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

.method public synthetic e(Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->t(Lcom/applovin/exoplayer2/an$d;Ljava/util/List;)V

    return-void
.end method

.method public synthetic e(ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/x1;->u(Lcom/applovin/exoplayer2/an$d;ZI)V

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
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/f;->j(Lcom/applovin/exoplayer2/ui/f;)Lcom/applovin/exoplayer2/an;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v1}, Lcom/applovin/exoplayer2/ui/f;->k(Lcom/applovin/exoplayer2/ui/f;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1c

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->l(Lcom/applovin/exoplayer2/ui/f;)Lcom/applovin/exoplayer2/i;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/i;->c(Lcom/applovin/exoplayer2/an;)Z

    goto/16 :goto_ad

    :cond_1c
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v1}, Lcom/applovin/exoplayer2/ui/f;->m(Lcom/applovin/exoplayer2/ui/f;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2f

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->l(Lcom/applovin/exoplayer2/ui/f;)Lcom/applovin/exoplayer2/i;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/i;->b(Lcom/applovin/exoplayer2/an;)Z

    goto/16 :goto_ad

    :cond_2f
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v1}, Lcom/applovin/exoplayer2/ui/f;->n(Lcom/applovin/exoplayer2/ui/f;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_48

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aB()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_ad

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->l(Lcom/applovin/exoplayer2/ui/f;)Lcom/applovin/exoplayer2/i;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/i;->e(Lcom/applovin/exoplayer2/an;)Z

    goto :goto_ad

    :cond_48
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v1}, Lcom/applovin/exoplayer2/ui/f;->o(Lcom/applovin/exoplayer2/ui/f;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_5a

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->l(Lcom/applovin/exoplayer2/ui/f;)Lcom/applovin/exoplayer2/i;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/i;->d(Lcom/applovin/exoplayer2/an;)Z

    goto :goto_ad

    :cond_5a
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v1}, Lcom/applovin/exoplayer2/ui/f;->p(Lcom/applovin/exoplayer2/ui/f;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_68

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/ui/f;->a(Lcom/applovin/exoplayer2/ui/f;Lcom/applovin/exoplayer2/an;)V

    goto :goto_ad

    :cond_68
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v1}, Lcom/applovin/exoplayer2/ui/f;->q(Lcom/applovin/exoplayer2/ui/f;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_76

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/ui/f;->b(Lcom/applovin/exoplayer2/ui/f;Lcom/applovin/exoplayer2/an;)V

    goto :goto_ad

    :cond_76
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v1}, Lcom/applovin/exoplayer2/ui/f;->r(Lcom/applovin/exoplayer2/ui/f;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_96

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->l(Lcom/applovin/exoplayer2/ui/f;)Lcom/applovin/exoplayer2/i;

    move-result-object p1

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aF()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v2}, Lcom/applovin/exoplayer2/ui/f;->s(Lcom/applovin/exoplayer2/ui/f;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/l/ab;->L(II)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/i;->a(Lcom/applovin/exoplayer2/an;I)Z

    goto :goto_ad

    :cond_96
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v1}, Lcom/applovin/exoplayer2/ui/f;->t(Lcom/applovin/exoplayer2/ui/f;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_ad

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f$b;->XG:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/f;->l(Lcom/applovin/exoplayer2/ui/f;)Lcom/applovin/exoplayer2/i;

    move-result-object p1

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aG()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/i;->b(Lcom/applovin/exoplayer2/an;Z)Z

    :cond_ad
    :goto_ad
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
