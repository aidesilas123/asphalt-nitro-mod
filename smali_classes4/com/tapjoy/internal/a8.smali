###### Class com.tapjoy.internal.a8 (com.tapjoy.internal.a8)
.class public final Lcom/tapjoy/internal/a8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;III)V
    .registers 5

    iput-object p1, p0, Lcom/tapjoy/internal/a8;->d:Lcom/tapjoy/TJAdUnit;

    iput p2, p0, Lcom/tapjoy/internal/a8;->a:I

    iput p3, p0, Lcom/tapjoy/internal/a8;->b:I

    iput p4, p0, Lcom/tapjoy/internal/a8;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 5

    iget-object p1, p0, Lcom/tapjoy/internal/a8;->d:Lcom/tapjoy/TJAdUnit;

    iget-object v0, p1, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->H:Lcom/tapjoy/internal/s7;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/tapjoy/internal/a8;->d:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    iget v0, p0, Lcom/tapjoy/internal/a8;->a:I

    iget v1, p0, Lcom/tapjoy/internal/a8;->b:I

    iget v2, p0, Lcom/tapjoy/internal/a8;->c:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/tapjoy/k;->q(III)V

    return-void
.end method
