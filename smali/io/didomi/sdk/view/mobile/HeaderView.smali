###### Class io.didomi.drawable.view.mobile.HeaderView (io.didomi.sdk.view.mobile.HeaderView)
.class public final Lio/didomi/sdk/view/mobile/HeaderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J1\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\r\u0010\u001aJ+\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00172\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\r\u0010\u001cJ\r\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u0012R\u0014\u0010\u001f\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u001eR\"\u0010&\u001a\u00020 8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010.\u001a\u00020\'8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lio/didomi/sdk/view/mobile/HeaderView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyle",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "a",
        "(Landroid/graphics/Bitmap;)V",
        "resourceId",
        "(I)V",
        "b",
        "()V",
        "Lio/didomi/sdk/C3;",
        "logoProvider",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "",
        "title",
        "accessibilityTitle",
        "(Lio/didomi/sdk/C3;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;)V",
        "titleGravity",
        "(Ljava/lang/String;Ljava/lang/String;I)V",
        "Lio/didomi/sdk/v2;",
        "Lio/didomi/sdk/v2;",
        "binding",
        "Lio/didomi/sdk/z8;",
        "Lio/didomi/sdk/z8;",
        "getThemeProvider",
        "()Lio/didomi/sdk/z8;",
        "setThemeProvider",
        "(Lio/didomi/sdk/z8;)V",
        "themeProvider",
        "Lio/didomi/sdk/s5;",
        "c",
        "Lio/didomi/sdk/s5;",
        "getResourcesHelper",
        "()Lio/didomi/sdk/s5;",
        "setResourcesHelper",
        "(Lio/didomi/sdk/s5;)V",
        "resourcesHelper",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/v2;

.field public b:Lio/didomi/sdk/z8;

