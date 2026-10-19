###### Class com.hyprmx.android.sdk.jsinterface.b (com.hyprmx.android.sdk.jsinterface.b)
.class public final Lcom/hyprmx/android/sdk/jsinterface/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/webview/d;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/webview/k;)V
    .registers 3

    const-string v0, "onJSMessageHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/jsinterface/b;->a:Lcom/hyprmx/android/sdk/webview/d;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/b;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "close"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final createCalendarEvent(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/b;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "createCalendarEvent"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final open(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/b;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "open"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final playVideo(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/b;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "playVideo"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setOrientationProperties(ZLjava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "forceOrientation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/b;->a:Lcom/hyprmx/android/sdk/webview/d;

    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v3, "allowOrientationChange"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "forceOrientationChange"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v2}, Lkotlin/collections/d0;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setOrientationProperties"

    invoke-interface {v0, p2, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final storePicture(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/b;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "storePicture"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final useCustomClose(Z)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/b;->a:Lcom/hyprmx/android/sdk/webview/d;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "useCustomClose"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
