###### Class com.hyprmx.android.sdk.core.h (com.hyprmx.android.sdk.core.h)
.class public final Lcom/hyprmx/android/sdk/core/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/core/j0;
.implements Lcom/hyprmx/android/sdk/core/b;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/core/b;

.field public final b:Lcom/hyprmx/android/sdk/api/data/a;

.field public final c:Lcom/hyprmx/android/sdk/presentation/a;

.field public final d:Lcom/hyprmx/android/sdk/utility/h0;

.field public final e:Lcom/hyprmx/android/sdk/network/i;

.field public final f:Lcom/hyprmx/android/sdk/tracking/c;

.field public final g:Lcom/hyprmx/android/sdk/presentation/h;

.field public final h:Lcom/hyprmx/android/sdk/fullscreen/e;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/b;Lcom/hyprmx/android/sdk/api/data/a;Lcom/hyprmx/android/sdk/presentation/a;Lcom/hyprmx/android/sdk/utility/h0;Lcom/hyprmx/android/sdk/network/i;Lcom/hyprmx/android/sdk/tracking/c;Lcom/hyprmx/android/sdk/presentation/e;Lcom/hyprmx/android/sdk/fullscreen/d;)V
    .registers 10

    const-string v0, "applicationModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityResultListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internetConnectionDialog"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkConnectionMonitor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTrackingDelegate"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPublisher"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullScreenSharedConnector"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/core/h;->b:Lcom/hyprmx/android/sdk/api/data/a;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/core/h;->c:Lcom/hyprmx/android/sdk/presentation/a;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/core/h;->d:Lcom/hyprmx/android/sdk/utility/h0;

    iput-object p5, p0, Lcom/hyprmx/android/sdk/core/h;->e:Lcom/hyprmx/android/sdk/network/i;

    iput-object p6, p0, Lcom/hyprmx/android/sdk/core/h;->f:Lcom/hyprmx/android/sdk/tracking/c;

    iput-object p7, p0, Lcom/hyprmx/android/sdk/core/h;->g:Lcom/hyprmx/android/sdk/presentation/h;

    iput-object p8, p0, Lcom/hyprmx/android/sdk/core/h;->h:Lcom/hyprmx/android/sdk/fullscreen/e;

    return-void
.end method


# virtual methods
.method public final A()Lcom/hyprmx/android/sdk/presentation/a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->c:Lcom/hyprmx/android/sdk/presentation/a;

    return-object v0
.end method

.method public final B()Lcom/hyprmx/android/sdk/presentation/h;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->g:Lcom/hyprmx/android/sdk/presentation/h;

    return-object v0
.end method

.method public final C()Lcom/hyprmx/android/sdk/preferences/c;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->C()Lcom/hyprmx/android/sdk/preferences/c;

    move-result-object v0

    return-object v0
.end method

.method public final D()Lcom/hyprmx/android/sdk/utility/h0;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->d:Lcom/hyprmx/android/sdk/utility/h0;

    return-object v0
.end method

.method public final E()Lcom/hyprmx/android/sdk/placement/a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->E()Lcom/hyprmx/android/sdk/placement/a;

    move-result-object v0

    return-object v0
.end method

.method public final F()Lcom/hyprmx/android/sdk/bidding/a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->F()Lcom/hyprmx/android/sdk/bidding/a;

    move-result-object v0

    return-object v0
.end method

.method public final G()Lcom/hyprmx/android/sdk/initialization/g;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->G()Lcom/hyprmx/android/sdk/initialization/g;

    move-result-object v0

    return-object v0
.end method

.method public final H()Lcom/hyprmx/android/sdk/utility/n0;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->H()Lcom/hyprmx/android/sdk/utility/n0;

    move-result-object v0

    return-object v0
.end method

