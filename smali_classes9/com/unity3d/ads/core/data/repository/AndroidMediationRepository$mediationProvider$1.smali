###### Class com.unity3d.ads.core.data.repository.AndroidMediationRepository$mediationProvider$1 (com.unity3d.ads.core.data.repository.AndroidMediationRepository$mediationProvider$1)
.class final Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository$mediationProvider$1;
.super Lkotlin/jvm/internal/t;
.source "AndroidMediationRepository.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->getMediationProvider()Lkotlin/jvm/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lgateway/v1/ClientInfoOuterClass$MediationProvider;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lgateway/v1/ClientInfoOuterClass$MediationProvider;",
        "invoke"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository$mediationProvider$1;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .registers 6

    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository$mediationProvider$1;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "AppLovinSdk_"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/g;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->d:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    goto :goto_3a

    :cond_16
    const-string v1, "AdMob"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->c:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    goto :goto_3a

    :cond_22
    const-string v1, "MAX"

    invoke-static {v0, v1, v2}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->d:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    goto :goto_3a

    :cond_2d
    const-string v1, "ironSource"

    invoke-static {v0, v1, v2}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->e:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    goto :goto_3a

    :cond_38
    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->b:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    :goto_3a
    if-nez v0, :cond_3e

    :cond_3c
    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->a:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    :cond_3e
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository$mediationProvider$1;->invoke()Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    return-object v0
.end method
