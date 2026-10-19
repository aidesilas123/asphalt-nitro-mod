###### Class com.gameloft.android.ANMP.GloftAGHM.InGameBrowser.a (com.gameloft.android.ANMP.GloftAGHM.InGameBrowser$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$a;
.super Ljava/lang/Object;
.source "InGameBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->QuitIGB()V
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
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$000()Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$100(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
