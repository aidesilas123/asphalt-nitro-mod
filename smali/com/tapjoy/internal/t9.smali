###### Class com.tapjoy.internal.t9 (com.tapjoy.internal.t9)
.class public final Lcom/tapjoy/internal/t9;
.super Lcom/tapjoy/n;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/tapjoy/n;

.field public final synthetic c:Lcom/tapjoy/o0;


# direct methods
.method public constructor <init>(Lcom/tapjoy/o0;Landroid/content/Context;Lcom/tapjoy/internal/b1;)V
    .registers 4

    iput-object p1, p0, Lcom/tapjoy/internal/t9;->c:Lcom/tapjoy/o0;

    iput-object p2, p0, Lcom/tapjoy/internal/t9;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tapjoy/internal/t9;->b:Lcom/tapjoy/n;

    invoke-direct {p0}, Lcom/tapjoy/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/t9;->b:Lcom/tapjoy/n;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/n;->onConnectFailure(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/internal/t9;->b:Lcom/tapjoy/n;

    invoke-virtual {p1}, Lcom/tapjoy/n;->onConnectFailure()V

    :cond_c
    return-void
.end method

.method public final onConnectSuccess()V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/t9;->c:Lcom/tapjoy/o0;

    new-instance v1, Lcom/tapjoy/p;

    iget-object v2, p0, Lcom/tapjoy/internal/t9;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/p;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/tapjoy/o0;->e:Lcom/tapjoy/p;

    iget-object v0, p0, Lcom/tapjoy/internal/t9;->c:Lcom/tapjoy/o0;

    new-instance v1, Lcom/tapjoy/TapjoyCache;

    iget-object v2, p0, Lcom/tapjoy/internal/t9;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyCache;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    :try_start_18
    iget-object v1, p0, Lcom/tapjoy/internal/t9;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tapjoy/TJEventOptimizer;->init(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1d} :catch_3c
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1d} :catch_2a

    iget-object v0, p0, Lcom/tapjoy/internal/t9;->c:Lcom/tapjoy/o0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/h9;->b:Z

    iget-object v0, p0, Lcom/tapjoy/internal/t9;->b:Lcom/tapjoy/n;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/tapjoy/n;->onConnectSuccess()V

    :cond_29
    return-void

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TapjoyAPI"

    invoke-static {v3, v2}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/t9;->onConnectFailure(ILjava/lang/String;)V

    return-void

    :catch_3c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/t9;->onConnectFailure(ILjava/lang/String;)V

    return-void
.end method
