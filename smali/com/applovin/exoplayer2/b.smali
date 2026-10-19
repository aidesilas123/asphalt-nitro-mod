###### Class com.applovin.exoplayer2.b (com.applovin.exoplayer2.b)
.class final Lcom/applovin/exoplayer2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/b$a;,
        Lcom/applovin/exoplayer2/b$b;
    }
.end annotation


# instance fields
.field private final E:Landroid/content/Context;

.field private final F:Lcom/applovin/exoplayer2/b$a;

.field private G:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/applovin/exoplayer2/b$b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/b;->E:Landroid/content/Context;

    new-instance p1, Lcom/applovin/exoplayer2/b$a;

    invoke-direct {p1, p0, p2, p3}, Lcom/applovin/exoplayer2/b$a;-><init>(Lcom/applovin/exoplayer2/b;Landroid/os/Handler;Lcom/applovin/exoplayer2/b$b;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b;->F:Lcom/applovin/exoplayer2/b$a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/b;->G:Z

    return p0
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 5

    if-eqz p1, :cond_18

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b;->G:Z

    if-nez v0, :cond_18

    iget-object p1, p0, Lcom/applovin/exoplayer2/b;->E:Landroid/content/Context;

    iget-object v0, p0, Lcom/applovin/exoplayer2/b;->F:Lcom/applovin/exoplayer2/b$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/b;->G:Z

    goto :goto_28

    :cond_18
    if-nez p1, :cond_28

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/b;->G:Z

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/applovin/exoplayer2/b;->E:Landroid/content/Context;

    iget-object v0, p0, Lcom/applovin/exoplayer2/b;->F:Lcom/applovin/exoplayer2/b$a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/b;->G:Z

    :cond_28
    :goto_28
    return-void
.end method
