###### Class com.fyber.inneractive.sdk.util.o (com.fyber.inneractive.sdk.util.o)
.class public Lcom/fyber/inneractive/sdk/util/o;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/util/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/fyber/inneractive/sdk/util/o$a;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fyber/inneractive/sdk/util/o$a;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/util/o;->b:Lcom/fyber/inneractive/sdk/util/o$a;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/util/o;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/o;->d:Ljava/lang/String;

    iput p5, p0, Lcom/fyber/inneractive/sdk/util/o;->e:I

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    check-cast p1, [Ljava/lang/Void;

    const/16 p1, 0x2000

    new-array v0, p1, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_9
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/util/o;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/util/o;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_33

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_35

    :cond_33
    iget-object v6, p0, Lcom/fyber/inneractive/sdk/util/o;->d:Ljava/lang/String;

    :goto_35
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_bd

    :try_start_38
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_ba

    :try_start_3d
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/util/o;->c:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_b7

    const/16 v7, 0x1388

    :try_start_4c
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_b4

    const/4 v8, 0x0

    :cond_57
    :goto_57
    :try_start_57
    iget v9, p0, Lcom/fyber/inneractive/sdk/util/o;->e:I

    sub-int/2addr v9, p1

    if-ge v8, v9, :cond_68

    invoke-virtual {v7, v0, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_57

    invoke-virtual {v5, v0, v2, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_66
    .catchall {:try_start_57 .. :try_end_66} :catchall_b2

    add-int/2addr v8, v9

    goto :goto_57

    :cond_68
    :try_start_68
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    if-eqz v7, :cond_77

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catchall {:try_start_68 .. :try_end_73} :catchall_74

    goto :goto_77

    :catchall_74
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_77
    :goto_77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_81
    monitor-enter v0
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_82} :catch_99
    .catchall {:try_start_81 .. :try_end_82} :catchall_97

    :try_start_82
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v0

    goto :goto_a7

    :catchall_94
    move-exception p1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_82 .. :try_end_96} :catchall_94

    :try_start_96
    throw p1
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_97} :catch_99
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    :catchall_97
    move-exception p1

    goto :goto_ae

    :catch_99
    move-exception p1

    :try_start_9a
    const-string v0, "Failed getting frame from video file%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/util/q;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a7
    .catchall {:try_start_9a .. :try_end_a7} :catchall_97

    :goto_a7
    :try_start_a7
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_aa

    :catchall_aa
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_e7

    :goto_ae
    :try_start_ae
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b1

    :catchall_b1
    throw p1

    :catchall_b2
    move-exception p1

    goto :goto_c2

    :catchall_b4
    move-exception p1

    move-object v7, v3

    goto :goto_c2

    :catchall_b7
    move-exception p1

    move-object v6, v3

    goto :goto_c1

    :catchall_ba
    move-exception p1

    move-object v5, v3

    goto :goto_c0

    :catchall_bd
    move-exception p1

    move-object v4, v3

    move-object v5, v4

    :goto_c0
    move-object v6, v5

    :goto_c1
    move-object v7, v6

    :goto_c2
    :try_start_c2
    const-string v0, "Failed getting frame from video file%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/util/q;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_d4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_d4
    .catchall {:try_start_c2 .. :try_end_d4} :catchall_e8

    :cond_d4
    if-eqz v6, :cond_d9

    :try_start_d6
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d9
    if-eqz v5, :cond_de

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_de
    if-eqz v7, :cond_e7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e3
    .catchall {:try_start_d6 .. :try_end_e3} :catchall_e4

    goto :goto_e7

    :catchall_e4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_e7
    :goto_e7
    return-object v3

    :catchall_e8
    move-exception p1

    if-eqz v6, :cond_ee

    :try_start_eb
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ee
    if-eqz v5, :cond_f3

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_f3
    if-eqz v7, :cond_fc

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f8
    .catchall {:try_start_eb .. :try_end_f8} :catchall_f9

    goto :goto_fc

    :catchall_f9
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_fc
    :goto_fc
    throw p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/o;->b:Lcom/fyber/inneractive/sdk/util/o$a;

    if-nez v0, :cond_7

    goto :goto_3e

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_24

    check-cast v0, Lcom/fyber/inneractive/sdk/player/b;

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/b;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/player/c;->m:Lcom/fyber/inneractive/sdk/util/o$a;

    if-eqz v4, :cond_1c

    invoke-virtual {v3, p1}, Lcom/fyber/inneractive/sdk/player/c;->a(Landroid/graphics/Bitmap;)V

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/b;->a:Lcom/fyber/inneractive/sdk/player/c;

    iput-object v2, p1, Lcom/fyber/inneractive/sdk/player/c;->l:Lcom/fyber/inneractive/sdk/util/o;

    iput-object v2, p1, Lcom/fyber/inneractive/sdk/player/c;->m:Lcom/fyber/inneractive/sdk/util/o$a;

    :cond_1c
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "MediaPlayerController: fetching video frame success!"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3c

    :cond_24
    check-cast v0, Lcom/fyber/inneractive/sdk/player/b;

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/b;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v3, p1, Lcom/fyber/inneractive/sdk/player/c;->m:Lcom/fyber/inneractive/sdk/util/o$a;

    if-eqz v3, :cond_35

    invoke-virtual {p1, v2}, Lcom/fyber/inneractive/sdk/player/c;->a(Landroid/graphics/Bitmap;)V

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/b;->a:Lcom/fyber/inneractive/sdk/player/c;

    iput-object v2, p1, Lcom/fyber/inneractive/sdk/player/c;->l:Lcom/fyber/inneractive/sdk/util/o;

    iput-object v2, p1, Lcom/fyber/inneractive/sdk/player/c;->m:Lcom/fyber/inneractive/sdk/util/o$a;

    :cond_35
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "MediaPlayerController: fetching video frame failed!"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3c
    iput-object v2, p0, Lcom/fyber/inneractive/sdk/util/o;->b:Lcom/fyber/inneractive/sdk/util/o$a;

    :goto_3e
    return-void
.end method
