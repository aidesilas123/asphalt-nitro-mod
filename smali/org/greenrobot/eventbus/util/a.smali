###### Class org.greenrobot.eventbus.util.a (org.greenrobot.eventbus.util.a)
.class public Lorg/greenrobot/eventbus/util/a;
.super Ljava/lang/Object;
.source "ThrowableFailureEvent.java"


# instance fields
.field protected final a:Ljava/lang/Throwable;

.field protected final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/util/a;->a:Ljava/lang/Throwable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/greenrobot/eventbus/util/a;->b:Z

    return-void
.end method