.method public final I()Lcom/hyprmx/android/sdk/webview/s;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->I()Lcom/hyprmx/android/sdk/webview/s;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/hyprmx/android/sdk/core/b;Lcom/hyprmx/android/sdk/api/data/a;Lcom/hyprmx/android/sdk/presentation/a;Lcom/hyprmx/android/sdk/presentation/e;Lcom/hyprmx/android/sdk/fullscreen/d;)Lcom/hyprmx/android/sdk/activity/b;
    .registers 13

    const-string v0, "applicationModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityResultListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPublisher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullScreenSharedConnector"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/hyprmx/android/sdk/core/b;->a(Lcom/hyprmx/android/sdk/core/b;Lcom/hyprmx/android/sdk/api/data/a;Lcom/hyprmx/android/sdk/presentation/a;Lcom/hyprmx/android/sdk/presentation/e;Lcom/hyprmx/android/sdk/fullscreen/d;)Lcom/hyprmx/android/sdk/activity/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/hyprmx/android/sdk/presentation/b;Lcom/hyprmx/android/sdk/api/data/r;)Lcom/hyprmx/android/sdk/activity/f0;
    .registers 4

    const-string v0, "activityResultListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiComponents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0, p1, p2}, Lcom/hyprmx/android/sdk/core/b;->a(Lcom/hyprmx/android/sdk/presentation/b;Lcom/hyprmx/android/sdk/api/data/r;)Lcom/hyprmx/android/sdk/activity/f0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/hyprmx/android/sdk/presentation/b;Lcom/hyprmx/android/sdk/utility/f0;Lcom/hyprmx/android/sdk/model/a;Lcom/hyprmx/android/sdk/api/data/r;Ljava/util/List;)Lcom/hyprmx/android/sdk/activity/g0;
    .registers 13

    const-string v0, "activityResultListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageCacheManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadedVastData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiComponents"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requiredInformation"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/hyprmx/android/sdk/core/b;->a(Lcom/hyprmx/android/sdk/presentation/b;Lcom/hyprmx/android/sdk/utility/f0;Lcom/hyprmx/android/sdk/model/a;Lcom/hyprmx/android/sdk/api/data/r;Ljava/util/List;)Lcom/hyprmx/android/sdk/activity/g0;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/hyprmx/android/sdk/preload/n;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->a()Lcom/hyprmx/android/sdk/preload/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/hyprmx/android/sdk/om/b;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/core/b;->a(Lcom/hyprmx/android/sdk/om/b;)V

    return-void
.end method

.method public final b()Lcom/hyprmx/android/sdk/network/i;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->e:Lcom/hyprmx/android/sdk/network/i;

    return-object v0
.end method

.method public final c()Lcom/hyprmx/android/sdk/network/k;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->c()Lcom/hyprmx/android/sdk/network/k;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/hyprmx/android/sdk/core/i0;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->d()Lcom/hyprmx/android/sdk/core/i0;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/hyprmx/android/sdk/analytics/b;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->e()Lcom/hyprmx/android/sdk/analytics/b;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/hyprmx/android/sdk/analytics/d;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->f()Lcom/hyprmx/android/sdk/analytics/d;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/hyprmx/android/sdk/preload/v;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->g()Lcom/hyprmx/android/sdk/preload/v;

    move-result-object v0

    return-object v0
.end method

.method public final getConsentStatus()Lcom/hyprmx/android/sdk/consent/ConsentStatus;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->getConsentStatus()Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/hyprmx/android/sdk/consent/b;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->h()Lcom/hyprmx/android/sdk/consent/b;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/hyprmx/android/sdk/powersavemode/a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->i()Lcom/hyprmx/android/sdk/powersavemode/a;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/hyprmx/android/sdk/initialization/b;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->j()Lcom/hyprmx/android/sdk/initialization/b;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/hyprmx/android/sdk/analytics/f;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->k()Lcom/hyprmx/android/sdk/analytics/f;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/hyprmx/android/sdk/tracking/c;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->f:Lcom/hyprmx/android/sdk/tracking/c;

    return-object v0
.end method

.method public final n()Lcom/hyprmx/android/sdk/core/js/a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->n()Lcom/hyprmx/android/sdk/core/js/a;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lcom/hyprmx/android/sdk/fullscreen/e;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->h:Lcom/hyprmx/android/sdk/fullscreen/e;

    return-object v0
.end method

.method public final p()Lcom/hyprmx/android/sdk/utility/f0;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->p()Lcom/hyprmx/android/sdk/utility/f0;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lcom/hyprmx/android/sdk/assert/ThreadAssert;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->q()Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lcom/hyprmx/android/sdk/model/a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->r()Lcom/hyprmx/android/sdk/model/a;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lcom/hyprmx/android/sdk/presentation/j;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->t()Lcom/hyprmx/android/sdk/presentation/j;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/hyprmx/android/sdk/preload/z;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->u()Lcom/hyprmx/android/sdk/preload/z;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lcom/hyprmx/android/sdk/api/data/a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->b:Lcom/hyprmx/android/sdk/api/data/a;

    return-object v0
.end method

.method public final w()Lkotlinx/coroutines/s;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->w()Lkotlinx/coroutines/s;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lcom/hyprmx/android/sdk/om/g;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->x()Lcom/hyprmx/android/sdk/om/g;

    move-result-object v0

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/h;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->z()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
