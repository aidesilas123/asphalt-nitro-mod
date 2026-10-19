###### Class com.gameloft.android2d.iap.utils.b (com.gameloft.android2d.iap.utils.b)
.class public Lcom/gameloft/android2d/iap/utils/b;
.super Ljava/util/TimerTask;
.source "ConnectionTimer.java"


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Lcom/gameloft/android2d/iap/utils/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLcom/gameloft/android2d/iap/utils/c;)V
    .registers 5

    iput-object p3, p0, Lcom/gameloft/android2d/iap/utils/b;->b:Lcom/gameloft/android2d/iap/utils/c;

    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    iput-object p3, p0, Lcom/gameloft/android2d/iap/utils/b;->a:Ljava/util/Timer;

    new-instance v0, Lcom/gameloft/android2d/iap/utils/b;

    invoke-direct {v0}, Lcom/gameloft/android2d/iap/utils/b;-><init>()V

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/b;->a:Ljava/util/Timer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_7
    return-void
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/b;->b:Lcom/gameloft/android2d/iap/utils/c;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/c;->b()V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/b;->b:Lcom/gameloft/android2d/iap/utils/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/b;->b:Lcom/gameloft/android2d/iap/utils/c;

    :cond_12
    return-void
.end method
