###### Class com.hyprmx.android.sdk.core.q (com.hyprmx.android.sdk.core.q)
.class public final Lcom/hyprmx/android/sdk/core/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/core/HyprMXIf;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/core/p;

.field public final b:Lkotlinx/coroutines/Job;

.field public final c:Lcom/hyprmx/android/sdk/webview/o;

.field public final d:Lcom/hyprmx/android/sdk/core/u;

.field public final e:Lkotlinx/coroutines/s;

.field public f:Z

.field public g:Lcom/hyprmx/android/sdk/core/j;

.field public h:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;

.field public i:Z

.field public j:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXAudioAdListener;


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 5

    new-instance p1, Lcom/hyprmx/android/sdk/core/g;

    invoke-direct {p1}, Lcom/hyprmx/android/sdk/core/g;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Lcom/hyprmx/android/sdk/webview/b;->a()Lcom/hyprmx/android/sdk/webview/a;

    move-result-object v1

    new-instance v2, Lcom/hyprmx/android/sdk/core/u;

    invoke-direct {v2}, Lcom/hyprmx/android/sdk/core/u;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/hyprmx/android/sdk/core/q;-><init>(Lcom/hyprmx/android/sdk/core/p;Lkotlinx/coroutines/Job;Lcom/hyprmx/android/sdk/webview/o;Lcom/hyprmx/android/sdk/core/u;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyprmx/android/sdk/core/p;Lkotlinx/coroutines/Job;Lcom/hyprmx/android/sdk/webview/o;Lcom/hyprmx/android/sdk/core/u;)V
    .registers 6

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sytemWebViewAvailability"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hyprMXMediation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/q;->a:Lcom/hyprmx/android/sdk/core/p;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/core/q;->b:Lkotlinx/coroutines/Job;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/core/q;->c:Lcom/hyprmx/android/sdk/webview/o;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/core/q;->d:Lcom/hyprmx/android/sdk/core/u;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object p1

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/q;->e:Lkotlinx/coroutines/s;

    return-void
.end method


# virtual methods
.method public final a()Lcom/hyprmx/android/sdk/core/j;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    return-object v0
.end method

