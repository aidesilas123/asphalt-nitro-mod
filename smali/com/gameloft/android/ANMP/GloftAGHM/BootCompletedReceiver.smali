###### Class com.gameloft.android.ANMP.GloftAGHM.BootCompletedReceiver (com.gameloft.android.ANMP.GloftAGHM.BootCompletedReceiver)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    :try_start_c
    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getInjectedIGP(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getInjectedSerialKey(Landroid/content/Context;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method
