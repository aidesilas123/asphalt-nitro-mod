###### Class com.fyber.inneractive.sdk.player.exoplayer2.video.d (com.fyber.inneractive.sdk.player.exoplayer2.video.d)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;

.field public final b:J

.field public final c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:Z

.field public h:J

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>(DZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1e

    invoke-static {}, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->a()Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;

    move-result-object p3

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, p1

    double-to-long p1, v0

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d;->b:J

    const-wide/16 v0, 0x50

    mul-long p1, p1, v0

    const-wide/16 v0, 0x64

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d;->c:J

    goto :goto_27

    :cond_1e
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d;->b:J

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d;->c:J

    :goto_27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d;->a()F

    move-result p1

    float-to-double v0, p1

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d;-><init>(DZ)V

    return-void
.end method

.method public static a()F
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->v:Lcom/fyber/inneractive/sdk/config/e;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/config/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(JJ)Z
    .registers 7

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d;->i:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d;->h:J

    sub-long/2addr p3, v0

    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 p3, 0x1312d00

    cmp-long v0, p1, p3

    if-lez v0, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.video.d.a (com.fyber.inneractive.sdk.player.exoplayer2.video.d$a)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;


# instance fields
.field public volatile a:J

.field public final b:Landroid/os/Handler;

.field public c:Landroid/view/Choreographer;

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ChoreographerOwner:Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static a()Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;

    return-object v0
.end method


# virtual methods
.method public doFrame(J)V
    .registers 5

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->a:J

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->c:Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    if-eq p1, v0, :cond_1d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->d:I

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->c:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->a:J

    :cond_1c
    return v0

    :cond_1d
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->d:I

    if-ne p1, v0, :cond_29

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->c:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_29
    return v0

    :cond_2a
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/d$a;->c:Landroid/view/Choreographer;

    return v0
.end method
