###### Class com.nearme.game.sdk.common.util.IOUtil (com.nearme.game.sdk.common.util.IOUtil)
.class public Lcom/nearme/game/sdk/common/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ByteArrToObject([B)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_2f
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    :try_start_6
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_27
    .catchall {:try_start_6 .. :try_end_b} :catchall_22

    :try_start_b
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_20
    .catchall {:try_start_b .. :try_end_f} :catchall_45

    :try_start_f
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_17
    :try_start_17
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_44

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    :catch_20
    move-exception v2

    goto :goto_32

    :catchall_22
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_46

    :catch_27
    move-exception v2

    move-object p0, v0

    goto :goto_32

    :catchall_2a
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_46

    :catch_2f
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    :goto_32
    :try_start_32
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_45

    if-eqz v1, :cond_3f

    :try_start_37
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3f
    :goto_3f
    if-eqz p0, :cond_44

    :try_start_41
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_1b

    :cond_44
    :goto_44
    return-object v0

    :catchall_45
    move-exception v0

    :goto_46
    if-eqz v1, :cond_50

    :try_start_48
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_50
    :goto_50
    if-eqz p0, :cond_5a

    :try_start_52
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5a
    :goto_5a
    throw v0
.end method

.method public static ObjectToByte(Ljava/lang/Object;)[B
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_2e
    .catchall {:try_start_1 .. :try_end_6} :catchall_2b

    :try_start_6
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_28
    .catchall {:try_start_6 .. :try_end_b} :catchall_25

    :try_start_b
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_23
    .catchall {:try_start_b .. :try_end_12} :catchall_44

    :try_start_12
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_43

    :catch_1e
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    :catch_23
    move-exception p0

    goto :goto_31

    :catchall_25
    move-exception p0

    move-object v2, v0

    goto :goto_45

    :catch_28
    move-exception p0

    move-object v2, v0

    goto :goto_31

    :catchall_2b
    move-exception p0

    move-object v2, v0

    goto :goto_46

    :catch_2e
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_31
    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_44

    if-eqz v1, :cond_3e

    :try_start_36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3e
    :goto_3e
    if-eqz v2, :cond_43

    :try_start_40
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_1e

    :cond_43
    :goto_43
    return-object v0

    :catchall_44
    move-exception p0

    :goto_45
    move-object v0, v1

    :goto_46
    if-eqz v0, :cond_50

    :try_start_48
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_50
    :goto_50
    if-eqz v2, :cond_5a

    :try_start_52
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5a
    :goto_5a
    throw p0
.end method
