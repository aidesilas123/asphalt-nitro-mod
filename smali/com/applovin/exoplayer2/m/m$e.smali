###### Class com.applovin.exoplayer2.m.m.e (com.applovin.exoplayer2.m.m$e)
.class final Lcom/applovin/exoplayer2/m/m$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/m/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field private static final aff:Lcom/applovin/exoplayer2/m/m$e;


# instance fields
.field public volatile afe:J

.field private final afg:Landroid/os/HandlerThread;

.field private afh:Landroid/view/Choreographer;

.field private afi:I

.field private final jS:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/m/m$e;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/m/m$e;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/m/m$e;->aff:Lcom/applovin/exoplayer2/m/m$e;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m$e;->afe:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:FrameReleaseChoreographer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/m$e;->afg:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applovin/exoplayer2/l/ai;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/m$e;->jS:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static qD()Lcom/applovin/exoplayer2/m/m$e;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/m/m$e;->aff:Lcom/applovin/exoplayer2/m/m$e;

    return-object v0
.end method

.method private qG()V
    .registers 2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/m$e;->afh:Landroid/view/Choreographer;

    return-void
.end method

.method private qH()V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/m/m$e;->afi:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/m/m$e;->afi:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m$e;->afh:Landroid/view/Choreographer;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_13
    return-void
.end method

.method private qI()V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/m/m$e;->afi:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/m/m$e;->afi:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m$e;->afh:Landroid/view/Choreographer;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m$e;->afe:J

    :cond_1a
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 5

    iput-wide p1, p0, Lcom/applovin/exoplayer2/m/m$e;->afe:J

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/m$e;->afh:Landroid/view/Choreographer;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_14

    if-eq p1, v0, :cond_10

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m$e;->qI()V

    return v0

    :cond_10
    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m$e;->qH()V

    return v0

    :cond_14
    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m$e;->qG()V

    return v0
.end method

.method public qE()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m$e;->jS:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public qF()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m$e;->jS:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
