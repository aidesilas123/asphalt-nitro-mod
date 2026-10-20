###### Class com.fyber.inneractive.sdk.mraid.e (com.fyber.inneractive.sdk.mraid.e)
.class public Lcom/fyber/inneractive/sdk/mraid/e;
.super Lcom/fyber/inneractive/sdk/mraid/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/fyber/inneractive/sdk/web/i;Lcom/fyber/inneractive/sdk/util/k0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fyber/inneractive/sdk/web/i;",
            "Lcom/fyber/inneractive/sdk/util/k0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/mraid/a;-><init>(Ljava/util/Map;Lcom/fyber/inneractive/sdk/web/i;Lcom/fyber/inneractive/sdk/util/k0;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 15

    const-string v0, "Ad can be resized only if it\'s state is default or resized."

    const-string v1, "Couldn\'t find content in the view tree"

    const-string v2, "w"

    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/mraid/b;->a(Ljava/lang/String;)I

    move-result v2

    const-string v3, "h"

    invoke-virtual {p0, v3}, Lcom/fyber/inneractive/sdk/mraid/b;->a(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/mraid/b;->b:Ljava/util/Map;

    const-string v5, "url"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/mraid/b;->b:Ljava/util/Map;

    const-string v6, "shouldUseCustomClose"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/mraid/b;->b:Ljava/util/Map;

    const-string v8, "lockOrientation"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    if-gtz v2, :cond_38

    const/4 v2, -0x1

    :cond_38
    if-gtz v3, :cond_3b

    const/4 v3, -0x1

    :cond_3b
    iget-object v8, p0, Lcom/fyber/inneractive/sdk/mraid/b;->c:Lcom/fyber/inneractive/sdk/web/i;

    iget-object v9, v8, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-nez v9, :cond_43

    goto/16 :goto_24d

    :cond_43
    iget-object v9, v8, Lcom/fyber/inneractive/sdk/web/i;->O:Lcom/fyber/inneractive/sdk/web/i$d;

    sget-object v10, Lcom/fyber/inneractive/sdk/web/i$d;->DISABLED:Lcom/fyber/inneractive/sdk/web/i$d;

    if-ne v9, v10, :cond_4b

    goto/16 :goto_24d

    :cond_4b
    iget-object v9, v8, Lcom/fyber/inneractive/sdk/web/i;->N:Lcom/fyber/inneractive/sdk/mraid/b0;

    sget-object v10, Lcom/fyber/inneractive/sdk/mraid/b0;->DEFAULT:Lcom/fyber/inneractive/sdk/mraid/b0;

    if-eq v9, v10, :cond_53

    goto/16 :goto_24d

    :cond_53
    if-eqz v4, :cond_64

    invoke-static {v4}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_64

    sget-object v0, Lcom/fyber/inneractive/sdk/mraid/g;->EXPAND:Lcom/fyber/inneractive/sdk/mraid/g;

    const-string v1, "URL passed to expand() was invalid."

    invoke-virtual {v8, v0, v1}, Lcom/fyber/inneractive/sdk/web/i;->a(Lcom/fyber/inneractive/sdk/mraid/g;Ljava/lang/String;)V

    goto/16 :goto_24d

    :cond_64
    const/4 v9, 0x0

    :try_start_65
    iget-object v10, v8, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v10

    const v11, 0x1020002

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, v8, Lcom/fyber/inneractive/sdk/web/i;->R:Landroid/view/ViewGroup;

    if-nez v10, :cond_84

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/fyber/inneractive/sdk/mraid/g;->RESIZE:Lcom/fyber/inneractive/sdk/mraid/g;

    invoke-virtual {v8, v2, v0}, Lcom/fyber/inneractive/sdk/web/i;->a(Lcom/fyber/inneractive/sdk/mraid/g;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_82} :catch_243

    goto/16 :goto_24d

    :cond_84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_a8

    new-instance v0, Lcom/fyber/inneractive/sdk/web/m;

    invoke-direct {v0, v8}, Lcom/fyber/inneractive/sdk/web/m;-><init>(Lcom/fyber/inneractive/sdk/web/i;)V

    iput-object v0, v8, Lcom/fyber/inneractive/sdk/web/i;->m0:Landroid/window/OnBackInvokedCallback;

    invoke-virtual {v8}, Lcom/fyber/inneractive/sdk/web/i;->l()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_a8

    invoke-virtual {v8}, Lcom/fyber/inneractive/sdk/web/i;->l()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, v8, Lcom/fyber/inneractive/sdk/web/i;->m0:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v9, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :cond_a8
    iput-boolean v5, v8, Lcom/fyber/inneractive/sdk/web/i;->X:Z

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/web/d;->g:Lcom/fyber/inneractive/sdk/web/d0;

    if-eqz v0, :cond_b3

    check-cast v0, Lcom/fyber/inneractive/sdk/web/i$f;

    invoke-interface {v0, v8, v5}, Lcom/fyber/inneractive/sdk/web/i$f;->a(Lcom/fyber/inneractive/sdk/web/i;Z)V

    :cond_b3
    invoke-virtual {v8, v6}, Lcom/fyber/inneractive/sdk/web/i;->e(Z)V

    iget v0, v8, Lcom/fyber/inneractive/sdk/web/i;->e0:I

    if-ltz v0, :cond_c0

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/util/l;->b(I)I

    move-result v0

    iput v0, v8, Lcom/fyber/inneractive/sdk/web/i;->e0:I

    :cond_c0
    iget v0, v8, Lcom/fyber/inneractive/sdk/web/i;->d0:I

    if-ltz v0, :cond_ca

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/util/l;->b(I)I

    move-result v0

    iput v0, v8, Lcom/fyber/inneractive/sdk/web/i;->d0:I

    :cond_ca
    iget-object v0, v8, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Lcom/fyber/inneractive/sdk/web/i;->a(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v5, 0xd

    const/4 v6, 0x1

    if-eqz v4, :cond_109

    new-instance v0, Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v8}, Lcom/fyber/inneractive/sdk/web/i;->l()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/fyber/inneractive/sdk/web/g;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/fyber/inneractive/sdk/web/i;->S:Lcom/fyber/inneractive/sdk/web/g;

    sget v10, Lcom/fyber/inneractive/sdk/R$id;->inneractive_webview_mraid:I

    invoke-virtual {v0, v10}, Landroid/webkit/WebView;->setId(I)V

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/web/i;->S:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/web/i;->S:Lcom/fyber/inneractive/sdk/web/g;

    iget-object v4, v8, Lcom/fyber/inneractive/sdk/web/d;->c:Lcom/fyber/inneractive/sdk/web/r;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/web/i;->S:Lcom/fyber/inneractive/sdk/web/g;

    iget-object v4, v8, Lcom/fyber/inneractive/sdk/web/d;->d:Lcom/fyber/inneractive/sdk/web/s;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/web/i;->S:Lcom/fyber/inneractive/sdk/web/g;

    new-instance v4, Lcom/fyber/inneractive/sdk/web/n;

    invoke-direct {v4, v8}, Lcom/fyber/inneractive/sdk/web/n;-><init>(Lcom/fyber/inneractive/sdk/web/i;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_157

    :cond_109
    iget-object v4, v8, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-nez v4, :cond_114

    goto :goto_157

    :cond_114
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_119
    if-ge v11, v10, :cond_127

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, v8, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-ne v12, v13, :cond_124

    goto :goto_127

    :cond_124
    add-int/lit8 v11, v11, 0x1

    goto :goto_119

    :cond_127
    :goto_127
    sget v10, Lcom/fyber/inneractive/sdk/R$id;->ia_identifier_overlay:I

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput v11, v8, Lcom/fyber/inneractive/sdk/web/i;->g0:I

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/util/q;->a(Landroid/view/View;)V

    iget-object v10, v8, Lcom/fyber/inneractive/sdk/web/i;->h0:Landroid/widget/FrameLayout;

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/util/q;->a(Landroid/view/View;)V

    iget-object v10, v8, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getWidth()I

    move-result v10

    iget-object v12, v8, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getHeight()I

    move-result v12

    new-array v13, v6, [I

    aput v5, v13, v9

    invoke-static {v10, v12, v13}, Lcom/fyber/inneractive/sdk/util/q;->a(II[I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v10

    iget-object v12, v8, Lcom/fyber/inneractive/sdk/web/i;->h0:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v12, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v8, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_157
    iget v4, v8, Lcom/fyber/inneractive/sdk/web/i;->Y:F

    const/high16 v10, 0x42480000    # 50.0f

    mul-float v10, v10, v4

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    if-ltz v3, :cond_173

    if-ltz v2, :cond_173

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    if-ge v2, v10, :cond_170

    move v2, v10

    :cond_170
    if-ge v3, v10, :cond_173

    move v3, v10

    :cond_173
    new-instance v4, Landroid/view/View;

    invoke-virtual {v8}, Lcom/fyber/inneractive/sdk/web/i;->l()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/fyber/inneractive/sdk/web/i;->l()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/fyber/inneractive/sdk/R$color;->ia_mraid_expanded_dimmed_bk:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v10, Lcom/fyber/inneractive/sdk/web/h;

    invoke-direct {v10, v8}, Lcom/fyber/inneractive/sdk/web/h;-><init>(Lcom/fyber/inneractive/sdk/web/i;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v10, v8, Lcom/fyber/inneractive/sdk/web/i;->j0:Landroid/widget/RelativeLayout;

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v4, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/q;->a(Landroid/view/View;)V

    iget-object v4, v8, Lcom/fyber/inneractive/sdk/web/i;->i0:Landroid/widget/FrameLayout;

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v8, Lcom/fyber/inneractive/sdk/web/i;->i0:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/util/q;->a(Landroid/view/View;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, v8, Lcom/fyber/inneractive/sdk/web/i;->j0:Landroid/widget/RelativeLayout;

    iget-object v3, v8, Lcom/fyber/inneractive/sdk/web/i;->i0:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v8, Lcom/fyber/inneractive/sdk/web/i;->j0:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/util/q;->a(Landroid/view/View;)V

    iget-object v2, v8, Lcom/fyber/inneractive/sdk/web/i;->R:Landroid/view/ViewGroup;

    iget-object v3, v8, Lcom/fyber/inneractive/sdk/web/i;->j0:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1da

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1da
    iget-object v0, v8, Lcom/fyber/inneractive/sdk/web/i;->P:Lcom/fyber/inneractive/sdk/web/i$h;

    sget-object v2, Lcom/fyber/inneractive/sdk/web/i$h;->ALWAYS_VISIBLE:Lcom/fyber/inneractive/sdk/web/i$h;

    if-eq v0, v2, :cond_1e8

    iget-boolean v2, v8, Lcom/fyber/inneractive/sdk/web/i;->X:Z

    if-nez v2, :cond_1eb

    sget-object v2, Lcom/fyber/inneractive/sdk/web/i$h;->ALWAYS_HIDDEN:Lcom/fyber/inneractive/sdk/web/i$h;

    if-eq v0, v2, :cond_1eb

    :cond_1e8
    invoke-virtual {v8, v6}, Lcom/fyber/inneractive/sdk/web/i;->d(Z)V

    :cond_1eb
    sget-object v0, Lcom/fyber/inneractive/sdk/mraid/b0;->EXPANDED:Lcom/fyber/inneractive/sdk/mraid/b0;

    iput-object v0, v8, Lcom/fyber/inneractive/sdk/web/i;->N:Lcom/fyber/inneractive/sdk/mraid/b0;

    new-instance v2, Lcom/fyber/inneractive/sdk/mraid/z;

    invoke-direct {v2, v0}, Lcom/fyber/inneractive/sdk/mraid/z;-><init>(Lcom/fyber/inneractive/sdk/mraid/b0;)V

    invoke-virtual {v8, v2}, Lcom/fyber/inneractive/sdk/web/c0;->a(Lcom/fyber/inneractive/sdk/mraid/u;)V

    iget v0, v8, Lcom/fyber/inneractive/sdk/web/i;->d0:I

    if-eq v0, v7, :cond_211

    iget v2, v8, Lcom/fyber/inneractive/sdk/web/i;->e0:I

    if-eq v2, v7, :cond_211

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/l;->c(I)I

    move-result v0

    iget v2, v8, Lcom/fyber/inneractive/sdk/web/i;->e0:I

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/util/l;->c(I)I

    move-result v2

    new-instance v3, Lcom/fyber/inneractive/sdk/mraid/t;

    invoke-direct {v3, v0, v2}, Lcom/fyber/inneractive/sdk/mraid/t;-><init>(II)V

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/web/c0;->a(Lcom/fyber/inneractive/sdk/mraid/u;)V

    :cond_211
    sget-object v0, Lcom/fyber/inneractive/sdk/mraid/g;->EXPAND:Lcom/fyber/inneractive/sdk/mraid/g;

    invoke-virtual {v8, v0}, Lcom/fyber/inneractive/sdk/web/i;->a(Lcom/fyber/inneractive/sdk/mraid/g;)V

    if-nez v1, :cond_219

    goto :goto_239

    :cond_219
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/fyber/inneractive/sdk/R$dimen;->identifier_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0, v9, v9, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/web/i;->R:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/web/i;->R:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_239
    iget-object v0, v8, Lcom/fyber/inneractive/sdk/web/d;->g:Lcom/fyber/inneractive/sdk/web/d0;

    if-eqz v0, :cond_24d

    check-cast v0, Lcom/fyber/inneractive/sdk/web/i$f;

    invoke-interface {v0, v8}, Lcom/fyber/inneractive/sdk/web/i$f;->a(Lcom/fyber/inneractive/sdk/web/i;)V

    goto :goto_24d

    :catch_243
    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/fyber/inneractive/sdk/mraid/g;->RESIZE:Lcom/fyber/inneractive/sdk/mraid/g;

    invoke-virtual {v8, v1, v0}, Lcom/fyber/inneractive/sdk/web/i;->a(Lcom/fyber/inneractive/sdk/mraid/g;Ljava/lang/String;)V

    :cond_24d
    :goto_24d
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/mraid/b;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
