###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.Tracking.a (com.gameloft.android.ANMP.GloftAGHM.GLUtils.Tracking$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking$a;
.super Ljava/lang/Object;
.source "Tracking.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->onLaunchGame(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking$a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0xfa

    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking$a;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_51

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->testFlags(I)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->access$300()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_3d
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->access$300()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&check=2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&enc=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_62
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_62} :catch_da
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_62} :catch_da

    :try_start_62
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_91} :catch_91

    :catch_91
    :try_start_91
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->access$400()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    iget v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking$a;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_ba

    const/4 v2, 0x3

    if-ne v1, v2, :cond_da

    :cond_ba
    const-string v1, "action=InstallReferrer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_da

    const-string v0, "trc_SentLI"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trc_LI_ver"

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_da
    .catch Ljava/net/UnknownHostException; {:try_start_91 .. :try_end_da} :catch_da
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_da} :catch_da

    :catch_da
    :cond_da
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
