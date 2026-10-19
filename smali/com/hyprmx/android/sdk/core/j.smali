###### Class com.hyprmx.android.sdk.core.j (com.hyprmx.android.sdk.core.j)
.class public final Lcom/hyprmx/android/sdk/core/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/core/b;
.implements Lcom/hyprmx/android/sdk/initialization/c;
.implements Lcom/hyprmx/android/sdk/placement/c$a;
.implements Lcom/hyprmx/android/sdk/presentation/g;
.implements Lcom/hyprmx/android/sdk/bidding/a;
.implements Lkotlinx/coroutines/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/core/j$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/core/b;

.field public final synthetic b:Lcom/hyprmx/android/sdk/bidding/a;

.field public final synthetic c:Lkotlinx/coroutines/s;

.field public d:Lcom/hyprmx/android/sdk/presentation/f;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Integer;

.field public g:Lcom/hyprmx/android/sdk/core/HyprMXState;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;)V
    .registers 11

    new-instance v5, Lcom/hyprmx/android/sdk/core/f;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v0, p2, p3, p4}, Lcom/hyprmx/android/sdk/core/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/hyprmx/android/sdk/core/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lcom/hyprmx/android/sdk/core/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lcom/hyprmx/android/sdk/core/b;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "distributorId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "userId"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "consentStatus"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "applicationModule"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p5}, Lcom/hyprmx/android/sdk/core/b;->F()Lcom/hyprmx/android/sdk/bidding/a;

    move-result-object p1

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j;->b:Lcom/hyprmx/android/sdk/bidding/a;

    invoke-interface {p5}, Lcom/hyprmx/android/sdk/core/b;->w()Lkotlinx/coroutines/s;

    move-result-object p1

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j;->c:Lkotlinx/coroutines/s;

    sget-object p1, Lcom/hyprmx/android/sdk/core/HyprMXState;->NOT_INITIALIZED:Lcom/hyprmx/android/sdk/core/HyprMXState;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j;->g:Lcom/hyprmx/android/sdk/core/HyprMXState;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j;->h:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final C()Lcom/hyprmx/android/sdk/preferences/c;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->C()Lcom/hyprmx/android/sdk/preferences/c;

    move-result-object v0

    return-object v0
.end method

.method public final E()Lcom/hyprmx/android/sdk/placement/a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->E()Lcom/hyprmx/android/sdk/placement/a;

    move-result-object v0

    return-object v0
.end method

.method public final F()Lcom/hyprmx/android/sdk/bidding/a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->F()Lcom/hyprmx/android/sdk/bidding/a;

    move-result-object v0

    return-object v0
.end method

.method public final G()Lcom/hyprmx/android/sdk/initialization/g;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->G()Lcom/hyprmx/android/sdk/initialization/g;

    move-result-object v0

    return-object v0
.end method

.method public final H()Lcom/hyprmx/android/sdk/utility/n0;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->H()Lcom/hyprmx/android/sdk/utility/n0;

    move-result-object v0

    return-object v0
.end method

