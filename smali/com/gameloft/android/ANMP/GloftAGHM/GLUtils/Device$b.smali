###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device.b (com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device$b;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->InitDeviceValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$202(Landroid/webkit/WebView;)Landroid/webkit/WebView;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$200()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$302(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$202(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_25

    :catch_20
    const-string v0, "GL_EMU_001"

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$302(Ljava/lang/String;)Ljava/lang/String;

    :goto_25
    return-void
.end method