.method public final a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/core/q$a;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/core/q$a;

    iget v1, v0, Lcom/hyprmx/android/sdk/core/q$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/core/q$a;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/core/q$a;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/core/q$a;-><init>(Lcom/hyprmx/android/sdk/core/q;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/q$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/core/q$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_47

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz p1, :cond_4b

    iput v3, v0, Lcom/hyprmx/android/sdk/core/q$a;->c:I

    iget-object p1, p1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/b;->a()Lcom/hyprmx/android/sdk/preload/n;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/preload/n;->c(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_47

    return-object v1

    :cond_47
    :goto_47
    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_4f

    :cond_4b
    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_4f
    return-object p1
.end method

.method public final getInitializationState()Lcom/hyprmx/android/sdk/core/HyprMXState;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/j;->g:Lcom/hyprmx/android/sdk/core/HyprMXState;

    if-nez v0, :cond_a

    :cond_8
    sget-object v0, Lcom/hyprmx/android/sdk/core/HyprMXState;->NOT_INITIALIZED:Lcom/hyprmx/android/sdk/core/HyprMXState;

    :cond_a
    return-object v0
.end method

.method public final getPlacement(Ljava/lang/String;)Lcom/hyprmx/android/sdk/placement/Placement;
    .registers 6

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz v1, :cond_23

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/hyprmx/android/sdk/core/j;->g:Lcom/hyprmx/android/sdk/core/HyprMXState;

    sget-object v3, Lcom/hyprmx/android/sdk/core/HyprMXState;->INITIALIZATION_COMPLETE:Lcom/hyprmx/android/sdk/core/HyprMXState;

    if-eq v2, v3, :cond_17

    const-string v2, "HyprMX is not initialized.  Please call HyprMX.initialize and wait for HyprMXInitializationListener.setInitializationComplete to proceed"

    invoke-static {v2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->w(Ljava/lang/String;)V

    :cond_17
    iget-object v1, v1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/core/b;->E()Lcom/hyprmx/android/sdk/placement/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/hyprmx/android/sdk/placement/a;->getPlacement(Ljava/lang/String;)Lcom/hyprmx/android/sdk/placement/c;

    move-result-object v1

    if-nez v1, :cond_32

    :cond_23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/hyprmx/android/sdk/placement/c;

    new-instance v0, Lcom/hyprmx/android/sdk/placement/d;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/placement/d;-><init>()V

    sget-object v2, Lcom/hyprmx/android/sdk/placement/PlacementType;->INVALID:Lcom/hyprmx/android/sdk/placement/PlacementType;

    invoke-direct {v1, v0, v2, p1}, Lcom/hyprmx/android/sdk/placement/c;-><init>(Lcom/hyprmx/android/sdk/placement/c$a;Lcom/hyprmx/android/sdk/placement/PlacementType;Ljava/lang/String;)V

    :cond_32
    return-object v1
.end method

.method public final getPlacements()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/hyprmx/android/sdk/placement/Placement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->E()Lcom/hyprmx/android/sdk/placement/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/placement/a;->getPlacements()Ljava/util/LinkedHashSet;

    move-result-object v0

    if-nez v0, :cond_14

    :cond_10
    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V
    .registers 14

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentStatus"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/hyprmx/android/sdk/core/q;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;ZLcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V

    return-void
.end method

.method public final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;ZLcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V
    .registers 18

    move-object v8, p0

    move-object v1, p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentStatus"

    move-object v6, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/hyprmx/android/sdk/core/q;->f:Z

    invoke-static {}, Lcom/hyprmx/android/sdk/utility/a1;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "HyprMX requires Android OS version API 26 or newer. SDK disabled."

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    if-eqz p6, :cond_21

    invoke-interface/range {p6 .. p6}, Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;->initializationFailed()V

    :cond_21
    return-void

    :cond_22
    iget-object v0, v8, Lcom/hyprmx/android/sdk/core/q;->c:Lcom/hyprmx/android/sdk/webview/o;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/webview/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "HyprMX requires a system webview be enabled.  Please enable your system webview."

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    if-eqz p6, :cond_34

    invoke-interface/range {p6 .. p6}, Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;->initializationFailed()V

    :cond_34
    return-void

    :cond_35
    if-eqz p3, :cond_84

    if-eqz p2, :cond_78

    iget-boolean v0, v8, Lcom/hyprmx/android/sdk/core/q;->i:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_55

    iget-object v0, v8, Lcom/hyprmx/android/sdk/core/q;->e:Lkotlinx/coroutines/s;

    new-instance v1, Lcom/hyprmx/android/sdk/core/q$b;

    invoke-direct {v1, p0, v2}, Lcom/hyprmx/android/sdk/core/q$b;-><init>(Lcom/hyprmx/android/sdk/core/q;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object p1, v0

    move-object p2, v2

    move-object p3, v3

    move-object p4, v1

    move/from16 p5, v4

    move-object/from16 p6, v5

    :goto_51
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_55
    iget-object v0, v8, Lcom/hyprmx/android/sdk/core/q;->b:Lkotlinx/coroutines/Job;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v2}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    iget-object v9, v8, Lcom/hyprmx/android/sdk/core/q;->e:Lkotlinx/coroutines/s;

    new-instance v10, Lcom/hyprmx/android/sdk/core/q$c;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v2, p0

    move-object/from16 v3, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/hyprmx/android/sdk/core/q$c;-><init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/core/q;Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lkotlin/coroutines/d;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object p1, v9

    move-object p2, v0

    move-object p3, v1

    move-object p4, v10

    move/from16 p5, v2

    move-object/from16 p6, v3

    goto :goto_51

    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "distributorId must be non-null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "userId must be non-null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->CONSENT_STATUS_UNKNOWN:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentStatus"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/hyprmx/android/sdk/core/q;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;ZLcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V

    return-void
.end method

.method public final sessionToken()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/j;->g:Lcom/hyprmx/android/sdk/core/HyprMXState;

    sget-object v3, Lcom/hyprmx/android/sdk/core/HyprMXState;->INITIALIZATION_COMPLETE:Lcom/hyprmx/android/sdk/core/HyprMXState;

    if-eq v0, v3, :cond_13

    const-string v0, "HyprMX is not initialized.  Please call HyprMX.initialize and wait for HyprMXInitializationListener.setInitializationComplete to proceed"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    const/4 v0, 0x0

    if-eqz v1, :cond_21

    const-string v1, "HyprMX needs to be initialized before retrieving session token"

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    goto :goto_31

    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz v1, :cond_31

    iget-object v1, v1, Lcom/hyprmx/android/sdk/core/j;->b:Lcom/hyprmx/android/sdk/bidding/a;

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/bidding/a;->l()Ljava/lang/String;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_2c

    goto :goto_31

    :catch_2c
    const-string v1, "There was an error generating the session token"

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-object v0
.end method

.method public final setAudioAdListener(Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXAudioAdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/q;->j:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXAudioAdListener;

    return-void
.end method

.method public final setConsentStatus(Lcom/hyprmx/android/sdk/consent/ConsentStatus;)V
    .registers 4

    const-string v0, "consentStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz v1, :cond_15

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->h()Lcom/hyprmx/android/sdk/consent/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/consent/b;->a(Lcom/hyprmx/android/sdk/consent/ConsentStatus;)V

    :cond_15
    return-void
.end method

.method public final setMediationProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/q;->d:Lcom/hyprmx/android/sdk/core/u;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/core/u;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/hyprmx/android/sdk/core/u;->c:Ljava/lang/String;

    iput-object p3, v0, Lcom/hyprmx/android/sdk/core/u;->d:Ljava/lang/String;

    return-void
.end method

.method public final setUnityVersion(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/q;->d:Lcom/hyprmx/android/sdk/core/u;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/core/u;->a:Ljava/lang/String;

    return-void
.end method

###### Class com.hyprmx.android.sdk.core.q.a (com.hyprmx.android.sdk.core.q$a)
.class public final Lcom/hyprmx/android/sdk/core/q$a;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/q;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.core.HyprMXDelegate"
    f = "HyprMX.kt"
    i = {}
    l = {
        0xd8
    }
    m = "getAdCacheState"
    n = {}
    s = {}
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/hyprmx/android/sdk/core/q;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/q;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/q;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/q$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/q$a;->b:Lcom/hyprmx/android/sdk/core/q;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/q$a;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/core/q$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/core/q$a;->c:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/q$a;->b:Lcom/hyprmx/android/sdk/core/q;

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/core/q;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.q.b (com.hyprmx.android.sdk.core.q$b)
.class public final Lcom/hyprmx/android/sdk/core/q$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/q;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;ZLcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V
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
    c = "com.hyprmx.android.sdk.core.HyprMXDelegate$initialize$3"
    f = "HyprMX.kt"
    i = {}
    l = {
        0x73
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/core/q;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/q;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/q;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/q$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/q$b;->b:Lcom/hyprmx/android/sdk/core/q;

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

    new-instance p1, Lcom/hyprmx/android/sdk/core/q$b;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/q$b;->b:Lcom/hyprmx/android/sdk/core/q;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/core/q$b;-><init>(Lcom/hyprmx/android/sdk/core/q;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/core/q$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/core/q$b;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/core/q$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/core/q$b;->a:I

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

    iput v2, p0, Lcom/hyprmx/android/sdk/core/q$b;->a:I

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    return-object v0

    :cond_25
    :goto_25
    const-string p1, "HyprMX Initialization Failed recently, please wait before trying again."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/q$b;->b:Lcom/hyprmx/android/sdk/core/q;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/core/q;->h:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;

    if-eqz p1, :cond_33

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;->initializationFailed()V

    :cond_33
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.q.c (com.hyprmx.android.sdk.core.q$c)
.class public final Lcom/hyprmx/android/sdk/core/q$c;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/q;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;ZLcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V
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
    c = "com.hyprmx.android.sdk.core.HyprMXDelegate$initialize$4"
    f = "HyprMX.kt"
    i = {}
    l = {
        0x7e,
        0x80,
        0x81
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/hyprmx/android/sdk/core/q;

.field public final synthetic d:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/hyprmx/android/sdk/consent/ConsentStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/core/q;Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lkotlin/coroutines/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hyprmx/android/sdk/core/q;",
            "Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyprmx/android/sdk/consent/ConsentStatus;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/q$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/q$c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/core/q$c;->c:Lcom/hyprmx/android/sdk/core/q;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/core/q$c;->d:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/core/q$c;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/hyprmx/android/sdk/core/q$c;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/hyprmx/android/sdk/core/q$c;->g:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 11
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

    new-instance p1, Lcom/hyprmx/android/sdk/core/q$c;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/q$c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/core/q$c;->c:Lcom/hyprmx/android/sdk/core/q;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/core/q$c;->d:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/core/q$c;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/core/q$c;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/core/q$c;->g:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/hyprmx/android/sdk/core/q$c;-><init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/core/q;Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/core/q$c;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/core/q$c;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/core/q$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/core/q$c;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_25

    if-eq v1, v4, :cond_21

    if-eq v1, v3, :cond_1d

    if-ne v1, v2, :cond_15

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_69

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_48

    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_35

    :cond_25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/q$c;->b:Landroid/content/Context;

    iput v4, p0, Lcom/hyprmx/android/sdk/core/q$c;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->setup$HyprMX_Mobile_Android_SDK_release(Landroid/content/Context;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_35

    return-object v0

    :cond_35
    :goto_35
    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/q$c;->c:Lcom/hyprmx/android/sdk/core/q;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/q$c;->d:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;

    iput-object v1, p1, Lcom/hyprmx/android/sdk/core/q;->h:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz p1, :cond_48

    iput v3, p0, Lcom/hyprmx/android/sdk/core/q$c;->a:I

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/core/j;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_48

    return-object v0

    :cond_48
    :goto_48
    iget-object v4, p0, Lcom/hyprmx/android/sdk/core/q$c;->c:Lcom/hyprmx/android/sdk/core/q;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/core/q$c;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/core/q$c;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/hyprmx/android/sdk/core/q$c;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/hyprmx/android/sdk/core/q$c;->g:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    iput v2, p0, Lcom/hyprmx/android/sdk/core/q$c;->a:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object p1

    new-instance v1, Lcom/hyprmx/android/sdk/core/r;

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/hyprmx/android/sdk/core/r;-><init>(Lcom/hyprmx/android/sdk/core/q;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lkotlin/coroutines/d;)V

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_69

    return-object v0

    :cond_69
    :goto_69
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
