###### Class com.mbridge.msdk.foundation.tools.p.AnonymousClass1 (com.mbridge.msdk.foundation.tools.p$1)
.class final Lcom/mbridge/msdk/foundation/tools/p$1;
.super Ljava/lang/Object;
.source "LimitExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/tools/p;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/mbridge/msdk/foundation/tools/p;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/tools/p;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/p$1;->b:Lcom/mbridge/msdk/foundation/tools/p;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/tools/p$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/p$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/p$1;->b:Lcom/mbridge/msdk/foundation/tools/p;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/p;->a(Lcom/mbridge/msdk/foundation/tools/p;)V

    goto :goto_1c

    :catchall_b
    move-exception v0

    goto :goto_1d

    :catch_d
    move-exception v0

    :try_start_e
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "LimitExecutor"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_b

    goto :goto_5

    :goto_1c
    return-void

    :goto_1d
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/p$1;->b:Lcom/mbridge/msdk/foundation/tools/p;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/p;->a(Lcom/mbridge/msdk/foundation/tools/p;)V

    throw v0
.end method
