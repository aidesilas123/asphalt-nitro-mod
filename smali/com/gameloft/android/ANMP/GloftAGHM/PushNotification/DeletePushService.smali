###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.DeletePushService (com.gameloft.android.ANMP.GloftAGHM.PushNotification.DeletePushService)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/DeletePushService;
.super Landroid/app/IntentService;
.source "DeletePushService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "hello"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->LaunchPNClearStack(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
