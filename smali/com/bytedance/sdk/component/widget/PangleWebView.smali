###### Class com.bytedance.sdk.component.widget.PangleWebView (com.bytedance.sdk.component.widget.PangleWebView)
.class public Lcom/bytedance/sdk/component/widget/PangleWebView;
.super Landroid/webkit/WebView;
.source "PangleWebView.java"


# instance fields
.field public a:J

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->b:Ljava/util/HashSet;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->a:J

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->b:Ljava/util/HashSet;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->a:J

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    const-string v0, "TTAD.PangleWebView"

    const-string v1, "init: "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/SSWebView$a;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private b()V
    .registers 5

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy: auto remove js obj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TTAD.PangleWebView"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    goto :goto_1f

    :cond_45
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addJavascriptInterface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTAD.PangleWebView"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_2f

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->b:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_2f
    const-string p1, "addJavascriptInterface: has destroyed or has recycler"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void
.end method

.method public clearCache(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    goto :goto_13

    :cond_c
    const-string p1, "TTAD.PangleWebView"

    const-string v0, "clearCache: has destroyed or recycler"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public destroy()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy() called, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTAD.PangleWebView"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->b()V

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_29

    :cond_c
    if-eqz p2, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateJavascript: has destroyed or recycler, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAD.PangleWebView"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public goBack()V
    .registers 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_c

    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_13

    :cond_c
    const-string v0, "TTAD.PangleWebView"

    const-string v1, "goBack: has destroyed or recycler"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public goBackOrForward(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    goto :goto_13

    :cond_c
    const-string p1, "TTAD.PangleWebView"

    const-string v0, "goBackOrForward: has destroyed or recycler"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public goForward()V
    .registers 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_c

    invoke-super {p0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_13

    :cond_c
    const-string v0, "TTAD.PangleWebView"

    const-string v1, "goForward: has destroyed or recycler"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_c

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_c
    const-string p1, "TTAD.PangleWebView"

    const-string p2, "loadDataWithBaseURL: has destroyed or recycler"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    const-string v1, "TTAD.PangleWebView"

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_19

    :try_start_a
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_d} :catch_12
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_a .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_1e

    :catch_e
    move-exception p1

    goto :goto_13

    :catch_10
    move-exception p1

    goto :goto_13

    :catch_12
    move-exception p1

    :goto_13
    const-string v0, "loadUrl: "

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_19
    const-string p1, "loadUrl: has destroyed or recycler"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    const-string v1, "TTAD.PangleWebView"

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_19

    :try_start_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_d} :catch_12
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_a .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_1e

    :catch_e
    move-exception p1

    goto :goto_13

    :catch_10
    move-exception p1

    goto :goto_13

    :catch_12
    move-exception p1

    :goto_13
    const-string p2, "loadUrl: "

    invoke-static {v1, p2, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_19
    const-string p1, "loadUrl: has destroyed or recycler"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTAD.PangleWebView"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTAD.PangleWebView"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->d:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->destroy()V

    :cond_20
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    return-void

    :cond_d
    :goto_d
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPause()V
    .registers 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    const-string v1, "TTAD.PangleWebView"

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_15

    :try_start_a
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_1a

    :catch_e
    move-exception v0

    const-string v2, "onPause: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_15
    const-string v0, "onPause: has destroyed or recycler"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return-void
.end method

.method public onResume()V
    .registers 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    const-string v1, "TTAD.PangleWebView"

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_15

    :try_start_a
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_1a

    :catch_e
    move-exception v0

    const-string v2, "onResume: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_15
    const-string v0, "onResume: has destroyed or recycler"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return-void
.end method

.method public pauseTimers()V
    .registers 3

    const-string v0, "TTAD.PangleWebView"

    const-string v1, "pauseTimers: "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_12

    invoke-super {p0}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_12
    return-void
.end method

.method public reload()V
    .registers 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_c

    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    goto :goto_13

    :cond_c
    const-string v0, "TTAD.PangleWebView"

    const-string v1, "reload: has destroyed or recycler"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeJavascriptInterface: has destroyed or recycler, name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAD.PangleWebView"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    return-void
.end method

.method public resumeTimers()V
    .registers 3

    const-string v0, "TTAD.PangleWebView"

    const-string v1, "resumeTimers: "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_12

    invoke-super {p0}, Landroid/webkit/WebView;->resumeTimers()V

    :cond_12
    return-void
.end method

.method public setDestroyOnDetached(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDestroyOnDetached() called with: destroyOnDetached = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTAD.PangleWebView"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->d:Z

    return-void
.end method

.method public setRecycler(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    return-void
.end method

.method public stopLoading()V
    .registers 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->c:Z

    const-string v1, "TTAD.PangleWebView"

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->e:Z

    if-nez v0, :cond_15

    :try_start_a
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_1a

    :catch_e
    move-exception v0

    const-string v2, "stopLoading: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_15
    const-string v0, "stopLoading: has destroyed or recycler"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return-void
.end method
