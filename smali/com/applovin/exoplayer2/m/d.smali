###### Class com.applovin.exoplayer2.m.d (com.applovin.exoplayer2.m.d)
.class public final Lcom/applovin/exoplayer2/m/d;
.super Landroid/view/Surface;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/m/d$a;
    }
.end annotation


# static fields
.field private static ado:I

.field private static adp:Z


# instance fields
.field public final Hu:Z

.field private final adq:Lcom/applovin/exoplayer2/m/d$a;

.field private adr:Z


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/m/d$a;Landroid/graphics/SurfaceTexture;Z)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/d;->adq:Lcom/applovin/exoplayer2/m/d$a;

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/m/d;->Hu:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/m/d$a;Landroid/graphics/SurfaceTexture;ZLcom/applovin/exoplayer2/m/d$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/m/d;-><init>(Lcom/applovin/exoplayer2/m/d$a;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public static c(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/m/d;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-static {p0}, Lcom/applovin/exoplayer2/m/d;->p(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    new-instance p0, Lcom/applovin/exoplayer2/m/d$a;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/d$a;-><init>()V

    if-eqz p1, :cond_19

    sget v0, Lcom/applovin/exoplayer2/m/d;->ado:I

    :cond_19
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/m/d$a;->fP(I)Lcom/applovin/exoplayer2/m/d;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized p(Landroid/content/Context;)Z
    .registers 4

    const-class v0, Lcom/applovin/exoplayer2/m/d;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/applovin/exoplayer2/m/d;->adp:Z

    const/4 v2, 0x1

    if-nez v1, :cond_10

    invoke-static {p0}, Lcom/applovin/exoplayer2/m/d;->q(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/applovin/exoplayer2/m/d;->ado:I

    sput-boolean v2, Lcom/applovin/exoplayer2/m/d;->adp:Z

    :cond_10
    sget p0, Lcom/applovin/exoplayer2/m/d;->ado:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    monitor-exit v0

    return v2

    :catchall_18
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static q(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/n;->j(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/applovin/exoplayer2/l/n;->oW()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public release()V
    .registers 3

    invoke-super {p0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/d;->adq:Lcom/applovin/exoplayer2/m/d$a;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/m/d;->adr:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/d;->adq:Lcom/applovin/exoplayer2/m/d$a;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/m/d$a;->release()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/m/d;->adr:Z

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

###### Class com.applovin.exoplayer2.m.d.AnonymousClass1 (com.applovin.exoplayer2.m.d$1)
.class synthetic Lcom/applovin/exoplayer2/m/d$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.m.d.a (com.applovin.exoplayer2.m.d$a)
.class Lcom/applovin/exoplayer2/m/d$a;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private ads:Lcom/applovin/exoplayer2/l/j;

.field private adt:Ljava/lang/Error;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private adu:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private adv:Lcom/applovin/exoplayer2/m/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private jS:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "ExoPlayer:DummySurface"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private bt()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/d$a;->ads:Lcom/applovin/exoplayer2/l/j;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/d$a;->ads:Lcom/applovin/exoplayer2/l/j;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/j;->release()V

    return-void
.end method

.method private fQ(I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/d$a;->ads:Lcom/applovin/exoplayer2/l/j;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/d$a;->ads:Lcom/applovin/exoplayer2/l/j;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/j;->fm(I)V

    new-instance v0, Lcom/applovin/exoplayer2/m/d;

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/d$a;->ads:Lcom/applovin/exoplayer2/l/j;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/j;->oR()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/applovin/exoplayer2/m/d;-><init>(Lcom/applovin/exoplayer2/m/d$a;Landroid/graphics/SurfaceTexture;ZLcom/applovin/exoplayer2/m/d$1;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/d$a;->adv:Lcom/applovin/exoplayer2/m/d;

    return-void
.end method


# virtual methods
.method public fP(I)Lcom/applovin/exoplayer2/m/d;
    .registers 5

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/d$a;->jS:Landroid/os/Handler;

    new-instance v0, Lcom/applovin/exoplayer2/l/j;

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/d$a;->jS:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/l/j;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/d$a;->ads:Lcom/applovin/exoplayer2/l/j;

    monitor-enter p0

    :try_start_18
    iget-object v0, p0, Lcom/applovin/exoplayer2/m/d$a;->jS:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_23
    iget-object p1, p0, Lcom/applovin/exoplayer2/m/d$a;->adv:Lcom/applovin/exoplayer2/m/d;

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/d$a;->adu:Ljava/lang/RuntimeException;

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/d$a;->adt:Ljava/lang/Error;
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_52

    if-nez p1, :cond_35

    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33
    .catchall {:try_start_2f .. :try_end_32} :catchall_52

    goto :goto_23

    :catch_33
    const/4 v2, 0x1

    goto :goto_23

    :cond_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_52

    if-eqz v2, :cond_3f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3f
    iget-object p1, p0, Lcom/applovin/exoplayer2/m/d$a;->adu:Ljava/lang/RuntimeException;

    if-nez p1, :cond_51

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/d$a;->adt:Ljava/lang/Error;

    if-nez p1, :cond_50

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/d$a;->adv:Lcom/applovin/exoplayer2/m/d;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/m/d;

    return-object p1

    :cond_50
    throw p1

    :cond_51
    throw p1

    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    return v1

    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/d$a;->bt()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    :goto_c
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_19

    :catchall_10
    move-exception p1

    :try_start_11
    const-string v0, "DummySurface"

    const-string v2, "Failed to release dummy surface"

    invoke-static {v0, v2, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    goto :goto_c

    :goto_19
    return v1

    :catchall_1a
    move-exception p1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :cond_1f
    :try_start_1f
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/m/d$a;->fQ(I)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_24} :catch_42
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_24} :catch_2f
    .catchall {:try_start_1f .. :try_end_24} :catchall_2d

    monitor-enter p0

    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_51

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2a

    throw p1

    :catchall_2d
    move-exception p1

    goto :goto_55

    :catch_2f
    move-exception p1

    :try_start_30
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    invoke-static {v0, v2, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/d$a;->adt:Ljava/lang/Error;
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2d

    monitor-enter p0

    :try_start_3a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_51

    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_3f

    throw p1

    :catch_42
    move-exception p1

    :try_start_43
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    invoke-static {v0, v2, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/d$a;->adu:Ljava/lang/RuntimeException;
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_2d

    monitor-enter p0

    :try_start_4d
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    :goto_51
    return v1

    :catchall_52
    move-exception p1

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_52

    throw p1

    :goto_55
    monitor-enter p0

    :try_start_56
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5b

    throw p1

    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p1
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/d$a;->jS:Landroid/os/Handler;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/d$a;->jS:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
