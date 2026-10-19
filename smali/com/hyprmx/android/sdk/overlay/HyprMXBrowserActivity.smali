###### Class com.hyprmx.android.sdk.overlay.HyprMXBrowserActivity (com.hyprmx.android.sdk.overlay.HyprMXBrowserActivity)
.class public final Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/overlay/g;
.implements Lcom/hyprmx/android/sdk/overlay/i;
.implements Lcom/hyprmx/android/sdk/overlay/k;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0011\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0097\u0001J\u0011\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005H\u0097\u0001J\u0011\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0097\u0001J\u0011\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0097\u0001J\u0011\u0010\u000f\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005H\u0097\u0001J\u000e\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/hyprmx/android/sdk/overlay/g;",
        "Lcom/hyprmx/android/sdk/overlay/i;",
        "Lcom/hyprmx/android/sdk/overlay/k;",
        "",
        "data",
        "",
        "createCalendarEvent",
        "url",
        "openOutsideApplication",
        "openShareSheet",
        "",
        "resourceId",
        "showToast",
        "storePicture",
        "Landroid/view/View;",
        "view",
        "onNavigateForwardClicked",
        "onNavigateBackClicked",
        "onCloseClicked",
        "onShareSheetClicked",
        "<init>",
        "()V",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/overlay/j;

.field public final synthetic b:Lcom/hyprmx/android/sdk/overlay/l;

.field public c:Lcom/hyprmx/android/databinding/a;

.field public d:Lcom/hyprmx/android/sdk/overlay/f;

.field public e:Ljava/lang/String;

.field public f:Lcom/hyprmx/android/sdk/webview/f;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/hyprmx/android/sdk/overlay/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/hyprmx/android/sdk/overlay/j;-><init>(Landroid/content/Context;ZI)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->a:Lcom/hyprmx/android/sdk/overlay/j;

    new-instance v0, Lcom/hyprmx/android/sdk/overlay/l;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/overlay/l;-><init>()V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->b:Lcom/hyprmx/android/sdk/overlay/l;

    return-void
.end method


# virtual methods
.method public final A()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    iput-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->f:Lcom/hyprmx/android/sdk/webview/f;

    return-void
.end method

