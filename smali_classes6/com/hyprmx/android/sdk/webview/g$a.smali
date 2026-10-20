###### Class com.hyprmx.android.sdk.webview.g.a (com.hyprmx.android.sdk.webview.g$a)
.class public final Lcom/hyprmx/android/sdk/webview/g$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/webview/g;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Lcom/hyprmx/android/sdk/webview/g;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/hyprmx/android/sdk/webview/g;)V
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/webview/g$a;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/webview/g$a;->b:Lcom/hyprmx/android/sdk/webview/g;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/webview/g$a;->a:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/webview/g$a;->b:Lcom/hyprmx/android/sdk/webview/g;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/webview/g;->a:Lcom/hyprmx/android/sdk/webview/e;

    invoke-interface {p1, p2}, Lcom/hyprmx/android/sdk/webview/e;->g(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
