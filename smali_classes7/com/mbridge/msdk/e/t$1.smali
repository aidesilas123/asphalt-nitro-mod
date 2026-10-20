###### Class com.mbridge.msdk.e.t.AnonymousClass1 (com.mbridge.msdk.e.t$1)
.class final Lcom/mbridge/msdk/e/t$1;
.super Landroid/os/Handler;
.source "ReportMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/e/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/e/t;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/e/t;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/e/t$1;->a:Lcom/mbridge/msdk/e/t;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    goto :goto_1f

    :cond_9
    :try_start_9
    iget-object p1, p0, Lcom/mbridge/msdk/e/t$1;->a:Lcom/mbridge/msdk/e/t;

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/t;->c()V

    iget-object p1, p0, Lcom/mbridge/msdk/e/t$1;->a:Lcom/mbridge/msdk/e/t;

    iget-object p1, p1, Lcom/mbridge/msdk/e/t;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/e/t$1;->a:Lcom/mbridge/msdk/e/t;

    invoke-static {p1}, Lcom/mbridge/msdk/e/t;->a(Lcom/mbridge/msdk/e/t;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1f
    return-void
.end method
