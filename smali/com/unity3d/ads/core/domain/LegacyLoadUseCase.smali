###### Class com.unity3d.ads.core.domain.LegacyLoadUseCase (com.unity3d.ads.core.domain.LegacyLoadUseCase)
.class public final Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;
.super Ljava/lang/Object;
.source "LegacyLoadUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 (2\u00020\u0001:\u0001(B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J3\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00102\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0086B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ=\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\"\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J\u0011\u0010$\u001a\u00020!H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%J+\u0010&\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\'R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006)"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;",
        "",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "load",
        "Lcom/unity3d/ads/core/domain/Load;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "adRepository",
        "Lcom/unity3d/ads/core/data/repository/AdRepository;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/Load;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/AdRepository;)V",
        "getAdMarkup",
        "",
        "unityAdsLoadOptions",
        "Lcom/unity3d/ads/UnityAdsLoadOptions;",
        "getOpportunityId",
        "getTags",
        "",
        "reason",
        "Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;",
        "invoke",
        "",
        "context",
        "Landroid/content/Context;",
        "placement",
        "loadOptions",
        "unityLoadListener",
        "Lcom/unity3d/ads/IUnityAdsLoadListener;",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadFailure",
        "startTime",
        "",
        "message",
        "(JLcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadStart",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadSuccess",
        "(JLjava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$Companion;

.field public static final KEY_AD_MARKUP:Ljava/lang/String; = "adMarkup"

.field public static final KEY_OBJECT_ID:Ljava/lang/String; = "objectId"


# instance fields
.field private final adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

.field private final dispatcher:Lkotlinx/coroutines/r;

.field private final load:Lcom/unity3d/ads/core/domain/Load;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$Companion;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->Companion:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/domain/Load;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/AdRepository;)V
    .registers 7

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "load"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->dispatcher:Lkotlinx/coroutines/r;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->load:Lcom/unity3d/ads/core/domain/Load;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    return-void
.end method

.method public static final synthetic access$getLoad$p(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;)Lcom/unity3d/ads/core/domain/Load;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->load:Lcom/unity3d/ads/core/domain/Load;

    return-object p0
.end method

