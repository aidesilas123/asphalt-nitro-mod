###### Class com.applovin.exoplayer2.ui.h (com.applovin.exoplayer2.ui.h)
.class final Lcom/applovin/exoplayer2/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/ui/h$c;,
        Lcom/applovin/exoplayer2/ui/h$b;,
        Lcom/applovin/exoplayer2/ui/h$a;
    }
.end annotation


# static fields
.field private static final Yj:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(&#13;)?&#10;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/ui/h;->Yj:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static I(II)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_12

    if-eq p1, v1, :cond_c

    goto :goto_17

    :cond_c
    const-string p1, "open "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_12
    const-string p1, "filled "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    if-eqz p0, :cond_38

    if-eq p0, v2, :cond_32

    if-eq p0, v1, :cond_2c

    const/4 p1, 0x3

    if-eq p0, p1, :cond_26

    const-string p0, "unset"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_26
    const-string p0, "sesame"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_2c
    const-string p0, "dot"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_32
    const-string p0, "circle"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_38
    const-string p0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static K(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    instance-of v0, p0, Landroid/text/style/StrikethroughSpan;

    const-string v1, "</span>"

    if-nez v0, :cond_77

    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_77

    instance-of v0, p0, Landroid/text/style/BackgroundColorSpan;

    if-nez v0, :cond_77

    instance-of v0, p0, Lcom/applovin/exoplayer2/i/d/a;

    if-nez v0, :cond_77

    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_77

    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    if-nez v0, :cond_77

    instance-of v0, p0, Lcom/applovin/exoplayer2/i/d/e;

    if-eqz v0, :cond_1f

    goto :goto_77

    :cond_1f
    instance-of v0, p0, Landroid/text/style/TypefaceSpan;

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    check-cast p0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object v1, v2

    :goto_2e
    return-object v1

    :cond_2f
    instance-of v0, p0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_4c

    check-cast p0, Landroid/text/style/StyleSpan;

    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_49

    const/4 v0, 0x2

    if-eq p0, v0, :cond_46

    const/4 v0, 0x3

    if-eq p0, v0, :cond_43

    goto :goto_76

    :cond_43
    const-string p0, "</i></b>"

    return-object p0

    :cond_46
    const-string p0, "</i>"

    return-object p0

    :cond_49
    const-string p0, "</b>"

    return-object p0

    :cond_4c
    instance-of v0, p0, Lcom/applovin/exoplayer2/i/d/c;

    if-eqz v0, :cond_6f

    check-cast p0, Lcom/applovin/exoplayer2/i/d/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<rt>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/applovin/exoplayer2/i/d/c;->Rp:Ljava/lang/String;

    invoke-static {p0}, Lcom/applovin/exoplayer2/ui/h;->o(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</rt></ruby>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6f
    instance-of p0, p0, Landroid/text/style/UnderlineSpan;

    if-eqz p0, :cond_76

    const-string p0, "</u>"

    return-object p0

    :cond_76
    :goto_76
    return-object v2

    :cond_77
    :goto_77
    return-object v1
.end method

.method private static a(Landroid/text/Spanned;F)Landroid/util/SparseArray;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "F)",
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/ui/h$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    :goto_11
    if-ge v3, v2, :cond_4c

    aget-object v4, v1, v3

    invoke-static {v4, p1}, Lcom/applovin/exoplayer2/ui/h;->a(Ljava/lang/Object;F)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Lcom/applovin/exoplayer2/ui/h;->K(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eqz v8, :cond_49

    invoke-static {v9}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/applovin/exoplayer2/ui/h$b;

    const/4 v10, 0x0

    move-object v5, v12

    move v6, v11

    move v7, v4

    invoke-direct/range {v5 .. v10}, Lcom/applovin/exoplayer2/ui/h$b;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/applovin/exoplayer2/ui/h$1;)V

    invoke-static {v0, v11}, Lcom/applovin/exoplayer2/ui/h;->b(Landroid/util/SparseArray;I)Lcom/applovin/exoplayer2/ui/h$c;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/exoplayer2/ui/h$c;->b(Lcom/applovin/exoplayer2/ui/h$c;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v4}, Lcom/applovin/exoplayer2/ui/h;->b(Landroid/util/SparseArray;I)Lcom/applovin/exoplayer2/ui/h$c;

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/exoplayer2/ui/h$c;->a(Lcom/applovin/exoplayer2/ui/h$c;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_4c
    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;F)Lcom/applovin/exoplayer2/ui/h$a;
    .registers 10
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_f

    new-instance p0, Lcom/applovin/exoplayer2/ui/h$a;

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/u;->gi()Lcom/applovin/exoplayer2/common/a/u;

    move-result-object p1

    const-string v1, ""

    invoke-direct {p0, v1, p1, v0}, Lcom/applovin/exoplayer2/ui/h$a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/exoplayer2/ui/h$1;)V

    return-object p0

    :cond_f
    instance-of v1, p0, Landroid/text/Spanned;

    if-nez v1, :cond_21

    new-instance p1, Lcom/applovin/exoplayer2/ui/h$a;

    invoke-static {p0}, Lcom/applovin/exoplayer2/ui/h;->o(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/u;->gi()Lcom/applovin/exoplayer2/common/a/u;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/applovin/exoplayer2/ui/h$a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/exoplayer2/ui/h$1;)V

    return-object p1

    :cond_21
    check-cast p0, Landroid/text/Spanned;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Landroid/text/style/BackgroundColorSpan;

    const/4 v4, 0x0

    invoke-interface {p0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/BackgroundColorSpan;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_37
    if-ge v5, v3, :cond_49

    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_49
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bg_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/exoplayer2/ui/e;->aJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/applovin/exoplayer2/ui/e;->eX(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    const-string v3, "background-color:%s;"

    invoke-static {v3, v6}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    :cond_8a
    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/ui/h;->a(Landroid/text/Spanned;F)Landroid/util/SparseArray;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_98
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_101

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-interface {p0, v3, v5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/exoplayer2/ui/h;->o(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/ui/h$c;

    invoke-static {v3}, Lcom/applovin/exoplayer2/ui/h$c;->a(Lcom/applovin/exoplayer2/ui/h$c;)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Lcom/applovin/exoplayer2/ui/h$b;->nS()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v3}, Lcom/applovin/exoplayer2/ui/h$c;->a(Lcom/applovin/exoplayer2/ui/h$c;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/applovin/exoplayer2/ui/h$b;

    iget-object v7, v7, Lcom/applovin/exoplayer2/ui/h$b;->Yp:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c6

    :cond_d8
    invoke-static {v3}, Lcom/applovin/exoplayer2/ui/h$c;->b(Lcom/applovin/exoplayer2/ui/h$c;)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Lcom/applovin/exoplayer2/ui/h$b;->nT()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v3}, Lcom/applovin/exoplayer2/ui/h$c;->b(Lcom/applovin/exoplayer2/ui/h$c;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_eb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/applovin/exoplayer2/ui/h$b;

    iget-object v6, v6, Lcom/applovin/exoplayer2/ui/h$b;->Yo:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_eb

    :cond_fd
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_98

    :cond_101
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result p1

    invoke-interface {p0, v3, p1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/ui/h;->o(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/applovin/exoplayer2/ui/h$a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v0}, Lcom/applovin/exoplayer2/ui/h$a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/exoplayer2/ui/h$1;)V

    return-object p0
.end method

.method private static a(Ljava/lang/Object;F)Ljava/lang/String;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    instance-of v0, p0, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_7

    const-string p0, "<span style=\'text-decoration:line-through;\'>"

    return-object p0

    :cond_7
    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    check-cast p0, Landroid/text/style/ForegroundColorSpan;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/ui/e;->eX(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "<span style=\'color:%s;\'>"

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    instance-of v0, p0, Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_3b

    check-cast p0, Landroid/text/style/BackgroundColorSpan;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "<span class=\'bg_%s\'>"

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    instance-of v0, p0, Lcom/applovin/exoplayer2/i/d/a;

    if-eqz v0, :cond_42

    const-string p0, "<span style=\'text-combine-upright:all;\'>"

    return-object p0

    :cond_42
    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v0, :cond_69

    check-cast p0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result p0

    int-to-float p0, p0

    goto :goto_5a

    :cond_54
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    :goto_5a
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_69
    instance-of p1, p0, Landroid/text/style/RelativeSizeSpan;

    if-eqz p1, :cond_86

    new-array p1, v2, [Ljava/lang/Object;

    check-cast p0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p0}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "<span style=\'font-size:%.2f%%;\'>"

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_86
    instance-of p1, p0, Landroid/text/style/TypefaceSpan;

    const/4 v0, 0x0

    if-eqz p1, :cond_9e

    check-cast p0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9d

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "<span style=\'font-family:\"%s\";\'>"

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_9d
    return-object v0

    :cond_9e
    instance-of p1, p0, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    if-eqz p1, :cond_ba

    check-cast p0, Landroid/text/style/StyleSpan;

    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result p0

    if-eq p0, v2, :cond_b7

    if-eq p0, v3, :cond_b4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_b1

    return-object v0

    :cond_b1
    const-string p0, "<b><i>"

    return-object p0

    :cond_b4
    const-string p0, "<i>"

    return-object p0

    :cond_b7
    const-string p0, "<b>"

    return-object p0

    :cond_ba
    instance-of p1, p0, Lcom/applovin/exoplayer2/i/d/c;

    if-eqz p1, :cond_d3

    check-cast p0, Lcom/applovin/exoplayer2/i/d/c;

    iget p0, p0, Lcom/applovin/exoplayer2/i/d/c;->oX:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_d0

    if-eq p0, v2, :cond_cd

    if-eq p0, v3, :cond_ca

    return-object v0

    :cond_ca
    const-string p0, "<ruby style=\'ruby-position:under;\'>"

    return-object p0

    :cond_cd
    const-string p0, "<ruby style=\'ruby-position:over;\'>"

    return-object p0

    :cond_d0
    const-string p0, "<ruby style=\'ruby-position:unset;\'>"

    return-object p0

    :cond_d3
    instance-of p1, p0, Landroid/text/style/UnderlineSpan;

    if-eqz p1, :cond_da

    const-string p0, "<u>"

    return-object p0

    :cond_da
    instance-of p1, p0, Lcom/applovin/exoplayer2/i/d/e;

    if-eqz p1, :cond_fb

    check-cast p0, Lcom/applovin/exoplayer2/i/d/e;

    iget p1, p0, Lcom/applovin/exoplayer2/i/d/e;->Rq:I

    iget v0, p0, Lcom/applovin/exoplayer2/i/d/e;->Rr:I

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/ui/h;->I(II)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/applovin/exoplayer2/i/d/e;->oX:I

    invoke-static {p0}, Lcom/applovin/exoplayer2/ui/h;->fb(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p0, v0, v2

    const-string p0, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_fb
    return-object v0
.end method

.method private static b(Landroid/util/SparseArray;I)Lcom/applovin/exoplayer2/ui/h$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/ui/h$c;",
            ">;I)",
            "Lcom/applovin/exoplayer2/ui/h$c;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/ui/h$c;

    if-nez v0, :cond_10

    new-instance v0, Lcom/applovin/exoplayer2/ui/h$c;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/ui/h$c;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    return-object v0
.end method

.method private static fb(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const-string p0, "over right"

    return-object p0

    :cond_6
    const-string p0, "under left"

    return-object p0
.end method

.method private static o(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/applovin/exoplayer2/ui/h;->Yj:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "<br>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.applovin.exoplayer2.ui.h.AnonymousClass1 (com.applovin.exoplayer2.ui.h$1)
.class synthetic Lcom/applovin/exoplayer2/ui/h$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.ui.h.a (com.applovin.exoplayer2.ui.h$a)
.class public Lcom/applovin/exoplayer2/ui/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final Yk:Ljava/lang/String;

.field public final Yl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/h$a;->Yk:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/h$a;->Yl:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/exoplayer2/ui/h$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/ui/h$a;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.applovin.exoplayer2.ui.h.b (com.applovin.exoplayer2.ui.h$b)
.class final Lcom/applovin/exoplayer2/ui/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final Ym:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/applovin/exoplayer2/ui/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final Yn:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/applovin/exoplayer2/ui/h$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final Yo:Ljava/lang/String;

.field public final Yp:Ljava/lang/String;

.field public final end:I

.field public final start:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/ui/r;->a:Lcom/applovin/exoplayer2/ui/r;

    sput-object v0, Lcom/applovin/exoplayer2/ui/h$b;->Ym:Ljava/util/Comparator;

    sget-object v0, Lcom/applovin/exoplayer2/ui/q;->a:Lcom/applovin/exoplayer2/ui/q;

    sput-object v0, Lcom/applovin/exoplayer2/ui/h$b;->Yn:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/ui/h$b;->start:I

    iput p2, p0, Lcom/applovin/exoplayer2/ui/h$b;->end:I

    iput-object p3, p0, Lcom/applovin/exoplayer2/ui/h$b;->Yo:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/exoplayer2/ui/h$b;->Yp:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/applovin/exoplayer2/ui/h$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/ui/h$b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/applovin/exoplayer2/ui/h$b;Lcom/applovin/exoplayer2/ui/h$b;)I
    .registers 4

    iget v0, p1, Lcom/applovin/exoplayer2/ui/h$b;->start:I

    iget v1, p0, Lcom/applovin/exoplayer2/ui/h$b;->start:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    iget-object v0, p1, Lcom/applovin/exoplayer2/ui/h$b;->Yo:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/h$b;->Yo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    :cond_16
    iget-object p1, p1, Lcom/applovin/exoplayer2/ui/h$b;->Yp:Ljava/lang/String;

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/h$b;->Yp:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic b(Lcom/applovin/exoplayer2/ui/h$b;Lcom/applovin/exoplayer2/ui/h$b;)I
    .registers 4

    iget v0, p1, Lcom/applovin/exoplayer2/ui/h$b;->end:I

    iget v1, p0, Lcom/applovin/exoplayer2/ui/h$b;->end:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/h$b;->Yo:Ljava/lang/String;

    iget-object v1, p1, Lcom/applovin/exoplayer2/ui/h$b;->Yo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    :cond_16
    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/h$b;->Yp:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ui/h$b;->Yp:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/applovin/exoplayer2/ui/h$b;Lcom/applovin/exoplayer2/ui/h$b;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/ui/h$b;->a(Lcom/applovin/exoplayer2/ui/h$b;Lcom/applovin/exoplayer2/ui/h$b;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/applovin/exoplayer2/ui/h$b;Lcom/applovin/exoplayer2/ui/h$b;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/ui/h$b;->b(Lcom/applovin/exoplayer2/ui/h$b;Lcom/applovin/exoplayer2/ui/h$b;)I

    move-result p0

    return p0
.end method

.method static synthetic nS()Ljava/util/Comparator;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/ui/h$b;->Yn:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic nT()Ljava/util/Comparator;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/ui/h$b;->Ym:Ljava/util/Comparator;

    return-object v0
.end method

###### Class com.applovin.exoplayer2.ui.q (com.applovin.exoplayer2.ui.q)
.class public final synthetic Lcom/applovin/exoplayer2/ui/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/ui/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/ui/q;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/ui/q;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/ui/q;->a:Lcom/applovin/exoplayer2/ui/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/applovin/exoplayer2/ui/h$b;

    check-cast p2, Lcom/applovin/exoplayer2/ui/h$b;

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ui/h$b;->c(Lcom/applovin/exoplayer2/ui/h$b;Lcom/applovin/exoplayer2/ui/h$b;)I

    move-result p1

    return p1
.end method

###### Class com.applovin.exoplayer2.ui.r (com.applovin.exoplayer2.ui.r)
.class public final synthetic Lcom/applovin/exoplayer2/ui/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/ui/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/ui/r;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/ui/r;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/ui/r;->a:Lcom/applovin/exoplayer2/ui/r;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/applovin/exoplayer2/ui/h$b;

    check-cast p2, Lcom/applovin/exoplayer2/ui/h$b;

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ui/h$b;->d(Lcom/applovin/exoplayer2/ui/h$b;Lcom/applovin/exoplayer2/ui/h$b;)I

    move-result p1

    return p1
.end method

###### Class com.applovin.exoplayer2.ui.h.c (com.applovin.exoplayer2.ui.h$c)
.class final Lcom/applovin/exoplayer2/ui/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final Yq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/ui/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private final Yr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/ui/h$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/ui/h$c;->Yq:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/ui/h$c;->Yr:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ui/h$c;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/h$c;->Yr:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/ui/h$c;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/h$c;->Yq:Ljava/util/List;

    return-object p0
.end method
