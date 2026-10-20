###### Class com.mbridge.msdk.foundation.tools.k.AnonymousClass1 (com.mbridge.msdk.foundation.tools.k$1)
.class final Lcom/mbridge/msdk/foundation/tools/k$1;
.super Ljava/lang/Object;
.source "DynamicViewResourceManager.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/tools/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/foundation/tools/k$a;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/tools/k$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->c:Lcom/mbridge/msdk/foundation/tools/k$a;

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelDownload(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .registers 2

    return-void
.end method

.method public final onDownloadComplete(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .registers 10

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->a:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;->unZip(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->c:Lcom/mbridge/msdk/foundation/tools/k$a;

    if-eqz v0, :cond_51

    const-string v0, ""
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_51

    const-string v7, "DynamicViewResourceManager"

    if-eqz p1, :cond_3d

    :try_start_2b
    const-string v1, "responseHeaders"

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_35

    move-object v0, p1

    goto :goto_3d

    :catchall_35
    move-exception p1

    :try_start_36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_51

    :cond_3d
    :goto_3d
    move-object v5, v0

    :try_start_3e
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->c:Lcom/mbridge/msdk/foundation/tools/k$a;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->e:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/tools/k$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_48} :catch_49

    goto :goto_51

    :catch_49
    move-exception p1

    :try_start_4a
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_51

    :catch_51
    :cond_51
    :goto_51
    return-void
.end method

.method public final onDownloadError(Lcom/mbridge/msdk/foundation/download/DownloadMessage;Lcom/mbridge/msdk/foundation/download/DownloadError;)V
    .registers 4

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->c:Lcom/mbridge/msdk/foundation/tools/k$a;

    if-eqz p1, :cond_14

    :try_start_4
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/k$1;->d:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/mbridge/msdk/foundation/tools/k$a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/DownloadError;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_14

    :catch_a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DynamicViewResourceManager"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public final onDownloadStart(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .registers 2

    return-void
.end method
