###### Class org.greenrobot.eventbus.EventBus.a (org.greenrobot.eventbus.EventBus$a)
.class Lorg/greenrobot/eventbus/EventBus$a;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/greenrobot/eventbus/EventBus$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/greenrobot/eventbus/EventBus;


# direct methods
.method constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .registers 2

    iput-object p1, p0, Lorg/greenrobot/eventbus/EventBus$a;->a:Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lorg/greenrobot/eventbus/EventBus$c;
    .registers 2

    new-instance v0, Lorg/greenrobot/eventbus/EventBus$c;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBus$c;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/greenrobot/eventbus/EventBus$a;->a()Lorg/greenrobot/eventbus/EventBus$c;

    move-result-object v0

    return-object v0
.end method
