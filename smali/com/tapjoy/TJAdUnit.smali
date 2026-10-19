###### Class com.tapjoy.TJAdUnit (com.tapjoy.TJAdUnit)
.class public Lcom/tapjoy/TJAdUnit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;,
        Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;
    }
.end annotation


# static fields
.field public static a:Lcom/tapjoy/TJVideoListener;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Lcom/tapjoy/internal/w6;

.field public D:Lcom/tapjoy/internal/i8;

.field public final E:Lcom/tapjoy/internal/l6;

.field public final F:Lcom/tapjoy/internal/x6;

.field public final G:Lcom/tapjoy/internal/i7;

.field public final H:Lcom/tapjoy/internal/s7;

.field public final I:Lcom/tapjoy/b;

.field public final J:Lcom/tapjoy/internal/j8;

.field public final b:Landroid/os/Handler;

.field public c:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

.field public d:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

.field public e:Lcom/tapjoy/TJAdUnitActivity;

.field public f:Lcom/tapjoy/k;

.field public g:Lcom/tapjoy/l0;

.field public h:Landroid/view/View;

.field public i:Lcom/tapjoy/TJWebView;

.field public j:Landroid/widget/VideoView;

.field public k:Landroid/media/MediaPlayer;

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Ljava/util/concurrent/ScheduledFuture;

.field public q:Landroid/media/AudioManager;

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public volatile y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->r:I

    new-instance v0, Lcom/tapjoy/internal/l6;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/l6;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->E:Lcom/tapjoy/internal/l6;

    new-instance v0, Lcom/tapjoy/internal/x6;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/x6;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/x6;

    new-instance v0, Lcom/tapjoy/internal/i7;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/i7;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->G:Lcom/tapjoy/internal/i7;

    new-instance v0, Lcom/tapjoy/internal/s7;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/s7;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->H:Lcom/tapjoy/internal/s7;

    new-instance v0, Lcom/tapjoy/b;

    invoke-direct {v0, p0}, Lcom/tapjoy/b;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->I:Lcom/tapjoy/b;

    new-instance v0, Lcom/tapjoy/internal/j8;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/j8;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->J:Lcom/tapjoy/internal/j8;

    return-void
.end method


