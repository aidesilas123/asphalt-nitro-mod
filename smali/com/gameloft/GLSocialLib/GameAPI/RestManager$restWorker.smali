###### Class com.gameloft.GLSocialLib.GameAPI.RestManager.restWorker (com.gameloft.GLSocialLib.GameAPI.RestManager$restWorker)
.class Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;
.super Ljava/lang/Object;
.source "RestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/GLSocialLib/GameAPI/RestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "restWorker"
.end annotation


# instance fields
.field private mDelegate:Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;

.field final synthetic this$0:Lcom/gameloft/GLSocialLib/GameAPI/RestManager;


# direct methods
.method public constructor <init>(Lcom/gameloft/GLSocialLib/GameAPI/RestManager;Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/RestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->mDelegate:Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;

    return-void
.end method

.method private RunQuery(Ljava/lang/String;)V
    .registers 9

    const-string v0, " when requesting person data from "

    const-string v1, "Error "

    const/16 v2, 0xa

    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/RestManager;

    invoke-static {v3}, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->access$100(Lcom/gameloft/GLSocialLib/GameAPI/RestManager;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_36

    if-lez v2, :cond_36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A valid OAuth token is required, waiting and retrying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " more times..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Verbose(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_29} :catch_137

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, 0xc8

    :try_start_2d
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_137

    goto :goto_6

    :catch_31
    move-exception v3

    :try_start_32
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    :cond_36
    iget-object v2, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/RestManager;

    invoke-static {v2}, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->access$100(Lcom/gameloft/GLSocialLib/GameAPI/RestManager;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_46

    iget-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->mDelegate:Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;

    const-string v0, "No auth token available"

    invoke-interface {p1, v0}, Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;->onRestError(Ljava/lang/String;)V

    return-void

    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/RestManager;

    invoke-static {v3}, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->access$100(Lcom/gameloft/GLSocialLib/GameAPI/RestManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Verbose(Ljava/lang/String;)V

    const-string v2, "Android"

    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string p1, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OAuth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/RestManager;

    invoke-static {v5}, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->access$100(Lcom/gameloft/GLSocialLib/GameAPI/RestManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    if-eqz v4, :cond_f2

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_f2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x191

    if-ne v5, v6, :cond_f2

    iget-object v5, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/RestManager;

    invoke-static {v5}, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->access$200(Lcom/gameloft/GLSocialLib/GameAPI/RestManager;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/RestManager;

    invoke-static {v6}, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->access$100(Lcom/gameloft/GLSocialLib/GameAPI/RestManager;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->mDelegate:Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;->onRestError(Ljava/lang/String;)V

    :cond_f2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_103
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_10f

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_103

    :cond_10f
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->mDelegate:Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;

    invoke-interface {v0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;->onRestResponse(Ljava/lang/String;)V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_136} :catch_137

    return-void

    :catch_137
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    iget-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->mDelegate:Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;

    const-string v0, "Something went wrong"

    invoke-interface {p1, v0}, Lcom/gameloft/GLSocialLib/GameAPI/RestManagerListener;->onRestError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/RestManager$restWorker;->RunQuery(Ljava/lang/String;)V

    return-void
.end method
