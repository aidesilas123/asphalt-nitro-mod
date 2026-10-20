###### Class com.json.a6 (com.ironsource.a6)
.class public Lcom/ironsource/a6;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/y6;


# instance fields
.field private a:Lcom/ironsource/f6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/f6;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/ironsource/f6;->d()Lcom/ironsource/y5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/y5;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/ironsource/f6;->d()Lcom/ironsource/y5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/y5;->a()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    invoke-virtual {p1}, Lcom/ironsource/f6;->getPresentingView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/a6;)Lcom/ironsource/f6;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    return-object p0
.end method

.method static synthetic b(Lcom/ironsource/a6;Lcom/ironsource/f6;)Lcom/ironsource/f6;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    return-object p1
.end method

.method private c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    invoke-virtual {v0}, Lcom/ironsource/f6;->c()Lcom/ironsource/d6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/d6;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "configs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "visibilityParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1c

    :catch_17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_1c
    iget-object v1, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    invoke-virtual {v1}, Lcom/ironsource/f6;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adViewId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    invoke-virtual {v1}, Lcom/ironsource/f6;->c()Lcom/ironsource/d6;

    move-result-object v1

    const-string v2, "destroyBanner"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/d6;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/ironsource/f6;->c()Lcom/ironsource/d6;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/a6;->c()V

    return-void

    :cond_e
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mAdPresenter or mAdPresenter.getAdViewLogic() are null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/ironsource/f6;->c()Lcom/ironsource/d6;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    invoke-virtual {v0}, Lcom/ironsource/f6;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_29

    :cond_14
    iget-object v0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    invoke-virtual {v0}, Lcom/ironsource/f6;->c()Lcom/ironsource/d6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/d6;->e()V

    sget-object v0, Lcom/ironsource/q5;->a:Lcom/ironsource/q5;

    new-instance v1, Lcom/ironsource/a6$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/a6$a;-><init>(Lcom/ironsource/a6;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/q5;->c(Ljava/lang/Runnable;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2b

    monitor-exit p0

    return-void

    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/f6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/f6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/f6;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/f6;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPresentingView()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    invoke-virtual {v0}, Lcom/ironsource/f6;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Lcom/ironsource/y5;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/ironsource/f6;->d()Lcom/ironsource/y5;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lcom/ironsource/y5;

    invoke-direct {v0}, Lcom/ironsource/y5;-><init>()V

    return-object v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IronSourceAdContainer"

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    if-nez p1, :cond_1b

    return-void

    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Lcom/ironsource/f6;->c()Lcom/ironsource/d6;

    move-result-object p1

    const-string v0, "isVisible"

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/ironsource/d6;->a(Ljava/lang/String;IZ)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2d
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowVisibilityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IronSourceAdContainer"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/a6;->a:Lcom/ironsource/f6;

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Lcom/ironsource/f6;->c()Lcom/ironsource/d6;

    move-result-object v0

    const-string v1, "isWindowVisible"

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/d6;->a(Ljava/lang/String;IZ)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2d
    return-void
.end method
