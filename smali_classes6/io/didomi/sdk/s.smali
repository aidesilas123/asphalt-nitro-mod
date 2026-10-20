###### Class io.didomi.drawable.S (io.didomi.sdk.S)
.class public final Lio/didomi/sdk/S;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/S$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 D2\u00020\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ+\u0010\u0013\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0003J\u000f\u0010\u001a\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0003R\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\"\u0010*\u001a\u00020$8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\u001d\u0010\'\"\u0004\u0008(\u0010)R\"\u00101\u001a\u00020+8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008,\u0010.\"\u0004\u0008/\u00100R\"\u00107\u001a\u0002028\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u00103\u001a\u0004\u0008%\u00104\"\u0004\u00085\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010B\u00a8\u0006E"
    }
    d2 = {
        "Lio/didomi/sdk/S;",
        "Landroidx/fragment/app/DialogFragment;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "onAttach",
        "(Landroid/content/Context;)V",
        "",
        "getTheme",
        "()I",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onStart",
        "onResume",
        "onPause",
        "onDestroyView",
        "Lio/didomi/sdk/D8;",
        "a",
        "Lio/didomi/sdk/D8;",
        "d",
        "()Lio/didomi/sdk/D8;",
        "setUiProvider",
        "(Lio/didomi/sdk/D8;)V",
        "uiProvider",
        "Lio/didomi/sdk/U;",
        "b",
        "Lio/didomi/sdk/U;",
        "()Lio/didomi/sdk/U;",
        "setModel",
        "(Lio/didomi/sdk/U;)V",
        "model",
        "Lio/didomi/sdk/z8;",
        "c",
        "Lio/didomi/sdk/z8;",
        "()Lio/didomi/sdk/z8;",
        "setThemeProvider",
        "(Lio/didomi/sdk/z8;)V",
        "themeProvider",
        "Lio/didomi/sdk/I3;",
        "Lio/didomi/sdk/I3;",
        "()Lio/didomi/sdk/I3;",
        "setNavigationManager",
        "(Lio/didomi/sdk/I3;)V",
        "navigationManager",
        "Lio/didomi/sdk/N0;",
        "e",
        "Lio/didomi/sdk/N0;",
        "binding",
        "Lio/didomi/sdk/Q;",
        "f",
        "Lio/didomi/sdk/Q;",
        "helper",
        "Lkotlinx/coroutines/Job;",
        "g",
        "Lkotlinx/coroutines/Job;",
        "job",
        "h",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final h:Lio/didomi/sdk/S$a;


# instance fields
.field public a:Lio/didomi/sdk/D8;

.field public b:Lio/didomi/sdk/U;

.field public c:Lio/didomi/sdk/z8;

.field public d:Lio/didomi/sdk/I3;

.field private e:Lio/didomi/sdk/N0;

.field private f:Lio/didomi/sdk/Q;

.field private g:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/S$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/S$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/S;->h:Lio/didomi/sdk/S$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/U;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/S;->b:Lio/didomi/sdk/U;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "model"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lio/didomi/sdk/I3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/S;->d:Lio/didomi/sdk/I3;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "navigationManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lio/didomi/sdk/z8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/S;->c:Lio/didomi/sdk/z8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "themeProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lio/didomi/sdk/D8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/S;->a:Lio/didomi/sdk/D8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "uiProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTheme()I
    .registers 2

    sget v0, Lio/didomi/sdk/R$style;->Didomi_Theme_Dialog:I

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/F0;->a(Landroidx/fragment/app/DialogFragment;)Lio/didomi/sdk/J0;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/S;)V

    :cond_e
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/N0;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/N0;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/S;->e:Lio/didomi/sdk/N0;

    invoke-virtual {p1}, Lio/didomi/sdk/N0;->a()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "inflate(inflater, parent\u2026g = it\n            }.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 4

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lio/didomi/sdk/S;->a()Lio/didomi/sdk/U;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/U;->n()Lio/didomi/sdk/C3;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "viewLifecycleOwner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/C3;->a(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lio/didomi/sdk/S;->f:Lio/didomi/sdk/Q;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lio/didomi/sdk/Q;->j()V

    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lio/didomi/sdk/S;->f:Lio/didomi/sdk/Q;

    iput-object v0, p0, Lio/didomi/sdk/S;->e:Lio/didomi/sdk/N0;

    iget-object v1, p0, Lio/didomi/sdk/S;->g:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_2a

    invoke-interface {v1, v0}, Lkotlinx/coroutines/Job;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_2a
    iput-object v0, p0, Lio/didomi/sdk/S;->g:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/S;->g:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_8
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lio/didomi/sdk/S;->d()Lio/didomi/sdk/D8;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/D8;->e()Lkotlinx/coroutines/flow/u;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/S$b;

    invoke-direct {v1, p0}, Lio/didomi/sdk/S$b;-><init>(Lio/didomi/sdk/S;)V

    invoke-static {p0, v0, v1}, Lio/didomi/sdk/N2;->a(Landroidx/fragment/app/Fragment;Lkotlinx/coroutines/flow/u;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/S;->g:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onStart()V
    .registers 5

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_29

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_37

    :cond_29
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    :goto_37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/didomi/sdk/R$dimen;->didomi_content_max_width_without_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-ge v1, v2, :cond_4c

    const/4 v2, -0x1

    :cond_4c
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 12

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    if-nez p1, :cond_23

    goto :goto_35

    :cond_23
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lio/didomi/sdk/S;->c()Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->a()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_35
    new-instance p1, Lio/didomi/sdk/Q;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lio/didomi/sdk/S;->e:Lio/didomi/sdk/N0;

    const-string p2, "null cannot be cast to non-null type io.didomi.sdk.databinding.DidomiFragmentConsentNoticeBinding"

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/S;->a()Lio/didomi/sdk/U;

    move-result-object v5

    invoke-virtual {p0}, Lio/didomi/sdk/S;->c()Lio/didomi/sdk/z8;

    move-result-object v6

    invoke-virtual {p0}, Lio/didomi/sdk/S;->b()Lio/didomi/sdk/I3;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v8

    const-string p2, "viewLifecycleOwner"

    invoke-static {v8, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lio/didomi/sdk/Q;-><init>(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/N0;Lio/didomi/sdk/U;Lio/didomi/sdk/z8;Lio/didomi/sdk/I3;Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Lio/didomi/sdk/S;->f:Lio/didomi/sdk/Q;

    return-void
.end method
