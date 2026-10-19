###### Class com.mbridge.msdk.video.signal.communication.RewardSignal (com.mbridge.msdk.video.signal.communication.RewardSignal)
.class public Lcom/mbridge/msdk/video/signal/communication/RewardSignal;
.super Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;
.source "RewardSignal.java"

# interfaces
.implements Lcom/mbridge/msdk/video/signal/communication/IRewardCommunication;


# instance fields
.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->install(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->setOrientation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->openURL(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$1;-><init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_14
    return-void
.end method

.method public handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$7;-><init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_14
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->install(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$2;-><init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_14
    return-void
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$3;-><init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_14
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->openURL(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$8;-><init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_14
    return-void
.end method

.method public setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->setOrientation(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$6;-><init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_14
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$4;-><init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_14
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$5;-><init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_14
    return-void
.end method

###### Class com.mbridge.msdk.video.signal.communication.RewardSignal.AnonymousClass1 (com.mbridge.msdk.video.signal.communication.RewardSignal$1)
.class final Lcom/mbridge/msdk/video/signal/communication/RewardSignal$1;
.super Ljava/lang/Object;
.source "RewardSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$1;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iput-object p2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$1;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$1;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->a(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class com.mbridge.msdk.video.signal.communication.RewardSignal.AnonymousClass2 (com.mbridge.msdk.video.signal.communication.RewardSignal$2)
.class final Lcom/mbridge/msdk/video/signal/communication/RewardSignal$2;
.super Ljava/lang/Object;
.source "RewardSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->install(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$2;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iput-object p2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$2;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$2;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->b(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class com.mbridge.msdk.video.signal.communication.RewardSignal.AnonymousClass3 (com.mbridge.msdk.video.signal.communication.RewardSignal$3)
.class final Lcom/mbridge/msdk/video/signal/communication/RewardSignal$3;
.super Ljava/lang/Object;
.source "RewardSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$3;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iput-object p2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$3;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$3;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$3;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$3;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->c(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class com.mbridge.msdk.video.signal.communication.RewardSignal.AnonymousClass4 (com.mbridge.msdk.video.signal.communication.RewardSignal$4)
.class final Lcom/mbridge/msdk/video/signal/communication/RewardSignal$4;
.super Ljava/lang/Object;
.source "RewardSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$4;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iput-object p2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$4;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$4;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$4;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$4;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->d(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class com.mbridge.msdk.video.signal.communication.RewardSignal.AnonymousClass5 (com.mbridge.msdk.video.signal.communication.RewardSignal$5)
.class final Lcom/mbridge/msdk/video/signal/communication/RewardSignal$5;
.super Ljava/lang/Object;
.source "RewardSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$5;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iput-object p2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$5;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$5;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$5;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$5;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->e(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class com.mbridge.msdk.video.signal.communication.RewardSignal.AnonymousClass6 (com.mbridge.msdk.video.signal.communication.RewardSignal$6)
.class final Lcom/mbridge/msdk/video/signal/communication/RewardSignal$6;
.super Ljava/lang/Object;
.source "RewardSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$6;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iput-object p2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$6;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$6;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$6;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$6;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->f(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class com.mbridge.msdk.video.signal.communication.RewardSignal.AnonymousClass7 (com.mbridge.msdk.video.signal.communication.RewardSignal$7)
.class final Lcom/mbridge/msdk/video/signal/communication/RewardSignal$7;
.super Ljava/lang/Object;
.source "RewardSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$7;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iput-object p2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$7;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$7;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$7;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$7;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->g(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class com.mbridge.msdk.video.signal.communication.RewardSignal.AnonymousClass8 (com.mbridge.msdk.video.signal.communication.RewardSignal$8)
.class final Lcom/mbridge/msdk/video/signal/communication/RewardSignal$8;
.super Ljava/lang/Object;
.source "RewardSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->openURL(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$8;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iput-object p2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$8;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$8;->c:Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$8;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal$8;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->h(Lcom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
