###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils.a (com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils$a;
.super Ljava/lang/Thread;
.source "SimplifiedAndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->Init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetIrisService(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method