.method public final N()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final a(Landroid/content/Context;IILandroid/content/Intent;Lcom/hyprmx/android/sdk/core/w;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Landroid/content/Intent;",
            "Lcom/hyprmx/android/sdk/core/w;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->b:Lcom/hyprmx/android/sdk/overlay/l;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/hyprmx/android/sdk/overlay/l;->a(Landroid/content/Context;IILandroid/content/Intent;Lcom/hyprmx/android/sdk/core/w;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->b:Lcom/hyprmx/android/sdk/overlay/l;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/l;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final a([Ljava/lang/String;I)V
    .registers 4

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public final asyncSavePhoto(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->a:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1, p2}, Lcom/hyprmx/android/sdk/overlay/j;->asyncSavePhoto(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final captureImage()V
    .registers 2

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->b:Lcom/hyprmx/android/sdk/overlay/l;

    invoke-virtual {v0, p0}, Lcom/hyprmx/android/sdk/overlay/l;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->a:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/j;->createCalendarEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Z)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->c:Lcom/hyprmx/android/databinding/a;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/hyprmx/android/databinding/a;->b:Lcom/hyprmx/android/databinding/b;

    iget-object v0, v0, Lcom/hyprmx/android/databinding/b;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final e(Z)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->c:Lcom/hyprmx/android/databinding/a;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/hyprmx/android/databinding/a;->b:Lcom/hyprmx/android/databinding/b;

    iget-object v0, v0, Lcom/hyprmx/android/databinding/b;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final hyprMXBrowserClosed()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->a:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/overlay/j;->hyprMXBrowserClosed()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v7, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;-><init>(Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;IILandroid/content/Intent;Lkotlin/coroutines/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/overlay/f;->F()V

    :cond_7
    return-void
.end method

.method public final onCloseClicked(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "Activity already finishing.  Ignoring close click."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz p1, :cond_18

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/overlay/f;->Q()V

    :cond_18
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 13

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/hyprmx/android/R$layout;->hyprmx_browser:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/hyprmx/android/R$id;->hyprmx_browser_footer:I

    invoke-static {p1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const-string v4, "Missing required view with ID: "

    if-eqz v3, :cond_150

    sget v5, Lcom/hyprmx/android/R$id;->hyprmx_navigate_back:I

    invoke-static {v3, v5}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_13e

    sget v5, Lcom/hyprmx/android/R$id;->hyprmx_navigate_forward:I

    invoke-static {v3, v5}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    if-eqz v7, :cond_13e

    new-instance v5, Lcom/hyprmx/android/databinding/b;

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v5, v3, v6, v7}, Lcom/hyprmx/android/databinding/b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    sget v3, Lcom/hyprmx/android/R$id;->hyprmx_browser_header:I

    invoke-static {p1, v3}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_13c

    sget v7, Lcom/hyprmx/android/R$id;->hyprmx_browser_title:I

    invoke-static {v6, v7}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_12a

    sget v7, Lcom/hyprmx/android/R$id;->hyprmx_close_button:I

    invoke-static {v6, v7}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    if-eqz v9, :cond_12a

    sget v7, Lcom/hyprmx/android/R$id;->hyprmx_share_sheet:I

    invoke-static {v6, v7}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    if-eqz v10, :cond_12a

    new-instance v4, Lcom/hyprmx/android/databinding/c;

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v4, v6, v8, v9}, Lcom/hyprmx/android/databinding/c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageButton;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v6, Lcom/hyprmx/android/databinding/a;

    invoke-direct {v6, p1, v5, v4}, Lcom/hyprmx/android/databinding/a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/hyprmx/android/databinding/b;Lcom/hyprmx/android/databinding/c;)V

    iput-object v6, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->c:Lcom/hyprmx/android/databinding/a;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->a:Lcom/hyprmx/android/sdk/overlay/j;

    iput-object p0, p1, Lcom/hyprmx/android/sdk/overlay/j;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_8a

    const-string v4, "baseAdId"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "<set-?>"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->e:Ljava/lang/String;

    :cond_8a
    sget-object p1, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    iget-object v4, p1, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz v4, :cond_97

    iget-object v4, v4, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v4}, Lcom/hyprmx/android/sdk/core/b;->t()Lcom/hyprmx/android/sdk/presentation/j;

    move-result-object v4

    goto :goto_98

    :cond_97
    move-object v4, v1

    :goto_98
    if-eqz v4, :cond_127

    iget-object v5, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->e:Ljava/lang/String;

    const-string v6, "viewModelIdentifier"

    if-eqz v5, :cond_a1

    goto :goto_a5

    :cond_a1
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :goto_a5
    invoke-interface {v4, p0, v5}, Lcom/hyprmx/android/sdk/presentation/j;->a(Lcom/hyprmx/android/sdk/overlay/g;Ljava/lang/String;)Lcom/hyprmx/android/sdk/overlay/f;

    move-result-object v4

    if-eqz v4, :cond_127

    iget-object v5, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->e:Ljava/lang/String;

    if-eqz v5, :cond_b0

    goto :goto_b4

    :cond_b0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :goto_b4
    iget-object p1, p1, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz p1, :cond_bf

    iget-object p1, p1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->t()Lcom/hyprmx/android/sdk/presentation/j;

    move-result-object p1

    goto :goto_c0

    :cond_bf
    move-object p1, v1

    :goto_c0
    if-eqz p1, :cond_cf

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "this@HyprMXBrowserActivity.applicationContext"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1, v5}, Lcom/hyprmx/android/sdk/presentation/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/hyprmx/android/sdk/webview/f;

    move-result-object v1

    :cond_cf
    iput-object v1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->f:Lcom/hyprmx/android/sdk/webview/f;

    if-nez v1, :cond_d4

    goto :goto_d9

    :cond_d4
    sget p1, Lcom/hyprmx/android/R$id;->hyprmx_webview:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    :goto_d9
    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->c:Lcom/hyprmx/android/databinding/a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/hyprmx/android/databinding/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->f:Lcom/hyprmx/android/sdk/webview/f;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->c:Lcom/hyprmx/android/databinding/a;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/hyprmx/android/databinding/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v1, Lcom/hyprmx/android/R$id;->hyprmx_webview:I

    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    sget v2, Lcom/hyprmx/android/R$id;->hyprmx_browser_layout:I

    const/4 v5, 0x6

    invoke-virtual {p1, v1, v5, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v5, 0x7

    invoke-virtual {p1, v1, v5, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v2, 0x4

    const/4 v5, 0x3

    invoke-virtual {p1, v1, v2, v0, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p1, v1, v5, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->c:Lcom/hyprmx/android/databinding/a;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/hyprmx/android/databinding/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-interface {v4, p0}, Lcom/hyprmx/android/sdk/core/c;->a(Lcom/hyprmx/android/sdk/core/d;)V

    invoke-interface {v4}, Lcom/hyprmx/android/sdk/overlay/f;->R()V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->f:Lcom/hyprmx/android/sdk/webview/f;

    if-nez p1, :cond_123

    goto :goto_126

    :cond_123
    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/webview/f;->setContainingActivity(Landroid/app/Activity;)V

    :goto_126
    move-object v1, v4

    :cond_127
    iput-object v1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    return-void

    :cond_12a
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13c
    move v0, v3

    goto :goto_150

    :cond_13e
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_150
    :goto_150
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz v0, :cond_9

    const-string v1, "onCreate"

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/mvp/c;->i(Ljava/lang/String;)V

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->c:Lcom/hyprmx/android/databinding/a;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz v1, :cond_c

    const-string v2, "onDestroy"

    invoke-interface {v1, v2}, Lcom/hyprmx/android/sdk/mvp/c;->i(Ljava/lang/String;)V

    :cond_c
    iget-object v1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz v1, :cond_13

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/core/c;->L()V

    :cond_13
    iput-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->f:Lcom/hyprmx/android/sdk/webview/f;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/webview/f;->c()V

    :cond_1c
    iput-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->f:Lcom/hyprmx/android/sdk/webview/f;

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onNavigateBackClicked(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/overlay/f;->j()V

    :cond_c
    return-void
.end method

.method public final onNavigateForwardClicked(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/overlay/f;->l()V

    :cond_c
    return-void
.end method

.method public final onPause()V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz v0, :cond_9

    const-string v1, "onPause"

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/mvp/c;->i(Ljava/lang/String;)V

    :cond_9
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 11

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_2b

    new-instance v4, Lcom/hyprmx/android/sdk/utility/l0;

    aget-object v5, p2, v3

    aget v6, p3, v3

    if-nez v6, :cond_21

    const/4 v6, 0x1

    goto :goto_22

    :cond_21
    const/4 v6, 0x0

    :goto_22
    invoke-direct {v4, v5, v6}, Lcom/hyprmx/android/sdk/utility/l0;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2b
    iget-object p2, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz p2, :cond_32

    invoke-interface {p2, v0, p1}, Lcom/hyprmx/android/sdk/utility/k0;->a(Ljava/util/ArrayList;I)V

    :cond_32
    return-void
.end method

.method public final onResume()V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz v0, :cond_9

    const-string v1, "onResume"

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/mvp/c;->i(Ljava/lang/String;)V

    :cond_9
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public final onShareSheetClicked(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/overlay/f;->i()V

    :cond_c
    return-void
.end method

.method public final onStart()V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz v0, :cond_9

    const-string v1, "onStart"

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/mvp/c;->i(Ljava/lang/String;)V

    :cond_9
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method public final onStop()V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz v0, :cond_9

    const-string v1, "onStop"

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/mvp/c;->i(Ljava/lang/String;)V

    :cond_9
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public openOutsideApplication(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->a:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/j;->openOutsideApplication(Ljava/lang/String;)V

    return-void
.end method

.method public openShareSheet(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->a:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/j;->openShareSheet(Ljava/lang/String;)V

    return-void
.end method

.method public final setOverlayPresented(Z)V
    .registers 3

    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->a:Lcom/hyprmx/android/sdk/overlay/j;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/hyprmx/android/sdk/overlay/j;->d:Z

    return-void
.end method

.method public final setTitleText(Ljava/lang/String;)V
    .registers 3

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->c:Lcom/hyprmx/android/databinding/a;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/hyprmx/android/databinding/a;->c:Lcom/hyprmx/android/databinding/c;

    iget-object v0, v0, Lcom/hyprmx/android/databinding/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showHyprMXBrowser(Ljava/lang/String;)V
    .registers 3

    const-string v0, "viewModelIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->a:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/j;->showHyprMXBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public final showPlatformBrowser(Ljava/lang/String;)V
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->a:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/j;->showPlatformBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public showToast(I)V
    .registers 3
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->a:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/j;->showToast(I)V

    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->a:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final z()V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->c:Lcom/hyprmx/android/databinding/a;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/hyprmx/android/databinding/a;->c:Lcom/hyprmx/android/databinding/c;

    iget-object v0, v0, Lcom/hyprmx/android/databinding/c;->c:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.overlay.HyprMXBrowserActivity.a (com.hyprmx.android.sdk.overlay.HyprMXBrowserActivity$a)
.class public final Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/s;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserActivity$onActivityResult$1"
    f = "HyprMXBrowserActivity.kt"
    i = {}
    l = {
        0x94
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;IILandroid/content/Intent;Lkotlin/coroutines/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;",
            "II",
            "Landroid/content/Intent;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->b:Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;

    iput p2, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->c:I

    iput p3, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->d:I

    iput-object p4, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->e:Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->b:Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;

    iget v2, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->c:I

    iget v3, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->d:I

    iget-object v4, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->e:Landroid/content/Intent;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;-><init>(Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;IILandroid/content/Intent;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_39

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->b:Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;

    iget v3, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->c:I

    iget v4, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->d:I

    iget-object v5, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->e:Landroid/content/Intent;

    iget-object v1, p1, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    const-string v6, "null cannot be cast to non-null type com.hyprmx.android.sdk.core.ImageCaptureInterface"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lcom/hyprmx/android/sdk/core/w;

    iput v2, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->a:I

    iget-object v1, p1, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->b:Lcom/hyprmx/android/sdk/overlay/l;

    move-object v2, p1

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lcom/hyprmx/android/sdk/overlay/l;->a(Landroid/content/Context;IILandroid/content/Intent;Lcom/hyprmx/android/sdk/core/w;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_39

    return-object v0

    :cond_39
    :goto_39
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