.field public c:Lio/didomi/sdk/s5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/didomi/sdk/view/mobile/HeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/didomi/sdk/view/mobile/HeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lio/didomi/sdk/v2;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/v2;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/view/mobile/HeaderView;->a:Lio/didomi/sdk/v2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_2b

    sget-object p1, Lio/didomi/sdk/Didomi;->Companion:Lio/didomi/sdk/Didomi$Companion;

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi$Companion;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getComponent$android_release()Lio/didomi/sdk/J0;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/view/mobile/HeaderView;)V

    :cond_2b
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/n;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lio/didomi/sdk/view/mobile/HeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(I)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/view/mobile/HeaderView;->a:Lio/didomi/sdk/v2;

    iget-object v0, v0, Lio/didomi/sdk/v2;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/didomi/sdk/view/mobile/HeaderView;->a:Lio/didomi/sdk/v2;

    iget-object v0, v0, Lio/didomi/sdk/v2;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private final a(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/view/mobile/HeaderView;->a:Lio/didomi/sdk/v2;

    iget-object v0, v0, Lio/didomi/sdk/v2;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/didomi/sdk/view/mobile/HeaderView;->a:Lio/didomi/sdk/v2;

    iget-object v0, v0, Lio/didomi/sdk/v2;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/view/mobile/HeaderView;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/view/mobile/HeaderView;->b()V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/view/mobile/HeaderView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/view/mobile/HeaderView;->a(I)V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/view/mobile/HeaderView;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/view/mobile/HeaderView;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic a(Lio/didomi/sdk/view/mobile/HeaderView;Lio/didomi/sdk/C3;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/didomi/sdk/view/mobile/HeaderView;->a(Lio/didomi/sdk/C3;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lio/didomi/sdk/view/mobile/HeaderView;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/16 p3, 0x11

    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lio/didomi/sdk/view/mobile/HeaderView;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private final b()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/view/mobile/HeaderView;->a:Lio/didomi/sdk/v2;

    iget-object v0, v0, Lio/didomi/sdk/v2;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    invoke-virtual {p0}, Lio/didomi/sdk/view/mobile/HeaderView;->getResourcesHelper()Lio/didomi/sdk/s5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/s5;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$dimen;->didomi_title_horizontal_padding_with_cross:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lio/didomi/sdk/view/mobile/HeaderView;->a:Lio/didomi/sdk/v2;

    iget-object v1, v1, Lio/didomi/sdk/v2;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2d

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3c

    :cond_2d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_3c
    return-void
.end method

.method public final a(Lio/didomi/sdk/C3;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "logoProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/view/mobile/HeaderView;->a:Lio/didomi/sdk/v2;

    iget-object v0, v0, Lio/didomi/sdk/v2;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_26

    if-eqz p4, :cond_26

    invoke-static {p4}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_27

    :cond_26
    const/4 p4, 0x0

    :cond_27
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const-string p3, "setup$lambda$0"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/view/mobile/HeaderView;->getThemeProvider()Lio/didomi/sdk/z8;

    move-result-object p3

    invoke-virtual {p3}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object p3

    invoke-virtual {p3}, Lio/didomi/sdk/e4;->n()Lio/didomi/sdk/w8;

    move-result-object p3

    invoke-static {v0, p3}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    iget-object p3, p0, Lio/didomi/sdk/view/mobile/HeaderView;->a:Lio/didomi/sdk/v2;

    iget-object p3, p3, Lio/didomi/sdk/v2;->b:Landroid/widget/ImageView;

    const/16 p4, 0x8

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p3, Lio/didomi/sdk/view/mobile/HeaderView$a;

    invoke-direct {p3, p0}, Lio/didomi/sdk/view/mobile/HeaderView$a;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lio/didomi/sdk/view/mobile/HeaderView$b;

    invoke-direct {p4, p0}, Lio/didomi/sdk/view/mobile/HeaderView$b;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lio/didomi/sdk/view/mobile/HeaderView$c;

    invoke-direct {v0, p0}, Lio/didomi/sdk/view/mobile/HeaderView$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p3, p4, v0}, Lio/didomi/sdk/C3;->a(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;Lkotlin/jvm/b/a;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/view/mobile/HeaderView;->a:Lio/didomi/sdk/v2;

    iget-object v0, v0, Lio/didomi/sdk/v2;->b:Landroid/widget/ImageView;

    const-string v1, "binding.imageHeaderLogo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/didomi/sdk/view/mobile/HeaderView;->a:Lio/didomi/sdk/v2;

    iget-object v0, v0, Lio/didomi/sdk/v2;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    invoke-static {p2}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    :cond_2a
    const/4 p2, 0x0

    :cond_2b
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const-string p1, "setup$lambda$2"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/view/mobile/HeaderView;->getThemeProvider()Lio/didomi/sdk/z8;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/e4;->n()Lio/didomi/sdk/w8;

    move-result-object p1

    invoke-static {v0, p1}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final getResourcesHelper()Lio/didomi/sdk/s5;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/view/mobile/HeaderView;->c:Lio/didomi/sdk/s5;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "resourcesHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getThemeProvider()Lio/didomi/sdk/z8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/view/mobile/HeaderView;->b:Lio/didomi/sdk/z8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "themeProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setResourcesHelper(Lio/didomi/sdk/s5;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/view/mobile/HeaderView;->c:Lio/didomi/sdk/s5;

    return-void
.end method

.method public final setThemeProvider(Lio/didomi/sdk/z8;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/view/mobile/HeaderView;->b:Lio/didomi/sdk/z8;

    return-void
.end method

###### Class io.didomi.sdk.view.mobile.HeaderView.a (io.didomi.sdk.view.mobile.HeaderView$a)
.class final synthetic Lio/didomi/sdk/view/mobile/HeaderView$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/view/mobile/HeaderView;->a(Lio/didomi/sdk/C3;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/b/l<",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 9

    const-class v3, Lio/didomi/sdk/view/mobile/HeaderView;

    const/4 v1, 0x1

    const-string v4, "onBitmapLogo"

    const-string v5, "onBitmapLogo(Landroid/graphics/Bitmap;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/r;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lkotlin/jvm/internal/l;->receiver:Ljava/lang/Object;

    check-cast v0, Lio/didomi/sdk/view/mobile/HeaderView;

    invoke-static {v0, p1}, Lio/didomi/sdk/view/mobile/HeaderView;->a(Lio/didomi/sdk/view/mobile/HeaderView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/view/mobile/HeaderView$a;->a(Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class io.didomi.sdk.view.mobile.HeaderView.b (io.didomi.sdk.view.mobile.HeaderView$b)
.class final synthetic Lio/didomi/sdk/view/mobile/HeaderView$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/view/mobile/HeaderView;->a(Lio/didomi/sdk/C3;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Integer;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 9

    const-class v3, Lio/didomi/sdk/view/mobile/HeaderView;

    const/4 v1, 0x1

    const-string v4, "onResourceLogo"

    const-string v5, "onResourceLogo(I)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/r;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lkotlin/jvm/internal/l;->receiver:Ljava/lang/Object;

    check-cast v0, Lio/didomi/sdk/view/mobile/HeaderView;

    invoke-static {v0, p1}, Lio/didomi/sdk/view/mobile/HeaderView;->a(Lio/didomi/sdk/view/mobile/HeaderView;I)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/view/mobile/HeaderView$b;->a(I)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class io.didomi.sdk.view.mobile.HeaderView.c (io.didomi.sdk.view.mobile.HeaderView$c)
.class final synthetic Lio/didomi/sdk/view/mobile/HeaderView$c;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/view/mobile/HeaderView;->a(Lio/didomi/sdk/C3;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 9

    const-class v3, Lio/didomi/sdk/view/mobile/HeaderView;

    const/4 v1, 0x0

    const-string v4, "onLogoAbsent"

    const-string v5, "onLogoAbsent()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/r;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/l;->receiver:Ljava/lang/Object;

    check-cast v0, Lio/didomi/sdk/view/mobile/HeaderView;

    invoke-static {v0}, Lio/didomi/sdk/view/mobile/HeaderView;->a(Lio/didomi/sdk/view/mobile/HeaderView;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/view/mobile/HeaderView$c;->a()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method
