###### Class com.hyprmx.android.sdk.activity.HyprMXOfferViewerActivity (com.hyprmx.android.sdk.activity.HyprMXOfferViewerActivity)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;",
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
.field public a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    iget-object v6, p0, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    if-eqz v6, :cond_17

    new-instance v7, Lcom/hyprmx/android/sdk/activity/m;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/hyprmx/android/sdk/activity/m;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;IILandroid/content/Intent;Lkotlin/coroutines/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    move-object v0, v6

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_17
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->n:Lcom/hyprmx/android/sdk/fullscreen/e;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/fullscreen/e;->g()V

    :cond_9
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    if-eqz v1, :cond_16

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/webview/f;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    sget-object v0, Lcom/hyprmx/android/sdk/activity/a;->a:Lcom/hyprmx/android/sdk/activity/b;

    if-nez v0, :cond_19

    const-string p1, "Cancelling ad. Cannot recreate HyprMXOfferViewerActivity."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1504

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    sget-object v0, Lcom/hyprmx/android/sdk/activity/a;->a:Lcom/hyprmx/android/sdk/activity/b;

    if-eqz v0, :cond_44

    invoke-interface {v0, p0, p1, p0}, Lcom/hyprmx/android/sdk/activity/b;->a(Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;Landroid/os/Bundle;Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;)Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    move-result-object p1

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->W()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->e:Lcom/hyprmx/android/sdk/powersavemode/a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    :goto_45
    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->X()V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .registers 8

    const-string v0, "onPause"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->Y()V

    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    if-eqz v1, :cond_26

    new-instance v4, Lcom/hyprmx/android/sdk/activity/l;

    const/4 v0, 0x0

    invoke-direct {v4, v1, v0}, Lcom/hyprmx/android/sdk/activity/l;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_26
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
    iget-object p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    if-eqz p2, :cond_32

    invoke-virtual {p2, v0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a(Ljava/util/ArrayList;I)V

    :cond_32
    return-void
.end method

.method public final onResume()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "onResume"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->Z()V

    :cond_f
    return-void
.end method

.method public final onStart()V
    .registers 4

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const-string v0, "onStart"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    if-eqz v1, :cond_34

    const-string v2, "event"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->o:Lcom/hyprmx/android/sdk/mvp/c;

    invoke-interface {v2, v0}, Lcom/hyprmx/android/sdk/mvp/c;->i(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->n:Lcom/hyprmx/android/sdk/fullscreen/e;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/fullscreen/e;->P()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->j:Lcom/hyprmx/android/sdk/network/i;

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/network/i;->a(Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;)V

    :cond_23
    iget-object v0, v1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->q:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2d

    const-string v0, "layout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2d
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_34
    return-void
.end method

.method public final onStop()V
    .registers 2

    const-string v0, "onStop"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a0()V

    :cond_c
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 3

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1504

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_f
    return-void
.end method
