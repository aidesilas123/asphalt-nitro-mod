###### Class io.didomi.drawable.C1810k3 (io.didomi.sdk.k3)
.class public final Lio/didomi/sdk/k3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u001a#\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\u0013\u0010\u0008\u001a\u00020\u0005*\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroid/widget/ImageView;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "Lio/didomi/sdk/C3;",
        "logoProvider",
        "",
        "a",
        "(Landroid/widget/ImageView;Landroidx/lifecycle/LifecycleOwner;Lio/didomi/sdk/C3;)V",
        "b",
        "(Landroid/widget/ImageView;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final synthetic a(Landroid/widget/ImageView;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/k3;->b(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static final a(Landroid/widget/ImageView;Landroidx/lifecycle/LifecycleOwner;Lio/didomi/sdk/C3;)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/k3$a;

    invoke-direct {v0, p0}, Lio/didomi/sdk/k3$a;-><init>(Landroid/widget/ImageView;)V

    new-instance v1, Lio/didomi/sdk/k3$b;

    invoke-direct {v1, p0}, Lio/didomi/sdk/k3$b;-><init>(Landroid/widget/ImageView;)V

    new-instance v2, Lio/didomi/sdk/k3$c;

    invoke-direct {v2, p0}, Lio/didomi/sdk/k3$c;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p2, p1, v0, v1, v2}, Lio/didomi/sdk/C3;->a(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;Lkotlin/jvm/b/a;)Ljava/lang/Object;

    return-void
.end method

.method private static final b(Landroid/widget/ImageView;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$dimen;->didomi_notice_logo_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lt v2, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    if-eqz v1, :cond_21

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    :cond_21
    return-void
.end method
