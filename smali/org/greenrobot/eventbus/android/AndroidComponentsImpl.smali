###### Class org.greenrobot.eventbus.android.AndroidComponentsImpl (org.greenrobot.eventbus.android.AndroidComponentsImpl)
.class public Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;
.super Lorg/greenrobot/eventbus/android/AndroidComponents;
.source "AndroidComponentsImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lorg/greenrobot/eventbus/android/a;

    const-string v1, "EventBus"

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/android/a;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/greenrobot/eventbus/android/b;

    invoke-direct {v1}, Lorg/greenrobot/eventbus/android/b;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/greenrobot/eventbus/android/AndroidComponents;-><init>(Lorg/greenrobot/eventbus/Logger;Lorg/greenrobot/eventbus/f;)V

    return-void
.end method
