###### Class com.applovin.exoplayer2.b.n.AnonymousClass1 (com.applovin.exoplayer2.b.n$1)
.class Lcom/applovin/exoplayer2/b/n$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/b/n;->dI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lQ:Landroid/media/AudioTrack;

.field final synthetic lR:Lcom/applovin/exoplayer2/b/n;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/b/n;Ljava/lang/String;Landroid/media/AudioTrack;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n$1;->lR:Lcom/applovin/exoplayer2/b/n;

    iput-object p3, p0, Lcom/applovin/exoplayer2/b/n$1;->lQ:Landroid/media/AudioTrack;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n$1;->lQ:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n$1;->lQ:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_14

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n$1;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/b/n;->a(Lcom/applovin/exoplayer2/b/n;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n$1;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-static {v1}, Lcom/applovin/exoplayer2/b/n;->a(Lcom/applovin/exoplayer2/b/n;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
