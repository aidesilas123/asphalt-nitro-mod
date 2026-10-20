###### Class com.unity3d.services.core.di.ServiceProvider.AnonymousClass1 (com.unity3d.services.core.di.ServiceProvider$initialize$1)
.class final Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;
.super Lkotlin/jvm/internal/t;
.source "ServiceProvider.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/di/ServiceProvider;->initialize()Lcom/unity3d/services/core/di/IServicesRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lcom/unity3d/services/core/di/ServicesRegistry;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/unity3d/services/core/di/ServicesRegistry;",
        "invoke"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;

    invoke-direct {v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/unity3d/services/core/di/ServicesRegistry;

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;->invoke(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcom/unity3d/services/core/di/ServicesRegistry;)V
    .registers 18

    move-object/from16 v0, p1

    const-class v1, Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;

    const-class v2, Lcom/unity3d/services/core/misc/JsonStorage;

    const-class v3, Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    const-class v4, Landroidx/datastore/core/DataMigration;

    const-class v5, Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    const-class v6, Landroidx/datastore/core/DataStore;

    const-string v7, "$this$registry"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$1;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$1;

    new-instance v8, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v9, Landroid/content/Context;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const-string v10, ""

    invoke-direct {v8, v10, v9}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v7}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v7, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$2;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$2;

    new-instance v8, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v9, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v10, v9}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v7}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v7, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$3;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$3;

    new-instance v8, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v9, Lcom/unity3d/services/core/domain/ISDKDispatchers;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v10, v9}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v7}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$4;

    invoke-direct {v7, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$4;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v8, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v9, Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const-string v11, "sdk"

    invoke-direct {v8, v11, v9}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v7}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$5;

    invoke-direct {v7, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$5;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v8, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v9, Lkotlinx/coroutines/s;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v11, v9}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v7}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$6;

    invoke-direct {v7, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$6;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v8, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v9, Lcom/unity3d/services/core/network/core/HttpClient;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v10, v9}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v7}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$7;

    invoke-direct {v7, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$7;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v8, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const-string v11, "unityads-installinfo"

    invoke-direct {v8, v11, v9}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v7}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$8;

    invoke-direct {v7, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$8;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v8, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const-string v11, "supersonic_shared_preferen"

    invoke-direct {v8, v11, v9}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v7}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v7, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$9;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$9;

    new-instance v8, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const-string v11, "default-migration"

    invoke-direct {v8, v11, v9}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v7}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$10;

    invoke-direct {v7, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$10;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v8, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-string v9, "glinfo"

    invoke-direct {v8, v9, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v7}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$11;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$11;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-string v9, "gateway_cache.pb"

    invoke-direct {v7, v9, v8}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$12;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$12;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-string v11, "privacy.pb"

    invoke-direct {v7, v11, v8}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$13;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$13;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-string v12, "privacy_fsm.pb"

    invoke-direct {v7, v12, v8}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$14;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$14;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-string v13, "idfi.pb"

    invoke-direct {v7, v13, v8}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$15;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$15;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-string v14, "auid.pb"

    invoke-direct {v7, v14, v8}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$16;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$16;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-string v15, "glinfo.pb"

    invoke-direct {v7, v15, v8}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$17;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$17;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v7, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const-string v8, "universal_request.pb"

    invoke-direct {v7, v8, v6}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$18;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$18;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/domain/task/InitializeStateNetworkError;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lcom/unity3d/services/core/di/ServiceFactoryKt;->factoryOf(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$19;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$19;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$20;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$20;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/domain/task/InitializeStateReset;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$21;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$21;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/domain/task/InitializeStateError;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$22;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$22;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$23;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$23;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/domain/task/InitializeStateConfig;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$24;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$24;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/domain/task/InitializeStateCreate;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$25;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$25;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$26;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$26;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/domain/task/InitializeStateCreateWithRemote;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$27;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$27;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$28;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$28;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/domain/task/InitializeStateComplete;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$29;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$29;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/domain/task/InitializeSDK;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$30;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$30;

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/ads/token/TokenStorage;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$31;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$31;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/ads/token/AsyncTokenStorage;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$32;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$32;

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/device/VolumeChange;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$33;

    invoke-direct {v4, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$33;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/services/core/device/VolumeChangeMonitor;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v4, Lcom/unity3d/services/core/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$34;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$34;

    new-instance v7, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v6}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v4, Lcom/unity3d/services/core/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$35;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$35;

    new-instance v7, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-direct {v7, v4, v2}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v6}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$36;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$36;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v6, Lcom/unity3d/ads/core/configuration/GameServerIdReader;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-direct {v4, v10, v6}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$37;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$37;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v6, Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-direct {v4, v10, v6}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$38;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$38;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const-string v7, "init_req"

    invoke-direct {v4, v7, v6}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$39;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$39;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const-string v7, "op_event_req"

    invoke-direct {v4, v7, v6}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$40;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$40;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const-string v7, "other_req"

    invoke-direct {v4, v7, v6}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$41;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$41;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v4, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v6, "ad_req"

    invoke-direct {v4, v6, v3}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$42;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$42;

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$43;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$43;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/work/BackgroundWorker;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$44;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$44;

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/services/core/lifecycle/LifecycleCache;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$45;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$45;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$46;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$46;

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$47;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$47;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$48;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$48;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$49;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$49;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$50;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$50;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/gatewayclient/GatewayClient;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$51;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$51;

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lcom/unity3d/services/core/di/ServiceFactoryKt;->factoryOf(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$52;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$52;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$53;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$53;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$54;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$54;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v11, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$55;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$55;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v13, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$56;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$56;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v14, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$57;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$57;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v12, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$58;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$58;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v15, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$59;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$59;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$60;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$60;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$61;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$61;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/repository/MediationRepository;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$62;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$62;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$63;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$63;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetClientInfo;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$64;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$64;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$65;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$65;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/TriggerInitializeListener;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$66;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$66;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/InitializeBoldSDK;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$67;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$67;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetInitializationRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$68;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$68;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$69;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$69;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$70;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$70;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$71;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$71;

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$72;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$72;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/Load;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lcom/unity3d/services/core/di/ServiceFactoryKt;->factoryOf(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$73;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$73;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/Refresh;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$74;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$74;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lcom/unity3d/services/core/di/ServiceFactoryKt;->factoryOf(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$75;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$75;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetAdRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$76;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$76;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$77;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$77;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lcom/unity3d/services/core/di/ServiceFactoryKt;->factoryOf(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$78;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$78;

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/repository/AdRepository;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$79;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$79;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$80;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$80;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$81;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$81;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$82;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$82;

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/events/HandleGatewayEventResponse;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$83;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$83;

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$84;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$84;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$85;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$85;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$86;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$86;

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$87;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$87;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$88;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$88;

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$89;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$89;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$90;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$90;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/events/EventObservers;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$91;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$91;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$92;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$92;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/Show;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/LegacyShowUseCase;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$94;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$94;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lcom/unity3d/services/core/di/ServiceFactoryKt;->factoryOf(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$95;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$95;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$96;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$96;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$97;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$97;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$98;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$98;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$99;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$99;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$100;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$100;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/HandleOpenUrl;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$101;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$101;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$102;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$102;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$103;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$103;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetPrivacyUpdateRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$104;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$104;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$105;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$105;

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-string v5, "legacy_privacy_rules"

    invoke-direct {v3, v5, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$106;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$106;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/datasource/LegacyUserConsentDataSource;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$107;

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$107;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$108;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$108;

    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v4, "dev_consent_privacy_rules"

    invoke-direct {v3, v4, v1}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v1, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$109;

    invoke-direct {v1, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$109;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v3, Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v1, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$110;

    invoke-direct {v1, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$110;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v3, Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v1, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$111;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$111;

    new-instance v2, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v3, Lcom/unity3d/ads/core/data/manager/StorageManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    sget-object v1, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$112;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$112;

    new-instance v2, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v3, Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v1, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$113;

    invoke-direct {v1, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$113;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v3, Lcom/unity3d/services/ads/measurements/MeasurementsService;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    new-instance v1, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$114;

    invoke-direct {v1, v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$114;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V

    new-instance v2, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v3, Lcom/unity3d/services/ads/topics/TopicsService;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-static {v1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/services/core/di/ServicesRegistry;->updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/i;)V

    return-void
.end method
