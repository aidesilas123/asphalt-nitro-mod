###### Class com.vungle.ads.internal.omsdk.NativeOMTracker (com.vungle.ads.internal.omsdk.b)
.class public final Lcom/vungle/ads/internal/omsdk/b;
.super Ljava/lang/Object;
.source "NativeOMTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000cR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vungle/ads/internal/omsdk/NativeOMTracker;",
        "",
        "omSdkData",
        "",
        "(Ljava/lang/String;)V",
        "adEvents",
        "Lcom/iab/omid/library/vungle/adsession/AdEvents;",
        "adSession",
        "Lcom/iab/omid/library/vungle/adsession/AdSession;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "impressionOccurred",
        "",
        "start",
        "view",
        "Landroid/view/View;",
        "stop",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private adEvents:Lcom/iab/omid/library/vungle/adsession/AdEvents;

.field private adSession:Lcom/iab/omid/library/vungle/adsession/AdSession;

.field private final json:Lkotlinx/serialization/json/Json;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    const-string v0, "omSdkData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/vungle/ads/internal/omsdk/b$a;->INSTANCE:Lcom/vungle/ads/internal/omsdk/b$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/b/l;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/omsdk/b;->json:Lkotlinx/serialization/json/Json;

    :try_start_12
    sget-object v2, Lcom/iab/omid/library/vungle/adsession/CreativeType;->NATIVE_DISPLAY:Lcom/iab/omid/library/vungle/adsession/CreativeType;

    sget-object v3, Lcom/iab/omid/library/vungle/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/vungle/adsession/ImpressionType;

    sget-object v4, Lcom/iab/omid/library/vungle/adsession/Owner;->NATIVE:Lcom/iab/omid/library/vungle/adsession/Owner;

    sget-object v5, Lcom/iab/omid/library/vungle/adsession/Owner;->NONE:Lcom/iab/omid/library/vungle/adsession/Owner;

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/vungle/adsession/CreativeType;Lcom/iab/omid/library/vungle/adsession/ImpressionType;Lcom/iab/omid/library/vungle/adsession/Owner;Lcom/iab/omid/library/vungle/adsession/Owner;Z)Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;

    move-result-object v2

    const-string v3, "Vungle"

    const-string v4, "7.1.0"

    invoke-static {v3, v4}, Lcom/iab/omid/library/vungle/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/Partner;

    move-result-object v3

    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_4e

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lkotlin/text/b;->b:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0}, Lkotlinx/serialization/f;->a()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p1

    const-class v5, Lcom/vungle/ads/internal/model/OmSdkData;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/c;

    move-result-object p1

    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v4}, Lkotlinx/serialization/j;->b(Lkotlinx/serialization/b;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/model/OmSdkData;

    goto :goto_4f

    :cond_4e
    move-object p1, v1

    :goto_4f
    if-eqz p1, :cond_56

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/OmSdkData;->getVendorKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    :cond_56
    move-object v0, v1

    :goto_57
    new-instance v4, Ljava/net/URL;

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/OmSdkData;->getVendorURL()Ljava/lang/String;

    move-result-object v5

    goto :goto_61

    :cond_60
    move-object v5, v1

    :goto_61
    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/OmSdkData;->getParams()Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_6b
    move-object p1, v1

    :goto_6c
    invoke-static {v0, v4, p1}, Lcom/iab/omid/library/vungle/adsession/VerificationScriptResource;->createVerificationScriptResourceWithParameters(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/VerificationScriptResource;

    move-result-object p1

    const-string v0, "verificationScriptResource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/p;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/vungle/ads/internal/omsdk/d;->INSTANCE:Lcom/vungle/ads/internal/omsdk/d;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/omsdk/d;->getOM_JS$vungle_ads_release()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1, v1, v1}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->createNativeAdSessionContext(Lcom/iab/omid/library/vungle/adsession/Partner;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/AdSessionContext;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/iab/omid/library/vungle/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;Lcom/iab/omid/library/vungle/adsession/AdSessionContext;)Lcom/iab/omid/library/vungle/adsession/AdSession;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/omsdk/b;->adSession:Lcom/iab/omid/library/vungle/adsession/AdSession;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_89} :catch_8a

    goto :goto_92

    :catch_8a
    move-exception p1

    const-string v0, "NativeOMTracker"

    const-string v1, "error occured when create omsdk adSession:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_92
    return-void
.end method


# virtual methods
.method public final impressionOccurred()V
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/omsdk/b;->adEvents:Lcom/iab/omid/library/vungle/adsession/AdEvents;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/AdEvents;->impressionOccurred()V

    :cond_7
    return-void
.end method

.method public final start(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/iab/omid/library/vungle/Omid;->isActive()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/vungle/ads/internal/omsdk/b;->adSession:Lcom/iab/omid/library/vungle/adsession/AdSession;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/vungle/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/AdSession;->start()V

    invoke-static {v0}, Lcom/iab/omid/library/vungle/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/vungle/adsession/AdSession;)Lcom/iab/omid/library/vungle/adsession/AdEvents;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/omsdk/b;->adEvents:Lcom/iab/omid/library/vungle/adsession/AdEvents;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/adsession/AdEvents;->loaded()V

    :cond_20
    return-void
.end method

.method public final stop()V
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/omsdk/b;->adSession:Lcom/iab/omid/library/vungle/adsession/AdSession;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/AdSession;->finish()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/ads/internal/omsdk/b;->adSession:Lcom/iab/omid/library/vungle/adsession/AdSession;

    return-void
.end method
