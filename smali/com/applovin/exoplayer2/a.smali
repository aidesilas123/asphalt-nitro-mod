###### Class com.applovin.exoplayer2.a (com.applovin.exoplayer2.a)
.class public abstract Lcom/applovin/exoplayer2/a;
.super Lcom/applovin/exoplayer2/ba;
.source "SourceFile"


# instance fields
.field private final B:I

.field private final C:Lcom/applovin/exoplayer2/h/z;

.field private final D:Z


# direct methods
.method public constructor <init>(ZLcom/applovin/exoplayer2/h/z;)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ba;-><init>()V

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/a;->D:Z

    iput-object p2, p0, Lcom/applovin/exoplayer2/a;->C:Lcom/applovin/exoplayer2/h/z;

    invoke-interface {p2}, Lcom/applovin/exoplayer2/h/z;->lG()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/a;->B:I

    return-void
.end method

.method private a(IZ)I
    .registers 3

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/applovin/exoplayer2/a;->C:Lcom/applovin/exoplayer2/h/z;

    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/h/z;->dV(I)I

    move-result p1

    goto :goto_13

    :cond_9
    iget p2, p0, Lcom/applovin/exoplayer2/a;->B:I

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_12

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, -0x1

    :goto_13
    return p1
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private b(IZ)I
    .registers 3

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/applovin/exoplayer2/a;->C:Lcom/applovin/exoplayer2/h/z;

    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/h/z;->dW(I)I

    move-result p1

    goto :goto_f

    :cond_9
    if-lez p1, :cond_e

    add-int/lit8 p1, p1, -0x1

    goto :goto_f

    :cond_e
    const/4 p1, -0x1

    :goto_f
    return p1
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public a(IIZ)I
    .registers 9

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/a;->D:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_b

    const/4 p3, 0x1

    if-ne p2, p3, :cond_a

    const/4 p2, 0x2

    :cond_a
    const/4 p3, 0x0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/a;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->g(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, p2

    :goto_1c
    invoke-virtual {v4, p1, v1, p3}, Lcom/applovin/exoplayer2/ba;->a(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_25

    add-int/2addr v3, p1

    return v3

    :cond_25
    invoke-direct {p0, v0, p3}, Lcom/applovin/exoplayer2/a;->a(IZ)I

    move-result p1

    :goto_29
    if-eq p1, v1, :cond_3a

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-direct {p0, p1, p3}, Lcom/applovin/exoplayer2/a;->a(IZ)I

    move-result p1

    goto :goto_29

    :cond_3a
    if-eq p1, v1, :cond_4a

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/a;->g(I)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/ba;->d(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_4a
    if-ne p2, v2, :cond_51

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/a;->d(Z)I

    move-result p1

    return p1

    :cond_51
    return v1
.end method

.method public final a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;
    .registers 8

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/a;->c(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->g(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->f(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v3

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1, p2, p3}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    iget p1, p2, Lcom/applovin/exoplayer2/ba$a;->cN:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/applovin/exoplayer2/ba$a;->cN:I

    if-eqz p3, :cond_2b

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->h(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/applovin/exoplayer2/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    :cond_2b
    return-object p2
.end method

.method public final a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;
    .registers 6

    invoke-static {p1}, Lcom/applovin/exoplayer2/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/exoplayer2/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->g(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    iget v0, p2, Lcom/applovin/exoplayer2/ba$a;->cN:I

    add-int/2addr v0, v2

    iput v0, p2, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iput-object p1, p2, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    return-object p2
.end method

.method public final a(ILcom/applovin/exoplayer2/ba$c;J)Lcom/applovin/exoplayer2/ba$c;
    .registers 9

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/a;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->g(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->f(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v3

    sub-int/2addr p1, v1

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;J)Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->h(I)Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Lcom/applovin/exoplayer2/ba$c;->iF:Ljava/lang/Object;

    iget-object p4, p2, Lcom/applovin/exoplayer2/ba$c;->ch:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_23

    goto :goto_29

    :cond_23
    iget-object p3, p2, Lcom/applovin/exoplayer2/ba$c;->ch:Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/applovin/exoplayer2/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_29
    iput-object p1, p2, Lcom/applovin/exoplayer2/ba$c;->ch:Ljava/lang/Object;

    iget p1, p2, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    iget p1, p2, Lcom/applovin/exoplayer2/ba$c;->iR:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/applovin/exoplayer2/ba$c;->iR:I

    return-object p2
.end method

.method public b(IIZ)I
    .registers 9

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/a;->D:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_b

    const/4 p3, 0x1

    if-ne p2, p3, :cond_a

    const/4 p2, 0x2

    :cond_a
    const/4 p3, 0x0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/a;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->g(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, p2

    :goto_1c
    invoke-virtual {v4, p1, v1, p3}, Lcom/applovin/exoplayer2/ba;->b(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_25

    add-int/2addr v3, p1

    return v3

    :cond_25
    invoke-direct {p0, v0, p3}, Lcom/applovin/exoplayer2/a;->b(IZ)I

    move-result p1

    :goto_29
    if-eq p1, v1, :cond_3a

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-direct {p0, p1, p3}, Lcom/applovin/exoplayer2/a;->b(IZ)I

    move-result p1

    goto :goto_29

    :cond_3a
    if-eq p1, v1, :cond_4a

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/a;->g(I)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/ba;->c(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_4a
    if-ne p2, v2, :cond_51

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/a;->c(Z)I

    move-result p1

    return p1

    :cond_51
    return v1
.end method

.method public final b(I)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/a;->c(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->f(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/applovin/exoplayer2/ba;->b(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->h(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract c(I)I
.end method

.method public final c(Ljava/lang/Object;)I
    .registers 5

    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {p1}, Lcom/applovin/exoplayer2/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/exoplayer2/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->d(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_15

    return v1

    :cond_15
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_20

    goto :goto_26

    :cond_20
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->f(I)I

    move-result v0

    add-int v1, v0, p1

    :goto_26
    return v1
.end method

.method public c(Z)I
    .registers 5

    iget v0, p0, Lcom/applovin/exoplayer2/a;->B:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/a;->D:Z

    if-eqz v2, :cond_b

    const/4 p1, 0x0

    :cond_b
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/applovin/exoplayer2/a;->C:Lcom/applovin/exoplayer2/h/z;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/z;->lH()I

    move-result v0

    goto :goto_16

    :cond_14
    add-int/lit8 v0, v0, -0x1

    :cond_16
    :goto_16
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/a;->b(IZ)I

    move-result v0

    if-ne v0, v1, :cond_16

    return v1

    :cond_27
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->g(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ba;->c(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method protected abstract d(I)I
.end method

.method protected abstract d(Ljava/lang/Object;)I
.end method

.method public d(Z)I
    .registers 5

    iget v0, p0, Lcom/applovin/exoplayer2/a;->B:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/a;->D:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    :cond_c
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/applovin/exoplayer2/a;->C:Lcom/applovin/exoplayer2/h/z;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/z;->lI()I

    move-result v2

    :cond_14
    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0, v2, p1}, Lcom/applovin/exoplayer2/a;->a(IZ)I

    move-result v2

    if-ne v2, v1, :cond_14

    return v1

    :cond_25
    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/a;->g(I)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/a;->e(I)Lcom/applovin/exoplayer2/ba;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/applovin/exoplayer2/ba;->d(Z)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method protected abstract e(I)Lcom/applovin/exoplayer2/ba;
.end method

.method protected abstract f(I)I
.end method

.method protected abstract g(I)I
.end method

.method protected abstract h(I)Ljava/lang/Object;
.end method
