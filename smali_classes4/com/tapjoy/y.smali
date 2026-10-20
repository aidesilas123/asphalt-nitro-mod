###### Class com.tapjoy.y (com.tapjoy.y)
.class public Lcom/tapjoy/y;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:Lcom/tapjoy/TJWebView;

.field public b:Lcom/tapjoy/internal/q5;

.field public c:Lcom/tapjoy/internal/q5;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroid/net/Uri;

.field public h:Ljava/util/HashSet;

.field public i:Lcom/tapjoy/k;

.field public final j:Landroid/content/Context;

.field public final k:Ljava/lang/Boolean;

.field public l:Landroid/widget/RelativeLayout;

.field public m:Landroid/widget/FrameLayout;

.field public n:Landroid/widget/ProgressBar;

.field public o:Landroid/widget/TextView;

.field public p:Lcom/tapjoy/TJImageButton;

.field public q:Lcom/tapjoy/TJImageButton;

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;


# virtual methods
.method public final a(II)V
    .registers 13

    if-gt p1, p2, :cond_5

    iget-object v0, p0, Lcom/tapjoy/y;->b:Lcom/tapjoy/internal/q5;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/tapjoy/y;->c:Lcom/tapjoy/internal/q5;

    :goto_7
    const/4 v1, 0x4

    if-nez v0, :cond_11

    iget-object p1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_111

    :cond_11
    int-to-double v2, p1

    iget-wide v4, v0, Lcom/tapjoy/internal/q5;->a:D

    mul-double v4, v4, v2

    double-to-int v4, v4

    int-to-double v5, p2

    iget-wide v7, v0, Lcom/tapjoy/internal/q5;->b:D

    mul-double v7, v7, v5

    double-to-int v7, v7

    if-eqz v4, :cond_10c

    if-nez v7, :cond_23

    goto/16 :goto_10c

    :cond_23
    iget-wide v8, v0, Lcom/tapjoy/internal/q5;->c:D

    mul-double v2, v2, v8

    double-to-int v1, v2

    iget-wide v2, v0, Lcom/tapjoy/internal/q5;->d:D

    mul-double v5, v5, v2

    double-to-int v2, v5

    sub-int/2addr p1, v4

    sub-int/2addr p1, v1

    sub-int/2addr p2, v7

    sub-int/2addr p2, v2

    iget-object v3, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/tapjoy/y;->k:Ljava/lang/Boolean;

    if-eqz v5, :cond_91

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_91

    new-instance v5, Lcom/tapjoy/e0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tapjoy/e0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/tapjoy/e0;->b()F

    move-result v5

    const/high16 v6, 0x42200000    # 40.0f

    mul-float v6, v6, v5

    float-to-int v6, v6

    iget-object v7, p0, Lcom/tapjoy/y;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v6

    iget-object v6, p0, Lcom/tapjoy/y;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v1, v2, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/tapjoy/y;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v2, v7

    invoke-virtual {v3, v1, v2, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v5, v5

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/tapjoy/y;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v4, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/tapjoy/y;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/tapjoy/y;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_94

    :cond_91
    invoke-virtual {v3, v1, v2, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_94
    iget-object p1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget p1, v0, Lcom/tapjoy/internal/q5;->e:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_f2

    const/16 p2, 0x8

    new-array p2, p2, [F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/tapjoy/y;->k:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object p2, p0, Lcom/tapjoy/y;->l:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/tapjoy/internal/c5;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/c5;-><init>(F)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, p0, Lcom/tapjoy/y;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setClipToOutline(Z)V

    goto :goto_111

    :cond_d2
    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([FF)V

    new-instance p1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {p1, p2, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setClipToOutline(Z)V

    goto :goto_111

    :cond_f2
    iget-object p1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/tapjoy/y;->k:Ljava/lang/Boolean;

    if-eqz p1, :cond_111

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_111

    iget-object p1, p0, Lcom/tapjoy/y;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setClipToOutline(Z)V

    goto :goto_111

    :cond_10c
    :goto_10c
    iget-object p1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_111
    :goto_111
    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/y;->p:Lcom/tapjoy/TJImageButton;

    iget-object v1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tapjoy/y;->q:Lcom/tapjoy/TJImageButton;

    iget-object v1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJImageButton;->setEnabled(Z)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_b

    iput-object p1, p0, Lcom/tapjoy/y;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/tapjoy/y;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public e()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tapjoy/y;->j:Landroid/content/Context;

    const v2, 0x103023a

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/tapjoy/y;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/y;->t:Ljava/lang/String;

    new-instance v2, Lcom/tapjoy/internal/o4;

    invoke-direct {v2}, Lcom/tapjoy/internal/o4;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/y;->u:Ljava/lang/String;

    new-instance v2, Lcom/tapjoy/internal/z3;

    invoke-direct {v2, p0}, Lcom/tapjoy/internal/z3;-><init>(Lcom/tapjoy/y;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public getLastUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/y;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final onMeasure(II)V
    .registers 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    if-eqz v2, :cond_f

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/y;->a(II)V

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public setErrorDialog(Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/y;->r:Z

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/y;->s:Ljava/lang/String;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/y;->t:Ljava/lang/String;

    const-string v0, "reload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/y;->u:Ljava/lang/String;

    :cond_1d
    return-void
.end method

.method public setExitHosts(Lorg/json/JSONArray;)V
    .registers 5

    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/y;->h:Ljava/util/HashSet;

    return-void

    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/y;->h:Ljava/util/HashSet;

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gt v0, v1, :cond_22

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v2, p0, Lcom/tapjoy/y;->h:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    return-void
.end method

.method public setLayoutOption(Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_23

    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    new-instance v2, Lcom/tapjoy/internal/q5;

    invoke-direct {v2, v0}, Lcom/tapjoy/internal/q5;-><init>(Lorg/json/JSONObject;)V

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    iput-object v2, p0, Lcom/tapjoy/y;->c:Lcom/tapjoy/internal/q5;

    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_21

    new-instance v1, Lcom/tapjoy/internal/q5;

    invoke-direct {v1, p1}, Lcom/tapjoy/internal/q5;-><init>(Lorg/json/JSONObject;)V

    :cond_21
    iput-object v1, p0, Lcom/tapjoy/y;->b:Lcom/tapjoy/internal/q5;

    :cond_23
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method
