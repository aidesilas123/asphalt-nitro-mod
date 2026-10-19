###### Class com.unity3d.ads.core.data.model.ErrorReasonKt (com.unity3d.ads.core.data.model.ErrorReasonKt)
.class public final Lcom/unity3d/ads/core/data/model/ErrorReasonKt;
.super Ljava/lang/Object;
.source "ErrorReason.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "webResourceToErrorReason",
        "Lcom/unity3d/ads/core/data/model/ErrorReason;",
        "",
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
.method public static final webResourceToErrorReason(I)Lcom/unity3d/ads/core/data/model/ErrorReason;
    .registers 1

    packed-switch p0, :pswitch_data_36

    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_UNKNOWN:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_6
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_UNKNOWN:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_9
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_HOST_LOOKUP:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_c
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_UNSUPPORTED_AUTH_SCHEME:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_f
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_AUTHENTICATION:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_12
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_PROXY_AUTHENTICATION:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_15
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_CONNECT:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_18
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_IO:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_1b
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_TIMEOUT:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_1e
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_REDIRECT_LOOP:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_21
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_UNSUPPORTED_SCHEME:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_24
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_FAILED_SSL_HANDSHAKE:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_27
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_BAD_URL:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_2a
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_FILE:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_2d
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_FILE_NOT_FOUND:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_30
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_TOO_MANY_REQUESTS:Lcom/unity3d/ads/core/data/model/ErrorReason;

    goto :goto_35

    :pswitch_33
    sget-object p0, Lcom/unity3d/ads/core/data/model/ErrorReason;->REASON_WEB_ERROR_UNSAFE_RESOURCE:Lcom/unity3d/ads/core/data/model/ErrorReason;

    :goto_35
    return-object p0

    :pswitch_data_36
    .packed-switch -0x10
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
