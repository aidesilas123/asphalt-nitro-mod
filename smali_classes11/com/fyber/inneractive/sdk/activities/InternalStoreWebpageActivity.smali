###### Class com.fyber.inneractive.sdk.activities.InternalStoreWebpageActivity (com.fyber.inneractive.sdk.activities.InternalStoreWebpageActivity)
.class public Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;
.super Lcom/fyber/inneractive/sdk/activities/InneractiveBaseActivity;
.source "SourceFile"


# static fields
.field public static final EXTRA_KEY_SPOT_ID:Ljava/lang/String; = "spotId"


# instance fields
.field public b:Landroid/view/ViewGroup;

.field public c:Lcom/fyber/inneractive/sdk/web/t;

.field public d:Lcom/fyber/inneractive/sdk/config/global/features/p$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/activities/InneractiveBaseActivity;-><init>()V

    sget-object v0, Lcom/fyber/inneractive/sdk/config/global/features/p$a;->FullScreen:Lcom/fyber/inneractive/sdk/config/global/features/p$a;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->d:Lcom/fyber/inneractive/sdk/config/global/features/p$a;

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "spotId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_15

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_15
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "spotId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%sSpot id is empty"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_21
    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpotManager;->get()Lcom/fyber/inneractive/sdk/external/InneractiveAdSpotManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpotManager;->getSpot(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->c:Lcom/fyber/inneractive/sdk/web/t;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/web/t;->C:Z

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->i:Lcom/fyber/inneractive/sdk/web/t$g;

    if-eqz v0, :cond_1a

    check-cast v0, Lcom/fyber/inneractive/sdk/flow/r;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onInternalStoreWebpageDismissed callback called"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/flow/r;->F()V

    :cond_1a
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->c:Lcom/fyber/inneractive/sdk/web/t;

    if-eqz v0, :cond_17

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/web/t;->x:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    goto :goto_15

    :cond_a
    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/web/t;->w:Z

    if-eqz v1, :cond_14

    const-string v1, "navigateBack();"

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    if-nez v2, :cond_1a

    :cond_17
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1a
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/l;->e()I

    move-result v1

    if-eq v0, v1, :cond_37

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->d:Lcom/fyber/inneractive/sdk/config/global/features/p$a;

    sget-object v1, Lcom/fyber/inneractive/sdk/config/global/features/p$a;->Modal:Lcom/fyber/inneractive/sdk/config/global/features/p$a;

    if-ne v0, v1, :cond_37

    const/16 v0, 0x53

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/l;->d()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/l;->e()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_37
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->a()Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    move-result-object v0

    if-eqz v0, :cond_e8

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object v1

    if-nez v1, :cond_e

    goto/16 :goto_e8

    :cond_e
    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object v1

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/flow/q;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    const-class v2, Lcom/fyber/inneractive/sdk/config/global/features/p;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/config/global/features/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    const/4 v3, 0x0

    const-string v4, "presentation_mode"

    invoke-virtual {v1, v4, v3}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/global/features/p$a;->values()[Lcom/fyber/inneractive/sdk/config/global/features/p$a;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v4, :cond_48

    aget-object v6, v3, v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lcom/fyber/inneractive/sdk/config/global/features/p$a;->value:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    goto :goto_4d

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_48
    sget-object v6, Lcom/fyber/inneractive/sdk/config/global/features/p$a;->FullScreen:Lcom/fyber/inneractive/sdk/config/global/features/p$a;

    goto :goto_4d

    :cond_4b
    sget-object v6, Lcom/fyber/inneractive/sdk/config/global/features/p$a;->FullScreen:Lcom/fyber/inneractive/sdk/config/global/features/p$a;

    :goto_4d
    iput-object v6, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->d:Lcom/fyber/inneractive/sdk/config/global/features/p$a;

    const v1, 0x3f4ccccd    # 0.8f

    sget-object v3, Lcom/fyber/inneractive/sdk/config/global/features/p$a;->Modal:Lcom/fyber/inneractive/sdk/config/global/features/p$a;

    if-ne v6, v3, :cond_9f

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/16 v4, 0x53

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/l;->d()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/l;->e()I

    move-result v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const v1, 0x3e99999a    # 0.3f

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x202

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a5

    :cond_9f
    const v1, 0x1030007

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    :goto_a5
    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/activities/InneractiveBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/fyber/inneractive/sdk/R$layout;->activity_internal_store_webpage:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lcom/fyber/inneractive/sdk/R$id;->internal_store_content:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->b:Landroid/view/ViewGroup;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/flow/q;->c()Lcom/fyber/inneractive/sdk/web/t;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->c:Lcom/fyber/inneractive/sdk/web/t;

    if-eqz p1, :cond_e7

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/fyber/inneractive/sdk/web/t;->q:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->c:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    if-eqz v0, :cond_e0

    sget-object v1, Lcom/fyber/inneractive/sdk/network/r;->IGNITE_FLOW_STORE_PAGE_OPENED:Lcom/fyber/inneractive/sdk/network/r;

    iget-boolean p1, p1, Lcom/fyber/inneractive/sdk/web/t;->B:Z

    if-eqz p1, :cond_d9

    sget-object p1, Lcom/fyber/inneractive/sdk/ignite/k;->TRUE_SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

    goto :goto_db

    :cond_d9
    sget-object p1, Lcom/fyber/inneractive/sdk/ignite/k;->SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

    :goto_db
    check-cast v0, Lcom/fyber/inneractive/sdk/flow/p$a;

    invoke-virtual {v0, v1, p1}, Lcom/fyber/inneractive/sdk/flow/p$a;->a(Lcom/fyber/inneractive/sdk/network/r;Lcom/fyber/inneractive/sdk/ignite/k;)V

    :cond_e0
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->c:Lcom/fyber/inneractive/sdk/web/t;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/web/t;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_e7
    return-void

    :cond_e8
    :goto_e8
    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/activities/InneractiveBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/activities/InneractiveBaseActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->a()Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/flow/q;->e()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->c:Lcom/fyber/inneractive/sdk/web/t;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/t;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->c:Lcom/fyber/inneractive/sdk/web/t;

    :cond_23
    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_a
    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->c:Lcom/fyber/inneractive/sdk/web/t;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->b:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->a:Landroid/webkit/WebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    return-void
.end method
