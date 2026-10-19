###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController (com.hyprmx.android.sdk.activity.HyprMXVastViewController)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;
.super Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
        "Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;",
        "",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final A:Lcom/hyprmx/android/sdk/preload/n;

.field public final B:Lcom/hyprmx/android/sdk/analytics/b;

.field public final C:Lcom/hyprmx/android/sdk/tracking/c;

.field public final D:Lcom/hyprmx/android/sdk/network/k;

.field public E:Landroid/widget/VideoView;

.field public F:Lcom/hyprmx/android/sdk/graphics/c;

.field public G:Lcom/hyprmx/android/sdk/graphics/b;

.field public H:Lcom/hyprmx/android/sdk/graphics/d;

.field public I:Landroid/media/AudioManager;

.field public J:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public final K:Ljava/lang/String;

.field public final L:Ljava/lang/String;

.field public final M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:I

.field public P:Z

.field public Q:Lkotlinx/coroutines/Job;

.field public R:Lkotlinx/coroutines/Job;

.field public S:Lkotlinx/coroutines/Job;

.field public T:Z

.field public final U:Ljava/util/ArrayList;

.field public final V:Lcom/hyprmx/android/sdk/model/vast/a;

.field public W:Z

.field public final z:Lcom/hyprmx/android/sdk/analytics/d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/os/Bundle;Lcom/hyprmx/android/sdk/api/data/a;Lkotlinx/coroutines/t0;Lcom/hyprmx/android/sdk/analytics/d;Lcom/hyprmx/android/sdk/preload/n;Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;Lcom/hyprmx/android/sdk/analytics/b;Lcom/hyprmx/android/sdk/presentation/a;Lcom/hyprmx/android/sdk/tracking/c;Lcom/hyprmx/android/sdk/om/g;Lcom/hyprmx/android/sdk/network/k;Lcom/hyprmx/android/sdk/powersavemode/a;Lkotlinx/coroutines/s;Lcom/hyprmx/android/sdk/assert/ThreadAssert;Lcom/hyprmx/android/sdk/utility/h0;Lcom/hyprmx/android/sdk/network/i;Lcom/hyprmx/android/sdk/webview/s;Lcom/hyprmx/android/sdk/presentation/h;Lcom/hyprmx/android/sdk/fullscreen/e;)V
    .registers 43

    move-object/from16 v15, p0

    move-object/from16 v14, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p10

    move-object/from16 v10, p12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    move-object/from16 v11, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v7, p11

    move-object/from16 v5, p13

    move-object/from16 v9, p14

    move-object/from16 v17, v0

    move-object v0, v10

    move-object/from16 v10, p15

    move-object/from16 v18, v1

    move-object v1, v13

    move-object/from16 v13, p16

    move-object v2, v12

    move-object/from16 v12, p17

    move-object/from16 v19, v3

    move-object v3, v6

    move-object/from16 v6, p18

    move-object/from16 v20, v4

    move-object v4, v14

    move-object/from16 v14, p19

    move-object/from16 v15, p20

    move-object/from16 p11, v5

    const-string v5, "activity"

    move-object/from16 v21, v6

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "ad"

    move-object/from16 v6, p3

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "dispatcher"

    move-object/from16 v6, p4

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventController"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "cacheController"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "hyprMXBaseViewControllerListener"

    move-object/from16 v6, p7

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "clientErrorController"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "activityResultListener"

    move-object/from16 v6, p9

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "trackingDelegate"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "networkController"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "powerSaveMode"

    move-object/from16 v6, p13

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "scope"

    move-object/from16 v6, p14

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "assert"

    move-object/from16 v6, p15

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "internetConnectionDialog"

    move-object/from16 v0, p16

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkConnectionMonitor"

    move-object/from16 v5, p17

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewFactory"

    move-object/from16 v5, p18

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPublisher"

    move-object/from16 v5, p19

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullScreenSharedConnector"

    move-object/from16 v5, p20

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v16, 0x76000

    move-object/from16 v2, p2

    move-object/from16 v5, p11

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v16}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/os/Bundle;Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;Lcom/hyprmx/android/sdk/presentation/a;Lcom/hyprmx/android/sdk/powersavemode/a;Lcom/hyprmx/android/sdk/webview/s;Lcom/hyprmx/android/sdk/om/g;Lcom/hyprmx/android/sdk/api/data/a;Lkotlinx/coroutines/s;Lcom/hyprmx/android/sdk/assert/ThreadAssert;Lkotlinx/coroutines/t0;Lcom/hyprmx/android/sdk/network/i;Lcom/hyprmx/android/sdk/utility/h0;Lcom/hyprmx/android/sdk/presentation/h;Lcom/hyprmx/android/sdk/fullscreen/e;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->z:Lcom/hyprmx/android/sdk/analytics/d;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->A:Lcom/hyprmx/android/sdk/preload/n;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->B:Lcom/hyprmx/android/sdk/analytics/b;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->D:Lcom/hyprmx/android/sdk/network/k;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->U:Ljava/util/ArrayList;

    invoke-interface/range {p15 .. p15}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    invoke-interface/range {p3 .. p3}, Lcom/hyprmx/android/sdk/api/data/a;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->K:Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Lcom/hyprmx/android/sdk/api/data/a;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/hyprmx/android/sdk/preload/n;->d(Ljava/lang/String;)Lcom/hyprmx/android/sdk/api/data/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/api/data/b;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_127

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/api/data/b;->a()Lcom/hyprmx/android/sdk/model/vast/a;

    move-result-object v1

    if-eqz v1, :cond_127

    iput-object v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->L:Ljava/lang/String;

    iput-object v1, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->V:Lcom/hyprmx/android/sdk/model/vast/a;

    new-instance v2, Lcom/hyprmx/android/sdk/activity/m0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/hyprmx/android/sdk/activity/m0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lcom/hyprmx/android/sdk/model/vast/a;Lkotlin/coroutines/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v2

    move/from16 p5, v5

    move-object/from16 p6, v6

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/model/vast/a;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->M:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/model/vast/a;->e()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->U:Ljava/util/ArrayList;

    :cond_127
    return-void
