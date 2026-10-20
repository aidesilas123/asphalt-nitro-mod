###### Class io.didomi.drawable.I0 (io.didomi.sdk.I0)
.class public abstract Lio/didomi/sdk/I0;
.super Lcom/google/android/material/bottomsheet/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003R\u001c\u0010\u0014\u001a\u00020\u000f8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/didomi/sdk/I0;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "<init>",
        "()V",
        "",
        "getTheme",
        "()I",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onStart",
        "Lio/didomi/sdk/z8;",
        "a",
        "()Lio/didomi/sdk/z8;",
        "setThemeProvider",
        "(Lio/didomi/sdk/z8;)V",
        "themeProvider",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lio/didomi/sdk/z8;
.end method

.method public getTheme()I
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/I0;->a()Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->u()Z

    move-result v0

    if-eqz v0, :cond_d

    sget v0, Lio/didomi/sdk/R$style;->Didomi_Theme_BottomSheetDialog_Fullscreen:I

    goto :goto_f

    :cond_d
    sget v0, Lio/didomi/sdk/R$style;->Didomi_Theme_BottomSheetDialog:I

    :goto_f
    return v0
.end method

.method public onStart()V
    .registers 6

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    sget v2, Lcom/google/android/material/R$id;->e:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, v1

    :goto_12
    if-nez v0, :cond_15

    return-void

    :cond_15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2c

    invoke-virtual {p0}, Lio/didomi/sdk/I0;->a()Lio/didomi/sdk/z8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->a()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_72

    :cond_2c
    const/16 v3, 0x15

    if-lt v2, v3, :cond_4f

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_3b

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    :cond_3b
    if-eqz v1, :cond_72

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_72

    invoke-virtual {p0}, Lio/didomi/sdk/I0;->a()Lio/didomi/sdk/z8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/z8;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_72

    :cond_4f
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_5a

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    :cond_5a
    if-eqz v1, :cond_72

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.ColorDrawable"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lio/didomi/sdk/I0;->a()Lio/didomi/sdk/z8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/z8;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_72
    :goto_72
    invoke-virtual {p0}, Lio/didomi/sdk/I0;->a()Lio/didomi/sdk/z8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->u()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_8c
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c0(I)V

    invoke-virtual {v0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V(Z)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I0;->a()Lio/didomi/sdk/z8;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->u()Z

    move-result p2

    if-nez p2, :cond_18

    sget p2, Lio/didomi/sdk/R$dimen;->didomi_bottom_sheet_top_margin:I

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, v0}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIII)V

    :cond_18
    return-void
.end method
