###### Class com.unity3d.services.core.network.model.HttpResponseKt (com.unity3d.services.core.network.model.HttpResponseKt)
.class public final Lcom/unity3d/services/core/network/model/HttpResponseKt;
.super Ljava/lang/Object;
.source "HttpResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "isSuccessful",
        "",
        "Lcom/unity3d/services/core/network/model/HttpResponse;",
        "toHttpResponse",
        "Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final isSuccessful(Lcom/unity3d/services/core/network/model/HttpResponse;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-gt v1, p0, :cond_13

    const/16 v1, 0x12c

    if-ge p0, v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public static final toHttpResponse(Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;)Lcom/unity3d/services/core/network/model/HttpResponse;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/services/core/network/model/HttpResponse;

    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;->getCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v1

    goto :goto_17

    :cond_13
    const/16 v1, 0x208

    const/16 v3, 0x208

    :goto_17
    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_25

    move-object v5, v2

    goto :goto_26

    :cond_25
    move-object v5, v1

    :goto_26
    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2e

    move-object v6, v2

    goto :goto_2f

    :cond_2e
    move-object v6, v1

    :goto_2f
    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;->getClient()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_37

    const-string p0, "unknown"

    :cond_37
    move-object v7, p0

    const-string v2, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/unity3d/services/core/network/model/HttpResponse;-><init>(Ljava/lang/Object;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
