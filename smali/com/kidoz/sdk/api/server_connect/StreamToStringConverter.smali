###### Class com.kidoz.sdk.api.server_connect.StreamToStringConverter (com.kidoz.sdk.api.server_connect.StreamToStringConverter)
.class public Lcom/kidoz/sdk/api/server_connect/StreamToStringConverter;
.super Ljava/lang/Object;
.source "StreamToStringConverter.java"


# static fields
.field protected static final IO_BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readStream(Ljava/io/BufferedInputStream;Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;Z)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x1000

    const/4 v1, 0x0

    :try_start_3
    new-array v0, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_4c
    .catchall {:try_start_3 .. :try_end_e} :catchall_40

    :try_start_e
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    :goto_12
    const/4 v4, 0x0

    if-lez v3, :cond_29

    if-eqz p2, :cond_21

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_21

    :cond_1f
    const/4 v4, 0x1

    goto :goto_29

    :cond_21
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_28} :catch_4d
    .catchall {:try_start_e .. :try_end_28} :catchall_3d

    goto :goto_12

    :cond_29
    :goto_29
    if-eqz v4, :cond_32

    :try_start_2b
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_31

    :catch_31
    return-object v1

    :cond_32
    :try_start_32
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_4d
    .catchall {:try_start_32 .. :try_end_36} :catchall_3d

    :try_start_36
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_3c

    :catch_3c
    return-object p1

    :catchall_3d
    move-exception p1

    move-object v1, v2

    goto :goto_41

    :catchall_40
    move-exception p1

    :goto_41
    if-eqz p0, :cond_46

    :try_start_43
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    :cond_46
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4b} :catch_4b

    :catch_4b
    :cond_4b
    throw p1

    :catch_4c
    move-object v2, v1

    :catch_4d
    if-eqz p0, :cond_52

    :try_start_4f
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    :cond_52
    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_57} :catch_57

    :catch_57
    :cond_57
    return-object v1
.end method
