###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils.b (com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils$b;
.super Landroid/content/BroadcastReceiver;
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

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p1, "get_broadcast_push"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->nativeSendPNData(Ljava/lang/String;)V

    return-void
.end method
