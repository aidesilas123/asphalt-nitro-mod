###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent.e (com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent$e)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;
.super Landroid/webkit/WebViewClient;
.source "PopUpsViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field final synthetic c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;


# direct methods
.method private constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->a:Z

    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0, p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$600(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$700(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$500(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0, p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$400(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
