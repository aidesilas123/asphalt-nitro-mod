###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.a (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/a;
.super Ljava/lang/Object;
.source "AudioListenerPlugin.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 4

    const/4 v0, -0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_13

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    goto :goto_16

    :cond_b
    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeAudioFocusChanged(Z)V

    goto :goto_16

    :cond_f
    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeAudioFocusChanged(Z)V

    goto :goto_16

    :cond_13
    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeAudioFocusChanged(Z)V

    :goto_16
    return-void
.end method
