###### Class com.mbridge.msdk.videocommon.download.g.AnonymousClass3 (com.mbridge.msdk.videocommon.download.g$3)
.class final Lcom/mbridge/msdk/videocommon/download/g$3;
.super Ljava/lang/Object;
.source "H5DownLoadManager.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/videocommon/download/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/videocommon/download/g$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/videocommon/download/g;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/videocommon/download/g;Lcom/mbridge/msdk/videocommon/download/g$a;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/g$3;->c:Lcom/mbridge/msdk/videocommon/download/g;

    iput-object p2, p0, Lcom/mbridge/msdk/videocommon/download/g$3;->a:Lcom/mbridge/msdk/videocommon/download/g$a;

    iput-object p3, p0, Lcom/mbridge/msdk/videocommon/download/g$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelDownload(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .registers 2

    return-void
.end method

.method public final onDownloadComplete(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .registers 5

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/g$3;->a:Lcom/mbridge/msdk/videocommon/download/g$a;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/g$3;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-interface {p1, v0, v2, v1}, Lcom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method public final onDownloadError(Lcom/mbridge/msdk/foundation/download/DownloadMessage;Lcom/mbridge/msdk/foundation/download/DownloadError;)V
    .registers 4

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/g$3;->a:Lcom/mbridge/msdk/videocommon/download/g$a;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/g$3;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/DownloadError;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final onDownloadStart(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .registers 2

    return-void
.end method
