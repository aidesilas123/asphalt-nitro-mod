###### Class com.gameloft.android.ANMP.GloftAGHM.InGameBrowser.f (com.gameloft.android.ANMP.GloftAGHM.InGameBrowser$f)
.class Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$f;
.super Ljava/lang/Thread;
.source "InGameBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->refreshUnreadNewsNumberInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$2000()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$1300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LAST_ID"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$1500()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$1700(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1a
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$1800(Lorg/json/JSONObject;Z)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_34} :catch_34

    :catch_34
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$2102(Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
