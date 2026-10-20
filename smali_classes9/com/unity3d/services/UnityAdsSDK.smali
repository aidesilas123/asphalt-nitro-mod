###### Class com.unity3d.services.UnityAdsSDK (com.unity3d.services.UnityAdsSDK)
.class public final Lcom/unity3d/services/UnityAdsSDK;
.super Ljava/lang/Object;
.source "UnityAdsSDK.kt"

# interfaces
.implements Lcom/unity3d/services/core/di/IServiceComponent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\"\u001a\u00020#J \u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010*J\"\u0010+\u001a\u00020#2\u0006\u0010%\u001a\u00020&2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0010)\u001a\u0004\u0018\u00010.R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0008\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0008\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0008\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006/"
    }
    d2 = {
        "Lcom/unity3d/services/UnityAdsSDK;",
        "Lcom/unity3d/services/core/di/IServiceComponent;",
        "()V",
        "alternativeFlowReader",
        "Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;",
        "getAlternativeFlowReader",
        "()Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;",
        "alternativeFlowReader$delegate",
        "Lkotlin/Lazy;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context$delegate",
        "initializeBoldSDK",
        "Lcom/unity3d/ads/core/domain/InitializeBoldSDK;",
        "getInitializeBoldSDK",
        "()Lcom/unity3d/ads/core/domain/InitializeBoldSDK;",
        "initializeBoldSDK$delegate",
        "initializeSDK",
        "Lcom/unity3d/services/core/domain/task/InitializeSDK;",
        "getInitializeSDK",
        "()Lcom/unity3d/services/core/domain/task/InitializeSDK;",
        "initializeSDK$delegate",
        "sdkScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getSdkScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "sdkScope$delegate",
        "showBoldSDK",
        "Lcom/unity3d/ads/core/domain/LegacyShowUseCase;",
        "getShowBoldSDK",
        "()Lcom/unity3d/ads/core/domain/LegacyShowUseCase;",
        "showBoldSDK$delegate",
        "initialize",
        "Lkotlinx/coroutines/Job;",
        "load",
        "placementId",
        "",
        "loadOptions",
        "Lcom/unity3d/ads/UnityAdsLoadOptions;",
        "listener",
        "Lcom/unity3d/ads/IUnityAdsLoadListener;",
        "show",
        "showOptions",
        "Lcom/unity3d/ads/UnityAdsShowOptions;",
        "Lcom/unity3d/ads/IUnityAdsShowListener;",
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
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsSDK;

.field private static final alternativeFlowReader$delegate:Lkotlin/i;

.field private static final context$delegate:Lkotlin/i;

.field private static final initializeBoldSDK$delegate:Lkotlin/i;

.field private static final initializeSDK$delegate:Lkotlin/i;

.field private static final sdkScope$delegate:Lkotlin/i;

.field private static final showBoldSDK$delegate:Lkotlin/i;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsSDK;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsSDK;->INSTANCE:Lcom/unity3d/services/UnityAdsSDK;

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->c:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/unity3d/services/UnityAdsSDK$special$$inlined$inject$default$1;

    const-string v3, "sdk"

    invoke-direct {v2, v0, v3}, Lcom/unity3d/services/UnityAdsSDK$special$$inlined$inject$default$1;-><init>(Lcom/unity3d/services/core/di/IServiceComponent;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    sput-object v2, Lcom/unity3d/services/UnityAdsSDK;->sdkScope$delegate:Lkotlin/i;

    new-instance v2, Lcom/unity3d/services/UnityAdsSDK$special$$inlined$inject$default$2;

    const-string v3, ""

    invoke-direct {v2, v0, v3}, Lcom/unity3d/services/UnityAdsSDK$special$$inlined$inject$default$2;-><init>(Lcom/unity3d/services/core/di/IServiceComponent;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    sput-object v2, Lcom/unity3d/services/UnityAdsSDK;->initializeSDK$delegate:Lkotlin/i;

    new-instance v2, Lcom/unity3d/services/UnityAdsSDK$special$$inlined$inject$default$3;

    invoke-direct {v2, v0, v3}, Lcom/unity3d/services/UnityAdsSDK$special$$inlined$inject$default$3;-><init>(Lcom/unity3d/services/core/di/IServiceComponent;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    sput-object v2, Lcom/unity3d/services/UnityAdsSDK;->alternativeFlowReader$delegate:Lkotlin/i;

    new-instance v2, Lcom/unity3d/services/UnityAdsSDK$special$$inlined$inject$default$4;

    invoke-direct {v2, v0, v3}, Lcom/unity3d/services/UnityAdsSDK$special$$inlined$inject$default$4;-><init>(Lcom/unity3d/services/core/di/IServiceComponent;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    sput-object v2, Lcom/unity3d/services/UnityAdsSDK;->initializeBoldSDK$delegate:Lkotlin/i;

    new-instance v2, Lcom/unity3d/services/UnityAdsSDK$special$$inlined$inject$default$5;

    invoke-direct {v2, v0, v3}, Lcom/unity3d/services/UnityAdsSDK$special$$inlined$inject$default$5;-><init>(Lcom/unity3d/services/core/di/IServiceComponent;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    sput-object v2, Lcom/unity3d/services/UnityAdsSDK;->showBoldSDK$delegate:Lkotlin/i;

    new-instance v2, Lcom/unity3d/services/UnityAdsSDK$special$$inlined$inject$default$6;

    invoke-direct {v2, v0, v3}, Lcom/unity3d/services/UnityAdsSDK$special$$inlined$inject$default$6;-><init>(Lcom/unity3d/services/core/di/IServiceComponent;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/UnityAdsSDK;->context$delegate:Lkotlin/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAlternativeFlowReader(Lcom/unity3d/services/UnityAdsSDK;)Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/UnityAdsSDK;->getAlternativeFlowReader()Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext(Lcom/unity3d/services/UnityAdsSDK;)Landroid/content/Context;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/UnityAdsSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInitializeBoldSDK(Lcom/unity3d/services/UnityAdsSDK;)Lcom/unity3d/ads/core/domain/InitializeBoldSDK;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/UnityAdsSDK;->getInitializeBoldSDK()Lcom/unity3d/ads/core/domain/InitializeBoldSDK;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInitializeSDK(Lcom/unity3d/services/UnityAdsSDK;)Lcom/unity3d/services/core/domain/task/InitializeSDK;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/UnityAdsSDK;->getInitializeSDK()Lcom/unity3d/services/core/domain/task/InitializeSDK;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getShowBoldSDK(Lcom/unity3d/services/UnityAdsSDK;)Lcom/unity3d/ads/core/domain/LegacyShowUseCase;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/UnityAdsSDK;->getShowBoldSDK()Lcom/unity3d/ads/core/domain/LegacyShowUseCase;

    move-result-object p0

    return-object p0
.end method

.method private final getAlternativeFlowReader()Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;
    .registers 2

    sget-object v0, Lcom/unity3d/services/UnityAdsSDK;->alternativeFlowReader$delegate:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .registers 2

    sget-object v0, Lcom/unity3d/services/UnityAdsSDK;->context$delegate:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private final getInitializeBoldSDK()Lcom/unity3d/ads/core/domain/InitializeBoldSDK;
    .registers 2

    sget-object v0, Lcom/unity3d/services/UnityAdsSDK;->initializeBoldSDK$delegate:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/core/domain/InitializeBoldSDK;

    return-object v0
.end method

.method private final getInitializeSDK()Lcom/unity3d/services/core/domain/task/InitializeSDK;
    .registers 2

    sget-object v0, Lcom/unity3d/services/UnityAdsSDK;->initializeSDK$delegate:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/core/domain/task/InitializeSDK;

    return-object v0
.end method

.method private final getSdkScope()Lkotlinx/coroutines/s;
    .registers 2

    sget-object v0, Lcom/unity3d/services/UnityAdsSDK;->sdkScope$delegate:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/s;

    return-object v0
.end method

.method private final getShowBoldSDK()Lcom/unity3d/ads/core/domain/LegacyShowUseCase;
    .registers 2

    sget-object v0, Lcom/unity3d/services/UnityAdsSDK;->showBoldSDK$delegate:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/core/domain/LegacyShowUseCase;

    return-object v0
.end method


# virtual methods
.method public getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;
    .registers 2

    invoke-static {p0}, Lcom/unity3d/services/core/di/IServiceComponent$DefaultImpls;->getServiceProvider(Lcom/unity3d/services/core/di/IServiceComponent;)Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object v0

    return-object v0
.end method

.method public final initialize()Lkotlinx/coroutines/Job;
    .registers 7

    invoke-direct {p0}, Lcom/unity3d/services/UnityAdsSDK;->getSdkScope()Lkotlinx/coroutines/s;

    move-result-object v0

    new-instance v3, Lcom/unity3d/services/UnityAdsSDK$initialize$1;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/unity3d/services/UnityAdsSDK$initialize$1;-><init>(Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method public final load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;)Lkotlinx/coroutines/Job;
    .registers 11

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unity3d/services/UnityAdsSDK;->getSdkScope()Lkotlinx/coroutines/s;

    move-result-object v1

    new-instance v4, Lcom/unity3d/services/UnityAdsSDK$load$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, p3, v0}, Lcom/unity3d/services/UnityAdsSDK$load$1;-><init>(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final show(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)Lkotlinx/coroutines/Job;
    .registers 11

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unity3d/services/UnityAdsSDK;->getSdkScope()Lkotlinx/coroutines/s;

    move-result-object v1

    new-instance v4, Lcom/unity3d/services/UnityAdsSDK$show$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, p3, v0}, Lcom/unity3d/services/UnityAdsSDK$show$1;-><init>(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method
