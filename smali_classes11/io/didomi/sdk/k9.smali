###### Class io.didomi.drawable.k9 (io.didomi.sdk.k9)
.class public final Lio/didomi/sdk/k9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u001a+\u0010\u0006\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a5\u0010\u0006\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\n\u001a\u0019\u0010\u0006\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\r\u001a#\u0010\u0006\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0006\u0010\u0010\u001a9\u0010\u0006\u001a\u00020\u0004*\u00020\u00002\u0008\u0008\u0003\u0010\u0011\u001a\u00020\u00082\u0008\u0008\u0003\u0010\u0012\u001a\u00020\u00082\u0008\u0008\u0003\u0010\u0013\u001a\u00020\u00082\u0008\u0008\u0003\u0010\u0014\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\u0015\u001a\u0011\u0010\u0006\u001a\u00020\u0004*\u00020\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0016\u001a\u0011\u0010\u0017\u001a\u00020\u0004*\u00020\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0016\u001a\u001d\u0010\u0006\u001a\u00020\u0008*\u00020\u00002\u0008\u0008\u0003\u0010\u0018\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroid/view/View;",
        "",
        "duration",
        "Lkotlin/Function0;",
        "",
        "complete",
        "a",
        "(Landroid/view/View;JLkotlin/jvm/functions/Function0;)V",
        "",
        "visibility",
        "(Landroid/view/View;JILkotlin/jvm/functions/Function0;)V",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "(Landroid/view/View;Lio/didomi/sdk/z8;)V",
        "",
        "visible",
        "(Landroid/view/View;Lio/didomi/sdk/z8;Z)V",
        "start",
        "top",
        "end",
        "bottom",
        "(Landroid/view/View;IIII)V",
        "(Landroid/view/View;)V",
        "b",
        "value",
        "(Landroid/view/View;I)I",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private static final a(Landroid/view/View;I)I
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static final a(Landroid/view/View;)V
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static final a(Landroid/view/View;IIII)V
    .registers 6
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lio/didomi/sdk/k9;->a(Landroid/view/View;I)I

    move-result p1

    invoke-static {p0, p2}, Lio/didomi/sdk/k9;->a(Landroid/view/View;I)I

    move-result p2

    invoke-static {p0, p3}, Lio/didomi/sdk/k9;->a(Landroid/view/View;I)I

    move-result p3

    invoke-static {p0, p4}, Lio/didomi/sdk/k9;->a(Landroid/view/View;I)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;IIIIILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    const/4 p1, 0x0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    const/4 p2, 0x0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    const/4 p3, 0x0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_15

    const/4 p4, 0x0

    :cond_15
    invoke-static {p0, p1, p2, p3, p4}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public static final a(Landroid/view/View;JILkotlin/jvm/b/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JI",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$anim;->didomi_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    long-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lio/didomi/sdk/a0;->b(Landroid/content/Context;)F

    move-result p2

    mul-float p1, p1, p2

    float-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p1, Lio/didomi/sdk/k9$b;

    invoke-direct {p1, p0, p3, p4}, Lio/didomi/sdk/k9$b;-><init>(Landroid/view/View;ILkotlin/jvm/b/a;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;JILkotlin/jvm/b/a;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_6

    const/16 p3, 0x8

    :cond_6
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_b

    const/4 p4, 0x0

    :cond_b
    invoke-static {p0, p1, p2, p3, p4}, Lio/didomi/sdk/k9;->a(Landroid/view/View;JILkotlin/jvm/b/a;)V

    return-void
.end method

.method public static final a(Landroid/view/View;JLkotlin/jvm/b/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "J",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$anim;->didomi_fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    long-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lio/didomi/sdk/a0;->b(Landroid/content/Context;)F

    move-result p2

    mul-float p1, p1, p2

    float-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p1, Lio/didomi/sdk/k9$a;

    invoke-direct {p1, p0, p3}, Lio/didomi/sdk/k9$a;-><init>(Landroid/view/View;Lkotlin/jvm/b/a;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;JLkotlin/jvm/b/a;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/k9;->a(Landroid/view/View;JLkotlin/jvm/b/a;)V

    return-void
.end method

.method public static final a(Landroid/view/View;Lio/didomi/sdk/z8;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/didomi/sdk/z8;->t()Z

    move-result p1

    if-eqz p1, :cond_17

    sget p1, Lio/didomi/sdk/R$color;->didomi_dark_bottom_divider:I

    goto :goto_19

    :cond_17
    sget p1, Lio/didomi/sdk/R$color;->didomi_light_bottom_divider:I

    :goto_19
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static final a(Landroid/view/View;Lio/didomi/sdk/z8;Z)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2d

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lio/didomi/sdk/z8;->t()Z

    move-result p1

    if-eqz p1, :cond_19

    sget p1, Lio/didomi/sdk/R$color;->didomi_dark_divider:I

    goto :goto_1b

    :cond_19
    sget p1, Lio/didomi/sdk/R$color;->didomi_light_divider:I

    :goto_1b
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_38

    :cond_2d
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_38

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    :goto_38
    return-void
.end method

.method public static synthetic a(Landroid/view/View;Lio/didomi/sdk/z8;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    :cond_5
    invoke-static {p0, p1, p2}, Lio/didomi/sdk/k9;->a(Landroid/view/View;Lio/didomi/sdk/z8;Z)V

    return-void
.end method

.method public static final b(Landroid/view/View;)V
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
