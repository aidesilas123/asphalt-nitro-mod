###### Class com.unity3d.services.core.di.ServiceProvider.C17021 (com.unity3d.services.core.di.ServiceProvider$provideHttpClient$1)
.class final Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "ServiceProvider.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/di/ServiceProvider;->provideHttpClient(Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;)Lcom/unity3d/services/core/network/core/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/s;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lcom/unity3d/services/core/network/core/HttpClient;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/unity3d/services/core/network/core/HttpClient;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.unity3d.services.core.di.ServiceProvider$provideHttpClient$1"
    f = "ServiceProvider.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x218,
        0x21c
    }
    m = "invokeSuspend"
    n = {
        "startTime",
        "client"
    }
    s = {
        "J$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

.field final synthetic $configFileFromLocalStorage:Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

.field final synthetic $sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroid/content/Context;Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lkotlin/coroutines/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;",
            "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    iput-object p2, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    iput-object p3, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    iput-object p4, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$configFileFromLocalStorage:Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 10
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

    new-instance p1, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;

    iget-object v1, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    iget-object v2, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    iget-object v3, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    iget-object v4, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$configFileFromLocalStorage:Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;-><init>(Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroid/content/Context;Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/services/core/network/core/HttpClient;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    if-eq v1, v3, :cond_1e

    if-ne v1, v2, :cond_16

    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/unity3d/services/core/network/core/HttpClient;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_71

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    iget-wide v3, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4b

    :cond_24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;->invoke()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_80

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    new-instance p1, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1$client$1;

    iget-object v8, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    invoke-direct {p1, v8, v9, v1}, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1$client$1;-><init>(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlin/coroutines/d;)V

    iput-wide v4, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->J$0:J

    iput v3, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->label:I

    invoke-static {v6, v7, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4a

    return-object v0

    :cond_4a
    move-wide v3, v4

    :goto_4b
    check-cast p1, Lcom/unity3d/services/core/network/core/HttpClient;

    if-nez p1, :cond_52

    const-string v1, "native_cronet_failure_time"

    goto :goto_54

    :cond_52
    const-string v1, "native_cronet_success_time"

    :goto_54
    move-object v6, v1

    iget-object v5, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static {v3, v4}, Lcom/unity3d/ads/core/extensions/TimestampExtensionsKt;->duration(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    iput-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->label:I

    move-object v10, p0

    invoke-static/range {v5 .. v12}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_70

    return-object v0

    :cond_70
    move-object v0, p1

    :goto_71
    if-nez v0, :cond_b4

    new-instance v0, Lcom/unity3d/services/core/network/core/OkHttp3Client;

    iget-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/unity3d/services/core/network/core/OkHttp3Client;-><init>(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lokhttp3/OkHttpClient;)V

    goto :goto_b4

    :cond_80
    new-instance p1, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1$config$1;

    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$configFileFromLocalStorage:Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;

    invoke-direct {p1, v0, v1}, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1$config$1;-><init>(Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lkotlin/coroutines/d;)V

    invoke-static {v1, p1, v3, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/core/configuration/Configuration;

    const/4 v0, 0x0

    if-eqz p1, :cond_9d

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getExperiments()Lcom/unity3d/services/core/configuration/IExperiments;

    move-result-object p1

    if-eqz p1, :cond_9d

    invoke-interface {p1}, Lcom/unity3d/services/core/configuration/IExperiments;->isOkHttpEnabled()Z

    move-result p1

    if-ne p1, v3, :cond_9d

    goto :goto_9e

    :cond_9d
    const/4 v3, 0x0

    :goto_9e
    if-eqz v3, :cond_ad

    new-instance v0, Lcom/unity3d/services/core/network/core/OkHttp3Client;

    iget-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/unity3d/services/core/network/core/OkHttp3Client;-><init>(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lokhttp3/OkHttpClient;)V

    goto :goto_b4

    :cond_ad
    new-instance v0, Lcom/unity3d/services/core/network/core/LegacyHttpClient;

    iget-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;->$dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    invoke-direct {v0, p1}, Lcom/unity3d/services/core/network/core/LegacyHttpClient;-><init>(Lcom/unity3d/services/core/domain/ISDKDispatchers;)V

    :cond_b4
    :goto_b4
    return-object v0
.end method
