###### Class com.mbridge.msdk.foundation.tools.b (com.mbridge.msdk.foundation.tools.b)
.class public final Lcom/mbridge/msdk/foundation/tools/b;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/tools/b$c;,
        Lcom/mbridge/msdk/foundation/tools/b$b;,
        Lcom/mbridge/msdk/foundation/tools/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/tools/b$a;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_59

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_57

    new-instance v0, Lcom/mbridge/msdk/foundation/tools/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/foundation/tools/b$b;-><init>(Lcom/mbridge/msdk/foundation/tools/b;Lcom/mbridge/msdk/foundation/tools/b$1;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_4f

    :try_start_2d
    new-instance v1, Lcom/mbridge/msdk/foundation/tools/b$c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/tools/b$b;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/mbridge/msdk/foundation/tools/b$c;-><init>(Lcom/mbridge/msdk/foundation/tools/b;Landroid/os/IBinder;)V

    new-instance v3, Lcom/mbridge/msdk/foundation/tools/b$a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/tools/b$c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/tools/b$c;->a(Z)Z

    move-result v1

    invoke-direct {v3, p0, v4, v1}, Lcom/mbridge/msdk/foundation/tools/b$a;-><init>(Lcom/mbridge/msdk/foundation/tools/b;Ljava/lang/String;Z)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_43} :catch_49
    .catchall {:try_start_2d .. :try_end_43} :catchall_47

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v3

    :catchall_47
    move-exception v1

    goto :goto_4b

    :catch_49
    move-exception v1

    :try_start_4a
    throw v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_47

    :goto_4b
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :cond_4f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_57
    move-exception p1

    throw p1

    :cond_59
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from the main thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
