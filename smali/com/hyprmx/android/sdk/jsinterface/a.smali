###### Class com.hyprmx.android.sdk.jsinterface.a (com.hyprmx.android.sdk.jsinterface.a)
.class public final Lcom/hyprmx/android/sdk/jsinterface/a;
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

    iput-object p1, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    return-void
.end method


# virtual methods
.method public abort(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "abort"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public adDidComplete()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "adDidComplete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public audioEvent(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "audioEvent"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeAd()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "closeAd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endOMSession()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "endOMSession"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pageReady()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "pageReady"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public payoutComplete()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "payoutComplete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public presentDialog(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "presentDialogJsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "presentDialog"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClosable(Z)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setClosable"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRecoveryPostParameters(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "setRecoveryPostParameters"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTrampoline(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "trampoline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "setTrampoline"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startOMSession(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "sessionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "startOMSession"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startWebtraffic(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "webTrafficJsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsinterface/a;->a:Lcom/hyprmx/android/sdk/webview/d;

    const-string v1, "startWebtraffic"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/webview/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