.method public static final synthetic access$loadFailure(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;JLcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->loadFailure(JLcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadStart(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->loadStart(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadSuccess(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;JLjava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->loadSuccess(JLjava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getAdMarkup(Lcom/unity3d/ads/UnityAdsLoadOptions;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/unity3d/ads/UnityAdsBaseOptions;->getData()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string v0, "adMarkup"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return-object p1
.end method

.method private final getOpportunityId(Lcom/unity3d/ads/UnityAdsLoadOptions;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/unity3d/ads/UnityAdsBaseOptions;->getData()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string v0, "objectId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return-object p1
.end method

.method private final getTags(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getCurrentInitializationState()Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "initState"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/InitializationStatusReaderExtensionKt;->getInitializationStateString(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)Lcom/unity3d/ads/core/data/model/InitializationStateString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "state"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/d0;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_37

    invoke-static {p1}, Lcom/unity3d/ads/core/extensions/UnityAdsLoadErrorMapperExtensionKt;->toDiagnosticReason(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "reason"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/unity3d/ads/core/data/model/OperationType;->LOAD:Lcom/unity3d/ads/core/data/model/OperationType;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/OperationType;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "operation"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    return-object v0
.end method

.method static synthetic getTags$default(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;ILjava/lang/Object;)Ljava/util/Map;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->getTags(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final loadFailure(JLcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/IUnityAdsLoadListener;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    instance-of v5, v4, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;

    if-eqz v5, :cond_1d

    move-object v5, v4

    check-cast v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;

    iget v6, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->label:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_1d

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->label:I

    goto :goto_22

    :cond_1d
    new-instance v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;

    invoke-direct {v5, v0, v4}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;-><init>(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;Lkotlin/coroutines/d;)V

    :goto_22
    iget-object v4, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v14

    iget v6, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->label:I

    const/4 v15, 0x2

    const/4 v7, 0x1

    if-eqz v6, :cond_5b

    if-eq v6, v7, :cond_3f

    if-ne v6, v15, :cond_37

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e0

    :cond_37
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    iget-object v1, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v2, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    iget-object v7, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_b8

    :cond_5b
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unity Ads Load Failure for placement: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " reason: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " :: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    sget-object v4, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->TIMEOUT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    if-ne v1, v4, :cond_89

    const-string v4, "native_load_timeout"

    goto :goto_8b

    :cond_89
    const-string v4, "native_load_failure_time"

    :goto_8b
    iget-object v6, v0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static/range {p1 .. p2}, Lcom/unity3d/ads/core/extensions/TimestampExtensionsKt;->duration(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->getTags(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;)Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    iput-object v0, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$2:Ljava/lang/Object;

    iput-object v3, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$3:Ljava/lang/Object;

    move-object/from16 v11, p6

    iput-object v11, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$4:Ljava/lang/Object;

    iput v7, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->label:I

    move-object v7, v4

    move-object v11, v5

    invoke-static/range {v6 .. v13}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v14, :cond_b4

    return-object v14

    :cond_b4
    move-object v7, v0

    move-object v4, v2

    move-object/from16 v2, p6

    :goto_b8
    iget-object v6, v7, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->dispatcher:Lkotlinx/coroutines/r;

    new-instance v7, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$2;

    const/4 v8, 0x0

    move-object/from16 p1, v7

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v1

    move-object/from16 p5, v4

    move-object/from16 p6, v8

    invoke-direct/range {p1 .. p6}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$2;-><init>(Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Lkotlin/coroutines/d;)V

    const/4 v1, 0x0

    iput-object v1, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$1:Ljava/lang/Object;

    iput-object v1, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$2:Ljava/lang/Object;

    iput-object v1, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$3:Ljava/lang/Object;

    iput-object v1, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->L$4:Ljava/lang/Object;

    iput v15, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadFailure$1;->label:I

    invoke-static {v6, v7, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v14, :cond_e0

    return-object v14

    :cond_e0
    :goto_e0
    return-object v4
.end method

.method static synthetic loadFailure$default(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;JLcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 19

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_8

    const-string v0, ""

    move-object v5, v0

    goto :goto_9

    :cond_8
    move-object v5, p4

    :goto_9
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->loadFailure(JLcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final loadStart(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadStart$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadStart$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadStart$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadStart$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadStart$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadStart$1;-><init>(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;Lkotlin/coroutines/d;)V

    :goto_18
    move-object v6, v0

    iget-object p1, v6, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadStart$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadStart$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_34

    if-ne v1, v2, :cond_2c

    iget-wide v0, v6, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadStart$1;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    iput-wide v9, v6, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadStart$1;->J$0:J

    iput v2, v6, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadStart$1;->label:I

    const-string v2, "native_load_started"

    invoke-static/range {v1 .. v8}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_50

    return-object v0

    :cond_50
    move-wide v0, v9

    :goto_51
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private final loadSuccess(JLjava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/IUnityAdsLoadListener;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    instance-of v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;

    if-eqz v3, :cond_18

    move-object v3, v2

    check-cast v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;

    iget v4, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_18

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->label:I

    goto :goto_1d

    :cond_18
    new-instance v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;

    invoke-direct {v3, p0, v2}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;-><init>(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;Lkotlin/coroutines/d;)V

    :goto_1d
    iget-object v2, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    iget v4, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->label:I

    const/4 v13, 0x2

    const/4 v5, 0x1

    const/4 v14, 0x0

    if-eqz v4, :cond_4c

    if-eq v4, v5, :cond_3a

    if-ne v4, v13, :cond_32

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a0

    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3a
    iget-object v1, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v4, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v4

    goto :goto_8a

    :cond_4c
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads Load Success for placement: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static/range {p1 .. p2}, Lcom/unity3d/ads/core/extensions/TimestampExtensionsKt;->duration(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p0, v14, v5, v14}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->getTags$default(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    iput-object v0, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->L$1:Ljava/lang/Object;

    move-object/from16 v2, p4

    iput-object v2, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->L$2:Ljava/lang/Object;

    iput v5, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->label:I

    const-string v5, "native_load_success_time"

    move-object v9, v3

    invoke-static/range {v4 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v12, :cond_89

    return-object v12

    :cond_89
    move-object v5, v0

    :goto_8a
    iget-object v4, v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->dispatcher:Lkotlinx/coroutines/r;

    new-instance v5, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$2;

    invoke-direct {v5, v2, v1, v14}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$2;-><init>(Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object v14, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->L$2:Ljava/lang/Object;

    iput v13, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$loadSuccess$1;->label:I

    invoke-static {v4, v5, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_a0

    return-object v12

    :cond_a0
    :goto_a0
    return-object v2
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/UnityAdsLoadOptions;",
            "Lcom/unity3d/ads/IUnityAdsLoadListener;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    instance-of v2, v0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;

    iget v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;

    invoke-direct {v2, v1, v0}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;Lkotlin/coroutines/d;)V

    :goto_1c
    iget-object v0, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    iget v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->label:I

    const-string v12, ""

    const/4 v4, 0x1

    const/4 v13, 0x0

    packed-switch v3, :pswitch_data_2bc

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_33
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2b8

    :pswitch_38
    iget-wide v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->J$0:J

    iget-object v5, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v6, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    :goto_46
    :try_start_46
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_86

    goto/16 :goto_2b8

    :pswitch_4b
    iget-wide v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->J$0:J

    iget-object v5, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v6, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    goto :goto_46

    :pswitch_5a
    iget-wide v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->J$0:J

    iget-object v5, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v6, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    :try_start_68
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lcom/unity3d/ads/core/data/model/LoadResult;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_86

    :cond_6d
    :goto_6d
    move-wide v14, v3

    move-object v10, v5

    move-object v9, v6

    move-object v8, v7

    goto/16 :goto_227

    :pswitch_73
    iget-wide v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->J$0:J

    iget-object v5, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v6, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    :try_start_81
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_86

    goto/16 :goto_202

    :catch_86
    move-exception v0

    move-object v9, v5

    move-object v8, v6

    move-wide v4, v3

    move-object v3, v7

    goto/16 :goto_294

    :pswitch_8d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_193

    :pswitch_92
    iget-wide v5, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->J$0:J

    iget-object v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/ByteString;

    iget-object v7, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v8, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lcom/unity3d/ads/UnityAdsLoadOptions;

    iget-object v9, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v10, Landroid/content/Context;

    iget-object v14, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v3

    move-object/from16 v16, v10

    move-object v3, v14

    move-object v10, v7

    goto/16 :goto_16c

    :pswitch_b7
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_139

    :pswitch_bc
    iget-object v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v5, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lcom/unity3d/ads/UnityAdsLoadOptions;

    iget-object v6, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v7, Landroid/content/Context;

    iget-object v8, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v3

    move-object v3, v8

    move-object v8, v6

    move-object/from16 v21, v7

    move-object v7, v0

    move-object/from16 v0, v21

    goto :goto_fd

    :pswitch_dc
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object v1, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    move-object/from16 v3, p2

    iput-object v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    move-object/from16 v5, p3

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$3:Ljava/lang/Object;

    move-object/from16 v6, p4

    iput-object v6, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$4:Ljava/lang/Object;

    iput v4, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->label:I

    invoke-direct {v1, v2}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->loadStart(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v11, :cond_fa

    return-object v11

    :cond_fa
    move-object v8, v3

    move-object v9, v6

    move-object v3, v1

    :goto_fd
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unity Ads Load Start for placement "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->getOpportunityId(Lcom/unity3d/ads/UnityAdsLoadOptions;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_13c

    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$4:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->label:I

    const-string v10, "[UnityAds] Object ID cannot be null"

    move-wide v4, v6

    move-object v6, v0

    move-object v7, v10

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->loadFailure(JLcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_139

    return-object v11

    :cond_139
    :goto_139
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0

    :cond_13c
    invoke-static {v10}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    const-string v14, "fromString(opportunityId)"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toByteString(Ljava/util/UUID;)Lcom/google/protobuf/ByteString;

    move-result-object v10

    iget-object v14, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    iput-object v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$5:Ljava/lang/Object;

    iput-wide v6, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->J$0:J

    const/4 v15, 0x3

    iput v15, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->label:I

    invoke-interface {v14, v10, v2}, Lcom/unity3d/ads/core/data/repository/AdRepository;->hasOpportunityId(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v11, :cond_163

    return-object v11

    :cond_163
    move-object/from16 v16, v0

    move-object/from16 v18, v10

    move-object v0, v14

    move-object v10, v9

    move-object v9, v8

    move-object v8, v5

    move-wide v5, v6

    :goto_16c
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_196

    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$5:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->label:I

    const-string v7, "[UnityAds] Object ID already used"

    move-wide v4, v5

    move-object v6, v0

    move-object v8, v9

    move-object v9, v10

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->loadFailure(JLcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_193

    return-object v11

    :cond_193
    :goto_193
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0

    :cond_196
    invoke-direct {v3, v8}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->getAdMarkup(Lcom/unity3d/ads/UnityAdsLoadOptions;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a4

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a3

    goto :goto_1a4

    :cond_1a3
    const/4 v4, 0x0

    :cond_1a4
    :goto_1a4
    if-eqz v4, :cond_1ab

    invoke-static {}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getDefaultInstance()Lgateway/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    goto :goto_1ca

    :cond_1ab
    sget-object v4, Lgateway/v1/g;->a:Lgateway/v1/g$a;

    invoke-static {}, Lgateway/v1/AdResponseOuterClass$AdResponse;->newBuilder()Lgateway/v1/AdResponseOuterClass$AdResponse$a;

    move-result-object v7

    const-string v8, "newBuilder()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lgateway/v1/g$a;->a(Lgateway/v1/AdResponseOuterClass$AdResponse$a;)Lgateway/v1/g;

    move-result-object v4

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v7, "copyFromUtf8(adMarkup)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lgateway/v1/g;->b(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {v4}, Lgateway/v1/g;->a()Lgateway/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    :goto_1ca
    move-object/from16 v19, v0

    iget-object v0, v3, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->getAdOperations()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->getLoadTimeoutMs()I

    move-result v0

    int-to-long v7, v0

    :try_start_1db
    new-instance v0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;

    const/16 v20, 0x0

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v17, v9

    invoke-direct/range {v14 .. v20}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;-><init>(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;Landroid/content/Context;Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lkotlin/coroutines/d;)V

    iput-object v3, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$5:Ljava/lang/Object;

    iput-wide v5, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->J$0:J

    const/4 v4, 0x5

    iput v4, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->label:I

    invoke-static {v7, v8, v0, v2}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1fb} :catch_290

    if-ne v0, v11, :cond_1fe

    return-object v11

    :cond_1fe
    move-object v7, v3

    move-wide v3, v5

    move-object v6, v9

    move-object v5, v10

    :goto_202
    :try_start_202
    check-cast v0, Lcom/unity3d/ads/core/data/model/LoadResult;

    if-nez v0, :cond_6d

    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    sget-object v15, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->TIMEOUT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UnityAds] Timeout while loading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/n;)V
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_225} :catch_86

    goto/16 :goto_6d

    :goto_227
    :try_start_227
    instance-of v3, v0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_229} :catch_283

    if-eqz v3, :cond_24c

    :try_start_22b
    iput-object v8, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    iput-wide v14, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->J$0:J

    const/4 v0, 0x7

    iput v0, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->label:I
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_236} :catch_245

    move-object v3, v8

    move-wide v4, v14

    move-object v6, v9

    move-object v7, v10

    move-object v13, v8

    move-object v8, v2

    :try_start_23c
    invoke-direct/range {v3 .. v8}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->loadSuccess(JLjava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_240
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_240} :catch_243

    if-ne v0, v11, :cond_2b8

    return-object v11

    :catch_243
    move-exception v0

    goto :goto_247

    :catch_245
    move-exception v0

    move-object v13, v8

    :goto_247
    move-object v8, v9

    move-object v9, v10

    move-object v3, v13

    move-wide v4, v14

    goto :goto_294

    :cond_24c
    move-object v13, v8

    :try_start_24d
    instance-of v3, v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    if-eqz v3, :cond_2b8

    move-object v3, v0

    check-cast v3, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    invoke-virtual {v3}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->getError()Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    move-result-object v6

    check-cast v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_262

    move-object v7, v12

    goto :goto_263

    :cond_262
    move-object v7, v0

    :goto_263
    iput-object v13, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    iput-wide v14, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->J$0:J

    const/16 v0, 0x8

    iput v0, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->label:I
    :try_end_26f
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_26f} :catch_281

    move-object v3, v13

    move-wide v4, v14

    move-object v8, v9

    move-object/from16 v16, v9

    move-object v9, v10

    move-object/from16 v17, v10

    move-object v10, v2

    :try_start_278
    invoke-direct/range {v3 .. v10}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->loadFailure(JLcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_278 .. :try_end_27c} :catch_27f

    if-ne v0, v11, :cond_2b8

    return-object v11

    :catch_27f
    move-exception v0

    goto :goto_289

    :catch_281
    move-exception v0

    goto :goto_285

    :catch_283
    move-exception v0

    move-object v13, v8

    :goto_285
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    :goto_289
    move-object v3, v13

    move-wide v4, v14

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    goto :goto_294

    :catch_290
    move-exception v0

    move-wide v4, v5

    move-object v8, v9

    move-object v9, v10

    :goto_294
    sget-object v6, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29e

    move-object v7, v12

    goto :goto_29f

    :cond_29e
    move-object v7, v0

    :goto_29f
    const/4 v10, 0x0

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->L$5:Ljava/lang/Object;

    const/16 v0, 0x9

    iput v0, v2, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$1;->label:I

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->loadFailure(JLcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_2b8

    return-object v11

    :cond_2b8
    :goto_2b8
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0

    nop

    :pswitch_data_2bc
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_bc
        :pswitch_b7
        :pswitch_92
        :pswitch_8d
        :pswitch_73
        :pswitch_5a
        :pswitch_4b
        :pswitch_38
        :pswitch_33
    .end packed-switch
.end method
