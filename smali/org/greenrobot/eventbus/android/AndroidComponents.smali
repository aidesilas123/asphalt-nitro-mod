###### Class org.greenrobot.eventbus.android.AndroidComponents (org.greenrobot.eventbus.android.AndroidComponents)
.class public abstract Lorg/greenrobot/eventbus/android/AndroidComponents;
.super Ljava/lang/Object;
.source "AndroidComponents.java"


# static fields
.field private static final a:Lorg/greenrobot/eventbus/android/AndroidComponents;


# instance fields
.field public final b:Lorg/greenrobot/eventbus/Logger;

.field public final c:Lorg/greenrobot/eventbus/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/greenrobot/eventbus/android/AndroidDependenciesDetector;->isAndroidSDKAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lorg/greenrobot/eventbus/android/AndroidDependenciesDetector;->instantiateAndroidComponents()Lorg/greenrobot/eventbus/android/AndroidComponents;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    sput-object v0, Lorg/greenrobot/eventbus/android/AndroidComponents;->a:Lorg/greenrobot/eventbus/android/AndroidComponents;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/eventbus/Logger;Lorg/greenrobot/eventbus/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/android/AndroidComponents;->b:Lorg/greenrobot/eventbus/Logger;

    iput-object p2, p0, Lorg/greenrobot/eventbus/android/AndroidComponents;->c:Lorg/greenrobot/eventbus/f;

    return-void
.end method

.method public static areAvailable()Z
    .registers 1

    sget-object v0, Lorg/greenrobot/eventbus/android/AndroidComponents;->a:Lorg/greenrobot/eventbus/android/AndroidComponents;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static get()Lorg/greenrobot/eventbus/android/AndroidComponents;
    .registers 1

    sget-object v0, Lorg/greenrobot/eventbus/android/AndroidComponents;->a:Lorg/greenrobot/eventbus/android/AndroidComponents;

    return-object v0
.end method
