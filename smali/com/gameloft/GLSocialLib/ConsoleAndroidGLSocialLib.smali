###### Class com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib (com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib)
.class public Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;
.super Ljava/lang/Object;
.source "ConsoleAndroidGLSocialLib.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Log_Debug(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Print(ILjava/lang/String;)V

    return-void
.end method

.method public static Log_Fatal_Error(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Print(ILjava/lang/String;)V

    return-void
.end method

.method public static Log_Info(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Print(ILjava/lang/String;)V

    return-void
.end method

.method public static Log_Major_Error(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Print(ILjava/lang/String;)V

    return-void
.end method

.method public static Log_Minor_Error(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Print(ILjava/lang/String;)V

    return-void
.end method

.method public static Log_Verbose(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Print(ILjava/lang/String;)V

    return-void
.end method

.method public static Print(ILjava/lang/String;)V
    .registers 2

    return-void
.end method
