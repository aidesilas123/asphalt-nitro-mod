###### Class com.mbridge.msdk.f.a.b.a (com.mbridge.msdk.f.a.b$a)
.class final Lcom/mbridge/msdk/f/a/b$a;
.super Landroid/os/CountDownTimer;
.source "MBCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/f/a/a;


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method final a(Lcom/mbridge/msdk/f/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/f/a/b$a;->a:Lcom/mbridge/msdk/f/a/a;

    return-void
.end method

.method public final onFinish()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/f/a/b$a;->a:Lcom/mbridge/msdk/f/a/a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/f/a/a;->onFinish()V

    :cond_7
    return-void
.end method

.method public final onTick(J)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/f/a/b$a;->a:Lcom/mbridge/msdk/f/a/a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/f/a/a;->onTick(J)V

    :cond_7
    return-void
.end method
