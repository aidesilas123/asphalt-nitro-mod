###### Class com.bytedance.sdk.openadsdk.core.widget.a.c (com.bytedance.sdk.openadsdk.core.widget.a.c)
.class public Lcom/bytedance/sdk/openadsdk/core/widget/a/c;
.super Ljava/lang/Object;
.source "SSWebSettings.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->b:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->c:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->e:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->f:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->g:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/a/c;
    .registers 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .registers 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_13

    :catchall_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/l;->d(Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static b(Landroid/webkit/WebView;)V
    .registers 2

    :try_start_0
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_18

    :catchall_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/l;->d(Ljava/lang/String;)V

    :goto_18
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/widget/a/c;
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->g:Z

    return-object p0
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const-string v0, "SSWebSettings"

    if-eqz p1, :cond_67

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_67

    :cond_d
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->b(Landroid/webkit/WebView;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->a(Landroid/webkit/WebSettings;)V

    if-nez v1, :cond_1a

    return-void

    :cond_1a
    const/4 v2, 0x1

    :try_start_1b
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    const/4 v3, 0x0

    :try_start_28
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->b:Z

    if-eqz v4, :cond_33

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_3f

    :cond_33
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_37

    goto :goto_3f

    :catchall_37
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    :try_start_51
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5b

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_67

    :cond_5b
    invoke-virtual {p1, v3, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_5f

    goto :goto_67

    :catchall_5f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    :goto_67
    return-void
.end method

.method public b(Z)Lcom/bytedance/sdk/openadsdk/core/widget/a/c;
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;->b:Z

    return-object p0
.end method
