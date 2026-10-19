###### Class com.applovin.exoplayer2.e.i.y (com.applovin.exoplayer2.e.i.y)
.class public final Lcom/applovin/exoplayer2/e/i/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/ad;


# instance fields
.field private Cu:I

.field private final Fj:Lcom/applovin/exoplayer2/e/i/x;

.field private final Fk:Lcom/applovin/exoplayer2/l/y;

.field private Fl:I

.field private Fm:Z

.field private Fn:Z


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/i/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/y;->Fj:Lcom/applovin/exoplayer2/e/i/x;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/y;->Fj:Lcom/applovin/exoplayer2/e/i/x;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/x;->a(Lcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/y;->Fn:Z

    return-void
.end method

.method public jb()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/y;->Fn:Z

    return-void
.end method

.method public p(Lcom/applovin/exoplayer2/l/y;I)V
    .registers 9

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    const/4 v2, -0x1

    if-eqz p2, :cond_15

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v3

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_16

    :cond_15
    const/4 v4, -0x1

    :goto_16
    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/i/y;->Fn:Z

    if-eqz v3, :cond_24

    if-nez p2, :cond_1d

    return-void

    :cond_1d
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/i/y;->Fn:Z

    invoke-virtual {p1, v4}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/y;->Cu:I

    :cond_24
    :goto_24
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result p2

    if-lez p2, :cond_106

    iget p2, p0, Lcom/applovin/exoplayer2/e/i/y;->Cu:I

    const/4 v3, 0x3

    if-ge p2, v3, :cond_b1

    if-nez p2, :cond_44

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p2

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    const/16 v4, 0xff

    if-ne p2, v4, :cond_44

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/y;->Fn:Z

    return-void

    :cond_44
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result p2

    iget v4, p0, Lcom/applovin/exoplayer2/e/i/y;->Cu:I

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v4

    iget v5, p0, Lcom/applovin/exoplayer2/e/i/y;->Cu:I

    invoke-virtual {p1, v4, v5, p2}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    iget v4, p0, Lcom/applovin/exoplayer2/e/i/y;->Cu:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/applovin/exoplayer2/e/i/y;->Cu:I

    if-ne v4, v3, :cond_24

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2, v3}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p2

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v4

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_83

    const/4 v5, 0x1

    goto :goto_84

    :cond_83
    const/4 v5, 0x0

    :goto_84
    iput-boolean v5, p0, Lcom/applovin/exoplayer2/e/i/y;->Fm:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v4

    add-int/2addr p2, v3

    iput p2, p0, Lcom/applovin/exoplayer2/e/i/y;->Fl:I

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->pl()I

    move-result p2

    iget v3, p0, Lcom/applovin/exoplayer2/e/i/y;->Fl:I

    if-ge p2, v3, :cond_24

    const/16 p2, 0x1002

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->pl()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v3, p2}, Lcom/applovin/exoplayer2/l/y;->bj(I)V

    goto/16 :goto_24

    :cond_b1
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result p2

    iget v3, p0, Lcom/applovin/exoplayer2/e/i/y;->Fl:I

    iget v4, p0, Lcom/applovin/exoplayer2/e/i/y;->Cu:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v3

    iget v4, p0, Lcom/applovin/exoplayer2/e/i/y;->Cu:I

    invoke-virtual {p1, v3, v4, p2}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    iget v3, p0, Lcom/applovin/exoplayer2/e/i/y;->Cu:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/applovin/exoplayer2/e/i/y;->Cu:I

    iget p2, p0, Lcom/applovin/exoplayer2/e/i/y;->Fl:I

    if-ne v3, p2, :cond_24

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/i/y;->Fm:Z

    if-eqz v3, :cond_f1

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p2

    iget v3, p0, Lcom/applovin/exoplayer2/e/i/y;->Fl:I

    invoke-static {p2, v1, v3, v2}, Lcom/applovin/exoplayer2/l/ai;->b([BIII)I

    move-result p2

    if-eqz p2, :cond_e7

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/y;->Fn:Z

    return-void

    :cond_e7
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    iget v3, p0, Lcom/applovin/exoplayer2/e/i/y;->Fl:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p2, v3}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    goto :goto_f6

    :cond_f1
    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v3, p2}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    :goto_f6
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/y;->Fj:Lcom/applovin/exoplayer2/e/i/x;

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/y;->Fk:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {p2, v3}, Lcom/applovin/exoplayer2/e/i/x;->K(Lcom/applovin/exoplayer2/l/y;)V

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/y;->Cu:I

    goto/16 :goto_24

    :cond_106
    return-void
.end method
