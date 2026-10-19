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

###### Class com.kidoz.sdk.api.interfaces.KidozPlayerEventHelper.AnonymousClass1 (com.kidoz.sdk.api.interfaces.KidozPlayerEventHelper$1)
.class synthetic Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$1;
.super Ljava/lang/Object;
.source "KidozPlayerEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->values()[Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->PLAYER_OPEN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->PLAYER_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->MAXIMIZED_PLAYER_OPEN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->MAXIMIZED_PLAYER_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class com.kidoz.sdk.api.interfaces.KidozPlayerEventHelper.IPlayerListener (com.kidoz.sdk.api.interfaces.KidozPlayerEventHelper$IPlayerListener)
.class public interface abstract Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;
.super Ljava/lang/Object;
.source "KidozPlayerEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPlayerListener"
.end annotation


# virtual methods
.method public abstract onClose(Z)V
.end method

.method public abstract onOpen(Z)V
.end method
