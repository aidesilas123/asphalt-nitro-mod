###### Class com.json.l9 (com.ironsource.l9)
.class public final Lcom/ironsource/l9;
.super Lcom/ironsource/q1;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/a0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/q1<",
        "Lcom/ironsource/o9;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
        ">;",
        "Lcom/ironsource/a0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\u00020\u0004BE\u0012\u0010\u0010,\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0005\u0018\u00010+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0008\u0010/\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u00101\u001a\u000200\u0012\u0008\u00103\u001a\u0004\u0018\u000102\u0012\u0006\u00104\u001a\u00020\u001f\u00a2\u0006\u0004\u00085\u00106J<\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0008\u001a\u000e\u0012\u0002\u0008\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0014J\u0008\u0010\u0011\u001a\u00020\u0010H\u0014J\u0010\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012J\u0006\u0010\u0016\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0017J \u0010\u0015\u001a\u00020\u00142\u000c\u0010\u001a\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0014J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0014J\u0008\u0010!\u001a\u00020\u0014H\u0014J\u001c\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020%0$2\u0006\u0010#\u001a\u00020\"H\u0016J\u0010\u0010\u000f\u001a\u00020&2\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\u0008\u0010\'\u001a\u00020\u001fH\u0014J\u0008\u0010(\u001a\u00020\u000bH\u0014J\u0008\u0010)\u001a\u00020\u001fH\u0014J\u0008\u0010*\u001a\u00020\u000bH\u0014\u00a8\u00067"
    }
    d2 = {
        "Lcom/ironsource/l9;",
        "Lcom/ironsource/q1;",
        "Lcom/ironsource/o9;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
        "Lcom/ironsource/a0;",
        "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
        "providerSettings",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;",
        "adapter",
        "",
        "sessionDepth",
        "",
        "currentAuctionId",
        "Lcom/ironsource/d1;",
        "item",
        "b",
        "Lcom/ironsource/x;",
        "e",
        "Lcom/ironsource/mediationsdk/model/Placement;",
        "placement",
        "",
        "a",
        "I",
        "Lcom/ironsource/mediationsdk/ads/nativead/internal/InternalNativeAdListener;",
        "nativeAdListener",
        "Lcom/ironsource/t1;",
        "smash",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;",
        "adInfo",
        "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
        "error",
        "",
        "isReload",
        "C",
        "Lcom/ironsource/t;",
        "event",
        "",
        "",
        "Lorg/json/JSONObject;",
        "r",
        "l",
        "D",
        "i",
        "",
        "providersList",
        "Lcom/ironsource/h9;",
        "configs",
        "userId",
        "Lcom/ironsource/o8;",
        "publisherDataHolder",
        "Lcom/ironsource/mediationsdk/IronSourceSegment;",
        "segment",
        "isOneToken",
        "<init>",
        "(Ljava/util/List;Lcom/ironsource/h9;Ljava/lang/String;Lcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/h9;Ljava/lang/String;Lcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/h9;",
            "Ljava/lang/String;",
            "Lcom/ironsource/o8;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            "Z)V"
        }
    .end annotation

    const-string v0, "configs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherDataHolder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/m9;

    invoke-direct {v0, p3, p1, p2}, Lcom/ironsource/m9;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/h9;)V

    invoke-direct {p0, v0, p4, p5, p6}, Lcom/ironsource/q1;-><init>(Lcom/ironsource/l;Lcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V

    return-void
.end method


# virtual methods
.method protected B(Lcom/ironsource/t1;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t1<",
            "*>;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/ironsource/o9;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    check-cast p1, Lcom/ironsource/o9;

    invoke-virtual {p1}, Lcom/ironsource/o9;->P()Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/o9;->Q()Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/x;->a(Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :cond_13
    return-void
.end method

.method public final I()V
    .registers 5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    :try_start_5
    iget-object v0, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {v0}, Lcom/ironsource/gd;->d()Lcom/ironsource/t1;

    move-result-object v0

    check-cast v0, Lcom/ironsource/o9;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/ironsource/t1;->r()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/ironsource/q1;->C:Lcom/ironsource/z6;

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v3}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ironsource/z6;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v2

    goto :goto_27

    :cond_23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_27
    iget-object v3, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    if-eqz v3, :cond_32

    iget-object v3, v3, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    if-eqz v3, :cond_32

    invoke-virtual {v3, v2}, Lcom/ironsource/z8;->a(I)V

    :cond_32
    invoke-virtual {v0}, Lcom/ironsource/o9;->O()V

    iget-object v0, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {v0, v1}, Lcom/ironsource/gd;->a(Lcom/ironsource/t1;)V

    :cond_3a
    iput-object v1, p0, Lcom/ironsource/q1;->i:Lcom/ironsource/mediationsdk/model/Placement;

    sget-object v0, Lcom/ironsource/q1$f;->a:Lcom/ironsource/q1$f;

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->w(Lcom/ironsource/q1$f;)V
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_42

    goto :goto_6c

    :catchall_42
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyNativeAd - exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    if-eqz v1, :cond_6c

    iget-object v1, v1, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    if-eqz v1, :cond_6c

    invoke-virtual {v1, v0}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method protected K(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;
    .registers 3

    const-string v0, "providerSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getNativeAdSettings()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "providerSettings.nativeAdSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected X()Lcom/ironsource/x;
    .registers 2

    new-instance v0, Lcom/ironsource/u3;

    invoke-direct {v0}, Lcom/ironsource/u3;-><init>()V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;Lcom/ironsource/d1;)Lcom/ironsource/t1;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/ironsource/l9;->t0(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;Lcom/ironsource/d1;)Lcom/ironsource/o9;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ironsource/t;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/ironsource/q1;->a(Lcom/ironsource/t;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/q1;->i:Lcom/ironsource/mediationsdk/model/Placement;

    const-string v1, "data"

    if-eqz v0, :cond_1b

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "placement"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v0, p0, Lcom/ironsource/q1;->w:Ljava/util/UUID;

    if-eqz v0, :cond_27

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "objectId"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lcom/ironsource/mediationsdk/ads/nativead/internal/InternalNativeAdListener;)V
    .registers 3

    const-string v0, "nativeAdListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/k9;

    invoke-direct {v0, p1}, Lcom/ironsource/k9;-><init>(Lcom/ironsource/mediationsdk/ads/nativead/internal/InternalNativeAdListener;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->C(Lcom/ironsource/x;)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 8

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const-string v0, "format(format, *args)"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_65

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_65

    :cond_27
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v5}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/mediationsdk/utils/b;->b(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v3

    if-eqz v3, :cond_61

    sget-object v3, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "placement %s is capped"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/s;->f(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    goto :goto_89

    :cond_61
    const/4 v2, 0x0

    const/16 v0, 0x1fe

    goto :goto_89

    :cond_65
    :goto_65
    sget-object v3, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    new-array v3, v2, [Ljava/lang/Object;

    if-nez p1, :cond_6e

    const-string v4, "placement is null"

    goto :goto_70

    :cond_6e
    const-string v4, "placement name is empty"

    :goto_70
    aput-object v4, v3, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "can\'t load native ad - %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/s;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    :goto_89
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9c

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v2}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/ironsource/q1;->t(ILjava/lang/String;Z)V

    goto :goto_a1

    :cond_9c
    iput-object p1, p0, Lcom/ironsource/q1;->i:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {p0}, Lcom/ironsource/q1;->w()V

    :goto_a1
    return-void
.end method

.method protected c0()Ljava/lang/String;
    .registers 2

    const-string v0, "NA"

    return-object v0
.end method

.method protected g()V
    .registers 1

    return-void
.end method

.method protected g0()Ljava/lang/String;
    .registers 2

    const-string v0, "OPW_NT"

    return-object v0
.end method

.method protected i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected l0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected t0(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;Lcom/ironsource/d1;)Lcom/ironsource/o9;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "*",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/ironsource/d1;",
            ")",
            "Lcom/ironsource/o9;"
        }
    .end annotation

    move-object/from16 v7, p0

    const-string v0, "providerSettings"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAuctionId"

    move-object/from16 v2, p4

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/ironsource/p;

    sget-object v9, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->NATIVE_AD:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    iget-object v0, v7, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->p()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v7, Lcom/ironsource/q1;->g:Lorg/json/JSONObject;

    iget v14, v7, Lcom/ironsource/q1;->e:I

    iget-object v15, v7, Lcom/ironsource/q1;->f:Ljava/lang/String;

    iget-object v0, v7, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->n()I

    move-result v17

    move-object v8, v4

    move/from16 v11, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v17}, Lcom/ironsource/p;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;I)V

    new-instance v8, Lcom/ironsource/o9;

    iget-object v6, v7, Lcom/ironsource/q1;->i:Lcom/ironsource/mediationsdk/model/Placement;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v4, v6

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/o9;-><init>(Lcom/ironsource/pa;Lcom/ironsource/p;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/d1;Lcom/ironsource/a0;)V

    return-object v8
.end method

.method protected v(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .registers 3

    iget-object p2, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    invoke-virtual {p2, p1}, Lcom/ironsource/x;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