# virtual methods
.method public A(Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tapjoy/k;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public b()V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tapjoy/k;->c()V

    :cond_7
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/x6;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->G:Lcom/tapjoy/internal/i7;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->H:Lcom/tapjoy/internal/s7;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2e
    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/view/View;

    :cond_30
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/tapjoy/TJWebView;->destroy()V

    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    :cond_39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->A:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->y:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->v:Z

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJAdUnit;->w(Lcom/tapjoy/TJAdUnitActivity;)V

    const-string v2, "TJAdUnit"

    const-string v3, "detachVolumeListener"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TJAdUnit;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_53

    invoke-interface {v3, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->p:Ljava/util/concurrent/ScheduledFuture;

    :cond_53
    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->q:Landroid/media/AudioManager;

    :try_start_55
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6b

    iget-object v3, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6b
    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;
    :try_end_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_6d} :catch_6e

    goto :goto_84

    :catch_6e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception while clearing the video view: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    if-eqz v0, :cond_8b

    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;->onClosed()V

    :cond_8b
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->u()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;->onContentReady()V

    :cond_7
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Firing onVideoError with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnit"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->g()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->g()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/tapjoy/TJVideoListener;->onVideoError(I)V

    :cond_21
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    if-eqz v0, :cond_28

    invoke-interface {v0, p1}, Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;->onVideoError(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public e()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/view/View;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    iget-boolean v0, v0, Lcom/tapjoy/k;->j:Z

    return v0
.end method

.method public g()Lcom/tapjoy/TJVideoListener;
    .registers 2

    sget-object v0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJVideoListener;

    return-object v0
.end method

.method public h()Lcom/tapjoy/internal/w6;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->C:Lcom/tapjoy/internal/w6;

    return-object v0
.end method

.method public i()Lcom/tapjoy/internal/i8;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->D:Lcom/tapjoy/internal/i8;

    return-object v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/tapjoy/TJAdUnit;->l:I

    return v0
.end method

.method public k()Landroid/widget/VideoView;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    return-object v0
.end method

.method public l()F
    .registers 3

    iget v0, p0, Lcom/tapjoy/TJAdUnit;->r:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tapjoy/TJAdUnit;->s:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public m()Lcom/tapjoy/TJWebView;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    return-object v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->w:Z

    return v0
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const-string p1, "TJAdUnit"

    const-string v0, "video -- onCompletion"

    invoke-static {p1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/x6;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->G:Lcom/tapjoy/internal/i7;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->H:Lcom/tapjoy/internal/s7;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->o:Z

    iget-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->m:Z

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/tapjoy/k;->l()V

    :cond_2a
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->m:Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7

    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error encountered when instantiating the VideoView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v0, "TJAdUnit"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->m:Z

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/x6;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->G:Lcom/tapjoy/internal/i7;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->H:Lcom/tapjoy/internal/s7;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0x64

    if-eq p2, v0, :cond_41

    const-string v0, "MEDIA_ERROR_UNKNOWN"

    goto :goto_43

    :cond_41
    const-string v0, "MEDIA_ERROR_SERVER_DIED"

    :goto_43
    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x3f2

    const/16 v2, -0x3ec

    if-eq p3, v1, :cond_a1

    const/16 v1, -0x3ef

    if-eq p3, v1, :cond_8f

    if-eq p3, v2, :cond_7d

    const/16 v1, -0x6e

    if-eq p3, v1, :cond_6b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MEDIA_ERROR_EXTRA_UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b2

    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MEDIA_ERROR_TIMED_OUT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b2

    :cond_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MEDIA_ERROR_IO"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b2

    :cond_8f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MEDIA_ERROR_MALFORMED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b2

    :cond_a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MEDIA_ERROR_UNSUPPORTED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b2
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    invoke-virtual {v1, v0}, Lcom/tapjoy/k;->m(Ljava/lang/String;)V

    if-eq p2, p1, :cond_bd

    if-ne p3, v2, :cond_bc

    goto :goto_bd

    :cond_bc
    const/4 p1, 0x0

    :cond_bd
    :goto_bd
    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_19

    const/16 p1, 0x321

    if-eq p2, p1, :cond_16

    packed-switch p2, :pswitch_data_22

    const-string p1, ""

    goto :goto_1b

    :pswitch_d
    const-string p1, "MEDIA_INFO_BUFFERING_END"

    goto :goto_1b

    :pswitch_10
    const-string p1, "MEDIA_INFO_BUFFERING_START"

    goto :goto_1b

    :pswitch_13
    const-string p1, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    goto :goto_1b

    :cond_16
    const-string p1, "MEDIA_INFO_NOT_SEEKABLE"

    goto :goto_1b

    :cond_19
    const-string p1, "MEDIA_INFO_VIDEO_RENDERING_START"

    :goto_1b
    iget-object p2, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    invoke-virtual {p2, p1}, Lcom/tapjoy/k;->n(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :pswitch_data_22
    .packed-switch 0x2bc
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 7

    const-string v0, "TJAdUnit"

    const-string v1, "video -- onPrepared"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->k:Landroid/media/MediaPlayer;

    iget-boolean v3, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    if-eqz v3, :cond_3e

    if-eqz p1, :cond_3c

    if-eqz v3, :cond_2b

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_30

    :cond_2b
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :goto_30
    iget-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    if-eq p1, v3, :cond_3e

    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    invoke-virtual {p1}, Lcom/tapjoy/k;->s()V

    goto :goto_3e

    :cond_3c
    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    :cond_3e
    :goto_3e
    iget p1, p0, Lcom/tapjoy/TJAdUnit;->l:I

    if-lez p1, :cond_57

    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result p1

    iget v3, p0, Lcom/tapjoy/TJAdUnit;->l:I

    if-eq p1, v3, :cond_57

    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->k:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/tapjoy/internal/a8;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/tapjoy/internal/a8;-><init>(Lcom/tapjoy/TJAdUnit;III)V

    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    goto :goto_67

    :cond_57
    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnit;->H:Lcom/tapjoy/internal/s7;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tapjoy/k;->q(III)V

    :cond_67
    :goto_67
    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->k:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->o:Z

    return v0
.end method

.method public q(Lcom/tapjoy/w;ZLandroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->w:Z

    new-instance v0, Lcom/tapjoy/k0;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tapjoy/k0;-><init>(Lcom/tapjoy/TJAdUnit;Landroid/content/Context;Lcom/tapjoy/w;Z)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r()V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_1e

    invoke-static {v0}, Lcom/tapjoy/internal/v8;->b(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    invoke-static {v1}, Lcom/tapjoy/internal/v8;->a(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-le v0, v1, :cond_19

    const-string v3, "landscape"

    goto :goto_1b

    :cond_19
    const-string v3, "portrait"

    :goto_1b
    invoke-virtual {v2, v3, v0, v1}, Lcom/tapjoy/k;->k(Ljava/lang/String;II)V

    :cond_1e
    return-void
.end method

.method public s()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->A:Z

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/k;->v(Z)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    invoke-virtual {v0}, Lcom/tapjoy/k;->t()V

    :cond_10
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/l0;

    invoke-virtual {v0}, Lcom/tapjoy/l0;->d()Z

    return-void
.end method

.method public t(Lcom/tapjoy/w;Landroid/content/Context;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->w:Z

    if-nez v0, :cond_36

    invoke-virtual {p1}, Lcom/tapjoy/w;->p()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->canPreRenderPlacement()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_36

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pre-rendering ad unit for placement: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnit"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->incrementPlacementPreRenderCount()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/tapjoy/TJAdUnit;->q(Lcom/tapjoy/w;ZLandroid/content/Context;)V

    return v0

    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->c()V

    const/4 p1, 0x0

    return p1
.end method

.method public u()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->w:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->z:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->x:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    return-void
.end method

.method public v(Lcom/tapjoy/l;)V
    .registers 8

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    const-string v1, "TJAdUnit"

    if-nez v0, :cond_13

    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string p1, "Failed to resume TJAdUnit. TJAdUnitBridge is null."

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void

    :cond_13
    iget-boolean v0, v0, Lcom/tapjoy/k;->f:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "onResume bridge.didLaunchOtherActivity callbackID: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    iget-object v4, v4, Lcom/tapjoy/k;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    iget-object v1, v0, Lcom/tapjoy/k;->h:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Lcom/tapjoy/k;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    iput-boolean v3, v0, Lcom/tapjoy/k;->f:Z

    :cond_3f
    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnit;->A:Z

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    invoke-virtual {v0, v2}, Lcom/tapjoy/k;->v(Z)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    invoke-virtual {v0}, Lcom/tapjoy/k;->u()V

    if-eqz p1, :cond_60

    iget v0, p1, Lcom/tapjoy/l;->a:I

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->l:I

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    if-eqz v1, :cond_58

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_58
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_60

    iget-boolean p1, p1, Lcom/tapjoy/l;->c:Z

    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    :cond_60
    iget-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->B:Z

    if-eqz p1, :cond_6f

    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnit;->B:Z

    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/x6;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6f
    return-void
.end method

.method public w(Lcom/tapjoy/TJAdUnitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    return-void
.end method

.method public x()V
    .registers 2

    new-instance v0, Lcom/tapjoy/internal/i8;

    invoke-direct {v0}, Lcom/tapjoy/internal/i8;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->D:Lcom/tapjoy/internal/i8;

    return-void
.end method

.method public y(Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    return-void
.end method

.method public z(Z)V
    .registers 6

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_1e

    invoke-static {v0}, Lcom/tapjoy/internal/v8;->b(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    invoke-static {v1}, Lcom/tapjoy/internal/v8;->a(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-le v0, v1, :cond_19

    const-string v3, "landscape"

    goto :goto_1b

    :cond_19
    const-string v3, "portrait"

    :goto_1b
    invoke-virtual {v2, v3, v0, v1}, Lcom/tapjoy/k;->k(Ljava/lang/String;II)V

    :cond_1e
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->v:Z

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->z:Z

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-nez p1, :cond_2b

    goto :goto_2e

    :cond_2b
    invoke-virtual {p1}, Lcom/tapjoy/k;->e()V

    :cond_2e
    :goto_2e
    return-void
.end method
