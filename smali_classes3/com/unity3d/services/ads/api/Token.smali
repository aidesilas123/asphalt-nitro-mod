###### Class com.unity3d.services.ads.api.Token (com.unity3d.services.ads.api.Token)
.class public Lcom/unity3d/services/ads/api/Token;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field private static final tokenStorage:Lcom/unity3d/services/ads/token/TokenStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/unity3d/services/ads/token/TokenStorage;

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/ads/token/TokenStorage;

    sput-object v0, Lcom/unity3d/services/ads/api/Token;->tokenStorage:Lcom/unity3d/services/ads/token/TokenStorage;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendTokens(Lorg/json/JSONArray;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/unity3d/services/ads/api/Token;->tokenStorage:Lcom/unity3d/services/ads/token/TokenStorage;

    invoke-interface {v1, p0}, Lcom/unity3d/services/ads/token/TokenStorage;->appendTokens(Lorg/json/JSONArray;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_c

    new-array p0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void

    :catch_c
    move-exception p0

    sget-object v1, Lcom/unity3d/services/ads/token/TokenError;->JSON_EXCEPTION:Lcom/unity3d/services/ads/token/TokenError;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    return-void
.end method

.method public static createTokens(Lorg/json/JSONArray;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/unity3d/services/ads/api/Token;->tokenStorage:Lcom/unity3d/services/ads/token/TokenStorage;

    invoke-interface {v1, p0}, Lcom/unity3d/services/ads/token/TokenStorage;->createTokens(Lorg/json/JSONArray;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_c

    new-array p0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void

    :catch_c
    move-exception p0

    sget-object v1, Lcom/unity3d/services/ads/token/TokenError;->JSON_EXCEPTION:Lcom/unity3d/services/ads/token/TokenError;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    return-void
.end method

.method public static deleteTokens(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .registers 2
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    sget-object v0, Lcom/unity3d/services/ads/api/Token;->tokenStorage:Lcom/unity3d/services/ads/token/TokenStorage;

    invoke-interface {v0}, Lcom/unity3d/services/ads/token/TokenStorage;->deleteTokens()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static getNativeGeneratedToken(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .registers 2
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    sget-object v0, Lcom/unity3d/services/ads/api/Token;->tokenStorage:Lcom/unity3d/services/ads/token/TokenStorage;

    invoke-interface {v0}, Lcom/unity3d/services/ads/token/TokenStorage;->getNativeGeneratedToken()Lkotlin/v;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
