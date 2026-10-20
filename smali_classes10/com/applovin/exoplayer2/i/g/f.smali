###### Class com.applovin.exoplayer2.i.g.f (com.applovin.exoplayer2.i.g.f)
.class final Lcom/applovin/exoplayer2/i/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/applovin/exoplayer2/i/g/d;Ljava/util/Map;)Lcom/applovin/exoplayer2/i/g/d;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/i/g/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/exoplayer2/i/g/g;",
            ">;)",
            "Lcom/applovin/exoplayer2/i/g/d;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_8
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3a

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/applovin/exoplayer2/i/g/d;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/g/d;->Sz:Lcom/applovin/exoplayer2/i/g/g;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/g/d;->mG()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/applovin/exoplayer2/i/g/f;->a(Lcom/applovin/exoplayer2/i/g/g;[Ljava/lang/String;Ljava/util/Map;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/i/g/g;->mR()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    return-object p0

    :cond_28
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/g/d;->mE()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2e
    if-ltz v1, :cond_8

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/i/g/d;->eC(I)Lcom/applovin/exoplayer2/i/g/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/applovin/exoplayer2/i/g/g;[Ljava/lang/String;Ljava/util/Map;)Lcom/applovin/exoplayer2/i/g/g;
    .registers 6
    .param p0    # Lcom/applovin/exoplayer2/i/g/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/i/g/g;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/exoplayer2/i/g/g;",
            ">;)",
            "Lcom/applovin/exoplayer2/i/g/g;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_2e

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    array-length v2, p1

    if-ne v2, v1, :cond_14

    aget-object p0, p1, v0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/applovin/exoplayer2/i/g/g;

    return-object p0

    :cond_14
    array-length v2, p1

    if-le v2, v1, :cond_56

    new-instance p0, Lcom/applovin/exoplayer2/i/g/g;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/g/g;-><init>()V

    array-length v1, p1

    :goto_1d
    if-ge v0, v1, :cond_2d

    aget-object v2, p1, v0

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/i/g/g;

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/i/g/g;->b(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2d
    return-object p0

    :cond_2e
    if-eqz p1, :cond_40

    array-length v2, p1

    if-ne v2, v1, :cond_40

    aget-object p1, p1, v0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/i/g/g;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/i/g/g;->b(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p0

    return-object p0

    :cond_40
    if-eqz p1, :cond_56

    array-length v2, p1

    if-le v2, v1, :cond_56

    array-length v1, p1

    :goto_46
    if-ge v0, v1, :cond_56

    aget-object v2, p1, v0

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/i/g/g;

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/i/g/g;->b(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_56
    return-object p0
.end method

.method public static a(Landroid/text/Spannable;IILcom/applovin/exoplayer2/i/g/g;Lcom/applovin/exoplayer2/i/g/d;Ljava/util/Map;I)V
    .registers 15
    .param p4    # Lcom/applovin/exoplayer2/i/g/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "II",
            "Lcom/applovin/exoplayer2/i/g/g;",
            "Lcom/applovin/exoplayer2/i/g/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/exoplayer2/i/g/g;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mH()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x21

    if-eq v0, v1, :cond_15

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mH()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0, v0, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_15
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mI()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_23
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mJ()Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_31
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mM()Z

    move-result v0

    if-eqz v0, :cond_43

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mL()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {p0, v0, p1, p2, v2}, Lcom/applovin/exoplayer2/i/d/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_43
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mO()Z

    move-result v0

    if-eqz v0, :cond_55

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mN()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-static {p0, v0, p1, p2, v2}, Lcom/applovin/exoplayer2/i/d/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_55
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mK()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mK()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1, p2, v2}, Lcom/applovin/exoplayer2/i/d/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_67
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mW()Lcom/applovin/exoplayer2/i/g/b;

    move-result-object v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_98

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mW()Lcom/applovin/exoplayer2/i/g/b;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/i/g/b;

    iget v6, v0, Lcom/applovin/exoplayer2/i/g/b;->Rq:I

    if-ne v6, v1, :cond_88

    if-eq p6, v4, :cond_85

    if-ne p6, v5, :cond_83

    goto :goto_85

    :cond_83
    const/4 v6, 0x1

    goto :goto_86

    :cond_85
    :goto_85
    const/4 v6, 0x3

    :goto_86
    const/4 p6, 0x1

    goto :goto_8a

    :cond_88
    iget p6, v0, Lcom/applovin/exoplayer2/i/g/b;->Rr:I

    :goto_8a
    iget v0, v0, Lcom/applovin/exoplayer2/i/g/b;->oX:I

    const/4 v7, -0x2

    if-ne v0, v7, :cond_90

    const/4 v0, 0x1

    :cond_90
    new-instance v7, Lcom/applovin/exoplayer2/i/d/e;

    invoke-direct {v7, v6, p6, v0}, Lcom/applovin/exoplayer2/i/d/e;-><init>(III)V

    invoke-static {p0, v7, p1, p2, v2}, Lcom/applovin/exoplayer2/i/d/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_98
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mR()I

    move-result p6

    if-eq p6, v4, :cond_ad

    if-eq p6, v3, :cond_a4

    const/4 p4, 0x4

    if-eq p6, p4, :cond_a4

    goto :goto_10a

    :cond_a4
    new-instance p4, Lcom/applovin/exoplayer2/i/g/a;

    invoke-direct {p4}, Lcom/applovin/exoplayer2/i/g/a;-><init>()V

    invoke-interface {p0, p4, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_10a

    :cond_ad
    invoke-static {p4, p5}, Lcom/applovin/exoplayer2/i/g/f;->b(Lcom/applovin/exoplayer2/i/g/d;Ljava/util/Map;)Lcom/applovin/exoplayer2/i/g/d;

    move-result-object p4

    if-nez p4, :cond_b4

    goto :goto_10a

    :cond_b4
    invoke-static {p4, p5}, Lcom/applovin/exoplayer2/i/g/f;->a(Lcom/applovin/exoplayer2/i/g/d;Ljava/util/Map;)Lcom/applovin/exoplayer2/i/g/d;

    move-result-object p6

    if-nez p6, :cond_bb

    goto :goto_10a

    :cond_bb
    invoke-virtual {p6}, Lcom/applovin/exoplayer2/i/g/d;->mE()I

    move-result v0

    if-ne v0, v5, :cond_103

    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Lcom/applovin/exoplayer2/i/g/d;->eC(I)Lcom/applovin/exoplayer2/i/g/d;

    move-result-object v6

    iget-object v6, v6, Lcom/applovin/exoplayer2/i/g/d;->JN:Ljava/lang/String;

    if-eqz v6, :cond_103

    invoke-virtual {p6, v0}, Lcom/applovin/exoplayer2/i/g/d;->eC(I)Lcom/applovin/exoplayer2/i/g/d;

    move-result-object v0

    iget-object v0, v0, Lcom/applovin/exoplayer2/i/g/d;->JN:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p6, Lcom/applovin/exoplayer2/i/g/d;->Sz:Lcom/applovin/exoplayer2/i/g/g;

    invoke-virtual {p6}, Lcom/applovin/exoplayer2/i/g/d;->mG()[Ljava/lang/String;

    move-result-object p6

    invoke-static {v6, p6, p5}, Lcom/applovin/exoplayer2/i/g/f;->a(Lcom/applovin/exoplayer2/i/g/g;[Ljava/lang/String;Ljava/util/Map;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p6

    if-eqz p6, :cond_e7

    invoke-virtual {p6}, Lcom/applovin/exoplayer2/i/g/g;->mS()I

    move-result p6

    goto :goto_e8

    :cond_e7
    const/4 p6, -0x1

    :goto_e8
    if-ne p6, v1, :cond_fa

    iget-object v1, p4, Lcom/applovin/exoplayer2/i/g/d;->Sz:Lcom/applovin/exoplayer2/i/g/g;

    invoke-virtual {p4}, Lcom/applovin/exoplayer2/i/g/d;->mG()[Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4, p5}, Lcom/applovin/exoplayer2/i/g/f;->a(Lcom/applovin/exoplayer2/i/g/g;[Ljava/lang/String;Ljava/util/Map;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p4

    if-eqz p4, :cond_fa

    invoke-virtual {p4}, Lcom/applovin/exoplayer2/i/g/g;->mS()I

    move-result p6

    :cond_fa
    new-instance p4, Lcom/applovin/exoplayer2/i/d/c;

    invoke-direct {p4, v0, p6}, Lcom/applovin/exoplayer2/i/d/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p4, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_10a

    :cond_103
    const-string p4, "TtmlRenderUtil"

    const-string p5, "Skipping rubyText node without exactly one text child."

    invoke-static {p4, p5}, Lcom/applovin/exoplayer2/l/q;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10a
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mV()Z

    move-result p4

    if-eqz p4, :cond_118

    new-instance p4, Lcom/applovin/exoplayer2/i/d/a;

    invoke-direct {p4}, Lcom/applovin/exoplayer2/i/d/a;-><init>()V

    invoke-static {p0, p4, p1, p2, v2}, Lcom/applovin/exoplayer2/i/d/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_118
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mX()I

    move-result p4

    if-eq p4, v5, :cond_140

    if-eq p4, v4, :cond_133

    if-eq p4, v3, :cond_123

    goto :goto_14d

    :cond_123
    new-instance p4, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mY()F

    move-result p3

    const/high16 p5, 0x42c80000    # 100.0f

    div-float/2addr p3, p5

    invoke-direct {p4, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {p0, p4, p1, p2, v2}, Lcom/applovin/exoplayer2/i/d/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_14d

    :cond_133
    new-instance p4, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mY()F

    move-result p3

    invoke-direct {p4, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {p0, p4, p1, p2, v2}, Lcom/applovin/exoplayer2/i/d/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_14d

    :cond_140
    new-instance p4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/g/g;->mY()F

    move-result p3

    float-to-int p3, p3

    invoke-direct {p4, p3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-static {p0, p4, p1, p2, v2}, Lcom/applovin/exoplayer2/i/d/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :goto_14d
    return-void
.end method

.method static at(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " *\n *"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[ \t\\x0B\u000c\r]+"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/applovin/exoplayer2/i/g/d;Ljava/util/Map;)Lcom/applovin/exoplayer2/i/g/d;
    .registers 4
    .param p0    # Lcom/applovin/exoplayer2/i/g/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/i/g/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/exoplayer2/i/g/g;",
            ">;)",
            "Lcom/applovin/exoplayer2/i/g/d;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_19

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/g/d;->Sz:Lcom/applovin/exoplayer2/i/g/g;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/g/d;->mG()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/applovin/exoplayer2/i/g/f;->a(Lcom/applovin/exoplayer2/i/g/g;[Ljava/lang/String;Ljava/util/Map;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/i/g/g;->mR()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    return-object p0

    :cond_16
    iget-object p0, p0, Lcom/applovin/exoplayer2/i/g/d;->SD:Lcom/applovin/exoplayer2/i/g/d;

    goto :goto_0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method static b(Landroid/text/SpannableStringBuilder;)V
    .registers 4

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_13

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_13

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_13
    if-ltz v0, :cond_20

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_20

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_20
    return-void
.end method