.end method

.method public static final a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/hyprmx/android/sdk/activity/o0;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/activity/o0;

    iget v1, v0, Lcom/hyprmx/android/sdk/activity/o0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/activity/o0;->f:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lcom/hyprmx/android/sdk/activity/o0;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/activity/o0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    :goto_1b
    iget-object p1, v0, Lcom/hyprmx/android/sdk/activity/o0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/activity/o0;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz v2, :cond_69

    if-eq v2, v5, :cond_57

    if-eq v2, v4, :cond_4c

    if-eq v2, v3, :cond_41

    if-ne v2, v6, :cond_39

    iget-object p0, v0, Lcom/hyprmx/android/sdk/activity/o0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_dc

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    iget-object p0, v0, Lcom/hyprmx/android/sdk/activity/o0;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/activity/o0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto/16 :goto_c5

    :cond_4c
    iget-object p0, v0, Lcom/hyprmx/android/sdk/activity/o0;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/activity/o0;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/activity/o0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b1

    :cond_57
    iget-object p0, v0, Lcom/hyprmx/android/sdk/activity/o0;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/activity/o0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    :try_start_5b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_63

    move-object v9, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v9

    goto :goto_8b

    :catch_63
    move-exception p1

    move-object v9, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v9

    goto :goto_8f

    :cond_69
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->L:Ljava/lang/String;

    if-nez p1, :cond_79

    const-string p0, "Could not setup the video view.  mediaAssetURL is null."

    invoke-static {p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    goto/16 :goto_152

    :cond_79
    :try_start_79
    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->A:Lcom/hyprmx/android/sdk/preload/n;

    iget-object v8, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/activity/o0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/activity/o0;->b:Ljava/lang/String;

    iput v5, v0, Lcom/hyprmx/android/sdk/activity/o0;->f:I

    invoke-interface {v2, v8, p1, v0}, Lcom/hyprmx/android/sdk/preload/n;->a(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/hyprmx/android/sdk/activity/o0;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8b

    goto/16 :goto_152

    :cond_8b
    :goto_8b
    check-cast v2, Ljava/lang/String;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_8d} :catch_8e

    goto :goto_95

    :catch_8e
    move-exception v2

    :goto_8f
    const-string v5, "Exception setting up video view"

    invoke-static {v5, v2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v7

    :goto_95
    if-nez v2, :cond_e4

    const-string v2, "Video does not exist, even though assetCacheEntity is stating it is completed."

    invoke-static {v2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->A:Lcom/hyprmx/android/sdk/preload/n;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/activity/o0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/activity/o0;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/activity/o0;->c:Ljava/lang/String;

    iput v4, v0, Lcom/hyprmx/android/sdk/activity/o0;->f:I

    invoke-interface {v5, p1, v0}, Lcom/hyprmx/android/sdk/preload/n;->f(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_ae

    goto/16 :goto_152

    :cond_ae
    move-object v4, p0

    move-object p0, v2

    move-object v2, p1

    :goto_b1
    iget-object p1, v4, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->A:Lcom/hyprmx/android/sdk/preload/n;

    iput-object v4, v0, Lcom/hyprmx/android/sdk/activity/o0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/activity/o0;->b:Ljava/lang/String;

    iput-object v7, v0, Lcom/hyprmx/android/sdk/activity/o0;->c:Ljava/lang/String;

    iput v3, v0, Lcom/hyprmx/android/sdk/activity/o0;->f:I

    invoke-interface {p1, v2, v0}, Lcom/hyprmx/android/sdk/preload/n;->a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c3

    goto/16 :goto_152

    :cond_c3
    move-object p1, p0

    move-object p0, v4

    :goto_c5
    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->B:Lcom/hyprmx/android/sdk/analytics/b;

    sget-object v3, Lcom/hyprmx/android/sdk/utility/s;->d:Lcom/hyprmx/android/sdk/utility/s;

    invoke-interface {v2, v3, p1, v6}, Lcom/hyprmx/android/sdk/analytics/b;->a(Lcom/hyprmx/android/sdk/utility/s;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/activity/o0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput-object v7, v0, Lcom/hyprmx/android/sdk/activity/o0;->b:Ljava/lang/String;

    iput v6, v0, Lcom/hyprmx/android/sdk/activity/o0;->f:I

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/tracking/a;->d(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_dc

    goto/16 :goto_152

    :cond_dc
    :goto_dc
    iget-object p0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->n:Lcom/hyprmx/android/sdk/fullscreen/e;

    invoke-interface {p0}, Lcom/hyprmx/android/sdk/fullscreen/e;->s()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_152

    :cond_e4
    invoke-virtual {p0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g(Ljava/lang/String;)Landroid/widget/VideoView;

    move-result-object p1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->E:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v1, 0x0

    if-lt p1, v0, :cond_104

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    :cond_104
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->j0()V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->F:Lcom/hyprmx/android/sdk/graphics/c;

    if-eqz p1, :cond_123

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_123
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->G:Lcom/hyprmx/android/sdk/graphics/b;

    if-eqz p1, :cond_12a

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_12a
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->U()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v3}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->r:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v3, :cond_141

    const-string v3, "adViewLayout"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_142

    :cond_141
    move-object v7, v3

    :goto_142
    invoke-virtual {p1, v0, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->N:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p1

    iget-object p0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->N:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    :goto_152
    return-object v1
.end method

.method public static final a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;I)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    const/4 v0, -0x3

    if-eq p1, v0, :cond_14

    const/4 v0, -0x2

    if-eq p1, v0, :cond_14

    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    goto :goto_26

    :cond_14
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_26

    const-string p1, "Audio focus loss while playing video"

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->h0()V

    :cond_26
    :goto_26
    return-void
.end method

.method public static final a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/media/MediaPlayer;)V
    .registers 8

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->P:Z

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->P:Z

    new-instance v3, Lcom/hyprmx/android/sdk/activity/n0;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/hyprmx/android/sdk/activity/n0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;ZLkotlin/coroutines/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1a
    return-void
.end method

.method public static final a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/view/View;)V
    .registers 9

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->P:Z

    new-instance v4, Lcom/hyprmx/android/sdk/activity/n0;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0, p1}, Lcom/hyprmx/android/sdk/activity/n0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;ZLkotlin/coroutines/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V
    .registers 9

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$videoView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {p2}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->W:Z

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance v3, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;

    invoke-direct {v3, p0, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/widget/VideoView;Landroid/view/View;)V
    .registers 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$videoView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->P:Z

    if-nez p2, :cond_41

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_41

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_31

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->F:Lcom/hyprmx/android/sdk/graphics/c;

    if-nez p0, :cond_3d

    goto :goto_4e

    :cond_31
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->F:Lcom/hyprmx/android/sdk/graphics/c;

    if-nez p0, :cond_3d

    goto :goto_4e

    :cond_3d
    invoke-virtual {p0, p2}, Lcom/hyprmx/android/sdk/graphics/c;->setVisibility(I)V

    goto :goto_4e

    :cond_41
    iget-boolean p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->P:Z

    if-nez p2, :cond_4e

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_4e

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->i0()V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public static final a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;Landroid/view/View;)V
    .registers 15

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$url"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->P:Z

    if-eqz p2, :cond_f

    return-void

    :cond_f
    const-string p2, "url"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->n:Lcom/hyprmx/android/sdk/fullscreen/e;

    invoke-interface {p2, p1}, Lcom/hyprmx/android/sdk/fullscreen/e;->b(Ljava/lang/String;)V

    new-instance v3, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    new-instance v9, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;

    invoke-direct {v9, p0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;Landroid/media/MediaPlayer;II)Z
    .registers 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$mediaAssetURL"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "There was an error trying to play the video."

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    new-instance v3, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    new-instance v3, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;

    invoke-direct {v3, p0, p1, v6}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->B:Lcom/hyprmx/android/sdk/analytics/b;

    sget-object v1, Lcom/hyprmx/android/sdk/utility/s;->d:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There was an error trying to play the video for ad id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->K:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v0, v1, v2, v4}, Lcom/hyprmx/android/sdk/analytics/b;->a(Lcom/hyprmx/android/sdk/utility/s;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->R:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    invoke-static {v0, v6, v1, v6}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_4a
    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->Q:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_51

    invoke-static {v0, v6, v1, v6}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->K:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->f(Ljava/lang/String;)V

    return v1
.end method

.method public static final b(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/media/MediaPlayer;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video prepared.  Setting seek location to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_26

    iget v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->O:I

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_2f

    :cond_26
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->O:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :goto_2f
    new-instance v0, Lcom/hyprmx/android/sdk/activity/h1;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/activity/h1;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public static final c(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/media/MediaPlayer;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seek completed.  Resuming video to position "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method


# virtual methods
.method public final T()V
    .registers 10

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->T:Z

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->T:Z

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    const-string v1, "about:blank"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hyprmx/android/sdk/webview/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;

    invoke-direct {v6, p0, v2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->f:Lcom/hyprmx/android/sdk/om/g;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/om/g;->a()V

    :cond_28
    invoke-super {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->T()V

    :cond_2b
    return-void
.end method

.method public final V()V
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->V:Lcom/hyprmx/android/sdk/model/vast/a;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->L:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_22

    :cond_9
    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->I:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->c0()V

    return-void

    :cond_22
    :goto_22
    const-string v0, "Ad state is not valid. The operation could not be completed."

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->B:Lcom/hyprmx/android/sdk/analytics/b;

    sget-object v2, Lcom/hyprmx/android/sdk/utility/s;->d:Lcom/hyprmx/android/sdk/utility/s;

    const/4 v3, 0x4

    invoke-interface {v1, v2, v0, v3}, Lcom/hyprmx/android/sdk/analytics/b;->a(Lcom/hyprmx/android/sdk/utility/s;Ljava/lang/String;I)V

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->n:Lcom/hyprmx/android/sdk/fullscreen/e;

    invoke-interface {v1, v0}, Lcom/hyprmx/android/sdk/fullscreen/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final W()V
    .registers 1

    invoke-super {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->W()V

    return-void
.end method

.method public final X()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->f(Z)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->E:Landroid/widget/VideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_2c
    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->S:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_34

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_34
    invoke-super {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->X()V

    return-void
.end method

.method public final Y()V
    .registers 1

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->h0()V

    invoke-super {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->Y()V

    return-void
.end method

.method public final Z()V
    .registers 1

    invoke-super {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->Z()V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->i0()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    const-string v1, "javascript:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/hyprmx/android/sdk/webview/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b0()V
    .registers 4

    invoke-super {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->b0()V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    sget v1, Lcom/hyprmx/android/R$id;->hyprmx_primary_web_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->U()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v2}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->r:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v2, :cond_2c

    const-string v2, "adViewLayout"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2c
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final c0()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    new-instance v0, Lcom/hyprmx/android/sdk/activity/w0;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/activity/w0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->J:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public final d0()Lcom/hyprmx/android/sdk/graphics/d;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->H:Lcom/hyprmx/android/sdk/graphics/d;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "hyprMXVideoController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e0()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/w0;->a(Landroidx/appcompat/app/AppCompatActivity;)I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-eq v0, v2, :cond_10

    if-eq v0, v1, :cond_10

    const/16 v0, 0x14

    goto :goto_11

    :cond_10
    const/4 v0, 0x7

    :goto_11
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, v1}, Lcom/hyprmx/android/sdk/utility/w;->a(ILandroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    const/16 v3, 0x19

    invoke-static {v3, v1}, Lcom/hyprmx/android/sdk/utility/w;->a(ILandroid/content/Context;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object v2
.end method

.method public final f(Z)V
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Monitoring audio focus change "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "audioFocusListener"

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->I:Landroid/media/AudioManager;

    if-eqz p1, :cond_3e

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->J:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-nez v2, :cond_27

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_28

    :cond_27
    move-object v0, v2

    :goto_28
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_3e

    :cond_2e
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->I:Landroid/media/AudioManager;

    if-eqz p1, :cond_3e

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->J:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-nez v2, :cond_3a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3b

    :cond_3a
    move-object v0, v2

    :goto_3b
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final f0()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/w0;->a(Landroidx/appcompat/app/AppCompatActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/16 v1, 0x9

    if-eq v0, v1, :cond_10

    const/16 v0, 0x14

    goto :goto_11

    :cond_10
    const/4 v0, 0x7

    :goto_11
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, v2}, Lcom/hyprmx/android/sdk/utility/w;->a(ILandroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    const/16 v3, 0x19

    invoke-static {v3, v2}, Lcom/hyprmx/android/sdk/utility/w;->a(ILandroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object v1
.end method

.method public final g(Ljava/lang/String;)Landroid/widget/VideoView;
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    const-class v1, Landroid/widget/VideoView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v1, Lcom/hyprmx/android/R$id;->hyprmx_video_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Lcom/hyprmx/android/sdk/activity/g1;

    invoke-direct {v1, p0, v0}, Lcom/hyprmx/android/sdk/activity/g1;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/widget/VideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance v1, Lcom/hyprmx/android/sdk/activity/y0;

    invoke-direct {v1, p0}, Lcom/hyprmx/android/sdk/activity/y0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->U()Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lcom/hyprmx/android/sdk/activity/z0;

    invoke-direct {v2, p0, v0}, Lcom/hyprmx/android/sdk/activity/z0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/widget/VideoView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/hyprmx/android/sdk/activity/i1;

    invoke-direct {v1, p0, p1}, Lcom/hyprmx/android/sdk/activity/i1;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-object v0
.end method

.method public final g0()Landroid/widget/VideoView;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->E:Landroid/widget/VideoView;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "videoView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h0()V
    .registers 10

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->R:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_13
    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->Q:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1a

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1a
    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->E:Landroid/widget/VideoView;

    if-nez v0, :cond_24

    const-string v0, "VideoView has not been initialized when moving to the onPause state."

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    return-void

    :cond_24
    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->P:Z

    if-nez v0, :cond_6d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->f(Z)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pausing video at position "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->O:I

    :cond_59
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    new-instance v6, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;

    invoke-direct {v6, p0, v2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_6d
    return-void
.end method

.method public final i0()V
    .registers 9

    const-string v0, "resumeVideo"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->E:Landroid/widget/VideoView;

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    new-instance v5, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;

    invoke-direct {v5, p0, v1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->k:Lcom/hyprmx/android/sdk/utility/h0;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/utility/h0;->q()Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    :cond_26
    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->P:Z

    if-nez v0, :cond_c2

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    new-instance v5, Lcom/hyprmx/android/sdk/activity/p0;

    invoke-direct {v5, p0, v1}, Lcom/hyprmx/android/sdk/activity/p0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->R:Lkotlinx/coroutines/Job;

    new-instance v5, Lcom/hyprmx/android/sdk/activity/q0;

    invoke-direct {v5, p0, v1}, Lcom/hyprmx/android/sdk/activity/q0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->Q:Lkotlinx/coroutines/Job;

    iget v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->O:I

    if-eqz v0, :cond_78

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_6b

    goto :goto_78

    :cond_6b
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    new-instance v2, Lcom/hyprmx/android/sdk/activity/c1;

    invoke-direct {v2, p0}, Lcom/hyprmx/android/sdk/activity/c1;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_9d

    :cond_78
    :goto_78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Resuming video at position "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :goto_9d
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->F:Lcom/hyprmx/android/sdk/graphics/c;

    if-nez v0, :cond_aa

    goto :goto_ad

    :cond_aa
    invoke-virtual {v0, v2}, Lcom/hyprmx/android/sdk/graphics/c;->setVisibility(I)V

    :goto_ad
    iget v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->O:I

    if-lez v0, :cond_be

    new-instance v5, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;

    invoke-direct {v5, p0, v1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_be
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->f(Z)V

    :cond_c2
    return-void
.end method

.method public final j0()V
    .registers 8

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->V:Lcom/hyprmx/android/sdk/model/vast/a;

    if-eqz v0, :cond_b4

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->L:Ljava/lang/String;

    if-nez v1, :cond_f

    goto/16 :goto_b4

    :cond_f
    new-instance v1, Lcom/hyprmx/android/sdk/graphics/d;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity.applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->n:Lcom/hyprmx/android/sdk/fullscreen/e;

    invoke-interface {v3}, Lcom/hyprmx/android/sdk/fullscreen/e;->t()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/hyprmx/android/sdk/graphics/d;-><init>(Landroid/content/Context;Z)V

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->H:Lcom/hyprmx/android/sdk/graphics/d;

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object v1

    new-instance v2, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$i;

    invoke-direct {v2, p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$i;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V

    invoke-virtual {v1, v2}, Lcom/hyprmx/android/sdk/graphics/d;->setCloseButtonOnClickListener(Lkotlin/jvm/b/l;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->U()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object v2

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v3}, Lcom/hyprmx/android/sdk/graphics/d$a;->a(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/hyprmx/android/sdk/model/vast/a;->b:Lcom/hyprmx/android/sdk/model/vast/e;

    iget-wide v2, v1, Lcom/hyprmx/android/sdk/model/vast/e;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_63

    iget-wide v4, v1, Lcom/hyprmx/android/sdk/model/vast/e;->a:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_63

    const/4 v1, 0x1

    goto :goto_64

    :cond_63
    const/4 v1, 0x0

    :goto_64
    if-eqz v1, :cond_91

    new-instance v1, Lcom/hyprmx/android/sdk/graphics/c;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/model/vast/a;->b:Lcom/hyprmx/android/sdk/model/vast/e;

    iget-wide v3, v0, Lcom/hyprmx/android/sdk/model/vast/e;->b:J

    long-to-int v0, v3

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-direct {v1, v2, v0, v3}, Lcom/hyprmx/android/sdk/graphics/c;-><init>(Landroidx/appcompat/app/AppCompatActivity;ILcom/hyprmx/android/sdk/assert/ThreadAssert;)V

    new-instance v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$j;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$j;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V

    invoke-virtual {v1, v0}, Lcom/hyprmx/android/sdk/graphics/c;->setSkipControllerListener(Lcom/hyprmx/android/sdk/graphics/c$a;)V

    new-instance v0, Lcom/hyprmx/android/sdk/activity/j1;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/activity/j1;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V

    invoke-virtual {v1, v0}, Lcom/hyprmx/android/sdk/graphics/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->U()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->f0()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->F:Lcom/hyprmx/android/sdk/graphics/c;

    :cond_91
    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->M:Ljava/lang/String;

    if-eqz v0, :cond_b3

    new-instance v1, Lcom/hyprmx/android/sdk/graphics/b;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-direct {v1, v2, v3}, Lcom/hyprmx/android/sdk/graphics/b;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/hyprmx/android/sdk/assert/ThreadAssert;)V

    new-instance v2, Lcom/hyprmx/android/sdk/activity/e1;

    invoke-direct {v2, p0, v0}, Lcom/hyprmx/android/sdk/activity/e1;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->U()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->e0()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->G:Lcom/hyprmx/android/sdk/graphics/b;

    :cond_b3
    return-void

    :cond_b4
    :goto_b4
    const-string v0, "There was an error retrieving the vast ad."

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;

    iget v1, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3a

    if-ne v2, v5, :cond_32

    iget-object v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->b:Ljava/util/Iterator;

    iget-object v7, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d4

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->V:Lcom/hyprmx/android/sdk/model/vast/a;

    if-nez p1, :cond_44

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_44
    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/model/vast/a;->e()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hyprmx/android/sdk/model/vast/b;

    iget-object v6, v6, Lcom/hyprmx/android/sdk/model/vast/b;->c:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_68
    :goto_68
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_84

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/hyprmx/android/sdk/model/vast/g;

    iget-object v9, v9, Lcom/hyprmx/android/sdk/model/vast/g;->b:Ljava/lang/String;

    const/4 v10, 0x2

    const-string v11, "verificationNotExecuted"

    invoke-static {v9, v11, v4, v10, v3}, Lkotlin/text/g;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_84
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_93
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hyprmx/android/sdk/model/vast/g;

    iget-object v8, v8, Lcom/hyprmx/android/sdk/model/vast/g;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    :cond_a5
    invoke-static {v2, v6}, Lkotlin/collections/p;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_51

    :cond_a9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v7, p0

    move-object v6, p1

    :cond_af
    :goto_af
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object p1, v7, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->D:Lcom/hyprmx/android/sdk/network/k;

    iput-object v7, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput-object v6, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->b:Ljava/util/Iterator;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->c:Ljava/lang/String;

    iput v5, v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->f:I

    new-instance v8, Lcom/hyprmx/android/sdk/network/a;

    const/16 v9, 0xf

    invoke-direct {v8, v4, v3, v9}, Lcom/hyprmx/android/sdk/network/a;-><init>(ILjava/util/Map;I)V

    invoke-interface {p1, v2, v8, v0}, Lcom/hyprmx/android/sdk/network/k;->a(Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d4

    return-object v1

    :cond_d4
    :goto_d4
    check-cast p1, Lcom/hyprmx/android/sdk/network/m;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/network/m;->a()I

    move-result p1

    const/16 v8, 0xc8

    if-gt v8, p1, :cond_e4

    const/16 v8, 0x12c

    if-ge p1, v8, :cond_e4

    const/4 p1, 0x1

    goto :goto_e5

    :cond_e4
    const/4 p1, 0x0

    :goto_e5
    if-nez p1, :cond_af

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v8, "Error sending vast tracking for url "

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    goto :goto_af

    :cond_f9
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final onGlobalLayout()V
    .registers 3

    invoke-super {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->onGlobalLayout()V

    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->P:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->W:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->G:Lcom/hyprmx/android/sdk/graphics/b;

    if-nez v0, :cond_10

    goto :goto_17

    :cond_10
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->e0()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_17
    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->F:Lcom/hyprmx/android/sdk/graphics/c;

    if-nez v0, :cond_1c

    goto :goto_23

    :cond_1c
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->f0()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_23
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object v0

    sget v1, Lcom/hyprmx/android/sdk/graphics/d;->e:I

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lcom/hyprmx/android/sdk/graphics/d$a;->a(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_32
    return-void
.end method

.method public final showLearnMore()V
    .registers 7

    new-instance v3, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$n;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$n;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final startCatalogDurationTracking(FLjava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewingId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;

    const/4 v6, 0x0

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;-><init>(FLjava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.a (com.hyprmx.android.sdk.activity.HyprMXVastViewController$a)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g(Ljava/lang/String;)Landroid/widget/VideoView;
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$createVideoView$1$1"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0x24b,
        0x24c,
        0x24d,
        0x24e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->a:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_30

    if-eq v1, v5, :cond_2b

    if-eq v1, v4, :cond_26

    if-eq v1, v3, :cond_21

    if-ne v1, v2, :cond_19

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c7

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ba

    :cond_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ad

    :cond_2b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a0

    :cond_30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput v5, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->a:I

    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->V:Lcom/hyprmx/android/sdk/model/vast/a;

    iget-object v5, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->f:Lcom/hyprmx/android/sdk/om/g;

    if-eqz v5, :cond_9b

    iget-object v5, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->U:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9b

    if-nez v1, :cond_48

    goto :goto_9b

    :cond_48
    iget-object v5, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->f:Lcom/hyprmx/android/sdk/om/g;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v6

    iget-object v7, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->n:Lcom/hyprmx/android/sdk/fullscreen/e;

    invoke-interface {v7}, Lcom/hyprmx/android/sdk/fullscreen/e;->M()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v1, v7}, Lcom/hyprmx/android/sdk/om/g;->a(Landroid/widget/VideoView;Lcom/hyprmx/android/sdk/model/vast/a;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->k(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_9b

    goto :goto_9d

    :cond_65
    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->F:Lcom/hyprmx/android/sdk/graphics/c;

    if-eqz v1, :cond_72

    iget-object v5, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->f:Lcom/hyprmx/android/sdk/om/g;

    sget-object v6, Lcom/iab/omid/library/jungroup/adsession/g;->a:Lcom/iab/omid/library/jungroup/adsession/g;

    const-string v7, "Skip Controls"

    invoke-interface {v5, v1, v6, v7}, Lcom/hyprmx/android/sdk/om/g;->a(Landroid/view/View;Lcom/iab/omid/library/jungroup/adsession/g;Ljava/lang/String;)V

    :cond_72
    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->G:Lcom/hyprmx/android/sdk/graphics/b;

    if-eqz v1, :cond_7f

    iget-object v5, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->f:Lcom/hyprmx/android/sdk/om/g;

    sget-object v6, Lcom/iab/omid/library/jungroup/adsession/g;->c:Lcom/iab/omid/library/jungroup/adsession/g;

    const-string v7, "Learn more button"

    invoke-interface {v5, v1, v6, v7}, Lcom/hyprmx/android/sdk/om/g;->a(Landroid/view/View;Lcom/iab/omid/library/jungroup/adsession/g;Ljava/lang/String;)V

    :cond_7f
    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    iget-object v5, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->f:Lcom/hyprmx/android/sdk/om/g;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->getDuration()I

    move-result p1

    int-to-float p1, p1

    invoke-interface {v5, p1}, Lcom/hyprmx/android/sdk/om/g;->a(F)Lcom/hyprmx/android/sdk/tracking/a;

    move-result-object p1

    invoke-interface {v1, p1, p0}, Lcom/hyprmx/android/sdk/tracking/c;->a(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_9b

    goto :goto_9d

    :cond_9b
    :goto_9b
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    :goto_9d
    if-ne p1, v0, :cond_a0

    return-object v0

    :cond_a0
    :goto_a0
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    iput v4, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->a:I

    invoke-interface {p1, p0}, Lcom/hyprmx/android/sdk/tracking/a;->i(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_ad

    return-object v0

    :cond_ad
    :goto_ad
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    iput v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->a:I

    invoke-interface {p1, p0}, Lcom/hyprmx/android/sdk/tracking/a;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_ba

    return-object v0

    :cond_ba
    :goto_ba
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->a:I

    invoke-interface {p1, p0}, Lcom/hyprmx/android/sdk/tracking/a;->l(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c7

    return-object v0

    :cond_c7
    :goto_c7
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$a;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->i0()V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.b (com.hyprmx.android.sdk.activity.HyprMXVastViewController$b)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g(Ljava/lang/String;)Landroid/widget/VideoView;
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$createVideoView$4$1"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0x26a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$b;->a:I

    invoke-interface {p1, p0}, Lcom/hyprmx/android/sdk/tracking/a;->d(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.c (com.hyprmx.android.sdk.activity.HyprMXVastViewController$c)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g(Ljava/lang/String;)Landroid/widget/VideoView;
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$createVideoView$4$2"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0x26c,
        0x26d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->c:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 5
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_30

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->A:Lcom/hyprmx/android/sdk/preload/n;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->c:Ljava/lang/String;

    iput v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->a:I

    invoke-interface {p1, v1, p0}, Lcom/hyprmx/android/sdk/preload/n;->f(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_30

    return-object v0

    :cond_30
    :goto_30
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->A:Lcom/hyprmx/android/sdk/preload/n;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->c:Ljava/lang/String;

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$c;->a:I

    invoke-interface {p1, v1, p0}, Lcom/hyprmx/android/sdk/preload/n;->a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3f

    return-object v0

    :cond_3f
    :goto_3f
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.d (com.hyprmx.android.sdk.activity.HyprMXVastViewController$d)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->T()V
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$finishWithResult$1"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0x216
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$d;->a:I

    invoke-interface {p1, p0}, Lcom/hyprmx/android/sdk/tracking/a;->m(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.e (com.hyprmx.android.sdk.activity.HyprMXVastViewController$e)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->k(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController"
    f = "HyprMXVastViewController.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x2ab
    }
    m = "fireOMVerificationNotExecuted"
    n = {
        "this",
        "url"
    }
    s = {
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

.field public b:Ljava/util/Iterator;

.field public c:Ljava/lang/String;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->e:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->f:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$e;->e:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->k(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.f (com.hyprmx.android.sdk.activity.HyprMXVastViewController$f)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->h0()V
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$pauseVideo$2"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0x179
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$f;->a:I

    invoke-interface {p1, p0}, Lcom/hyprmx/android/sdk/tracking/a;->k(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.g (com.hyprmx.android.sdk.activity.HyprMXVastViewController$g)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->i0()V
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$resumeVideo$2"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0x187
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_25

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$g;->a:I

    invoke-static {p1, p0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    return-object v0

    :cond_25
    :goto_25
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.h (com.hyprmx.android.sdk.activity.HyprMXVastViewController$h)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->i0()V
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$resumeVideo$4"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0x1b0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$h;->a:I

    invoke-interface {p1, p0}, Lcom/hyprmx/android/sdk/tracking/a;->g(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.i (com.hyprmx.android.sdk.activity.HyprMXVastViewController$i)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$i;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Landroid/view/View;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$i;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$i;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->n:Lcom/hyprmx/android/sdk/fullscreen/e;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/fullscreen/e;->K()V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.j (com.hyprmx.android.sdk.activity.HyprMXVastViewController$j)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/graphics/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$j;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$j;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/graphics/d;->c()V

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.k (com.hyprmx.android.sdk.activity.HyprMXVastViewController$k)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->j0()V
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$setupVideoControl$2$2$1"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0x1db
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$k;->a:I

    invoke-interface {p1, p0}, Lcom/hyprmx/android/sdk/tracking/a;->c(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.l (com.hyprmx.android.sdk.activity.HyprMXVastViewController$l)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->j0()V
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$setupVideoControl$3$1$1$1"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0x1ef
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->z:Lcom/hyprmx/android/sdk/analytics/d;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->n:Lcom/hyprmx/android/sdk/fullscreen/e;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/fullscreen/e;->B()Ljava/lang/String;

    move-result-object p1

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$l;->a:I

    invoke-interface {v1, p1, p0}, Lcom/hyprmx/android/sdk/analytics/d;->a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    :cond_2d
    :goto_2d
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.m (com.hyprmx.android.sdk.activity.HyprMXVastViewController$m)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->j0()V
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$setupVideoControl$3$1$1$2"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0x1f0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$m;->a:I

    invoke-interface {p1, p0}, Lcom/hyprmx/android/sdk/tracking/a;->h(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.n (com.hyprmx.android.sdk.activity.HyprMXVastViewController$n)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$n;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->showLearnMore()V
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$showLearnMore$1"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$n;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$n;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$n;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$n;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$n;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$n;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$n;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$n;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->G:Lcom/hyprmx/android/sdk/graphics/b;

    if-nez p1, :cond_d

    goto :goto_11

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_11
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.o (com.hyprmx.android.sdk.activity.HyprMXVastViewController$o)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->startCatalogDurationTracking(FLjava/lang/String;Ljava/lang/String;)V
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$startCatalogDurationTracking$1"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0xf4
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:F

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(FLjava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->b:F

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->e:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->b:F

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->e:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;-><init>(FLjava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "startCatalogDurationTracking "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->b:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->e:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    new-instance v3, Lcom/hyprmx/android/sdk/vast/a;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->z:Lcom/hyprmx/android/sdk/analytics/d;

    iget v4, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->b:F

    iget-object v5, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->d:Ljava/lang/String;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/hyprmx/android/sdk/vast/a;-><init>(Lcom/hyprmx/android/sdk/analytics/d;FLjava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->a:I

    invoke-interface {v1, v3, p0}, Lcom/hyprmx/android/sdk/tracking/c;->a(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5b

    return-object v0

    :cond_5b
    :goto_5b
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.c1 (com.hyprmx.android.sdk.activity.c1)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/c1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/c1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/c1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->b(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/media/MediaPlayer;)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.e1 (com.hyprmx.android.sdk.activity.e1)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/e1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/e1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/e1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/e1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/e1;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.g1 (com.hyprmx.android.sdk.activity.g1)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/g1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

.field public final synthetic b:Landroid/widget/VideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/widget/VideoView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/g1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/g1;->b:Landroid/widget/VideoView;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/g1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/g1;->b:Landroid/widget/VideoView;

    invoke-static {v0, v1, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.h1 (com.hyprmx.android.sdk.activity.h1)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/h1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/h1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/h1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->c(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/media/MediaPlayer;)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.i1 (com.hyprmx.android.sdk.activity.i1)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/i1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/i1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/i1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/i1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/i1;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method

###### Class com.hyprmx.android.sdk.activity.j1 (com.hyprmx.android.sdk.activity.j1)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/j1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/j1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/j1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/view/View;)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.w0 (com.hyprmx.android.sdk.activity.w0)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/w0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/w0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/w0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;I)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.y0 (com.hyprmx.android.sdk.activity.y0)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/y0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/y0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/y0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/media/MediaPlayer;)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.z0 (com.hyprmx.android.sdk.activity.z0)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/z0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

.field public final synthetic b:Landroid/widget/VideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/widget/VideoView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/z0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/z0;->b:Landroid/widget/VideoView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/z0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/z0;->b:Landroid/widget/VideoView;

    invoke-static {v0, v1, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Landroid/widget/VideoView;Landroid/view/View;)V

    return-void
.end method