.method public final I()Lcom/hyprmx/android/sdk/webview/s;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

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

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

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

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

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

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

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

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->a()Lcom/hyprmx/android/sdk/preload/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/hyprmx/android/sdk/core/j$k;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lcom/hyprmx/android/sdk/core/j$k;

    iget v1, v0, Lcom/hyprmx/android/sdk/core/j$k;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/core/j$k;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/core/j$k;

    invoke-direct {v0, p0, p4}, Lcom/hyprmx/android/sdk/core/j$k;-><init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p4, v0, Lcom/hyprmx/android/sdk/core/j$k;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    iget v1, v0, Lcom/hyprmx/android/sdk/core/j$k;->d:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_44

    if-eq v1, v2, :cond_3e

    if-eq v1, v10, :cond_38

    if-ne v1, v9, :cond_30

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9a

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j$k;->a:Lcom/hyprmx/android/sdk/core/j;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_84

    :cond_3e
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j$k;->a:Lcom/hyprmx/android/sdk/core/j;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_63

    :cond_44
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p4}, Lcom/hyprmx/android/sdk/core/b;->G()Lcom/hyprmx/android/sdk/initialization/g;

    move-result-object v1

    iget-object p4, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p4}, Lcom/hyprmx/android/sdk/core/b;->getConsentStatus()Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    move-result-object v4

    iput-object p0, v0, Lcom/hyprmx/android/sdk/core/j$k;->a:Lcom/hyprmx/android/sdk/core/j;

    iput v2, v0, Lcom/hyprmx/android/sdk/core/j$k;->d:I

    move-object v2, p1

    move-object v3, p0

    move-wide v5, p2

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/hyprmx/android/sdk/initialization/g;->a(Ljava/lang/String;Lcom/hyprmx/android/sdk/core/j;Lcom/hyprmx/android/sdk/consent/ConsentStatus;JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v8, :cond_62

    return-object v8

    :cond_62
    move-object p1, p0

    :goto_63
    check-cast p4, Lcom/hyprmx/android/sdk/initialization/h;

    instance-of p2, p4, Lcom/hyprmx/android/sdk/initialization/h$c;

    if-eqz p2, :cond_73

    new-instance p1, Lcom/hyprmx/android/sdk/core/j$a$c;

    check-cast p4, Lcom/hyprmx/android/sdk/initialization/h$c;

    iget-object p2, p4, Lcom/hyprmx/android/sdk/initialization/h$c;->a:Lcom/hyprmx/android/sdk/core/j;

    invoke-direct {p1, p2}, Lcom/hyprmx/android/sdk/core/j$a$c;-><init>(Lcom/hyprmx/android/sdk/core/j;)V

    return-object p1

    :cond_73
    iget-object p2, p1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p2}, Lcom/hyprmx/android/sdk/core/b;->j()Lcom/hyprmx/android/sdk/initialization/b;

    move-result-object p2

    iput-object p1, v0, Lcom/hyprmx/android/sdk/core/j$k;->a:Lcom/hyprmx/android/sdk/core/j;

    iput v10, v0, Lcom/hyprmx/android/sdk/core/j$k;->d:I

    invoke-interface {p2, v0}, Lcom/hyprmx/android/sdk/initialization/b;->a(Lcom/hyprmx/android/sdk/core/j$k;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v8, :cond_84

    return-object v8

    :cond_84
    :goto_84
    check-cast p4, Lcom/hyprmx/android/sdk/initialization/d;

    instance-of p2, p4, Lcom/hyprmx/android/sdk/initialization/d$c;

    if-eqz p2, :cond_9d

    check-cast p4, Lcom/hyprmx/android/sdk/initialization/d$c;

    iget-object p2, p4, Lcom/hyprmx/android/sdk/initialization/d$c;->a:Ljava/lang/String;

    const/4 p3, 0x0

    iput-object p3, v0, Lcom/hyprmx/android/sdk/core/j$k;->a:Lcom/hyprmx/android/sdk/core/j;

    iput v9, v0, Lcom/hyprmx/android/sdk/core/j$k;->d:I

    invoke-virtual {p1, p2, v0}, Lcom/hyprmx/android/sdk/core/j;->b(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_9a

    return-object v8

    :cond_9a
    :goto_9a
    sget-object p1, Lcom/hyprmx/android/sdk/core/j$a$b;->a:Lcom/hyprmx/android/sdk/core/j$a$b;

    return-object p1

    :cond_9d
    sget-object p1, Lcom/hyprmx/android/sdk/core/j$a$a;->a:Lcom/hyprmx/android/sdk/core/j$a$a;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/hyprmx/android/sdk/core/j$d;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/hyprmx/android/sdk/core/j$d;

    iget v1, v0, Lcom/hyprmx/android/sdk/core/j$d;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/core/j$d;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/core/j$d;

    invoke-direct {v0, p0, p2}, Lcom/hyprmx/android/sdk/core/j$d;-><init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lcom/hyprmx/android/sdk/core/j$d;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->f:I

    packed-switch v2, :pswitch_data_1f8

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2b
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j$d;->b:Ljava/lang/Object;

    check-cast p1, Lcom/hyprmx/android/sdk/core/j$a;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/j$d;->a:Lcom/hyprmx/android/sdk/core/j;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1ba

    :pswitch_36
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j$d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->a:Lcom/hyprmx/android/sdk/core/j;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_18a

    :pswitch_41
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j$d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->a:Lcom/hyprmx/android/sdk/core/j;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_167

    :pswitch_4c
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j$d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->a:Lcom/hyprmx/android/sdk/core/j;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_14a

    :pswitch_57
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j$d;->c:Lcom/hyprmx/android/sdk/core/j;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/hyprmx/android/sdk/core/j$d;->a:Lcom/hyprmx/android/sdk/core/j;

    :try_start_5f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_62} :catch_64

    goto/16 :goto_df

    :catch_64
    move-exception p1

    goto/16 :goto_1db

    :pswitch_67
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j$d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->a:Lcom/hyprmx/android/sdk/core/j;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_c4

    :pswitch_71
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p2, Lcom/hyprmx/android/sdk/core/HyprMXState;->INITIALIZING:Lcom/hyprmx/android/sdk/core/HyprMXState;

    invoke-virtual {p0, p2}, Lcom/hyprmx/android/sdk/core/j;->a(Lcom/hyprmx/android/sdk/core/HyprMXState;)V

    iget-object v3, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    const-string p2, "applicationModule"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "presentationDelegator"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/hyprmx/android/sdk/core/b;->y()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/hyprmx/android/sdk/core/b;->e()Lcom/hyprmx/android/sdk/analytics/b;

    move-result-object v5

    invoke-interface {v3}, Lcom/hyprmx/android/sdk/core/b;->z()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v3}, Lcom/hyprmx/android/sdk/core/b;->n()Lcom/hyprmx/android/sdk/core/js/a;

    move-result-object v7

    invoke-interface {v3}, Lcom/hyprmx/android/sdk/core/b;->q()Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    move-result-object v10

    invoke-interface {v3}, Lcom/hyprmx/android/sdk/core/b;->i()Lcom/hyprmx/android/sdk/powersavemode/a;

    move-result-object v9

    invoke-interface {v3}, Lcom/hyprmx/android/sdk/core/b;->w()Lkotlinx/coroutines/s;

    move-result-object v11

    new-instance p2, Lcom/hyprmx/android/sdk/presentation/b;

    move-object v2, p2

    move-object v8, p0

    invoke-direct/range {v2 .. v11}, Lcom/hyprmx/android/sdk/presentation/b;-><init>(Lcom/hyprmx/android/sdk/core/b;Ljava/lang/String;Lcom/hyprmx/android/sdk/analytics/b;Landroid/content/Context;Lcom/hyprmx/android/sdk/core/js/a;Lcom/hyprmx/android/sdk/presentation/g;Lcom/hyprmx/android/sdk/powersavemode/a;Lcom/hyprmx/android/sdk/assert/ThreadAssert;Lkotlinx/coroutines/s;)V

    const-string v2, "<set-?>"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/hyprmx/android/sdk/core/j;->d:Lcom/hyprmx/android/sdk/presentation/f;

    iget-object p2, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p2}, Lcom/hyprmx/android/sdk/core/b;->d()Lcom/hyprmx/android/sdk/core/i0;

    move-result-object p2

    iput-object p0, v0, Lcom/hyprmx/android/sdk/core/j$d;->a:Lcom/hyprmx/android/sdk/core/j;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/core/j$d;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->f:I

    invoke-interface {p2, v0}, Lcom/hyprmx/android/sdk/core/i0;->b(Lcom/hyprmx/android/sdk/core/j$d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_c3

    return-object v1

    :cond_c3
    move-object v2, p0

    :goto_c4
    if-nez p1, :cond_e9

    :try_start_c6
    iget-object p2, v2, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p2}, Lcom/hyprmx/android/sdk/core/b;->d()Lcom/hyprmx/android/sdk/core/i0;

    move-result-object p2

    iput-object v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->a:Lcom/hyprmx/android/sdk/core/j;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/core/j$d;->b:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->c:Lcom/hyprmx/android/sdk/core/j;

    const/4 v3, 0x2

    iput v3, v0, Lcom/hyprmx/android/sdk/core/j$d;->f:I

    invoke-interface {p2, v0}, Lcom/hyprmx/android/sdk/core/i0;->a(Lcom/hyprmx/android/sdk/core/j$d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_d9
    .catch Ljava/io/FileNotFoundException; {:try_start_c6 .. :try_end_d9} :catch_e5

    if-ne p2, v1, :cond_dc

    return-object v1

    :cond_dc
    move-object v3, v2

    move-object v2, p1

    move-object p1, v3

    :goto_df
    :try_start_df
    check-cast p2, Ljava/lang/String;

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    goto :goto_ec

    :catch_e5
    move-exception p1

    move-object v3, v2

    goto/16 :goto_1db

    :cond_e9
    move-object p2, v2

    move-object v3, p2

    move-object v2, p1

    :goto_ec
    iput-object p1, p2, Lcom/hyprmx/android/sdk/core/j;->e:Ljava/lang/String;
    :try_end_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_df .. :try_end_ee} :catch_64

    iget-object p1, v3, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->n()Lcom/hyprmx/android/sdk/core/js/a;

    move-result-object p1

    iget-object p2, v3, Lcom/hyprmx/android/sdk/core/j;->e:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez p2, :cond_ff

    const-string p2, "coreJS"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v4

    :cond_ff
    invoke-interface {p1, p2}, Lcom/hyprmx/android/sdk/core/js/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_112

    const-string p1, "There was a failure loading the shared JS"

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/hyprmx/android/sdk/core/HyprMXState;->INITIALIZATION_FAILED:Lcom/hyprmx/android/sdk/core/HyprMXState;

    invoke-virtual {v3, p1}, Lcom/hyprmx/android/sdk/core/j;->a(Lcom/hyprmx/android/sdk/core/HyprMXState;)V

    sget-object p1, Lcom/hyprmx/android/sdk/core/j$a$a;->a:Lcom/hyprmx/android/sdk/core/j$a$a;

    return-object p1

    :cond_112
    const-string p1, "Shared JS successfully loaded"

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object p1, v3, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->a()Lcom/hyprmx/android/sdk/preload/n;

    move-result-object p1

    iget-object p2, v3, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p2}, Lcom/hyprmx/android/sdk/core/b;->u()Lcom/hyprmx/android/sdk/preload/z;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/hyprmx/android/sdk/preload/n;->a(Lcom/hyprmx/android/sdk/preload/z;)V

    iput-object v3, v0, Lcom/hyprmx/android/sdk/core/j$d;->a:Lcom/hyprmx/android/sdk/core/j;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->b:Ljava/lang/Object;

    iput-object v4, v0, Lcom/hyprmx/android/sdk/core/j$d;->c:Lcom/hyprmx/android/sdk/core/j;

    const/4 p1, 0x3

    iput p1, v0, Lcom/hyprmx/android/sdk/core/j$d;->f:I

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object p1

    new-instance p2, Lcom/hyprmx/android/sdk/core/n;

    invoke-direct {p2, v3, v4}, Lcom/hyprmx/android/sdk/core/n;-><init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_143

    goto :goto_145

    :cond_143
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    :goto_145
    if-ne p1, v1, :cond_148

    return-object v1

    :cond_148
    move-object p1, v2

    move-object v2, v3

    :goto_14a
    iget-object p2, v2, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p2}, Lcom/hyprmx/android/sdk/core/b;->h()Lcom/hyprmx/android/sdk/consent/b;

    move-result-object p2

    invoke-interface {p2}, Lcom/hyprmx/android/sdk/consent/b;->a()V

    iget-object p2, v2, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p2}, Lcom/hyprmx/android/sdk/core/b;->k()Lcom/hyprmx/android/sdk/analytics/f;

    move-result-object p2

    iput-object v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->a:Lcom/hyprmx/android/sdk/core/j;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/core/j$d;->b:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v0, Lcom/hyprmx/android/sdk/core/j$d;->f:I

    invoke-interface {p2, v0}, Lcom/hyprmx/android/sdk/analytics/f;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_167

    return-object v1

    :cond_167
    :goto_167
    iget-object p2, v2, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p2}, Lcom/hyprmx/android/sdk/core/b;->g()Lcom/hyprmx/android/sdk/preload/v;

    move-result-object p2

    invoke-interface {p2}, Lcom/hyprmx/android/sdk/preload/v;->a()V

    iput-object v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->a:Lcom/hyprmx/android/sdk/core/j;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/core/j$d;->b:Ljava/lang/Object;

    if-nez p1, :cond_180

    const/4 p2, 0x5

    iput p2, v0, Lcom/hyprmx/android/sdk/core/j$d;->f:I

    invoke-virtual {v2, v0}, Lcom/hyprmx/android/sdk/core/j;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_18a

    return-object v1

    :cond_180
    const/4 p2, 0x6

    iput p2, v0, Lcom/hyprmx/android/sdk/core/j$d;->f:I

    invoke-virtual {v2, v0}, Lcom/hyprmx/android/sdk/core/j;->c(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_18a

    return-object v1

    :cond_18a
    :goto_18a
    check-cast p2, Lcom/hyprmx/android/sdk/core/j$a;

    instance-of v3, p2, Lcom/hyprmx/android/sdk/core/j$a$a;

    if-eqz v3, :cond_196

    sget-object p1, Lcom/hyprmx/android/sdk/core/HyprMXState;->INITIALIZATION_FAILED:Lcom/hyprmx/android/sdk/core/HyprMXState;

    invoke-virtual {v2, p1}, Lcom/hyprmx/android/sdk/core/j;->a(Lcom/hyprmx/android/sdk/core/HyprMXState;)V

    goto :goto_1d1

    :cond_196
    sget-object v3, Lcom/hyprmx/android/sdk/core/HyprMXState;->INITIALIZATION_COMPLETE:Lcom/hyprmx/android/sdk/core/HyprMXState;

    invoke-virtual {v2, v3}, Lcom/hyprmx/android/sdk/core/j;->a(Lcom/hyprmx/android/sdk/core/HyprMXState;)V

    if-eqz p1, :cond_1d1

    iput-object v2, v0, Lcom/hyprmx/android/sdk/core/j$d;->a:Lcom/hyprmx/android/sdk/core/j;

    iput-object p2, v0, Lcom/hyprmx/android/sdk/core/j$d;->b:Ljava/lang/Object;

    const/4 v3, 0x7

    iput v3, v0, Lcom/hyprmx/android/sdk/core/j$d;->f:I

    const-string v3, "writeCoreJSToFile"

    invoke-static {v3}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v3}, Lcom/hyprmx/android/sdk/core/b;->d()Lcom/hyprmx/android/sdk/core/i0;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Lcom/hyprmx/android/sdk/core/i0;->a(Ljava/lang/String;Lcom/hyprmx/android/sdk/core/j$d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1b6

    return-object v1

    :cond_1b6
    move-object v0, v2

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    :goto_1ba
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1ca

    const-string p1, "There was a failure storing the core to disk"

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/hyprmx/android/sdk/core/j$a$a;->a:Lcom/hyprmx/android/sdk/core/j$a$a;

    return-object p1

    :cond_1ca
    const-string p2, "Successfully save update."

    invoke-static {p2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    move-object p2, p1

    move-object v2, v0

    :cond_1d1
    :goto_1d1
    iget-object p1, v2, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->n()Lcom/hyprmx/android/sdk/core/js/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/js/a;->a()V

    return-object p2

    :goto_1db
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to find file exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/hyprmx/android/sdk/core/HyprMXState;->INITIALIZATION_FAILED:Lcom/hyprmx/android/sdk/core/HyprMXState;

    invoke-virtual {v3, p1}, Lcom/hyprmx/android/sdk/core/j;->a(Lcom/hyprmx/android/sdk/core/HyprMXState;)V

    sget-object p1, Lcom/hyprmx/android/sdk/core/j$a$a;->a:Lcom/hyprmx/android/sdk/core/j$a$a;

    return-object p1

    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_71
        :pswitch_67
        :pswitch_57
        :pswitch_4c
        :pswitch_41
        :pswitch_36
        :pswitch_36
        :pswitch_2b
    .end packed-switch
.end method

.method public final a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7
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

    instance-of v0, p1, Lcom/hyprmx/android/sdk/core/j$b;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/core/j$b;

    iget v1, v0, Lcom/hyprmx/android/sdk/core/j$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/core/j$b;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/core/j$b;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/core/j$b;-><init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j$b;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/core/j$b;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_34

    if-ne v2, v3, :cond_2c

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/j$b;->a:Lcom/hyprmx/android/sdk/core/j;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object p1

    new-instance v2, Lcom/hyprmx/android/sdk/core/j$c;

    invoke-direct {v2, p0, v4}, Lcom/hyprmx/android/sdk/core/j$c;-><init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V

    iput-object p0, v0, Lcom/hyprmx/android/sdk/core/j$b;->a:Lcom/hyprmx/android/sdk/core/j;

    iput v3, v0, Lcom/hyprmx/android/sdk/core/j$b;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4b

    return-object v1

    :cond_4b
    move-object v0, p0

    :goto_4c
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_52
    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyprmx/android/sdk/core/v;

    if-eqz v1, :cond_52

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/core/v;->G()V

    goto :goto_52

    :cond_6a
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->C()Lcom/hyprmx/android/sdk/preferences/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/preferences/c;->a()V

    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->i()Lcom/hyprmx/android/sdk/powersavemode/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/powersavemode/a;->v()V

    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->n()Lcom/hyprmx/android/sdk/core/js/a;

    move-result-object p1

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->w()Lkotlinx/coroutines/s;

    move-result-object p1

    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/s;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final a(Lcom/hyprmx/android/sdk/core/HyprMXState;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initialization Status transitioning from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/j;->g:Lcom/hyprmx/android/sdk/core/HyprMXState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j;->g:Lcom/hyprmx/android/sdk/core/HyprMXState;

    return-void
.end method

.method public final a(Lcom/hyprmx/android/sdk/core/v;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->h:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/hyprmx/android/sdk/om/b;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/core/b;->a(Lcom/hyprmx/android/sdk/om/b;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->E()Lcom/hyprmx/android/sdk/placement/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/placement/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "omSdkUrl"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "omPartnerName"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "omApiVersion"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v7}, Lcom/hyprmx/android/sdk/core/b;->q()Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    move-result-object v7

    invoke-interface {v7}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v7, v1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v7}, Lcom/hyprmx/android/sdk/core/b;->z()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v8}, Lcom/hyprmx/android/sdk/core/b;->c()Lcom/hyprmx/android/sdk/network/k;

    move-result-object v8

    iget-object v9, v1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v9}, Lcom/hyprmx/android/sdk/core/b;->q()Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    move-result-object v9

    iget-object v10, v1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v10}, Lcom/hyprmx/android/sdk/core/b;->w()Lkotlinx/coroutines/s;

    move-result-object v10

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v11

    const-string v12, "appContext"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkController"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assert"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    :try_start_61
    invoke-static {v7}, Lcom/iab/omid/library/jungroup/a;->a(Landroid/content/Context;)V
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_61 .. :try_end_64} :catch_66

    const/4 v0, 0x1

    goto :goto_7e

    :catch_66
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Open Measurement SDK failed to activate with exception: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_7e
    const/4 v12, 0x0

    if-nez v0, :cond_87

    const-string v0, "Open Measurement SDK failed to activate"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    goto :goto_e5

    :cond_87
    :try_start_87
    const-string v0, "Name is null or empty"

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c9

    const-string v0, "Version is null or empty"

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c3

    new-instance v0, Lcom/iab/omid/library/jungroup/adsession/j;

    invoke-direct {v0, v2, v3}, Lcom/iab/omid/library/jungroup/adsession/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_87 .. :try_end_9c} :catch_cf

    new-instance v15, Lcom/hyprmx/android/sdk/om/b;

    const-string v2, "omPartner"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v15

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object/from16 v6, p1

    move-object v8, v10

    move-object v9, v11

    invoke-direct/range {v2 .. v9}, Lcom/hyprmx/android/sdk/om/b;-><init>(Lcom/iab/omid/library/jungroup/adsession/j;Lcom/hyprmx/android/sdk/network/k;Lcom/hyprmx/android/sdk/assert/ThreadAssert;Ljava/lang/String;Landroid/content/Context;Lkotlinx/coroutines/s;Lkotlinx/coroutines/r;)V

    new-instance v0, Lcom/hyprmx/android/sdk/om/c;

    invoke-direct {v0, v15, v12}, Lcom/hyprmx/android/sdk/om/c;-><init>(Lcom/hyprmx/android/sdk/om/b;Lkotlin/coroutines/d;)V

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object v13, v15

    move-object v3, v15

    move-object v15, v2

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-object v12, v3

    goto :goto_e5

    :cond_c3
    :try_start_c3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_cf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c3 .. :try_end_cf} :catch_cf

    :catch_cf
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error creating Open Measurement Partner with error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :goto_e5
    iget-object v0, v1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0, v12}, Lcom/hyprmx/android/sdk/core/b;->a(Lcom/hyprmx/android/sdk/om/b;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bidResponseData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->b:Lcom/hyprmx/android/sdk/bidding/a;

    invoke-interface {v0, p1, p2}, Lcom/hyprmx/android/sdk/bidding/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7
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

    instance-of v0, p2, Lcom/hyprmx/android/sdk/core/j$g;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/hyprmx/android/sdk/core/j$g;

    iget v1, v0, Lcom/hyprmx/android/sdk/core/j$g;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/core/j$g;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/core/j$g;

    invoke-direct {v0, p0, p2}, Lcom/hyprmx/android/sdk/core/j$g;-><init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lcom/hyprmx/android/sdk/core/j$g;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/core/j$g;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    :try_start_25
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_28} :catch_43

    goto :goto_48

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_34
    iget-object p2, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p2}, Lcom/hyprmx/android/sdk/core/b;->E()Lcom/hyprmx/android/sdk/placement/a;

    move-result-object p2

    iput v3, v0, Lcom/hyprmx/android/sdk/core/j$g;->c:I

    invoke-interface {p2, p1, p0}, Lcom/hyprmx/android/sdk/placement/a;->a(Ljava/lang/String;Lcom/hyprmx/android/sdk/placement/c$a;)Lkotlin/v;

    move-result-object p1
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_40} :catch_43

    if-ne p1, v1, :cond_48

    return-object v1

    :catch_43
    const-string p1, "Exception parsing placements"

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_48
    :goto_48
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/core/j$e;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/core/j$e;

    iget v1, v0, Lcom/hyprmx/android/sdk/core/j$e;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/core/j$e;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/core/j$e;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/core/j$e;-><init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j$e;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/core/j$e;->d:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_47

    if-eq v2, v6, :cond_41

    if-eq v2, v5, :cond_3a

    if-eq v2, v4, :cond_3a

    if-ne v2, v3, :cond_32

    :try_start_2e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_3e

    goto :goto_9d

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    :try_start_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_87

    :catch_3e
    move-exception p1

    goto/16 :goto_ad

    :cond_41
    iget-object v2, v0, Lcom/hyprmx/android/sdk/core/j$e;->a:Lcom/hyprmx/android/sdk/core/j;

    :try_start_43
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_3e

    goto :goto_5c

    :cond_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_4a
    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->j()Lcom/hyprmx/android/sdk/initialization/b;

    move-result-object p1

    iput-object p0, v0, Lcom/hyprmx/android/sdk/core/j$e;->a:Lcom/hyprmx/android/sdk/core/j;

    iput v6, v0, Lcom/hyprmx/android/sdk/core/j$e;->d:I

    invoke-interface {p1, p0, v0}, Lcom/hyprmx/android/sdk/initialization/b;->a(Lcom/hyprmx/android/sdk/initialization/c;Lkotlin/coroutines/jvm/internal/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5b

    return-object v1

    :cond_5b
    move-object v2, p0

    :goto_5c
    check-cast p1, Lcom/hyprmx/android/sdk/initialization/d;

    instance-of v6, p1, Lcom/hyprmx/android/sdk/initialization/d$d;

    const/4 v7, 0x0

    if-eqz v6, :cond_78

    move-object v3, p1

    check-cast v3, Lcom/hyprmx/android/sdk/initialization/d$d;

    iget-object v3, v3, Lcom/hyprmx/android/sdk/initialization/d$d;->a:Ljava/lang/String;

    check-cast p1, Lcom/hyprmx/android/sdk/initialization/d$d;

    iget p1, p1, Lcom/hyprmx/android/sdk/initialization/d$d;->b:I

    int-to-long v8, p1

    iput-object v7, v0, Lcom/hyprmx/android/sdk/core/j$e;->a:Lcom/hyprmx/android/sdk/core/j;

    iput v5, v0, Lcom/hyprmx/android/sdk/core/j$e;->d:I

    invoke-virtual {v2, v3, v8, v9, v0}, Lcom/hyprmx/android/sdk/core/j;->a(Ljava/lang/String;JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_87

    return-object v1

    :cond_78
    instance-of v5, p1, Lcom/hyprmx/android/sdk/initialization/d$b;

    if-eqz v5, :cond_8a

    iput-object v7, v0, Lcom/hyprmx/android/sdk/core/j$e;->a:Lcom/hyprmx/android/sdk/core/j;

    iput v4, v0, Lcom/hyprmx/android/sdk/core/j$e;->d:I

    invoke-virtual {v2, v0}, Lcom/hyprmx/android/sdk/core/j;->d(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_87

    return-object v1

    :cond_87
    :goto_87
    check-cast p1, Lcom/hyprmx/android/sdk/core/j$a;

    goto :goto_c4

    :cond_8a
    instance-of v4, p1, Lcom/hyprmx/android/sdk/initialization/d$c;

    if-eqz v4, :cond_a0

    check-cast p1, Lcom/hyprmx/android/sdk/initialization/d$c;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/initialization/d$c;->a:Ljava/lang/String;

    iput-object v7, v0, Lcom/hyprmx/android/sdk/core/j$e;->a:Lcom/hyprmx/android/sdk/core/j;

    iput v3, v0, Lcom/hyprmx/android/sdk/core/j$e;->d:I

    invoke-virtual {v2, p1, v0}, Lcom/hyprmx/android/sdk/core/j;->b(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9d

    return-object v1

    :cond_9d
    :goto_9d
    sget-object p1, Lcom/hyprmx/android/sdk/core/j$a$b;->a:Lcom/hyprmx/android/sdk/core/j$a$b;

    goto :goto_c4

    :cond_a0
    instance-of p1, p1, Lcom/hyprmx/android/sdk/initialization/d$a;

    if-eqz p1, :cond_a7

    sget-object p1, Lcom/hyprmx/android/sdk/core/j$a$a;->a:Lcom/hyprmx/android/sdk/core/j$a$a;

    goto :goto_c4

    :cond_a7
    new-instance p1, Lkotlin/k;

    invoke-direct {p1}, Lkotlin/k;-><init>()V

    throw p1
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_ad} :catch_3e

    :goto_ad
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception initializing HyprMX: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/hyprmx/android/sdk/core/j$a$a;->a:Lcom/hyprmx/android/sdk/core/j$a$a;

    :goto_c4
    return-object p1
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->E()Lcom/hyprmx/android/sdk/placement/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/placement/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final c()Lcom/hyprmx/android/sdk/network/k;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->c()Lcom/hyprmx/android/sdk/network/k;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/core/j$f;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/core/j$f;

    iget v1, v0, Lcom/hyprmx/android/sdk/core/j$f;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/core/j$f;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/core/j$f;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/core/j$f;-><init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j$f;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/core/j$f;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_78

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object v2, v0, Lcom/hyprmx/android/sdk/core/j$f;->a:Lcom/hyprmx/android/sdk/core/j;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->j()Lcom/hyprmx/android/sdk/initialization/b;

    move-result-object p1

    iput-object p0, v0, Lcom/hyprmx/android/sdk/core/j$f;->a:Lcom/hyprmx/android/sdk/core/j;

    iput v4, v0, Lcom/hyprmx/android/sdk/core/j$f;->d:I

    invoke-interface {p1, p0, v0}, Lcom/hyprmx/android/sdk/initialization/b;->a(Lcom/hyprmx/android/sdk/initialization/c;Lkotlin/coroutines/jvm/internal/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4e

    return-object v1

    :cond_4e
    move-object v2, p0

    :goto_4f
    check-cast p1, Lcom/hyprmx/android/sdk/initialization/d;

    instance-of v4, p1, Lcom/hyprmx/android/sdk/initialization/d$d;

    if-eqz v4, :cond_5d

    const-string p1, "Upgrade called during upgrade."

    :goto_57
    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/hyprmx/android/sdk/core/j$a$a;->a:Lcom/hyprmx/android/sdk/core/j$a$a;

    goto :goto_86

    :cond_5d
    instance-of v4, p1, Lcom/hyprmx/android/sdk/initialization/d$b;

    if-eqz v4, :cond_64

    const-string p1, "Rollback called during upgrade."

    goto :goto_57

    :cond_64
    instance-of v4, p1, Lcom/hyprmx/android/sdk/initialization/d$c;

    if-eqz v4, :cond_7b

    check-cast p1, Lcom/hyprmx/android/sdk/initialization/d$c;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/initialization/d$c;->a:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/hyprmx/android/sdk/core/j$f;->a:Lcom/hyprmx/android/sdk/core/j;

    iput v3, v0, Lcom/hyprmx/android/sdk/core/j$f;->d:I

    invoke-virtual {v2, p1, v0}, Lcom/hyprmx/android/sdk/core/j;->b(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_78

    return-object v1

    :cond_78
    :goto_78
    sget-object p1, Lcom/hyprmx/android/sdk/core/j$a$b;->a:Lcom/hyprmx/android/sdk/core/j$a$b;

    goto :goto_86

    :cond_7b
    instance-of p1, p1, Lcom/hyprmx/android/sdk/initialization/d$a;

    if-eqz p1, :cond_87

    const-string p1, "Initialization failed during upgrade."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/hyprmx/android/sdk/core/j$a$a;->a:Lcom/hyprmx/android/sdk/core/j$a$a;

    :goto_86
    return-object p1

    :cond_87
    new-instance p1, Lkotlin/k;

    invoke-direct {p1}, Lkotlin/k;-><init>()V

    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .registers 9

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->g:Lcom/hyprmx/android/sdk/core/HyprMXState;

    sget-object v1, Lcom/hyprmx/android/sdk/core/HyprMXState;->INITIALIZATION_COMPLETE:Lcom/hyprmx/android/sdk/core/HyprMXState;

    if-eq v0, v1, :cond_13

    const-string v0, "HyprMX is not initialized.  Please call HyprMX.initialize and wait for HyprMXInitializationListener.setInitializationComplete to proceed"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->w(Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->E()Lcom/hyprmx/android/sdk/placement/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/placement/a;->getPlacement(Ljava/lang/String;)Lcom/hyprmx/android/sdk/placement/c;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/hyprmx/android/sdk/core/j$j;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/hyprmx/android/sdk/core/j$j;-><init>(Lcom/hyprmx/android/sdk/core/j;Lcom/hyprmx/android/sdk/placement/c;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final d()Lcom/hyprmx/android/sdk/core/i0;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->d()Lcom/hyprmx/android/sdk/core/i0;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/core/j$i;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/core/j$i;

    iget v1, v0, Lcom/hyprmx/android/sdk/core/j$i;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/core/j$i;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/core/j$i;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/core/j$i;-><init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/j$i;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/core/j$i;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->G()Lcom/hyprmx/android/sdk/initialization/g;

    move-result-object p1

    iget-object v2, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v2}, Lcom/hyprmx/android/sdk/core/b;->getConsentStatus()Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    move-result-object v2

    iput v3, v0, Lcom/hyprmx/android/sdk/core/j$i;->c:I

    invoke-interface {p1, p0, v2, v0}, Lcom/hyprmx/android/sdk/initialization/g;->a(Lcom/hyprmx/android/sdk/core/j;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    check-cast p1, Lcom/hyprmx/android/sdk/initialization/h;

    instance-of v0, p1, Lcom/hyprmx/android/sdk/initialization/h$c;

    if-eqz v0, :cond_59

    new-instance v0, Lcom/hyprmx/android/sdk/core/j$a$c;

    check-cast p1, Lcom/hyprmx/android/sdk/initialization/h$c;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/initialization/h$c;->a:Lcom/hyprmx/android/sdk/core/j;

    invoke-direct {v0, p1}, Lcom/hyprmx/android/sdk/core/j$a$c;-><init>(Lcom/hyprmx/android/sdk/core/j;)V

    goto :goto_5b

    :cond_59
    sget-object v0, Lcom/hyprmx/android/sdk/core/j$a$a;->a:Lcom/hyprmx/android/sdk/core/j$a$a;

    :goto_5b
    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 9

    const-string v0, "sharingEndpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/hyprmx/android/sdk/core/j$h;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/hyprmx/android/sdk/core/j$h;-><init>(Lcom/hyprmx/android/sdk/core/j;Ljava/lang/String;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final e()Lcom/hyprmx/android/sdk/analytics/b;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->e()Lcom/hyprmx/android/sdk/analytics/b;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/hyprmx/android/sdk/analytics/d;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->f()Lcom/hyprmx/android/sdk/analytics/d;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/hyprmx/android/sdk/preload/v;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->g()Lcom/hyprmx/android/sdk/preload/v;

    move-result-object v0

    return-object v0
.end method

.method public final getConsentStatus()Lcom/hyprmx/android/sdk/consent/ConsentStatus;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->getConsentStatus()Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->c:Lkotlinx/coroutines/s;

    invoke-interface {v0}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getPlacement(Ljava/lang/String;)Lcom/hyprmx/android/sdk/placement/Placement;
    .registers 4

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->g:Lcom/hyprmx/android/sdk/core/HyprMXState;

    sget-object v1, Lcom/hyprmx/android/sdk/core/HyprMXState;->INITIALIZATION_COMPLETE:Lcom/hyprmx/android/sdk/core/HyprMXState;

    if-eq v0, v1, :cond_10

    const-string v0, "HyprMX is not initialized.  Please call HyprMX.initialize and wait for HyprMXInitializationListener.setInitializationComplete to proceed"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->w(Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->E()Lcom/hyprmx/android/sdk/placement/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/placement/a;->getPlacement(Ljava/lang/String;)Lcom/hyprmx/android/sdk/placement/c;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lcom/hyprmx/android/sdk/consent/b;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->h()Lcom/hyprmx/android/sdk/consent/b;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/hyprmx/android/sdk/powersavemode/a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->i()Lcom/hyprmx/android/sdk/powersavemode/a;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/hyprmx/android/sdk/initialization/b;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->j()Lcom/hyprmx/android/sdk/initialization/b;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/hyprmx/android/sdk/analytics/f;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->k()Lcom/hyprmx/android/sdk/analytics/f;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->b:Lcom/hyprmx/android/sdk/bidding/a;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/bidding/a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/hyprmx/android/sdk/core/js/a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->n()Lcom/hyprmx/android/sdk/core/js/a;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lcom/hyprmx/android/sdk/utility/f0;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->p()Lcom/hyprmx/android/sdk/utility/f0;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lcom/hyprmx/android/sdk/assert/ThreadAssert;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->q()Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lcom/hyprmx/android/sdk/model/a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->r()Lcom/hyprmx/android/sdk/model/a;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lcom/hyprmx/android/sdk/presentation/j;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->t()Lcom/hyprmx/android/sdk/presentation/j;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/hyprmx/android/sdk/preload/z;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->u()Lcom/hyprmx/android/sdk/preload/z;

    move-result-object v0

    return-object v0
.end method

.method public final w()Lkotlinx/coroutines/s;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->w()Lkotlinx/coroutines/s;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lcom/hyprmx/android/sdk/om/g;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->x()Lcom/hyprmx/android/sdk/om/g;

    move-result-object v0

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->z()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.core.j.a (com.hyprmx.android.sdk.core.j$a)
.class public abstract Lcom/hyprmx/android/sdk/core/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/core/j$a$c;,
        Lcom/hyprmx/android/sdk/core/j$a$b;,
        Lcom/hyprmx/android/sdk/core/j$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/hyprmx/android/sdk/core/j$a;-><init>()V

    return-void
.end method

###### Class com.hyprmx.android.sdk.core.j.a.C0283a (com.hyprmx.android.sdk.core.j$a$a)
.class public final Lcom/hyprmx/android/sdk/core/j$a$a;
.super Lcom/hyprmx/android/sdk/core/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/hyprmx/android/sdk/core/j$a$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/core/j$a$a;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/j$a$a;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/j$a$a;->a:Lcom/hyprmx/android/sdk/core/j$a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/core/j$a;-><init>(I)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.core.j.a.b (com.hyprmx.android.sdk.core.j$a$b)
.class public final Lcom/hyprmx/android/sdk/core/j$a$b;
.super Lcom/hyprmx/android/sdk/core/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/hyprmx/android/sdk/core/j$a$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/core/j$a$b;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/j$a$b;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/j$a$b;->a:Lcom/hyprmx/android/sdk/core/j$a$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/core/j$a;-><init>(I)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.core.j.a.c (com.hyprmx.android.sdk.core.j$a$c)
.class public final Lcom/hyprmx/android/sdk/core/j$a$c;
.super Lcom/hyprmx/android/sdk/core/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/core/j;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;)V
    .registers 3

    const-string v0, "hyprMXController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/core/j$a;-><init>(I)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$a$c;->a:Lcom/hyprmx/android/sdk/core/j;

    return-void
.end method

###### Class com.hyprmx.android.sdk.core.j.b (com.hyprmx.android.sdk.core.j$b)
.class public final Lcom/hyprmx/android/sdk/core/j$b;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/j;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.core.HyprMXController"
    f = "HyprMXController.kt"
    i = {
        0x0
    }
    l = {
        0x12d
    }
    m = "cleanup"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/core/j;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/hyprmx/android/sdk/core/j;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/j;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$b;->c:Lcom/hyprmx/android/sdk/core/j;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$b;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/core/j$b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/core/j$b;->d:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j$b;->c:Lcom/hyprmx/android/sdk/core/j;

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/core/j;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.j.c (com.hyprmx.android.sdk.core.j$c)
.class public final Lcom/hyprmx/android/sdk/core/j$c;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/j;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.hyprmx.android.sdk.core.HyprMXController$cleanup$2"
    f = "HyprMXController.kt"
    i = {}
    l = {
        0x12e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/core/j;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/j;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$c;->b:Lcom/hyprmx/android/sdk/core/j;

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

    new-instance p1, Lcom/hyprmx/android/sdk/core/j$c;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j$c;->b:Lcom/hyprmx/android/sdk/core/j;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/core/j$c;-><init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/core/j$c;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/core/j$c;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/core/j$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/core/j$c;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j$c;->b:Lcom/hyprmx/android/sdk/core/j;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->a()Lcom/hyprmx/android/sdk/preload/n;

    move-result-object p1

    iput v2, p0, Lcom/hyprmx/android/sdk/core/j$c;->a:I

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/hyprmx/android/sdk/preload/n;->g(Ljava/lang/String;)Lkotlin/v;

    move-result-object p1

    if-ne p1, v0, :cond_2c

    return-object v0

    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j$c;->b:Lcom/hyprmx/android/sdk/core/j;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->a()Lcom/hyprmx/android/sdk/preload/n;

    move-result-object p1

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.j.d (com.hyprmx.android.sdk.core.j$d)
.class public final Lcom/hyprmx/android/sdk/core/j$d;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/j;->a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.core.HyprMXController"
    f = "HyprMXController.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x4,
        0x4,
        0x5,
        0x5,
        0x6,
        0x6
    }
    l = {
        0x6a,
        0x6d,
        0x80,
        0x82,
        0x86,
        0x88,
        0x91
    }
    m = "initialize"
    n = {
        "this",
        "newCoreJS",
        "this",
        "newCoreJS",
        "this",
        "newCoreJS",
        "this",
        "newCoreJS",
        "this",
        "newCoreJS",
        "this",
        "newCoreJS",
        "this",
        "initState"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/core/j;

.field public b:Ljava/lang/Object;

.field public c:Lcom/hyprmx/android/sdk/core/j;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/hyprmx/android/sdk/core/j;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/j;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$d;->e:Lcom/hyprmx/android/sdk/core/j;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$d;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/core/j$d;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/core/j$d;->f:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j$d;->e:Lcom/hyprmx/android/sdk/core/j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/hyprmx/android/sdk/core/j;->a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.j.e (com.hyprmx.android.sdk.core.j$e)
.class public final Lcom/hyprmx/android/sdk/core/j$e;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/j;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.core.HyprMXController"
    f = "HyprMXController.kt"
    i = {
        0x0
    }
    l = {
        0xaa,
        0xac,
        0xb0,
        0xb2
    }
    m = "initializeBase"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/core/j;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/hyprmx/android/sdk/core/j;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/j;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$e;->c:Lcom/hyprmx/android/sdk/core/j;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$e;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/core/j$e;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/core/j$e;->d:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j$e;->c:Lcom/hyprmx/android/sdk/core/j;

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/core/j;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.j.f (com.hyprmx.android.sdk.core.j$f)
.class public final Lcom/hyprmx/android/sdk/core/j$f;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/j;->c(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.core.HyprMXController"
    f = "HyprMXController.kt"
    i = {
        0x0
    }
    l = {
        0xc5,
        0xd2
    }
    m = "initializeFromUpgrade"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/core/j;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/hyprmx/android/sdk/core/j;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/j;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$f;->c:Lcom/hyprmx/android/sdk/core/j;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$f;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/core/j$f;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/core/j$f;->d:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j$f;->c:Lcom/hyprmx/android/sdk/core/j;

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/core/j;->c(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.j.g (com.hyprmx.android.sdk.core.j$g)
.class public final Lcom/hyprmx/android/sdk/core/j$g;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/j;->b(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.core.HyprMXController"
    f = "HyprMXController.kt"
    i = {}
    l = {
        0x107
    }
    m = "initializePlacements"
    n = {}
    s = {}
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/hyprmx/android/sdk/core/j;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/j;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$g;->b:Lcom/hyprmx/android/sdk/core/j;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$g;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/core/j$g;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/core/j$g;->c:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j$g;->b:Lcom/hyprmx/android/sdk/core/j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/hyprmx/android/sdk/core/j;->b(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.j.h (com.hyprmx.android.sdk.core.j$h)
.class public final Lcom/hyprmx/android/sdk/core/j$h;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/j;->d(Ljava/lang/String;)V
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
    c = "com.hyprmx.android.sdk.core.HyprMXController$onSharingEndpointReceived$1"
    f = "HyprMXController.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/core/j;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/j;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$h;->a:Lcom/hyprmx/android/sdk/core/j;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/core/j$h;->b:Ljava/lang/String;

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

    new-instance p1, Lcom/hyprmx/android/sdk/core/j$h;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j$h;->a:Lcom/hyprmx/android/sdk/core/j;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/j$h;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/hyprmx/android/sdk/core/j$h;-><init>(Lcom/hyprmx/android/sdk/core/j;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/core/j$h;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/core/j$h;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/core/j$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j$h;->a:Lcom/hyprmx/android/sdk/core/j;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->f()Lcom/hyprmx/android/sdk/analytics/d;

    move-result-object p1

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j$h;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/analytics/d;->setSharingEndpoint(Ljava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.j.i (com.hyprmx.android.sdk.core.j$i)
.class public final Lcom/hyprmx/android/sdk/core/j$i;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/j;->d(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.core.HyprMXController"
    f = "HyprMXController.kt"
    i = {}
    l = {
        0xe0
    }
    m = "rollbackCoreJS$HyprMX_Mobile_Android_SDK_release"
    n = {}
    s = {}
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/hyprmx/android/sdk/core/j;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/j;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$i;->b:Lcom/hyprmx/android/sdk/core/j;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$i;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/core/j$i;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/core/j$i;->c:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j$i;->b:Lcom/hyprmx/android/sdk/core/j;

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/core/j;->d(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.j.C0284j (com.hyprmx.android.sdk.core.j$j)
.class public final Lcom/hyprmx/android/sdk/core/j$j;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/j;->c(Ljava/lang/String;)V
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
    c = "com.hyprmx.android.sdk.core.HyprMXController$showAd$1"
    f = "HyprMXController.kt"
    i = {}
    l = {
        0x11a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/core/j;

.field public final synthetic c:Lcom/hyprmx/android/sdk/placement/c;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;Lcom/hyprmx/android/sdk/placement/c;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/j;",
            "Lcom/hyprmx/android/sdk/placement/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$j;->b:Lcom/hyprmx/android/sdk/core/j;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/core/j$j;->c:Lcom/hyprmx/android/sdk/placement/c;

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

    new-instance p1, Lcom/hyprmx/android/sdk/core/j$j;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j$j;->b:Lcom/hyprmx/android/sdk/core/j;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/j$j;->c:Lcom/hyprmx/android/sdk/placement/c;

    invoke-direct {p1, v0, v1, p2}, Lcom/hyprmx/android/sdk/core/j$j;-><init>(Lcom/hyprmx/android/sdk/core/j;Lcom/hyprmx/android/sdk/placement/c;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/core/j$j;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/core/j$j;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/core/j$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/core/j$j;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_32

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j$j;->b:Lcom/hyprmx/android/sdk/core/j;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/core/j;->d:Lcom/hyprmx/android/sdk/presentation/f;

    if-eqz p1, :cond_21

    goto :goto_27

    :cond_21
    const-string p1, "presentationController"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_27
    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/j$j;->c:Lcom/hyprmx/android/sdk/placement/c;

    iput v2, p0, Lcom/hyprmx/android/sdk/core/j$j;->a:I

    invoke-interface {p1, v1}, Lcom/hyprmx/android/sdk/presentation/f;->a(Lcom/hyprmx/android/sdk/placement/c;)Lkotlin/v;

    move-result-object p1

    if-ne p1, v0, :cond_32

    return-object v0

    :cond_32
    :goto_32
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.j.k (com.hyprmx.android.sdk.core.j$k)
.class public final Lcom/hyprmx/android/sdk/core/j$k;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/j;->a(Ljava/lang/String;JLkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.core.HyprMXController"
    f = "HyprMXController.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0xf2,
        0xfc,
        0xfe
    }
    m = "updateJavascript"
    n = {
        "this",
        "this"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/core/j;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/hyprmx/android/sdk/core/j;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/j;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$k;->c:Lcom/hyprmx/android/sdk/core/j;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$k;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/core/j$k;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/core/j$k;->d:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j$k;->c:Lcom/hyprmx/android/sdk/core/j;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/hyprmx/android/sdk/core/j;->a(Ljava/lang/String;JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
