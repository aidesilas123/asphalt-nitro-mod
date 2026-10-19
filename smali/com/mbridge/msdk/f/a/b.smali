###### Class com.mbridge.msdk.f.a.b (com.mbridge.msdk.f.a.b)
.class public final Lcom/mbridge/msdk/f/a/b;
.super Ljava/lang/Object;
.source "MBCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/f/a/b$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/mbridge/msdk/f/a/a;

.field private d:Lcom/mbridge/msdk/f/a/b$a;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mbridge/msdk/f/a/b;->a:J

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/mbridge/msdk/f/a/b;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_8

    const-wide/16 p1, 0x3e8

    :cond_8
    iput-wide p1, p0, Lcom/mbridge/msdk/f/a/b;->b:J

    return-object p0
.end method

.method public final a(Lcom/mbridge/msdk/f/a/a;)Lcom/mbridge/msdk/f/a/b;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/f/a/b;->c:Lcom/mbridge/msdk/f/a/a;

    return-object p0
.end method

.method public final a()V
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/f/a/b;->d:Lcom/mbridge/msdk/f/a/b$a;

    if-nez v0, :cond_2b

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/f/a/b;->d:Lcom/mbridge/msdk/f/a/b$a;

    :cond_c
    iget-wide v0, p0, Lcom/mbridge/msdk/f/a/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1b

    iget-wide v0, p0, Lcom/mbridge/msdk/f/a/b;->a:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mbridge/msdk/f/a/b;->b:J

    :cond_1b
    new-instance v0, Lcom/mbridge/msdk/f/a/b$a;

    iget-wide v1, p0, Lcom/mbridge/msdk/f/a/b;->a:J

    iget-wide v3, p0, Lcom/mbridge/msdk/f/a/b;->b:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mbridge/msdk/f/a/b$a;-><init>(JJ)V

    iput-object v0, p0, Lcom/mbridge/msdk/f/a/b;->d:Lcom/mbridge/msdk/f/a/b$a;

    iget-object v1, p0, Lcom/mbridge/msdk/f/a/b;->c:Lcom/mbridge/msdk/f/a/a;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/f/a/b$a;->a(Lcom/mbridge/msdk/f/a/a;)V

    :cond_2b
    iget-object v0, p0, Lcom/mbridge/msdk/f/a/b;->d:Lcom/mbridge/msdk/f/a/b$a;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final b(J)Lcom/mbridge/msdk/f/a/b;
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/f/a/b;->a:J

    return-object p0
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/f/a/b;->d:Lcom/mbridge/msdk/f/a/b$a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/f/a/b;->d:Lcom/mbridge/msdk/f/a/b$a;

    :cond_a
    return-void
.end method

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
