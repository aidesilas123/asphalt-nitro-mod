###### Class com.gameloft.android2d.iap.Links (com.gameloft.android2d.iap.Links)
.class public Lcom/gameloft/android2d/iap/Links;
.super Ljava/lang/Object;
.source "Links.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IAP_FederationIsInitialized()Z
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->NIAP_FederationIsInitialized()Z

    move-result v0

    return v0
.end method

.method public static IAP_GetAccessToken()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->NIAP_GetAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IAP_GetAnonymousCredential()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->NIAP_GetAnonymousCredential()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IAP_GetCRMFeed()Lorg/json/JSONObject;
    .registers 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->NIAP_GetCRMFeed()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method public static IAP_GetCRMUrl()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->NIAP_GetCRMUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IAP_GetClientId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->NIAP_GetClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IAP_GetDatacenter()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->NIAP_GetDatacenter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IAP_GetDeviceId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->NIAP_GetDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IAP_GetImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public static IAP_GetLastResponseTimestamp()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->NIAP_GetLastResponseTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IAP_GetProjectId()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static IAP_GetUserCredential()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->NIAP_GetUserCredential()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IAP_GetUserName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IAP_IsFederationOffline()Z
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->NIAP_IsFederationOffline()Z

    move-result v0

    return v0
.end method

.method public static native NIAP_FederationIsInitialized()Z
.end method

.method public static native NIAP_GetAccessToken()Ljava/lang/String;
.end method

.method public static native NIAP_GetAnonymousCredential()Ljava/lang/String;
.end method

.method public static native NIAP_GetCRMFeed()Ljava/lang/String;
.end method

.method public static native NIAP_GetCRMUrl()Ljava/lang/String;
.end method

.method public static native NIAP_GetClientId()Ljava/lang/String;
.end method

.method public static native NIAP_GetDatacenter()Ljava/lang/String;
.end method

.method public static native NIAP_GetDeviceId()Ljava/lang/String;
.end method

.method public static native NIAP_GetLastResponseTimestamp()Ljava/lang/String;
.end method

.method public static native NIAP_GetUserCredential()Ljava/lang/String;
.end method

.method public static native NIAP_IsFederationOffline()Z
.end method
