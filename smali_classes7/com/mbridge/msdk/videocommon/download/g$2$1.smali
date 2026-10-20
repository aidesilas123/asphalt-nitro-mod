###### Class com.mbridge.msdk.videocommon.download.g.AnonymousClass2.AnonymousClass1 (com.mbridge.msdk.videocommon.download.g$2$1)
.class final Lcom/mbridge/msdk/videocommon/download/g$2$1;
.super Ljava/lang/Object;
.source "H5DownLoadManager.java"

# interfaces
.implements Lcom/mbridge/msdk/videocommon/download/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/videocommon/download/g$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/videocommon/download/g$2;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/videocommon/download/g$2;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/g$2$1;->a:Lcom/mbridge/msdk/videocommon/download/g$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/g$2$1;->a:Lcom/mbridge/msdk/videocommon/download/g$2;

    iget-object v0, v0, Lcom/mbridge/msdk/videocommon/download/g$2;->f:Lcom/mbridge/msdk/videocommon/download/g;

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/g;->b(Lcom/mbridge/msdk/videocommon/download/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/g$2$1;->a:Lcom/mbridge/msdk/videocommon/download/g$2;

    iget-object v1, v1, Lcom/mbridge/msdk/videocommon/download/g$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/g$2$1;->a:Lcom/mbridge/msdk/videocommon/download/g$2;

    iget-object v1, v0, Lcom/mbridge/msdk/videocommon/download/g$2;->e:Lcom/mbridge/msdk/videocommon/download/g$a;

    if-eqz v1, :cond_2e

    iget-object v0, v0, Lcom/mbridge/msdk/videocommon/download/g$2;->a:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_2e

    :catch_1b
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/g$2$1;->a:Lcom/mbridge/msdk/videocommon/download/g$2;

    iget-object v1, v0, Lcom/mbridge/msdk/videocommon/download/g$2;->e:Lcom/mbridge/msdk/videocommon/download/g$a;

    if-eqz v1, :cond_2e

    iget-object v0, v0, Lcom/mbridge/msdk/videocommon/download/g$2;->a:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final a(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/g$2$1;->a:Lcom/mbridge/msdk/videocommon/download/g$2;

    iget-object p1, p1, Lcom/mbridge/msdk/videocommon/download/g$2;->f:Lcom/mbridge/msdk/videocommon/download/g;

    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/download/g;->b(Lcom/mbridge/msdk/videocommon/download/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4c

    array-length p1, p2

    if-lez p1, :cond_4c

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/g$2$1;->a:Lcom/mbridge/msdk/videocommon/download/g$2;

    iget-object p1, p1, Lcom/mbridge/msdk/videocommon/download/g$2;->f:Lcom/mbridge/msdk/videocommon/download/g;

    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/download/g;->a(Lcom/mbridge/msdk/videocommon/download/g;)Lcom/mbridge/msdk/videocommon/download/h;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/mbridge/msdk/videocommon/download/h;->a(Ljava/lang/String;[B)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/g$2$1;->a:Lcom/mbridge/msdk/videocommon/download/g$2;

    iget-object p1, p1, Lcom/mbridge/msdk/videocommon/download/g$2;->e:Lcom/mbridge/msdk/videocommon/download/g$a;

    if-eqz p1, :cond_2a

    const-string p2, ""

    const/4 v0, 0x0

    invoke-interface {p1, p3, p2, v0}, Lcom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2a
    return-void

    :cond_2b
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/g$2$1;->a:Lcom/mbridge/msdk/videocommon/download/g$2;

    iget-object p1, p1, Lcom/mbridge/msdk/videocommon/download/g$2;->e:Lcom/mbridge/msdk/videocommon/download/g$a;

    if-eqz p1, :cond_4c

    const-string p2, "save file failed"

    invoke-interface {p1, p3, p2}, Lcom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_4c

    :catch_37
    move-exception p1

    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_3f

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/g$2$1;->a:Lcom/mbridge/msdk/videocommon/download/g$2;

    iget-object p2, p2, Lcom/mbridge/msdk/videocommon/download/g$2;->e:Lcom/mbridge/msdk/videocommon/download/g$a;

    if-eqz p2, :cond_4c

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method
