###### Class com.mbridge.msdk.dycreator.binding.b (com.mbridge.msdk.dycreator.binding.b)
.class public final Lcom/mbridge/msdk/dycreator/binding/b;
.super Ljava/lang/Object;
.source "MBDataBinding.java"


# static fields
.field private static volatile a:Lcom/mbridge/msdk/dycreator/binding/b;


# instance fields
.field private b:Lcom/mbridge/msdk/dycreator/g/d;

.field private c:Lcom/mbridge/msdk/dycreator/g/c;

.field private d:Lcom/mbridge/msdk/dycreator/g/f;

.field private e:Lcom/mbridge/msdk/dycreator/g/h;

.field private f:Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;

.field private g:Lcom/mbridge/msdk/shake/b;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/dycreator/d/a;->a()Lcom/mbridge/msdk/dycreator/d/a;

    move-result-object v0

    sget-object v1, Lcom/mbridge/msdk/dycreator/d/a$a;->a:Lcom/mbridge/msdk/dycreator/d/a$a;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/d/a;->a(Lcom/mbridge/msdk/dycreator/d/a$a;)Lcom/mbridge/msdk/dycreator/g/a;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/dycreator/g/d;

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->b:Lcom/mbridge/msdk/dycreator/g/d;

    invoke-static {}, Lcom/mbridge/msdk/dycreator/d/a;->a()Lcom/mbridge/msdk/dycreator/d/a;

    move-result-object v0

    sget-object v1, Lcom/mbridge/msdk/dycreator/d/a$a;->b:Lcom/mbridge/msdk/dycreator/d/a$a;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/d/a;->a(Lcom/mbridge/msdk/dycreator/d/a$a;)Lcom/mbridge/msdk/dycreator/g/a;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/dycreator/g/c;

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->c:Lcom/mbridge/msdk/dycreator/g/c;

    invoke-static {}, Lcom/mbridge/msdk/dycreator/d/a;->a()Lcom/mbridge/msdk/dycreator/d/a;

    move-result-object v0

    sget-object v1, Lcom/mbridge/msdk/dycreator/d/a$a;->c:Lcom/mbridge/msdk/dycreator/d/a$a;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/d/a;->a(Lcom/mbridge/msdk/dycreator/d/a$a;)Lcom/mbridge/msdk/dycreator/g/a;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/dycreator/g/f;

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->d:Lcom/mbridge/msdk/dycreator/g/f;

    invoke-static {}, Lcom/mbridge/msdk/dycreator/d/a;->a()Lcom/mbridge/msdk/dycreator/d/a;

    move-result-object v0

    sget-object v1, Lcom/mbridge/msdk/dycreator/d/a$a;->d:Lcom/mbridge/msdk/dycreator/d/a$a;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/d/a;->a(Lcom/mbridge/msdk/dycreator/d/a$a;)Lcom/mbridge/msdk/dycreator/g/a;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/dycreator/g/h;

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->e:Lcom/mbridge/msdk/dycreator/g/h;

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/dycreator/binding/b;
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/dycreator/binding/b;->a:Lcom/mbridge/msdk/dycreator/binding/b;

    if-nez v0, :cond_17

    const-class v0, Lcom/mbridge/msdk/dycreator/binding/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/mbridge/msdk/dycreator/binding/b;->a:Lcom/mbridge/msdk/dycreator/binding/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/b;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/b;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/dycreator/binding/b;->a:Lcom/mbridge/msdk/dycreator/binding/b;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/mbridge/msdk/dycreator/binding/b;->a:Lcom/mbridge/msdk/dycreator/binding/b;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;)Lcom/mbridge/msdk/shake/b;
    .registers 11

    if-eqz p2, :cond_32

    :try_start_2
    invoke-virtual {p2}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->getDyOption()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->isShakeVisible()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->g:Lcom/mbridge/msdk/shake/b;

    if-nez v1, :cond_32

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/b$7;

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getShakeStrenght()I

    move-result v4

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getShakeTime()I

    move-result v0

    mul-int/lit16 v5, v0, 0x3e8

    move-object v2, v1

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/dycreator/binding/b$7;-><init>(Lcom/mbridge/msdk/dycreator/binding/b;IILandroid/view/View;Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;)V

    iput-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->g:Lcom/mbridge/msdk/shake/b;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    goto :goto_32

    :catch_28
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBDataBinding"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->g:Lcom/mbridge/msdk/shake/b;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/dycreator/binding/b;)Lcom/mbridge/msdk/shake/b;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->g:Lcom/mbridge/msdk/shake/b;

    return-object p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/dycreator/binding/b;Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    instance-of p0, p2, Lcom/mbridge/msdk/dycreator/f/a/a;

    if-eqz p0, :cond_12

    new-instance p0, Lcom/mbridge/msdk/dycreator/binding/a;

    check-cast p2, Lcom/mbridge/msdk/dycreator/f/a/a;

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/dycreator/binding/a;-><init>(Lcom/mbridge/msdk/dycreator/f/a/a;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/dycreator/binding/b;Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_2a

    if-nez p2, :cond_5

    goto :goto_2a

    :cond_5
    invoke-interface {p1}, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;->getReportDes()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    :try_start_f
    instance-of v0, p2, Lcom/mbridge/msdk/dycreator/f/a/a;

    if-eqz v0, :cond_2a

    move-object v0, p2

    check-cast v0, Lcom/mbridge/msdk/dycreator/f/a/a;

    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/f/a/a;->getBindData()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_2a

    check-cast p2, Lcom/mbridge/msdk/dycreator/f/a/a;

    invoke-interface {p2}, Lcom/mbridge/msdk/dycreator/f/a/a;->getBindData()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;->setDynamicReport(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/dycreator/binding/b;Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;Ljava/lang/Object;)V
    .registers 16

    if-eqz p1, :cond_129

    if-nez p2, :cond_6

    goto/16 :goto_129

    :cond_6
    invoke-interface {p1}, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;->getEffectDes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_129

    :try_start_10
    instance-of v1, p1, Landroid/view/ViewGroup;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_125

    const/16 v2, 0x8

    const-string v3, "anim"

    const-string v4, "visible"

    const/4 v5, 0x0

    if-eqz v1, :cond_95

    :try_start_1b
    check-cast p1, Landroid/view/ViewGroup;

    check-cast p2, Lcom/mbridge/msdk/dycreator/f/a/a;

    if-eqz v0, :cond_129

    const-string v1, "wobble"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    instance-of v1, p1, Lcom/mbridge/msdk/dycreator/baseview/MBSplashShakeView;

    if-eqz v1, :cond_60

    invoke-interface {p2}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->isShakeVisible()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->g:Lcom/mbridge/msdk/shake/b;

    if-eqz v1, :cond_44

    invoke-static {}, Lcom/mbridge/msdk/shake/a;->a()Lcom/mbridge/msdk/shake/a;

    move-result-object v1

    iget-object v6, p0, Lcom/mbridge/msdk/dycreator/binding/b;->g:Lcom/mbridge/msdk/shake/b;

    invoke-virtual {v1, v6}, Lcom/mbridge/msdk/shake/a;->b(Landroid/hardware/SensorEventListener;)V

    :cond_44
    invoke-static {}, Lcom/mbridge/msdk/shake/a;->a()Lcom/mbridge/msdk/shake/a;

    move-result-object v1

    move-object v6, p2

    check-cast v6, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    invoke-direct {p0, p1, v6}, Lcom/mbridge/msdk/dycreator/binding/b;->a(Landroid/view/View;Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;)Lcom/mbridge/msdk/shake/b;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/shake/a;->a(Landroid/hardware/SensorEventListener;)V

    goto :goto_60

    :cond_53
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->g:Lcom/mbridge/msdk/shake/b;

    if-eqz v1, :cond_60

    invoke-static {}, Lcom/mbridge/msdk/shake/a;->a()Lcom/mbridge/msdk/shake/a;

    move-result-object v1

    iget-object p0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->g:Lcom/mbridge/msdk/shake/b;

    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/shake/a;->b(Landroid/hardware/SensorEventListener;)V

    :cond_60
    :goto_60
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    instance-of p0, p1, Lcom/mbridge/msdk/dycreator/baseview/MBApkInfoView;

    if-eqz p0, :cond_90

    invoke-interface {p2}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->isApkInfoVisible()Z

    move-result p0

    if-eqz p0, :cond_8d

    instance-of p0, p2, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    if-eqz p0, :cond_88

    check-cast p2, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    invoke-virtual {p2}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->getAppInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_88

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_90

    :cond_88
    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_90

    :cond_8d
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_90
    :goto_90
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_129

    :cond_95
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_129

    check-cast p1, Landroid/view/View;

    if-eqz v0, :cond_129

    move-object v1, p2

    check-cast v1, Lcom/mbridge/msdk/dycreator/f/a/a;

    const-string v6, "countdown"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ec

    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_ec

    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mbridge/msdk/foundation/tools/w;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object v6

    const/4 v7, 0x5

    if-eqz v6, :cond_d0

    invoke-virtual {v6}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->isCanSkip()Z

    move-result v7

    invoke-virtual {v6}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getCountDownTime()I

    move-result v6

    move v8, v7

    move v7, v6

    goto :goto_d1

    :cond_d0
    const/4 v8, 0x0

    :goto_d1
    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v8, v7, v9, v10}, Lcom/mbridge/msdk/dycreator/e/d;->a(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast p2, Lcom/mbridge/msdk/dycreator/f/a/a;

    invoke-interface {p2}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object p2

    new-instance v12, Lcom/mbridge/msdk/dycreator/binding/b$5;

    move-object v6, v12

    move-object v7, p0

    move-object v11, p1

    invoke-direct/range {v6 .. v11}, Lcom/mbridge/msdk/dycreator/binding/b$5;-><init>(Lcom/mbridge/msdk/dycreator/binding/b;ZLjava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p2, v12}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->setDyCountDownListenerWrapper(Lcom/mbridge/msdk/dycreator/listener/DyCountDownListenerWrapper;)V

    :cond_ec
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_129

    instance-of p0, p1, Lcom/mbridge/msdk/dycreator/baseview/MBFeedBack;

    if-eqz p0, :cond_10a

    invoke-static {}, Lcom/mbridge/msdk/foundation/c/b;->a()Lcom/mbridge/msdk/foundation/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/c/b;->b()Z

    move-result p0

    if-eqz p0, :cond_107

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10a

    :cond_107
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_10a
    :goto_10a
    instance-of p0, p1, Lcom/mbridge/msdk/dycreator/baseview/MBLogoTextView;

    if-eqz p0, :cond_129

    invoke-interface {v1}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object p0

    if-eqz p0, :cond_129

    invoke-interface {v1}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->isLogoVisible()Z

    move-result p0

    if-nez p0, :cond_129

    check-cast p1, Lcom/mbridge/msdk/dycreator/baseview/MBLogoTextView;

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_124} :catch_125

    goto :goto_129

    :catch_125
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_129
    :goto_129
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/dycreator/binding/b;Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;Ljava/lang/Object;)V
    .registers 7

    if-eqz p1, :cond_ea

    if-nez p2, :cond_6

    goto/16 :goto_ea

    :cond_6
    invoke-interface {p1}, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;->getBindDataDes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ea

    :try_start_10
    invoke-static {p2, v0}, Lcom/mbridge/msdk/dycreator/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    goto/16 :goto_ea

    :cond_18
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_8c

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p2, Lcom/mbridge/msdk/dycreator/f/a/a;

    instance-of p0, p1, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p0, :cond_5d

    invoke-interface {p2}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object p0

    if-eqz p0, :cond_5a

    invoke-interface {p2}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->isClickButtonVisible()Z

    move-result p0

    if-eqz p0, :cond_5a

    invoke-interface {p2}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->isShakeVisible()Z

    move-result p0

    if-eqz p0, :cond_42

    goto :goto_5a

    :cond_42
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5d

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object p0, p1

    check-cast p0, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;->initView(Ljava/lang/String;)V

    goto :goto_5d

    :cond_5a
    :goto_5a
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5d
    :goto_5d
    instance-of p0, p1, Lcom/mbridge/msdk/dycreator/baseview/MBSplashShakeView;

    if-eqz p0, :cond_ea

    invoke-interface {p2}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object p0

    if-eqz p0, :cond_88

    invoke-interface {p2}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->isShakeVisible()Z

    move-result p0

    if-eqz p0, :cond_88

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_ea

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    check-cast p1, Lcom/mbridge/msdk/dycreator/baseview/MBSplashShakeView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/dycreator/baseview/MBSplashShakeView;->initView(Ljava/lang/String;)V

    goto :goto_ea

    :cond_88
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_ea

    :cond_8c
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_ea

    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/mbridge/msdk/dycreator/f/a/a;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_94} :catch_e6

    :try_start_94
    instance-of v1, p1, Landroid/widget/TextView;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_96} :catch_e1

    if-eqz v1, :cond_af

    :try_start_98
    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "\\n"

    const-string v0, "\n"

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a9} :catch_aa

    goto :goto_ea

    :catch_aa
    move-exception p0

    :try_start_ab
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ea

    :cond_af
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_ea

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_c4

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c4
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_ea

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/c/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/c/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/mbridge/msdk/dycreator/binding/b$6;

    invoke-direct {v2, p0, p2, p1}, Lcom/mbridge/msdk/dycreator/binding/b$6;-><init>(Lcom/mbridge/msdk/dycreator/binding/b;Lcom/mbridge/msdk/dycreator/f/a/a;Landroid/view/View;)V

    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/c/c;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_e0} :catch_e1

    goto :goto_ea

    :catch_e1
    move-exception p0

    :try_start_e2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_e6

    goto :goto_ea

    :catch_e6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ea
    :goto_ea
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/mbridge/msdk/dycreator/binding/b$1;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/dycreator/binding/b$1;-><init>(Lcom/mbridge/msdk/dycreator/binding/b;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->e:Lcom/mbridge/msdk/dycreator/g/h;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v0, p1}, Lcom/mbridge/msdk/dycreator/g/a;->a(Ljava/lang/Object;I)V

    :cond_10
    return-void
