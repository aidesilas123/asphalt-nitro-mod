###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.NetworkStateReceiver (com.gameloft.android.ANMP.GloftAGHM.GLUtils.NetworkStateReceiver)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static native setConnectionType(I)V
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    sget-boolean p1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/NetworkStateReceiver;->a:Z

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->CheckConnectionType()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/NetworkStateReceiver;->setConnectionType(I)V

    :cond_b
    return-void
.end method
