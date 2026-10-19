###### Class org.greenrobot.eventbus.l (org.greenrobot.eventbus.l)
.class public final Lorg/greenrobot/eventbus/l;
.super Ljava/lang/Object;
.source "SubscriberExceptionEvent.java"


# instance fields
.field public final a:Lorg/greenrobot/eventbus/EventBus;

.field public final b:Ljava/lang/Throwable;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/l;->a:Lorg/greenrobot/eventbus/EventBus;

    iput-object p2, p0, Lorg/greenrobot/eventbus/l;->b:Ljava/lang/Throwable;

    iput-object p3, p0, Lorg/greenrobot/eventbus/l;->c:Ljava/lang/Object;

    iput-object p4, p0, Lorg/greenrobot/eventbus/l;->d:Ljava/lang/Object;

    return-void
.end method
