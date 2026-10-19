###### Class com.gameloft.android.ANMP.GloftAGHM.InGameBrowser.d (com.gameloft.android.ANMP.GloftAGHM.InGameBrowser$d)
.class Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$d;
.super Ljava/lang/Thread;
.source "InGameBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$d;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :goto_0
    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->B:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$d;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$700(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpl-double v4, v0, v2

    if-gez v4, :cond_45

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$d;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$800(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v4, v0, v2

    if-gez v4, :cond_45

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$d;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$900(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v4, v0, v2

    if-gez v4, :cond_45

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$d;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$1000(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_4f

    :cond_45
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$d;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$d$a;

    invoke-direct {v1, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$d$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4f
    const-wide/16 v0, 0x1e

    :try_start_51
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_0

    :catch_55
    nop

    goto :goto_0

    :cond_57
    return-void
.end method
