###### Class com.tapjoy.internal.ia (com.tapjoy.internal.ia)
.class public final Lcom/tapjoy/internal/ia;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/x2;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/x2;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/ia;->a:Lcom/tapjoy/internal/x2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object p1, p0, Lcom/tapjoy/internal/ia;->a:Lcom/tapjoy/internal/x2;

    iget-object p1, p1, Lcom/tapjoy/internal/x2;->d:Lcom/tapjoy/internal/aa;

    iget-object p2, p1, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0x3e8

    :try_start_b
    iput-wide v0, p1, Lcom/tapjoy/internal/aa;->f:J

    iget-object p2, p1, Lcom/tapjoy/internal/aa;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_18

    iget-object p1, p1, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_18
    move-exception p2

    iget-object p1, p1, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p2
.end method
