###### Class com.mbridge.msdk.video.module.MBridgeVideoEndCoverView (com.mbridge.msdk.video.module.MBridgeVideoEndCoverView)
.class public Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;
.super Lcom/mbridge/msdk/video/module/MBridgeBaseView;
.source "MBridgeVideoEndCoverView.java"


# instance fields
.field private final n:Ljava/lang/String;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Lcom/mbridge/msdk/video/signal/factory/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Landroid/content/Context;)V

    const-string p1, "MBridgeVideoEndCoverView"

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "MBridgeVideoEndCoverView"

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->n:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .registers 3

    if-eqz p1, :cond_55

    :try_start_2
    const-string v0, "mbridge_vec_iv_icon"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->p:Landroid/widget/ImageView;

    const-string v0, "mbridge_vec_iv_close"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->q:Landroid/widget/ImageView;

    const-string v0, "mbridge_vec_tv_title"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->r:Landroid/widget/TextView;

    const-string v0, "mbridge_vec_tv_desc"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->s:Landroid/widget/TextView;

    const-string v0, "mbridge_vec_btn"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->t:Landroid/widget/TextView;
    :try_end_48
    .catchall {:try_start_2 .. :try_end_48} :catchall_49

    goto :goto_55

    :catchall_49
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeVideoEndCoverView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_55
    :goto_55
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected final a()V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_7e

    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_64

    :try_start_b
    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->f:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->g:F

    invoke-static {v3, v4}, Lcom/mbridge/msdk/foundation/tools/af;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->h:F

    invoke-static {v3, v4}, Lcom/mbridge/msdk/foundation/tools/af;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_37} :catch_62

    :try_start_37
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->d:I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v1

    :try_start_49
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4c
    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->j:Ljava/lang/String;

    iget v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->d:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/af;->e(Landroid/content/Context;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_61} :catch_62

    goto :goto_71

    :catch_62
    move-exception v1

    goto :goto_68

    :catch_64
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_68
    :try_start_68
    const-string v3, "MBridgeVideoEndCoverView"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_76} :catch_7e

    :try_start_76
    sget-object v0, Lcom/mbridge/msdk/foundation/same/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_7b} :catch_7c

    goto :goto_85

    :catch_7c
    move-exception v0

    goto :goto_82

    :catch_7e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_82
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_85
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Lcom/mbridge/msdk/video/module/a/a;

    const/16 v2, 0x69

    invoke-interface {v0, v2, v1}, Lcom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method protected final c()V
    .registers 3

    invoke-super {p0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->c()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->q:Landroid/widget/ImageView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$1;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$1;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->p:Landroid/widget/ImageView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$2;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$2;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->t:Landroid/widget/TextView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$3;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$3;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    const-string p1, "mbridge_reward_videoend_cover"

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findLayout(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_22

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->c:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->o:Landroid/view/View;

    if-eqz p1, :cond_22

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->a(Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->f:Z

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->o:Landroid/view/View;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->c()V

    :cond_22
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->h:F

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSelfConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->d:I

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->o:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->o:Landroid/view/View;

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->init(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->u:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V

    goto :goto_3b

    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->o:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2e
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->o:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->o:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->a(Landroid/view/View;)Z

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->c()V

    :goto_3b
    return-void
.end method

.method public preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V
    .registers 5

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->u:Lcom/mbridge/msdk/video/signal/factory/b;

    :try_start_2
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_72

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->f:Z

    if-eqz v0, :cond_72

    if-eqz p1, :cond_72

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->p:Landroid/widget/ImageView;

    if-eqz p1, :cond_40

    new-instance v0, Lcom/mbridge/msdk/video/module/a/a/j;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/af;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/mbridge/msdk/video/module/a/a/j;-><init>(Landroid/widget/ImageView;I)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/c/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/c/b;

    move-result-object p1

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/c/c;)V

    :cond_40
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->r:Landroid/widget/TextView;

    if-eqz p1, :cond_4d

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4d
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_5a

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getAdCall()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5a
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->s:Landroid/widget/TextView;

    if-eqz p1, :cond_72

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getAppDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_67
    .catchall {:try_start_2 .. :try_end_67} :catchall_68

    goto :goto_72

    :catchall_68
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeVideoEndCoverView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void
.end method

###### Class com.mbridge.msdk.video.module.MBridgeVideoEndCoverView.AnonymousClass1 (com.mbridge.msdk.video.module.MBridgeVideoEndCoverView$1)
.class final Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$1;
.super Ljava/lang/Object;
.source "MBridgeVideoEndCoverView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$1;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$1;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Lcom/mbridge/msdk/video/module/a/a;

    const/16 v0, 0x68

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

###### Class com.mbridge.msdk.video.module.MBridgeVideoEndCoverView.AnonymousClass2 (com.mbridge.msdk.video.module.MBridgeVideoEndCoverView$2)
.class final Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$2;
.super Ljava/lang/Object;
.source "MBridgeVideoEndCoverView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$2;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$2;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->a()V

    return-void
.end method

###### Class com.mbridge.msdk.video.module.MBridgeVideoEndCoverView.AnonymousClass3 (com.mbridge.msdk.video.module.MBridgeVideoEndCoverView$3)
.class final Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$3;
.super Ljava/lang/Object;
.source "MBridgeVideoEndCoverView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$3;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView$3;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoEndCoverView;->a()V

    return-void
.end method
