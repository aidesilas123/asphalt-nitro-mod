###### Class com.mbridge.msdk.dycreator.viewmodel.MBSplashViewVModel (com.mbridge.msdk.dycreator.viewmodel.MBSplashViewVModel)
.class public Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;
.super Ljava/lang/Object;
.source "MBSplashViewVModel.java"

# interfaces
.implements Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;


# instance fields
.field private a:Lcom/mbridge/msdk/dycreator/g/d;

.field private b:Lcom/mbridge/msdk/dycreator/g/c;

.field private c:Lcom/mbridge/msdk/dycreator/g/f;

.field private d:Lcom/mbridge/msdk/dycreator/g/h;

.field private e:Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;

.field private f:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/dycreator/wrapper/DyOption;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->f:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object p1

    goto :goto_18

    :cond_16
    const-string p1, ""

    :goto_18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->getDefault()Lcom/mbridge/msdk/dycreator/bus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->register(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2d

    :cond_26
    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->getDefault()Lcom/mbridge/msdk/dycreator/bus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->register(Ljava/lang/Object;)V

    :goto_2d
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->e:Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;

    if-eqz v0, :cond_79

    if-eqz p1, :cond_79

    sget-object v0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel$1;->a:[I

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;->geteAction()Lcom/mbridge/msdk/dycreator/listener/action/EAction;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    goto :goto_74

    :cond_19
    :try_start_19
    const-string v0, ""

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;->getBaseViewData()Lcom/mbridge/msdk/dycreator/f/a/a;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;->getBaseViewData()Lcom/mbridge/msdk/dycreator/f/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/mbridge/msdk/dycreator/f/a/a;->getBindData()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;->getBaseViewData()Lcom/mbridge/msdk/dycreator/f/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/f/a/a;->getBindData()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    :cond_37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->getDefault()Lcom/mbridge/msdk/dycreator/bus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->unregister(Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/dycreator/binding/b;->a()Lcom/mbridge/msdk/dycreator/binding/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/binding/b;->b()V

    goto :goto_74

    :cond_4c
    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->getDefault()Lcom/mbridge/msdk/dycreator/bus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/mbridge/msdk/dycreator/binding/b;->a()Lcom/mbridge/msdk/dycreator/binding/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/binding/b;->b()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_5a} :catch_5b

    goto :goto_74

    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->getDefault()Lcom/mbridge/msdk/dycreator/bus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->getDefault()Lcom/mbridge/msdk/dycreator/bus/EventBus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->release()V

    invoke-static {}, Lcom/mbridge/msdk/dycreator/binding/b;->a()Lcom/mbridge/msdk/dycreator/binding/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/binding/b;->b()V

    :goto_74
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->e:Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;->viewClicked(Lcom/mbridge/msdk/dycreator/binding/response/base/BaseRespData;)V

    :cond_79
    return-void
.end method

.method public setClickSubject(Lcom/mbridge/msdk/dycreator/g/c;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->b:Lcom/mbridge/msdk/dycreator/g/c;

    :cond_4
    return-void
.end method

.method public setConcreteSubject(Lcom/mbridge/msdk/dycreator/g/d;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->a:Lcom/mbridge/msdk/dycreator/g/d;

    :cond_4
    return-void
.end method

.method public setDynamicViewBackListener(Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->e:Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;

    :cond_4
    return-void
.end method

.method public setEffectSubject(Lcom/mbridge/msdk/dycreator/g/f;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->c:Lcom/mbridge/msdk/dycreator/g/f;

    :cond_4
    return-void
.end method

.method public setModelDataAndBind()V
    .registers 5

    new-instance v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->f:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;-><init>(Lcom/mbridge/msdk/dycreator/wrapper/DyOption;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_65

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->f:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getAdCall()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setAdClickText(Ljava/lang/String;)V

    :cond_22
    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->f:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    invoke-virtual {v2}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->isCanSkip()Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "mbridge_splash_count_time_can_skip"

    goto :goto_2f

    :cond_2d
    const-string v2, "mbridge_splash_count_time_can_skip_not"

    :goto_2f
    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setCountDownText(Ljava/lang/String;)V

    :cond_40
    const-string v2, "mbridge_splash_notice"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setNoticeImage(I)V

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/w;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "\u5e7f\u544a"

    goto :goto_62

    :cond_60
    const-string v1, "AD"

    :goto_62
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setLogoText(Ljava/lang/String;)V

    :cond_65
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->a:Lcom/mbridge/msdk/dycreator/g/d;

    if-eqz v1, :cond_6c

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/dycreator/g/d;->a(Ljava/lang/Object;)V

    :cond_6c
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->b:Lcom/mbridge/msdk/dycreator/g/c;

    if-eqz v1, :cond_73

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/dycreator/g/c;->a(Ljava/lang/Object;)V

    :cond_73
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->c:Lcom/mbridge/msdk/dycreator/g/f;

    if-eqz v1, :cond_7a

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/dycreator/g/f;->a(Ljava/lang/Object;)V

    :cond_7a
    return-void
.end method

.method public setReportSubject(Lcom/mbridge/msdk/dycreator/g/h;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;->d:Lcom/mbridge/msdk/dycreator/g/h;

    :cond_4
    return-void
.end method

###### Class com.mbridge.msdk.dycreator.viewmodel.MBSplashViewVModel.AnonymousClass1 (com.mbridge.msdk.dycreator.viewmodel.MBSplashViewVModel$1)
.class synthetic Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel$1;
.super Ljava/lang/Object;
.source "MBSplashViewVModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/mbridge/msdk/dycreator/listener/action/EAction;->values()[Lcom/mbridge/msdk/dycreator/listener/action/EAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel$1;->a:[I

    :try_start_9
    sget-object v1, Lcom/mbridge/msdk/dycreator/listener/action/EAction;->DOWNLOAD:Lcom/mbridge/msdk/dycreator/listener/action/EAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/mbridge/msdk/dycreator/viewmodel/MBSplashViewVModel$1;->a:[I

    sget-object v1, Lcom/mbridge/msdk/dycreator/listener/action/EAction;->CLOSE:Lcom/mbridge/msdk/dycreator/listener/action/EAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
