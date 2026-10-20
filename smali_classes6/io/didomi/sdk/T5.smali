###### Class io.didomi.drawable.T5 (io.didomi.sdk.T5)
.class public final Lio/didomi/sdk/T5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a!\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0004\u0010\n\u001a\u001d\u0010\u0004\u001a\u00020\u000c*\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cH\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u000e\u001a%\u0010\u0004\u001a\u00020\u000c*\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cH\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroid/text/Spanned;",
        "",
        "textSize",
        "Landroid/text/Spannable;",
        "a",
        "(Landroid/text/Spanned;F)Landroid/text/Spannable;",
        "Landroid/widget/TextView;",
        "container",
        "Landroid/content/res/ColorStateList;",
        "iconColors",
        "(Landroid/text/Spanned;Landroid/widget/TextView;Landroid/content/res/ColorStateList;)Landroid/text/Spannable;",
        "",
        "",
        "start",
        "(Ljava/lang/CharSequence;I)I",
        "index",
        "(Ljava/lang/CharSequence;II)I",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/CharSequence;I)I
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\n"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/g;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_13

    goto :goto_17

    :cond_13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_17
    return p1
.end method

.method public static final a(Ljava/lang/CharSequence;II)I
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/g;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/lang/CharSequence;IIILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lio/didomi/sdk/T5;->a(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static final a(Landroid/text/Spanned;F)Landroid/text/Spannable;
    .registers 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p0

    const-string v0, "valueOf(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v7, v1, v2}, Lio/didomi/sdk/T5;->a(Ljava/lang/CharSequence;IIILjava/lang/Object;)I

    move-result v3

    const/16 v8, 0x12

    if-ltz v3, :cond_81

    invoke-static {p0, v3}, Lio/didomi/sdk/T5;->a(Ljava/lang/CharSequence;I)I

    move-result v4

    new-instance v5, Landroid/text/style/LeadingMarginSpan$Standard;

    int-to-float v6, v1

    mul-float v6, v6, p1

    float-to-int v6, v6

    invoke-direct {v5, v7, v6}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    invoke-interface {p0, v5, v3, v4, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0, v1, v7, v1, v2}, Lio/didomi/sdk/T5;->a(Ljava/lang/CharSequence;IIILjava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_81

    const/4 v4, 0x2

    :goto_31
    invoke-static {p0, v4, v7, v1, v2}, Lio/didomi/sdk/T5;->a(Ljava/lang/CharSequence;IIILjava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3a

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_3a
    sub-int/2addr v4, v0

    invoke-static {p0, v4, v7, v1, v2}, Lio/didomi/sdk/T5;->a(Ljava/lang/CharSequence;IIILjava/lang/Object;)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {p0, v1, v3}, Lio/didomi/sdk/T5;->a(Ljava/lang/CharSequence;II)I

    move-result v2

    const-wide v4, 0x4004cccccccccccdL    # 2.6

    if-gez v2, :cond_5d

    invoke-static {p0, v0}, Lio/didomi/sdk/T5;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    new-instance v1, Landroid/text/style/LeadingMarginSpan$Standard;

    float-to-double v9, p1

    mul-double v9, v9, v4

    double-to-int v2, v9

    invoke-direct {v1, v7, v2}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    invoke-interface {p0, v1, v3, v0, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_81

    :cond_5d
    new-instance v6, Landroid/text/style/LeadingMarginSpan$Standard;

    float-to-double v9, p1

    mul-double v4, v4, v9

    double-to-int v4, v4

    invoke-direct {v6, v7, v4}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    invoke-interface {p0, v6, v3, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0, v1, v3}, Lio/didomi/sdk/T5;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    invoke-static {p0, v0}, Lio/didomi/sdk/T5;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    const-wide v3, 0x400a666666666666L    # 3.3

    mul-double v9, v9, v3

    double-to-int v3, v9

    invoke-direct {v2, v7, v3}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    invoke-interface {p0, v2, v1, v0, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_81
    :goto_81
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "\u2022 "

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/g;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_ae

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "\u2022 "

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/g;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    invoke-static {p0, v1}, Lio/didomi/sdk/T5;->a(Ljava/lang/CharSequence;I)I

    move-result v1

    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    float-to-double v3, p1

    const-wide v5, 0x3ff999999999999aL    # 1.6

    mul-double v3, v3, v5

    double-to-int p1, v3

    invoke-direct {v2, v7, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    invoke-interface {p0, v2, v0, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_ae
    return-object p0
.end method

.method public static final a(Landroid/text/Spanned;Landroid/widget/TextView;Landroid/content/res/ColorStateList;)Landroid/text/Spannable;
    .registers 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconColors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p0

    const-string v0, "valueOf(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "[didomi_link_external]"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/g;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_26

    return-object p0

    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/didomi/sdk/R$drawable;->didomi_ic_external_link:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_34

    return-object p0

    :cond_34
    const-string v1, "ResourcesCompat.getDrawa\u2026ink, null) ?: return this"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_60

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    float-to-double v2, p1

    const-wide v4, 0x3fec28f5c28f5c2aL    # 0.8800000000000001

    mul-double v2, v2, v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-double v4, p1

    mul-double v4, v4, v2

    int-to-double v8, v1

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Lkotlin/math/b;->roundToInt(D)I

    move-result p1

    invoke-static {v2, v3}, Lkotlin/math/b;->roundToInt(D)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v2, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_60
    invoke-static {v7, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :goto_63
    if-ltz v0, :cond_7d

    new-instance p1, Lio/didomi/sdk/I2;

    const/4 p2, 0x1

    invoke-direct {p1, v7, p2}, Lio/didomi/sdk/I2;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v3, v0, 0x16

    const/16 p2, 0x21

    invoke-interface {p0, p1, v0, v3, p2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "[didomi_link_external]"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/g;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    goto :goto_63

    :cond_7d
    return-object p0
.end method
