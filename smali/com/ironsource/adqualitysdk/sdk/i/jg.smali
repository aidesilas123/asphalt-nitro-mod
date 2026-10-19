###### Class com.json.adqualitysdk.sdk.i.jg (com.ironsource.adqualitysdk.sdk.i.jg)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/jg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private b:Lcom/ironsource/adqualitysdk/sdk/i/jf;

.field private c:Landroid/os/Handler;

.field private d:Lcom/ironsource/adqualitysdk/sdk/i/jc;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/jf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->a:Z

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->b:Lcom/ironsource/adqualitysdk/sdk/i/jf;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->c:Landroid/os/Handler;

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/jg$a;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/jg$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/jg;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->d:Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jb;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->d:Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-virtual {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/jc;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/jg;)Lcom/ironsource/adqualitysdk/sdk/i/jf;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->b:Lcom/ironsource/adqualitysdk/sdk/i/jf;

    return-object p0
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/jg;Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->c:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/jg;Landroid/app/Activity;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/jg;)V
    .registers 2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/ironsource/adqualitysdk/sdk/i/jg;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->a:Z

    return v0
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/jg;Landroid/app/Activity;)V
    .registers 3

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->a:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->a:Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->b:Lcom/ironsource/adqualitysdk/sdk/i/jf;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jf;->ﻐ(Landroid/app/Activity;)V

    :cond_e
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->c:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ﻐ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->d:Lcom/ironsource/adqualitysdk/sdk/i/jc;

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jb;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->d:Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-virtual {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/jc;)V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg;->d:Lcom/ironsource/adqualitysdk/sdk/i/jc;

    :cond_15
    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.jg.a (com.ironsource.adqualitysdk.sdk.i.jg$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/jg$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/je;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jg;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/jf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/jg;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/jg;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/je;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->c(Lcom/ironsource/adqualitysdk/sdk/i/jg;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->c(Lcom/ironsource/adqualitysdk/sdk/i/jg;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->b(Lcom/ironsource/adqualitysdk/sdk/i/jg;Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->e(Lcom/ironsource/adqualitysdk/sdk/i/jg;Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->c(Lcom/ironsource/adqualitysdk/sdk/i/jg;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->c(Lcom/ironsource/adqualitysdk/sdk/i/jg;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->c(Lcom/ironsource/adqualitysdk/sdk/i/jg;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.jg.b (com.ironsource.adqualitysdk.sdk.i.jg$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/jg$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Landroid/app/Activity;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/jg;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/jg;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;->d:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->d(Lcom/ironsource/adqualitysdk/sdk/i/jg;)Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->a(Lcom/ironsource/adqualitysdk/sdk/i/jg;)Lcom/ironsource/adqualitysdk/sdk/i/jf;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->a(Lcom/ironsource/adqualitysdk/sdk/i/jg;)Lcom/ironsource/adqualitysdk/sdk/i/jf;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;->d:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jf;->ｋ(Landroid/app/Activity;)V

    :cond_18
    return-void
.end method
