###### Class com.mbridge.msdk.video.dynview.i.c.b.a (com.mbridge.msdk.video.dynview.i.c.b$a)
.class final Lcom/mbridge/msdk/video/dynview/i/c/b$a;
.super Landroid/os/CountDownTimer;
.source "MBCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/dynview/i/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/video/dynview/i/c/a;


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method final a(Lcom/mbridge/msdk/video/dynview/i/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/i/c/b$a;->a:Lcom/mbridge/msdk/video/dynview/i/c/a;

    return-void
.end method

.method public final onFinish()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/c/b$a;->a:Lcom/mbridge/msdk/video/dynview/i/c/a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/video/dynview/i/c/a;->a()V

    :cond_7
    return-void
.end method

.method public final onTick(J)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/c/b$a;->a:Lcom/mbridge/msdk/video/dynview/i/c/a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/video/dynview/i/c/a;->a(J)V

    :cond_7
    return-void
.end method
