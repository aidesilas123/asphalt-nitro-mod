###### Class com.tapjoy.internal.aa (com.tapjoy.internal.aa)
.class public final Lcom/tapjoy/internal/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public final b:Ljava/util/concurrent/locks/Condition;

.field public volatile c:I

.field public final d:Ljava/util/LinkedList;

.field public e:Lcom/tapjoy/internal/x2;

.field public f:J

.field public g:Lcom/tapjoy/internal/o1;

.field public h:Lcom/tapjoy/internal/o1;

.field public final synthetic i:Lcom/tapjoy/internal/ba;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/ba;)V
    .registers 4

    iput-object p1, p0, Lcom/tapjoy/internal/aa;->i:Lcom/tapjoy/internal/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/aa;->b:Ljava/util/concurrent/locks/Condition;

    const/4 p1, 0x1

    iput p1, p0, Lcom/tapjoy/internal/aa;->c:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/aa;->d:Ljava/util/LinkedList;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/tapjoy/internal/aa;->f:J

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    if-eqz p0, :cond_d

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_e

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_11

    move-object p0, v0

    :cond_11
    return-object p0
.end method


# virtual methods
.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/tapjoy/internal/aa;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_39

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_38

    :cond_13
    :try_start_13
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/aa;->d:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/tapjoy/internal/aa;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_39

    iget-object v1, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/n;

    invoke-virtual {v1}, Lcom/tapjoy/n;->onConnectSuccess()V

    goto :goto_28

    :cond_38
    :goto_38
    return-void

    :catchall_39
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final c(I)V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iput p1, p0, Lcom/tapjoy/internal/aa;->c:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_d

    iget-object p1, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_d
    move-exception p1

    iget-object v0, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final d(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/tapjoy/internal/aa;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_3c

    if-nez v0, :cond_13

    iget-object p1, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3b

    :cond_13
    :try_start_13
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/aa;->d:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/tapjoy/internal/aa;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_3c

    iget-object v1, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/n;

    invoke-virtual {v1, p1, p2}, Lcom/tapjoy/n;->onConnectFailure(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/tapjoy/n;->onConnectFailure()V

    goto :goto_28

    :cond_3b
    :goto_3b
    return-void

    :catchall_3c
    move-exception p1

    iget-object p2, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final e(J)V
    .registers 6

    iget-object v0, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x3

    const/4 v1, 0x4

    :try_start_7
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/aa;->c(I)V

    iget-object v1, p0, Lcom/tapjoy/internal/aa;->b:Ljava/util/concurrent/locks/Condition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-wide/16 p1, 0x3e8

    iput-wide p1, p0, Lcom/tapjoy/internal/aa;->f:J
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_18} :catch_2b
    .catchall {:try_start_7 .. :try_end_18} :catchall_21

    :cond_18
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/aa;->c(I)V

    iget-object p1, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_33

    :catchall_21
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/aa;->c(I)V

    iget-object p2, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catch_2b
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/aa;->c(I)V

    iget-object p1, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_33
    return-void
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/n;)Z
    .registers 8

    iget-object v0, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p4, :cond_c

    :try_start_7
    iget-object v0, p0, Lcom/tapjoy/internal/aa;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_c
    new-instance p4, Lcom/tapjoy/internal/o1;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/tapjoy/internal/o1;-><init>(Lcom/tapjoy/internal/aa;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V

    iget p1, p0, Lcom/tapjoy/internal/aa;->c:I

    invoke-static {p1}, Lcom/tapjoy/internal/k;->b(I)I

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eqz p1, :cond_4d

    if-eq p1, p3, :cond_4a

    if-eq p1, p2, :cond_4a

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2d

    const/4 p2, 0x4

    if-eq p1, p2, :cond_29

    invoke-virtual {p0, p3}, Lcom/tapjoy/internal/aa;->c(I)V

    goto :goto_7a

    :cond_29
    invoke-virtual {p0}, Lcom/tapjoy/internal/aa;->b()V

    goto :goto_6f

    :cond_2d
    iput-object p4, p0, Lcom/tapjoy/internal/aa;->h:Lcom/tapjoy/internal/o1;

    iget-object p1, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_81

    const-wide/16 p1, 0x3e8

    :try_start_36
    iput-wide p1, p0, Lcom/tapjoy/internal/aa;->f:J

    iget-object p1, p0, Lcom/tapjoy/internal/aa;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_43

    :try_start_3d
    iget-object p1, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_6f

    :catchall_43
    move-exception p1

    iget-object p2, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_4a
    iput-object p4, p0, Lcom/tapjoy/internal/aa;->h:Lcom/tapjoy/internal/o1;

    goto :goto_6f

    :cond_4d
    iput-object p4, p0, Lcom/tapjoy/internal/aa;->g:Lcom/tapjoy/internal/o1;

    sget-object p1, Lcom/tapjoy/internal/a3;->b:Lcom/tapjoy/internal/n2;

    new-instance v0, Lcom/tapjoy/internal/t0;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/t0;-><init>(Lcom/tapjoy/internal/aa;)V

    invoke-virtual {p1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    iget-object p1, p4, Lcom/tapjoy/internal/o1;->a:Landroid/content/Context;

    iget-object v0, p4, Lcom/tapjoy/internal/o1;->b:Ljava/lang/String;

    iget-object p4, p4, Lcom/tapjoy/internal/o1;->c:Ljava/util/Hashtable;

    new-instance v1, Lcom/tapjoy/internal/b1;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/b1;-><init>(Lcom/tapjoy/internal/aa;)V

    iget-object v2, p0, Lcom/tapjoy/internal/aa;->i:Lcom/tapjoy/internal/ba;

    invoke-static {v2, p1, v0, p4, v1}, Lcom/tapjoy/internal/ba;->a(Lcom/tapjoy/internal/ba;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/internal/b1;)Z

    move-result p1

    if-eqz p1, :cond_75

    invoke-virtual {p0, p2}, Lcom/tapjoy/internal/aa;->c(I)V
    :try_end_6f
    .catchall {:try_start_3d .. :try_end_6f} :catchall_81

    :goto_6f
    iget-object p1, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_80

    :cond_75
    :try_start_75
    iget-object p1, p0, Lcom/tapjoy/internal/aa;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_81

    :goto_7a
    iget-object p1, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p3, 0x0

    :goto_80
    return p3

    :catchall_81
    move-exception p1

    iget-object p2, p0, Lcom/tapjoy/internal/aa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
