###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.AudioListenerPlugin (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.AudioListenerPlugin)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;
.super Ljava/lang/Object;
.source "AudioListenerPlugin.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/media/AudioManager;

.field private c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/a;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->b:Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->d:Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/FrameworkApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->b:Landroid/media/AudioManager;

    new-instance p1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/a;

    invoke-direct {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/a;-><init>()V

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/a;

    return-void
.end method

.method public onPostNativePause()V
    .registers 3

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->d:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->d:Z

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_e
    return-void
.end method

.method public onPostNativeResume()V
    .registers 1

    return-void
.end method

.method public onPreNativePause()V
    .registers 1

    return-void
.end method

.method public onPreNativeResume()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeUserMusicIsPlaying(Z)V

    goto :goto_1b

    :cond_d
    iput-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->d:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeUserMusicIsPlaying(Z)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->b:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AudioListenerPlugin;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/a;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :goto_1b
    return-void
.end method