.end method

.method public final a(Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->f:Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;

    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->c:Lcom/mbridge/msdk/dycreator/g/c;

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;->setClickSubject(Lcom/mbridge/msdk/dycreator/g/c;)V

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->f:Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->b:Lcom/mbridge/msdk/dycreator/g/d;

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;->setConcreteSubject(Lcom/mbridge/msdk/dycreator/g/d;)V

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->f:Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->d:Lcom/mbridge/msdk/dycreator/g/f;

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;->setEffectSubject(Lcom/mbridge/msdk/dycreator/g/f;)V

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->f:Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->e:Lcom/mbridge/msdk/dycreator/g/h;

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;->setReportSubject(Lcom/mbridge/msdk/dycreator/g/h;)V

    :cond_1e
    return-void
.end method

.method public final declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->c:Lcom/mbridge/msdk/dycreator/g/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/g/a;->a()V

    :cond_8
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->b:Lcom/mbridge/msdk/dycreator/g/d;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/g/a;->a()V

    :cond_f
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->d:Lcom/mbridge/msdk/dycreator/g/f;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/g/a;->a()V

    :cond_16
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->f:Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iput-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->f:Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;

    :cond_1d
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b;->g:Lcom/mbridge/msdk/shake/b;

    if-eqz v0, :cond_23

    iput-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->g:Lcom/mbridge/msdk/shake/b;

    :cond_23
    sget-object v0, Lcom/mbridge/msdk/dycreator/binding/b;->a:Lcom/mbridge/msdk/dycreator/binding/b;

    if-eqz v0, :cond_29

    sput-object v1, Lcom/mbridge/msdk/dycreator/binding/b;->a:Lcom/mbridge/msdk/dycreator/binding/b;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/mbridge/msdk/dycreator/binding/b$2;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/dycreator/binding/b$2;-><init>(Lcom/mbridge/msdk/dycreator/binding/b;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->d:Lcom/mbridge/msdk/dycreator/g/f;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v0, p1}, Lcom/mbridge/msdk/dycreator/g/a;->a(Ljava/lang/Object;I)V

    :cond_10
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/mbridge/msdk/dycreator/binding/b$3;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/dycreator/binding/b$3;-><init>(Lcom/mbridge/msdk/dycreator/binding/b;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->b:Lcom/mbridge/msdk/dycreator/g/d;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v0, p1}, Lcom/mbridge/msdk/dycreator/g/a;->a(Ljava/lang/Object;I)V

    :cond_10
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_4e

    :try_start_2
    instance-of v0, p1, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    if-eqz v0, :cond_4e

    move-object v0, p1

    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;->getActionDes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v0, Lcom/mbridge/msdk/dycreator/binding/b$4;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/dycreator/binding/b$4;-><init>(Lcom/mbridge/msdk/dycreator/binding/b;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/b;->c:Lcom/mbridge/msdk/dycreator/g/c;

    if-eqz v1, :cond_4e

    invoke-virtual {v1, v0, p1}, Lcom/mbridge/msdk/dycreator/g/a;->a(Ljava/lang/Object;I)V

    goto :goto_4e

    :cond_2c
    const-string p1, "move"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_4e

    :cond_35
    const-string p1, "long_click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_4e

    :cond_3e
    const-string p1, "wobble"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_43} :catch_44

    goto :goto_4e

    :catch_44
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBDataBinding"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method
