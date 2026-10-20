###### Class com.mbridge.msdk.dycreator.viewmodel.MBCommonViewVModel (com.mbridge.msdk.dycreator.viewmodel.MBCommonViewVModel)
.class public Lcom/mbridge/msdk/dycreator/viewmodel/MBCommonViewVModel;
.super Ljava/lang/Object;
.source "MBCommonViewVModel.java"

# interfaces
.implements Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;


# instance fields
.field private a:Lcom/mbridge/msdk/dycreator/g/d;

.field private b:Lcom/mbridge/msdk/dycreator/g/c;

.field private c:Lcom/mbridge/msdk/dycreator/g/f;

.field private d:Lcom/mbridge/msdk/dycreator/g/h;

.field private e:Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->getDefault()Lcom/mbridge/msdk/dycreator/bus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onEventMainThread(Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBCommonViewVModel;->e:Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;->viewClicked(Lcom/mbridge/msdk/dycreator/binding/response/base/BaseRespData;)V

    :cond_7
    return-void
.end method

.method public setClickSubject(Lcom/mbridge/msdk/dycreator/g/c;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBCommonViewVModel;->b:Lcom/mbridge/msdk/dycreator/g/c;

    :cond_4
    return-void
.end method

.method public setConcreteSubject(Lcom/mbridge/msdk/dycreator/g/d;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBCommonViewVModel;->a:Lcom/mbridge/msdk/dycreator/g/d;

    :cond_4
    return-void
.end method

.method public setDynamicViewBackListener(Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBCommonViewVModel;->e:Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;

    :cond_4
    return-void
.end method

.method public setEffectSubject(Lcom/mbridge/msdk/dycreator/g/f;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBCommonViewVModel;->c:Lcom/mbridge/msdk/dycreator/g/f;

    :cond_4
    return-void
.end method

.method public setModelDataAndBind()V
    .registers 1

    return-void
.end method

.method public setReportSubject(Lcom/mbridge/msdk/dycreator/g/h;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBCommonViewVModel;->d:Lcom/mbridge/msdk/dycreator/g/h;

    :cond_4
    return-void
.end method
