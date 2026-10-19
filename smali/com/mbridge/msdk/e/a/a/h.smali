###### Class com.mbridge.msdk.e.a.a.h (com.mbridge.msdk.e.a.a.h)
.class final Lcom/mbridge/msdk/e/a/a/h;
.super Ljava/lang/Object;
.source "NetworkUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/e/a/a/h$a;
    }
.end annotation


# direct methods
.method static a(Ljava/io/InputStream;ILcom/mbridge/msdk/e/a/a/c;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error occurred when closing InputStream"

    new-instance v1, Lcom/mbridge/msdk/e/a/a/j;

    invoke-direct {v1, p2, p1}, Lcom/mbridge/msdk/e/a/a/j;-><init>(Lcom/mbridge/msdk/e/a/a/c;I)V

    const/16 p1, 0x400

    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/e/a/a/c;->a(I)[B

    move-result-object p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_2f

    :goto_e
    :try_start_e
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_19

    invoke-virtual {v1, p1, v2, v3}, Lcom/mbridge/msdk/e/a/a/j;->write([BII)V

    goto :goto_e

    :cond_19
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_2d

    :try_start_1d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_26

    :catch_21
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/mbridge/msdk/e/a/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_26
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/e/a/a/c;->a([B)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/a/j;->close()V

    return-object v3

    :catchall_2d
    move-exception v3

    goto :goto_31

    :catchall_2f
    move-exception v3

    const/4 p1, 0x0

    :goto_31
    if-eqz p0, :cond_3c

    :try_start_33
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3c

    :catch_37
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/mbridge/msdk/e/a/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    :goto_3c
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/e/a/a/c;->a([B)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/a/j;->close()V

    throw v3
.end method
