###### Class com.tapjoy.TapjoyConnectCore.a (com.tapjoy.TapjoyConnectCore$a)
.class public Lcom/tapjoy/TapjoyConnectCore$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnectCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;

.field public final synthetic b:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TapjoyConnectCore;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$a;->b:Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectCore$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "TapjoyConnect"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->c:Lcom/tapjoy/j0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "api/connect/v3.json?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyConnectCore$a;->a:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/tapjoy/j0;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/h0;

    move-result-object v1

    iget-object v1, v1, Lcom/tapjoy/h0;->d:Ljava/lang/String;

    if-eqz v1, :cond_6e

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$a;->b:Lcom/tapjoy/TapjoyConnectCore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_29
    invoke-static {v1}, Lcom/tapjoy/internal/b4;->a(Ljava/lang/String;)Lcom/tapjoy/internal/k0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/internal/b4;->g()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v4}, Lcom/tapjoy/internal/k0;->u()V

    const-string v1, "Successfully sent completed Pay-Per-Action to Tapjoy server."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tapjoy/internal/k0;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3e} :catch_52
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_3e} :catch_49
    .catchall {:try_start_29 .. :try_end_3e} :catchall_47

    sget-object v0, Lcom/tapjoy/internal/l8;->a:Ljava/util/logging/Logger;

    goto :goto_6e

    :cond_41
    :try_start_41
    invoke-virtual {v4}, Lcom/tapjoy/internal/k0;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_52
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_44} :catch_49
    .catchall {:try_start_41 .. :try_end_44} :catchall_47

    sget-object v1, Lcom/tapjoy/internal/l8;->a:Ljava/util/logging/Logger;

    goto :goto_5d

    :catchall_47
    move-exception v0

    goto :goto_6a

    :catch_49
    move-exception v1

    :try_start_4a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :catch_52
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_47

    :goto_5a
    invoke-static {v4}, Lcom/tapjoy/internal/l8;->a(Ljava/io/Closeable;)V

    :goto_5d
    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Completed Pay-Per-Action call failed."

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_6e

    :goto_6a
    invoke-static {v4}, Lcom/tapjoy/internal/l8;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_6e
    :goto_6e
    return-void
.end method
