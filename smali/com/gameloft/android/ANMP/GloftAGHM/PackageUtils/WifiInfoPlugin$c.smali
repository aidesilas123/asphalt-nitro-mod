###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.WifiInfoPlugin.c (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.WifiInfoPlugin$c)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;
.super Landroid/content/BroadcastReceiver;
.source "WifiInfoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c$a;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;)V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$500()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iget-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;->a:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
