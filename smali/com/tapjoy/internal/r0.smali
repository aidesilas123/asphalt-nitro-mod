###### Class com.tapjoy.internal.r0 (com.tapjoy.internal.r0)
.class public final Lcom/tapjoy/internal/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/r0;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/r0;->a:Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_25

    :try_start_f
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v3, Lcom/tapjoy/internal/y2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_20

    :try_start_1c
    invoke-static {v2}, Lcom/tapjoy/internal/l8;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_20
    move-exception v0

    invoke-static {v2}, Lcom/tapjoy/internal/l8;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_25} :catch_25

    :catch_25
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/r0;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method
