###### Class com.mbridge.msdk.foundation.tools.g.AnonymousClass1 (com.mbridge.msdk.foundation.tools.g$1)
.class final Lcom/mbridge/msdk/foundation/tools/g$1;
.super Ljava/lang/Object;
.source "DomainSameDiTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/tools/g;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/g$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const-string v0, "DomainSameDiTool"

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_device_id"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->g()Z

    move-result v1

    if-eqz v1, :cond_86

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_16
    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/tools/g$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/g;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/g;->b(I)I

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/tools/g$1;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/g;->f()I

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/mbridge/msdk/foundation/tools/g;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_4b
    .catchall {:try_start_16 .. :try_end_41} :catchall_42

    goto :goto_86

    :catchall_42
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86

    :catch_4b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mbridge/msdk/foundation/tools/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_53
    new-instance v3, Lcom/mbridge/msdk/foundation/tools/b;

    invoke-direct {v3}, Lcom/mbridge/msdk/foundation/tools/b;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/tools/g$1;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/foundation/tools/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/tools/b$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/tools/b$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/g;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/tools/b$a;->b()Z

    move-result v4

    if-eqz v4, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v1, 0x0

    :goto_6d
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/g;->b(I)I

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/g$1;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/tools/b$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/g;->f()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_7d} :catch_7e

    goto :goto_86

    :catch_7e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    :goto_86
    return-void
.end method
