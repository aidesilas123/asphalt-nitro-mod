###### Class com.mbridge.msdk.foundation.tools.x (com.mbridge.msdk.foundation.tools.x)
.class public Lcom/mbridge/msdk/foundation/tools/x;
.super Ljava/lang/Object;
.source "SameFileMD5.java"


# static fields
.field protected static a:[C = null

.field protected static b:Ljava/security/MessageDigest; = null

.field private static c:Ljava/lang/String; = "SameFileMD5"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_36

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/x;->a:[C

    const/4 v0, 0x0

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/x;->b:Ljava/security/MessageDigest;

    :try_start_c
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/x;->b:Ljava/security/MessageDigest;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_35

    :catch_15
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/mbridge/msdk/foundation/tools/x;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u521d\u59cb\u5316\u5931\u8d25\uff0cMessageDigest\u4e0d\u652f\u6301MD5Util."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_35
    return-void

    :array_36
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_33
    .catchall {:try_start_1 .. :try_end_6} :catchall_31

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/x;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    sget-object p0, Lcom/mbridge/msdk/foundation/tools/x;->b:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x0

    array-length v2, p0

    invoke-static {p0, v0, v2}, Lcom/mbridge/msdk/foundation/tools/x;->a([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_2e
    .catchall {:try_start_6 .. :try_end_27} :catchall_2b

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_2b
    move-exception p0

    move-object v0, v1

    goto :goto_43

    :catch_2e
    move-exception p0

    move-object v0, v1

    goto :goto_34

    :catchall_31
    move-exception p0

    goto :goto_43

    :catch_33
    move-exception p0

    :goto_34
    :try_start_34
    sget-object v1, Lcom/mbridge/msdk/foundation/tools/x;->c:Ljava/lang/String;

    const-string v2, "FILE EXCEPTION"

    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_31

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_40
    const-string p0, ""

    return-object p0

    :goto_43
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_48
    throw p0
.end method

.method private static a([BII)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/2addr p2, p1

    :goto_8
    if-ge p1, p2, :cond_21

    aget-byte v1, p0, p1

    sget-object v2, Lcom/mbridge/msdk/foundation/tools/x;->a:[C

    and-int/lit16 v3, v1, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v2, v3

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
