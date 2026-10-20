###### Class com.hyprmx.android.sdk.audio.d (com.hyprmx.android.sdk.audio.d)
.class public final Lcom/hyprmx/android/sdk/audio/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/audio/c;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hyprmx/android/sdk/audio/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/js/a;Lcom/hyprmx/android/sdk/audio/b;)V
    .registers 4

    const-string v0, "jsEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HYPRNativeAudioListener"

    invoke-interface {p1, v0, p0}, Lcom/hyprmx/android/sdk/core/js/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/audio/d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getAudioCategory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/audio/b;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/audio/b;->getAudioCategory()V

    const-string v0, "STREAM_MUSIC"

    goto :goto_12

    :cond_10
    const-string v0, "Unknown"

    :goto_12
    return-object v0
.end method

.method public final getIsMuted()Z
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/audio/b;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/audio/b;->getIsMuted()V

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final getVolume()D
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/audio/b;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/audio/b;->getVolume()D

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    return-wide v0
.end method

.method public final setActive(ZJ)V
    .registers 4

    iget-object p2, p0, Lcom/hyprmx/android/sdk/audio/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hyprmx/android/sdk/audio/b;

    if-eqz p2, :cond_d

    invoke-interface {p2, p1}, Lcom/hyprmx/android/sdk/audio/b;->a(Z)V

    :cond_d
    return-void
.end method

.method public final startAudioSession()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/audio/b;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/audio/b;->startAudioSession()V

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method
