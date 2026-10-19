###### Class com.fyber.inneractive.sdk.network.c (com.fyber.inneractive.sdk.network.c)
.class public Lcom/fyber/inneractive/sdk/network/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/util/j0;


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lorg/json/JSONArray;

.field public final c:Landroid/os/HandlerThread;

.field public d:Landroid/os/Handler;

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/network/c;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/network/c;->b:Lorg/json/JSONArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/network/c;->f:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/network/c;->g:Z

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "EventCollectorHandlerThread"

    invoke-direct {v1, v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/network/c;->c:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/network/c;->f:Z

    iput p1, p0, Lcom/fyber/inneractive/sdk/network/c;->e:I

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/network/c;->d:Landroid/os/Handler;

    const v0, 0xbbdf09

    if-eqz p1, :cond_17

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/network/c;->d:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_17
    iget p1, p0, Lcom/fyber/inneractive/sdk/network/c;->e:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/fyber/inneractive/sdk/network/c;->a(IJ)V

    return-void
.end method

.method public final a(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/c;->d:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/fyber/inneractive/sdk/network/c$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/network/c$a;-><init>(Lcom/fyber/inneractive/sdk/network/c;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0xbbdf09

    if-eq p1, v0, :cond_c

    const v1, 0x133783a

    if-ne p1, v1, :cond_87

    :cond_c
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/network/c;->f:Z

    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/network/c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-lez p1, :cond_78

    :cond_18
    :goto_18
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/network/c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_34

    :try_start_21
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/network/c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_2b

    move-object v1, p1

    goto :goto_2c

    :catchall_2b
    nop

    :goto_2c
    if-eqz v1, :cond_18

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/network/c;->b:Lorg/json/JSONArray;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_18

    :cond_34
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/network/c;->b:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_78

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/network/c;->b:Lorg/json/JSONArray;

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :try_start_46
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4b

    goto :goto_4c

    :catchall_4b
    nop

    :goto_4c
    if-eqz v1, :cond_71

    new-instance v8, Lcom/fyber/inneractive/sdk/network/i0;

    new-instance v9, Lcom/fyber/inneractive/sdk/network/e;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/fyber/inneractive/sdk/network/e;-><init>(Lcom/fyber/inneractive/sdk/network/c;Ljava/lang/String;Lorg/json/JSONArray;J)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/network/x;->a()Lcom/fyber/inneractive/sdk/network/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/network/x;->b()Lcom/fyber/inneractive/sdk/network/g;

    move-result-object v2

    invoke-direct {v8, v9, p1, v1, v2}, Lcom/fyber/inneractive/sdk/network/i0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/g;)V

    sget-object p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->s:Lcom/fyber/inneractive/sdk/network/y;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/network/y;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v8}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    sget-object p1, Lcom/fyber/inneractive/sdk/network/q0;->QUEUED:Lcom/fyber/inneractive/sdk/network/q0;

    invoke-virtual {v8, p1}, Lcom/fyber/inneractive/sdk/network/f0;->a(Lcom/fyber/inneractive/sdk/network/q0;)V

    :cond_71
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/c;->b:Lorg/json/JSONArray;

    :cond_78
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/network/c;->d:Landroid/os/Handler;

    if-eqz p1, :cond_87

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/network/c;->e:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/fyber/inneractive/sdk/network/c;->a(IJ)V

    :cond_87
    return-void
.end method

###### Class com.fyber.inneractive.sdk.network.c.a (com.fyber.inneractive.sdk.network.c$a)
.class public Lcom/fyber/inneractive/sdk/network/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/network/c;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lcom/fyber/inneractive/sdk/network/c;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/c;IJ)V
    .registers 5

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/c$a;->c:Lcom/fyber/inneractive/sdk/network/c;

    iput p2, p0, Lcom/fyber/inneractive/sdk/network/c$a;->a:I

    iput-wide p3, p0, Lcom/fyber/inneractive/sdk/network/c$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/c$a;->c:Lcom/fyber/inneractive/sdk/network/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/c;->d:Landroid/os/Handler;

    iget v1, p0, Lcom/fyber/inneractive/sdk/network/c$a;->a:I

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/network/c$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
