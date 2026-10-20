###### Class com.kidoz.sdk.api.interfaces.KidozPlayerEventHelper (com.kidoz.sdk.api.interfaces.KidozPlayerEventHelper)
.class public Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;
.super Ljava/lang/Object;
.source "KidozPlayerEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;
    }
.end annotation


# instance fields
.field private iPlayerListener:Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;

.field private mWidgetType:Lcom/kidoz/sdk/api/general/enums/WidgetType;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;Lcom/kidoz/sdk/api/general/enums/WidgetType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;->iPlayerListener:Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;

    iput-object p2, p0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;->mWidgetType:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    return-void
.end method


# virtual methods
.method public onHandleEvent(Lcom/kidoz/sdk/api/general/WidgetEventMessage;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/k;
    .end annotation

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/WidgetEventMessage;->getWidgetType()Lcom/kidoz/sdk/api/general/enums/WidgetType;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;->mWidgetType:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;->iPlayerListener:Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_34

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_28

    goto :goto_3f

    :cond_28
    iget-object p1, p0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;->iPlayerListener:Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;

    invoke-interface {p1, v1}, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;->onClose(Z)V

    goto :goto_3f

    :cond_2e
    iget-object p1, p0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;->iPlayerListener:Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;

    invoke-interface {p1, v1}, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;->onOpen(Z)V

    goto :goto_3f

    :cond_34
    iget-object p1, p0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;->iPlayerListener:Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;->onClose(Z)V

    goto :goto_3f

    :cond_3a
    iget-object p1, p0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;->iPlayerListener:Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;->onOpen(Z)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public register()V
    .registers 2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->o(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public unRegister()V
    .registers 2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method
