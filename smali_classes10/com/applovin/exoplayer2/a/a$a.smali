###### Class com.applovin.exoplayer2.a.a.C0015a (com.applovin.exoplayer2.a.a$a)
.class final Lcom/applovin/exoplayer2/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final bI:Lcom/applovin/exoplayer2/ba$a;

.field private jd:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/h/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private je:Lcom/applovin/exoplayer2/common/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/u<",
            "Lcom/applovin/exoplayer2/h/p$a;",
            "Lcom/applovin/exoplayer2/ba;",
            ">;"
        }
    .end annotation
.end field

.field private jf:Lcom/applovin/exoplayer2/h/p$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private jg:Lcom/applovin/exoplayer2/h/p$a;

.field private jh:Lcom/applovin/exoplayer2/h/p$a;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/ba$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/a$a;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/a$a;->jd:Lcom/applovin/exoplayer2/common/a/s;

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/u;->gi()Lcom/applovin/exoplayer2/common/a/u;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/a$a;->je:Lcom/applovin/exoplayer2/common/a/u;

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/a/a$a;)Lcom/applovin/exoplayer2/common/a/s;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/a/a$a;->jd:Lcom/applovin/exoplayer2/common/a/s;

    return-object p0
.end method

.method private static a(Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/common/a/s;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/h/p$a;
    .registers 14
    .param p2    # Lcom/applovin/exoplayer2/h/p$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/an;",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/h/p$a;",
            ">;",
            "Lcom/applovin/exoplayer2/h/p$a;",
            "Lcom/applovin/exoplayer2/ba$a;",
            ")",
            "Lcom/applovin/exoplayer2/h/p$a;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aK()I

    move-result v1

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    move-object v2, v3

    goto :goto_15

    :cond_11
    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ba;->b(I)Ljava/lang/Object;

    move-result-object v2

    :goto_15
    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_38

    :cond_22
    invoke-virtual {v0, v1, p3}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aN()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/ba$a;->df()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/applovin/exoplayer2/ba$a;->B(J)I

    move-result p3

    goto :goto_39

    :cond_38
    :goto_38
    const/4 p3, -0x1

    :goto_39
    const/4 v0, 0x0

    :goto_3a
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/h/p$a;

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v6

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aQ()I

    move-result v7

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aR()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lcom/applovin/exoplayer2/a/a$a;->a(Lcom/applovin/exoplayer2/h/p$a;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_5c

    return-object v1

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_5f
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7d

    if-eqz p2, :cond_7d

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v6

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aQ()I

    move-result v7

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aR()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lcom/applovin/exoplayer2/a/a$a;->a(Lcom/applovin/exoplayer2/h/p$a;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_7d

    return-object p2

    :cond_7d
    return-object v3
.end method

.method private a(Lcom/applovin/exoplayer2/common/a/u$a;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)V
    .registers 6
    .param p2    # Lcom/applovin/exoplayer2/h/p$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/common/a/u$a<",
            "Lcom/applovin/exoplayer2/h/p$a;",
            "Lcom/applovin/exoplayer2/ba;",
            ">;",
            "Lcom/applovin/exoplayer2/h/p$a;",
            "Lcom/applovin/exoplayer2/ba;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p2, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/common/a/u$a;->l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/u$a;

    goto :goto_1d

    :cond_10
    iget-object p3, p0, Lcom/applovin/exoplayer2/a/a$a;->je:Lcom/applovin/exoplayer2/common/a/u;

    invoke-virtual {p3, p2}, Lcom/applovin/exoplayer2/common/a/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/applovin/exoplayer2/ba;

    if-eqz p3, :cond_1d

    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/common/a/u$a;->l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/u$a;

    :cond_1d
    :goto_1d
    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/h/p$a;Ljava/lang/Object;ZIII)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    if-eqz p2, :cond_14

    iget p1, p0, Lcom/applovin/exoplayer2/h/o;->gP:I

    if-ne p1, p3, :cond_14

    iget p1, p0, Lcom/applovin/exoplayer2/h/o;->gQ:I

    if-eq p1, p4, :cond_1f

    :cond_14
    if-nez p2, :cond_20

    iget p1, p0, Lcom/applovin/exoplayer2/h/o;->gP:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_20

    iget p0, p0, Lcom/applovin/exoplayer2/h/o;->LM:I

    if-ne p0, p5, :cond_20

    :cond_1f
    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method private d(Lcom/applovin/exoplayer2/ba;)V
    .registers 5

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/u;->gj()Lcom/applovin/exoplayer2/common/a/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/a$a;->jd:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/a$a;->jg:Lcom/applovin/exoplayer2/h/p$a;

    invoke-direct {p0, v0, v1, p1}, Lcom/applovin/exoplayer2/a/a$a;->a(Lcom/applovin/exoplayer2/common/a/u$a;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/a$a;->jh:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/a/a$a;->jg:Lcom/applovin/exoplayer2/h/p$a;

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/a$a;->jh:Lcom/applovin/exoplayer2/h/p$a;

    invoke-direct {p0, v0, v1, p1}, Lcom/applovin/exoplayer2/a/a$a;->a(Lcom/applovin/exoplayer2/common/a/u$a;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)V

    :cond_20
    iget-object v1, p0, Lcom/applovin/exoplayer2/a/a$a;->jf:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/a/a$a;->jg:Lcom/applovin/exoplayer2/h/p$a;

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/a$a;->jf:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/a/a$a;->jh:Lcom/applovin/exoplayer2/h/p$a;

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/a$a;->jf:Lcom/applovin/exoplayer2/h/p$a;

    invoke-direct {p0, v0, v1, p1}, Lcom/applovin/exoplayer2/a/a$a;->a(Lcom/applovin/exoplayer2/common/a/u$a;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)V

    goto :goto_60

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    iget-object v2, p0, Lcom/applovin/exoplayer2/a/a$a;->jd:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    iget-object v2, p0, Lcom/applovin/exoplayer2/a/a$a;->jd:Lcom/applovin/exoplayer2/common/a/s;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/h/p$a;

    invoke-direct {p0, v0, v2, p1}, Lcom/applovin/exoplayer2/a/a$a;->a(Lcom/applovin/exoplayer2/common/a/u$a;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_51
    iget-object v1, p0, Lcom/applovin/exoplayer2/a/a$a;->jd:Lcom/applovin/exoplayer2/common/a/s;

    iget-object v2, p0, Lcom/applovin/exoplayer2/a/a$a;->jf:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/common/a/s;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/a$a;->jf:Lcom/applovin/exoplayer2/h/p$a;

    invoke-direct {p0, v0, v1, p1}, Lcom/applovin/exoplayer2/a/a$a;->a(Lcom/applovin/exoplayer2/common/a/u$a;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)V

    :cond_60
    :goto_60
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/u$a;->gq()Lcom/applovin/exoplayer2/common/a/u;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/a$a;->je:Lcom/applovin/exoplayer2/common/a/u;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/an;)V
    .registers 5
    .param p2    # Lcom/applovin/exoplayer2/h/p$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/h/p$a;",
            ">;",
            "Lcom/applovin/exoplayer2/h/p$a;",
            "Lcom/applovin/exoplayer2/an;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/a/s;->d(Ljava/util/Collection;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/a/a$a;->jd:Lcom/applovin/exoplayer2/common/a/s;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/h/p$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/a$a;->jg:Lcom/applovin/exoplayer2/h/p$a;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/h/p$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/a$a;->jh:Lcom/applovin/exoplayer2/h/p$a;

    :cond_1d
    iget-object p1, p0, Lcom/applovin/exoplayer2/a/a$a;->jf:Lcom/applovin/exoplayer2/h/p$a;

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/applovin/exoplayer2/a/a$a;->jd:Lcom/applovin/exoplayer2/common/a/s;

    iget-object p2, p0, Lcom/applovin/exoplayer2/a/a$a;->jg:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/a$a;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-static {p3, p1, p2, v0}, Lcom/applovin/exoplayer2/a/a$a;->a(Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/common/a/s;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/a$a;->jf:Lcom/applovin/exoplayer2/h/p$a;

    :cond_2d
    invoke-interface {p3}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/a/a$a;->d(Lcom/applovin/exoplayer2/ba;)V

    return-void
.end method

.method public d(Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/ba;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/a$a;->je:Lcom/applovin/exoplayer2/common/a/u;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/common/a/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/ba;

    return-object p1
.end method

.method public dw()Lcom/applovin/exoplayer2/h/p$a;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/a$a;->jf:Lcom/applovin/exoplayer2/h/p$a;

    return-object v0
.end method

.method public dx()Lcom/applovin/exoplayer2/h/p$a;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/a$a;->jg:Lcom/applovin/exoplayer2/h/p$a;

    return-object v0
.end method

.method public dy()Lcom/applovin/exoplayer2/h/p$a;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/a$a;->jh:Lcom/applovin/exoplayer2/h/p$a;

    return-object v0
.end method

.method public dz()Lcom/applovin/exoplayer2/h/p$a;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/a$a;->jd:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_12

    :cond_a
    iget-object v0, p0, Lcom/applovin/exoplayer2/a/a$a;->jd:Lcom/applovin/exoplayer2/common/a/s;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/x;->f(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/p$a;

    :goto_12
    return-object v0
.end method

.method public f(Lcom/applovin/exoplayer2/an;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/a$a;->jd:Lcom/applovin/exoplayer2/common/a/s;

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/a$a;->jg:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/a/a$a;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/a/a$a;->a(Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/common/a/s;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/a$a;->jf:Lcom/applovin/exoplayer2/h/p$a;

    return-void
.end method

.method public g(Lcom/applovin/exoplayer2/an;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/a$a;->jd:Lcom/applovin/exoplayer2/common/a/s;

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/a$a;->jg:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/a/a$a;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/a/a$a;->a(Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/common/a/s;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/a/a$a;->jf:Lcom/applovin/exoplayer2/h/p$a;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/a/a$a;->d(Lcom/applovin/exoplayer2/ba;)V

    return-void
.end method
