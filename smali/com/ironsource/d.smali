###### Class com.json.d (com.ironsource.d)
.class public abstract Lcom/ironsource/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;

.field protected b:J

.field protected c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ironsource/d;->b:J

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ironsource/d;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_a

    return-void

    :cond_a
    iput-object p1, p0, Lcom/ironsource/d;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/d;->f()V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/ironsource/d;->a:Ljava/util/Timer;

    new-instance v0, Lcom/ironsource/d$a;

    invoke-direct {v0, p0}, Lcom/ironsource/d$a;-><init>(Lcom/ironsource/d;)V

    iget-wide v1, p0, Lcom/ironsource/d;->b:J

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method protected b()Z
    .registers 6

    iget-wide v0, p0, Lcom/ironsource/d;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected abstract c()V
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/d;->c:Ljava/lang/Object;

    return-void
.end method

.method protected f()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/d;->a:Ljava/util/Timer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/d;->a:Ljava/util/Timer;

    :cond_a
    return-void
.end method
