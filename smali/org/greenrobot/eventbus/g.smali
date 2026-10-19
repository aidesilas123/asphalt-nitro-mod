###### Class org.greenrobot.eventbus.g (org.greenrobot.eventbus.g)
.class public final Lorg/greenrobot/eventbus/g;
.super Ljava/lang/Object;
.source "NoSubscriberEvent.java"


# instance fields
.field public final a:Lorg/greenrobot/eventbus/EventBus;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/g;->a:Lorg/greenrobot/eventbus/EventBus;

    iput-object p2, p0, Lorg/greenrobot/eventbus/g;->b:Ljava/lang/Object;

    return-void
.end method
