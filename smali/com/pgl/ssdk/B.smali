###### Class com.pgl.ssdk.B (com.pgl.ssdk.B)
.class public Lcom/pgl/ssdk/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pgl/ssdk/D;

.field private final b:Landroid/content/Context;

.field private c:Lcom/pgl/ssdk/A;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/pgl/ssdk/D;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pgl/ssdk/B;->a:Lcom/pgl/ssdk/D;

    iput-object p1, p0, Lcom/pgl/ssdk/B;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    sget v0, Lcom/pgl/ssdk/j;->a:I

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    if-eq v0, v2, :cond_12

    move-object v0, v1

    goto :goto_17

    :cond_12
    const-string v0, "https://ssdk-va.pangle.io/ssdk/sd/token"

    goto :goto_17

    :cond_15
    const-string v0, "https://ssdk-sg.pangle.io/ssdk/sd/token"

    :goto_17
    const/16 v3, 0x12d

    const/16 v4, 0x1f5

    :try_start_1b
    iget-object v5, p0, Lcom/pgl/ssdk/B;->b:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_9c

    array-length v5, v3

    if-gtz v5, :cond_2a

    goto :goto_9c

    :cond_2a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    return-void

    :cond_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?os=android&app_id="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/pgl/ssdk/y;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&did="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pgl/ssdk/ces/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&app_ver="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pgl/ssdk/B;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/ssdk/a;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&platform=android&ver="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1.0.0.3.overseas-rc.4"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mode=1"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pgl/ssdk/A;
    :try_end_75
    .catchall {:try_start_1b .. :try_end_75} :catchall_9f

    const-string v5, "request"

    :try_start_77
    iget-object v6, p0, Lcom/pgl/ssdk/B;->b:Landroid/content/Context;

    invoke-direct {v1, v5, v6, v0, v3}, Lcom/pgl/ssdk/A;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[B)V

    iput-object v1, p0, Lcom/pgl/ssdk/B;->c:Lcom/pgl/ssdk/A;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/pgl/ssdk/B;->c:Lcom/pgl/ssdk/A;

    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/pgl/ssdk/B;->c:Lcom/pgl/ssdk/A;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v5, p0, Lcom/pgl/ssdk/B;->c:Lcom/pgl/ssdk/A;

    iget-object v5, v5, Lcom/pgl/ssdk/A;->h:Landroid/os/Handler$Callback;

    invoke-direct {v1, v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Lcom/pgl/ssdk/A;->g:Landroid/os/Handler;

    iget-object v0, p0, Lcom/pgl/ssdk/B;->c:Lcom/pgl/ssdk/A;

    iget-object v0, v0, Lcom/pgl/ssdk/A;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a1

    :cond_9c
    :goto_9c
    sput v4, Lcom/pgl/ssdk/y;->a:I
    :try_end_9e
    .catchall {:try_start_77 .. :try_end_9e} :catchall_9f

    return-void

    :catchall_9f
    :try_start_9f
    sput v4, Lcom/pgl/ssdk/y;->a:I
    :try_end_a1
    .catchall {:try_start_9f .. :try_end_a1} :catchall_ad

    :goto_a1
    iget-object v0, p0, Lcom/pgl/ssdk/B;->a:Lcom/pgl/ssdk/D;

    if-eqz v0, :cond_ac

    invoke-static {}, Lcom/pgl/ssdk/y;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pgl/ssdk/D;->a(Ljava/lang/String;)V

    :cond_ac
    return-void

    :catchall_ad
    move-exception v0

    throw v0
.end method
