###### Class com.hyprmx.android.sdk.webview.m (com.hyprmx.android.sdk.webview.m)
.class public final Lcom/hyprmx/android/sdk/webview/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Landroid/webkit/WebView;
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/hyprmx/android/R$id;->hyprmx_webview:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt p0, v2, :cond_26

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    goto :goto_2d

    :cond_26
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    :goto_2d
    return-object v0
.end method
