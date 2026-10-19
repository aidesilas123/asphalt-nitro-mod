###### Class com.tapjoy.internal.x2 (com.tapjoy.internal.x2)
.class public final Lcom/tapjoy/internal/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field public b:Landroid/content/Context;

.field public final c:Lcom/tapjoy/internal/ia;

.field public final synthetic d:Lcom/tapjoy/internal/aa;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/tapjoy/internal/ia;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/ia;-><init>(Lcom/tapjoy/internal/x2;)V

    iput-object p1, p0, Lcom/tapjoy/internal/x2;->c:Lcom/tapjoy/internal/ia;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aa;->c(I)V

    iget-object v0, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    iget-object v2, v0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_d
    iget-object v2, v0, Lcom/tapjoy/internal/aa;->h:Lcom/tapjoy/internal/o1;

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    iput-object v2, v0, Lcom/tapjoy/internal/aa;->g:Lcom/tapjoy/internal/o1;

    iput-object v3, v0, Lcom/tapjoy/internal/aa;->h:Lcom/tapjoy/internal/o1;

    :cond_16
    iget-object v2, v0, Lcom/tapjoy/internal/aa;->g:Lcom/tapjoy/internal/o1;
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_f5

    iget-object v0, v0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, v2, Lcom/tapjoy/internal/o1;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tapjoy/internal/x2;->b:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/x2;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tapjoy/internal/x2;->c:Lcom/tapjoy/internal/ia;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_2f
    const/4 v0, 0x1

    :try_start_30
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v4, Lcom/tapjoy/internal/a3;->b:Lcom/tapjoy/internal/n2;

    new-instance v5, Lcom/tapjoy/internal/b2;

    invoke-direct {v5, p0, v2}, Lcom/tapjoy/internal/b2;-><init>(Lcom/tapjoy/internal/x2;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    iget-object v4, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    iget-object v5, v4, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_db

    :try_start_46
    iget-object v5, v4, Lcom/tapjoy/internal/aa;->h:Lcom/tapjoy/internal/o1;

    if-eqz v5, :cond_4e

    iput-object v5, v4, Lcom/tapjoy/internal/aa;->g:Lcom/tapjoy/internal/o1;

    iput-object v3, v4, Lcom/tapjoy/internal/aa;->h:Lcom/tapjoy/internal/o1;

    :cond_4e
    iget-object v5, v4, Lcom/tapjoy/internal/aa;->g:Lcom/tapjoy/internal/o1;
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_d4

    :try_start_50
    iget-object v4, v4, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v4, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    iget-object v6, v5, Lcom/tapjoy/internal/o1;->a:Landroid/content/Context;

    iget-object v7, v5, Lcom/tapjoy/internal/o1;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/tapjoy/internal/o1;->c:Ljava/util/Hashtable;

    iget-object v4, v4, Lcom/tapjoy/internal/aa;->i:Lcom/tapjoy/internal/ba;

    invoke-static {v4, v6, v7, v5, v3}, Lcom/tapjoy/internal/ba;->a(Lcom/tapjoy/internal/ba;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/internal/b1;)Z

    move-result v4
    :try_end_63
    .catchall {:try_start_50 .. :try_end_63} :catchall_db

    const-string v5, "Failed to connect"

    if-nez v4, :cond_85

    :try_start_67
    iget-object v2, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    invoke-virtual {v2, v0, v5}, Lcom/tapjoy/internal/aa;->d(ILjava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_db

    iget-object v2, p0, Lcom/tapjoy/internal/x2;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tapjoy/internal/x2;->c:Lcom/tapjoy/internal/ia;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    iget-object v4, v2, Lcom/tapjoy/internal/aa;->e:Lcom/tapjoy/internal/x2;

    if-ne v4, p0, :cond_7b

    iput-object v3, v2, Lcom/tapjoy/internal/aa;->e:Lcom/tapjoy/internal/x2;

    :cond_7b
    iget v2, v2, Lcom/tapjoy/internal/aa;->c:I

    if-ne v2, v1, :cond_84

    iget-object v1, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/aa;->c(I)V

    :cond_84
    return-void

    :cond_85
    :try_start_85
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_88} :catch_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_db

    :catch_88
    :try_start_88
    iget-boolean v2, p0, Lcom/tapjoy/internal/x2;->a:Z

    if-eqz v2, :cond_b0

    iget-object v2, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/tapjoy/internal/aa;->c(I)V

    iget-object v2, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    invoke-virtual {v2}, Lcom/tapjoy/internal/aa;->b()V
    :try_end_97
    .catchall {:try_start_88 .. :try_end_97} :catchall_db

    iget-object v2, p0, Lcom/tapjoy/internal/x2;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tapjoy/internal/x2;->c:Lcom/tapjoy/internal/ia;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    iget-object v4, v2, Lcom/tapjoy/internal/aa;->e:Lcom/tapjoy/internal/x2;

    if-ne v4, p0, :cond_a6

    iput-object v3, v2, Lcom/tapjoy/internal/aa;->e:Lcom/tapjoy/internal/x2;

    :cond_a6
    iget v2, v2, Lcom/tapjoy/internal/aa;->c:I

    if-ne v2, v1, :cond_af

    iget-object v1, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/aa;->c(I)V

    :cond_af
    return-void

    :cond_b0
    :try_start_b0
    iget-object v2, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    invoke-virtual {v2, v1, v5}, Lcom/tapjoy/internal/aa;->d(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    iget-wide v4, v2, Lcom/tapjoy/internal/aa;->f:J

    const-wide/16 v6, 0x3e8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object v2, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    const/4 v6, 0x2

    shl-long v6, v4, v6

    const-wide/32 v8, 0x36ee80

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/tapjoy/internal/aa;->f:J

    iget-object v2, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/aa;->e(J)V

    goto/16 :goto_2f

    :catchall_d4
    move-exception v2

    iget-object v4, v4, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
    :try_end_db
    .catchall {:try_start_b0 .. :try_end_db} :catchall_db

    :catchall_db
    move-exception v2

    iget-object v4, p0, Lcom/tapjoy/internal/x2;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/tapjoy/internal/x2;->c:Lcom/tapjoy/internal/ia;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v4, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    iget-object v5, v4, Lcom/tapjoy/internal/aa;->e:Lcom/tapjoy/internal/x2;

    if-ne v5, p0, :cond_eb

    iput-object v3, v4, Lcom/tapjoy/internal/aa;->e:Lcom/tapjoy/internal/x2;

    :cond_eb
    iget v3, v4, Lcom/tapjoy/internal/aa;->c:I

    if-ne v3, v1, :cond_f4

    iget-object v1, p0, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/aa;->c(I)V

    :cond_f4
    throw v2

    :catchall_f5
    move-exception v1

    iget-object v0, v0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
