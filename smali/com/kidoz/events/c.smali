###### Class com.kidoz.events.c (com.kidoz.events.c)
.class public final Lcom/kidoz/events/c;
.super Ljava/lang/Object;
.source "SDKGeneralEventSignObj.java"


# instance fields
.field private a:Lcom/kidoz/sdk/api/interfaces/SDKEventListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kidoz/sdk/api/interfaces/SDKEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/events/c;->a:Lcom/kidoz/sdk/api/interfaces/SDKEventListener;

    return-void
.end method

.method public onHandleEvent(Lcom/kidoz/sdk/api/general/EventMessage;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/k;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/events/c;->a:Lcom/kidoz/sdk/api/interfaces/SDKEventListener;

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/kidoz/events/c$a;->a:[I

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_35

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1d

    goto :goto_3a

    :cond_1d
    iget-object p1, p0, Lcom/kidoz/events/c;->a:Lcom/kidoz/sdk/api/interfaces/SDKEventListener;

    const-string v0, "SDK init failed: Validation exception."

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/interfaces/SDKEventListener;->onInitError(Ljava/lang/String;)V

    goto :goto_3a

    :cond_25
    iget-object p1, p0, Lcom/kidoz/events/c;->a:Lcom/kidoz/sdk/api/interfaces/SDKEventListener;

    const-string v0, "SDK init failed: Style Parser Error."

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/interfaces/SDKEventListener;->onInitError(Ljava/lang/String;)V

    goto :goto_3a

    :cond_2d
    iget-object p1, p0, Lcom/kidoz/events/c;->a:Lcom/kidoz/sdk/api/interfaces/SDKEventListener;

    const-string v0, "SDK init failed: No server result."

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/interfaces/SDKEventListener;->onInitError(Ljava/lang/String;)V

    goto :goto_3a

    :cond_35
    iget-object p1, p0, Lcom/kidoz/events/c;->a:Lcom/kidoz/sdk/api/interfaces/SDKEventListener;

    invoke-interface {p1}, Lcom/kidoz/sdk/api/interfaces/SDKEventListener;->onInitSuccess()V

    :cond_3a
    :goto_3a
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    return-void
.end method
