###### Class com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLibThread (com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLibThread)
.class public Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLibThread;
.super Ljava/lang/Thread;
.source "GameAPIAndroidGLSocialLibThread.java"


# static fields
.field public static m_handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    const-string v0, "GameAPIAndroidGLSocialLib: FacebookAndroidGLSocialLibThread Looper.prepare()"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string v0, "GameAPIAndroidGLSocialLib: FacebookAndroidGLSocialLibThread m_handler = new Handler()"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLibThread;->m_handler:Landroid/os/Handler;

    const-string v0, "GameAPIAndroidGLSocialLib: FacebookAndroidGLSocialLibThread Looper.loop();"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "GameAPIAndroidGLSocialLib: FacebookAndroidGLSocialLibThread end loop"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    goto :goto_3b

    :catchall_22
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameAPIAndroidGLSocialLib: FacebookAndroidGLSocialLibThread halted due to an error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Major_Error(Ljava/lang/String;)V

    :goto_3b
    return-void
.end method
