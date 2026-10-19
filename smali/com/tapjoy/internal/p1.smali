###### Class com.tapjoy.internal.p1 (com.tapjoy.internal.p1)
.class public final Lcom/tapjoy/internal/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/net/URL;

.field public final synthetic b:Ljava/io/InputStream;

.field public final synthetic c:J

.field public final synthetic d:Lcom/tapjoy/internal/m2;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/m2;Ljava/net/URL;Ljava/io/ByteArrayInputStream;J)V
    .registers 6

    iput-object p1, p0, Lcom/tapjoy/internal/p1;->d:Lcom/tapjoy/internal/m2;

    iput-object p2, p0, Lcom/tapjoy/internal/p1;->a:Ljava/net/URL;

    iput-object p3, p0, Lcom/tapjoy/internal/p1;->b:Ljava/io/InputStream;

    iput-wide p4, p0, Lcom/tapjoy/internal/p1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/p1;->d:Lcom/tapjoy/internal/m2;

    iget-object v1, v0, Lcom/tapjoy/internal/m2;->e:Ljava/io/File;

    if-nez v1, :cond_15

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/tapjoy/internal/m2;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "tapjoy_mm_cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tapjoy/internal/m2;->e:Ljava/io/File;

    :cond_15
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1e
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_27
    const-string v0, "tj_"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_31

    return-void

    :cond_31
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_36} :catch_b2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_b2

    :try_start_36
    iget-object v2, p0, Lcom/tapjoy/internal/p1;->b:Ljava/io/InputStream;

    const/16 v3, 0x1000

    new-array v3, v3, [B

    :goto_3c
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_ad

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_46} :catch_b2

    iget-wide v1, p0, Lcom/tapjoy/internal/p1;->c:J

    const-wide/32 v3, 0x93a80

    cmp-long v5, v1, v3

    if-lez v5, :cond_50

    move-wide v1, v3

    :cond_50
    invoke-static {}, Lcom/tapjoy/internal/na;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v1, v1, v5

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/tapjoy/internal/p1;->d:Lcom/tapjoy/internal/m2;

    monitor-enter v3

    :try_start_5c
    iget-object v4, p0, Lcom/tapjoy/internal/p1;->d:Lcom/tapjoy/internal/m2;

    iget-object v5, p0, Lcom/tapjoy/internal/p1;->a:Ljava/net/URL;

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/m2;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/internal/p1;->d:Lcom/tapjoy/internal/m2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/io/File;

    iget-object v7, v5, Lcom/tapjoy/internal/m2;->e:Ljava/io/File;

    if-nez v7, :cond_7e

    new-instance v7, Ljava/io/File;

    iget-object v8, v5, Lcom/tapjoy/internal/m2;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "tapjoy_mm_cache"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v5, Lcom/tapjoy/internal/m2;->e:Ljava/io/File;

    :cond_7e
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_87

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_87
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_90

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_90
    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/tapjoy/internal/p1;->d:Lcom/tapjoy/internal/m2;

    iget-object v0, v0, Lcom/tapjoy/internal/m2;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_a8
    monitor-exit v3

    return-void

    :catchall_aa
    move-exception v0

    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_5c .. :try_end_ac} :catchall_aa

    throw v0

    :cond_ad
    const/4 v5, 0x0

    :try_start_ae
    invoke-virtual {v1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_3c

    :catch_b2
    return-void
.end method
