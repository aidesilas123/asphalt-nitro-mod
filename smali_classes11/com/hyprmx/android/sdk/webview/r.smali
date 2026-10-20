###### Class com.hyprmx.android.sdk.webview.r (com.hyprmx.android.sdk.webview.r)
.class public final Lcom/hyprmx/android/sdk/webview/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/webview/s;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/hyprmx/android/sdk/preload/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/preload/v;)V
    .registers 4

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/webview/r;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/webview/r;->b:Lcom/hyprmx/android/sdk/preload/v;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/hyprmx/android/sdk/webview/f;
    .registers 6

    const-string v0, "viewModelIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/webview/r;->b:Lcom/hyprmx/android/sdk/preload/v;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/preload/v;->b(Ljava/lang/String;)Lcom/hyprmx/android/sdk/webview/f;

    move-result-object p1

    if-nez p1, :cond_17

    new-instance p1, Lcom/hyprmx/android/sdk/webview/f;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/webview/r;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-direct {p1, v0, p2, v1, v2}, Lcom/hyprmx/android/sdk/webview/f;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;I)V

    :cond_17
    return-object p1
.end method
