###### Class org.greenrobot.eventbus.android.b (org.greenrobot.eventbus.android.b)
.class public Lorg/greenrobot/eventbus/android/b;
.super Ljava/lang/Object;
.source "DefaultAndroidMainThreadSupport.java"

# interfaces
.implements Lorg/greenrobot/eventbus/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/greenrobot/eventbus/EventBus;)Lorg/greenrobot/eventbus/j;
    .registers 5

    new-instance v0, Lorg/greenrobot/eventbus/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p1, v1, v2}, Lorg/greenrobot/eventbus/e;-><init>(Lorg/greenrobot/eventbus/EventBus;Landroid/os/Looper;I)V

    return-object v0
.end method

.method public b()Z
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
