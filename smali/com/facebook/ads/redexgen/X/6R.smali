###### Class com.facebook.ads.redexgen.X.C6R (com.facebook.ads.redexgen.X.6R)
.class public final Lcom/facebook/ads/redexgen/X/6R;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;

.field public static volatile A05:Lcom/facebook/ads/redexgen/X/6R;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Y9;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/6O;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xEW9LSpkxtcMkiVkCjWXuTu5CJHPJiyq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tTP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "A"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dhAFlm3SiPB0s9864OvgcmZEVzRtwwmX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mnE9bSEHBlleLkXo6La2W5bpkmZqSUyN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0jwmHWkFqK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xBcWrb6s57BN1yke0uYkFqIHC7aAgPEb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dL0KwaEpZdlIbw3ka3MpOkzONR5qkJY2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6R;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6R;->A09()V

    const-class v0, Lcom/facebook/ads/redexgen/X/6R;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6R;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y9;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A01:Ljava/util/Map;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    return-void
.end method

.method private A00(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .registers 14

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    if-nez p2, :cond_10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6R;->A0B(Ljava/lang/Throwable;)V

    return v10

    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6R;->A07(Lcom/facebook/ads/redexgen/X/7S;)Ljava/io/File;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_3a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p2, v1, v0, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0F(Landroid/content/Context;)I

    move-result v0

    if-lt v6, v0, :cond_7c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x23

    const/16 v1, 0x2a

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6R;->A0B(Ljava/lang/Throwable;)V
    :try_end_75
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_75} :catch_f1
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_75} :catch_c2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3a .. :try_end_75} :catch_8f
    .catchall {:try_start_3a .. :try_end_75} :catchall_123

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    return v10

    :cond_7c
    :try_start_7c
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_88} :catch_f1
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_88} :catch_c2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7c .. :try_end_88} :catch_8f
    .catchall {:try_start_7c .. :try_end_88} :catchall_123

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    return v6

    :catch_8f
    move-exception v6

    :try_start_90
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/6R;->A0B(Ljava/lang/Throwable;)V

    sget-object v3, Lcom/facebook/ads/redexgen/X/6R;->A04:Ljava/lang/String;

    const/16 v2, 0xb8

    const/16 v1, 0x27

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_90 .. :try_end_a2} :catchall_123

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/6R;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_bc

    sget-object v2, Lcom/facebook/ads/redexgen/X/6R;->A03:[Ljava/lang/String;

    const-string v1, "QxsbBUkJdqjFKv7NMRisOUwCFhjpKYpW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v10

    :cond_bc
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catch_c2
    move-exception v7

    :try_start_c3
    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/6R;->A0B(Ljava/lang/Throwable;)V

    sget-object v6, Lcom/facebook/ads/redexgen/X/6R;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x94

    const/16 v1, 0x24

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ea
    .catchall {:try_start_c3 .. :try_end_ea} :catchall_123

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    return v10

    :catch_f1
    move-exception v7

    :try_start_f2
    sget-object v6, Lcom/facebook/ads/redexgen/X/6R;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    const/16 v1, 0x1d

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/6R;->A0B(Ljava/lang/Throwable;)V
    :try_end_11c
    .catchall {:try_start_f2 .. :try_end_11c} :catchall_123

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    return v10

    :catchall_123
    move-exception v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    throw v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6O;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 17

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6T;->A06(Lcom/facebook/ads/redexgen/X/7S;)Z

    move-result v0

    move-object/from16 v9, p5

    if-eqz v0, :cond_39

    const/16 v2, 0x10a

    const/4 v1, 0x4

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6R;->A01:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6R;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_2d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2d
    sget-object v2, Lcom/facebook/ads/redexgen/X/6R;->A03:[Ljava/lang/String;

    const-string v1, "FHlvPh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/6O;->A07:Ljava/lang/String;

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    iget-object v10, p2, Lcom/facebook/ads/redexgen/X/6O;->A07:Ljava/lang/String;

    new-instance v5, Lcom/facebook/ads/redexgen/X/6S;

    iget-object v6, p2, Lcom/facebook/ads/redexgen/X/6O;->A05:Ljava/lang/String;

    iget-object v7, p2, Lcom/facebook/ads/redexgen/X/6O;->A06:Ljava/lang/String;

    const/16 v2, 0x105

    const/4 v1, 0x5

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/6S;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6R;->A07(Lcom/facebook/ads/redexgen/X/7S;)Ljava/io/File;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a7

    const/4 v0, 0x0

    invoke-static {p1, v5, v0}, Lcom/facebook/ads/redexgen/X/6T;->A04(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6S;Z)V

    const/16 v2, 0xe8

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const/16 v2, 0xef

    const/16 v1, 0x16

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a2

    invoke-direct {p0, v10, p4, p3}, Lcom/facebook/ads/redexgen/X/6R;->A04(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_a1
    return-object v0

    :cond_a2
    invoke-direct {p0, p1, p2, v9}, Lcom/facebook/ads/redexgen/X/6R;->A02(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6O;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a1

    :cond_a7
    const/4 v0, 0x1

    invoke-static {p1, v5, v0}, Lcom/facebook/ads/redexgen/X/6T;->A04(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6S;Z)V

    :try_start_ab
    invoke-direct {p0, p4, p3}, Lcom/facebook/ads/redexgen/X/6R;->A0C(II)Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v1, p4, p3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A02(Ljava/lang/String;IILcom/facebook/ads/redexgen/X/7S;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_c4

    :cond_bc
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_c4
    return-object v0
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c5} :catch_c5

    :catch_c5
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6R;->A0B(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6O;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 24

    move-object/from16 v6, p0

    move-object/from16 v14, p2

    iget-object v7, v14, Lcom/facebook/ads/redexgen/X/6O;->A07:Ljava/lang/String;

    iget v8, v14, Lcom/facebook/ads/redexgen/X/6O;->A03:I

    iget v5, v14, Lcom/facebook/ads/redexgen/X/6O;->A04:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v0, 0x0

    const/16 v3, 0xdf

    const/16 v2, 0x9

    const/16 v1, 0x46

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v3, 0xef

    const/16 v2, 0x16

    const/16 v1, 0x7b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    if-nez v4, :cond_30

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    :cond_30
    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_3e
    const/4 v2, 0x0

    goto :goto_49

    :cond_40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3e

    :goto_49
    :try_start_49
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Y9;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v6, v8, v5}, Lcom/facebook/ads/redexgen/X/6R;->A0C(II)Z

    move-result v1

    if-eqz v1, :cond_62
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_59} :catch_78
    .catch Ljava/lang/OutOfMemoryError; {:try_start_49 .. :try_end_59} :catch_6e
    .catchall {:try_start_49 .. :try_end_59} :catchall_6c

    :try_start_59
    invoke-static {v2, v8, v5}, Lcom/facebook/ads/redexgen/X/6V;->A01(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_66
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_60
    .catch Ljava/lang/OutOfMemoryError; {:try_start_59 .. :try_end_5e} :catch_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_84

    :catch_5e
    move-exception v0

    goto :goto_6f

    :catch_60
    move-exception v0

    goto :goto_79

    :cond_62
    :try_start_62
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_66
    if-eqz v2, :cond_b6
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_68} :catch_78
    .catch Ljava/lang/OutOfMemoryError; {:try_start_62 .. :try_end_68} :catch_6e
    .catchall {:try_start_62 .. :try_end_68} :catchall_6c

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    goto :goto_b6

    :catchall_6c
    move-exception v0

    goto :goto_85

    :catch_6e
    move-exception v0

    :goto_6f
    :try_start_6f
    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/6R;->A0B(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_77
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_82

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    :cond_77
    return-object v9

    :catch_78
    move-exception v0

    :goto_79
    :try_start_79
    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/6R;->A0B(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_81
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_82

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    :cond_81
    return-object v9

    :catchall_82
    move-exception v0

    goto :goto_85

    :catchall_84
    move-exception v0

    :goto_85
    if-eqz v2, :cond_8a

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    :cond_8a
    throw v0

    :cond_8b
    invoke-direct {v6, v8, v5}, Lcom/facebook/ads/redexgen/X/6R;->A0C(II)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/6R;->A03:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x5

    if-eq v2, v1, :cond_fe

    sget-object v3, Lcom/facebook/ads/redexgen/X/6R;->A03:[Ljava/lang/String;

    const-string v2, "EtuvklQgZLPMp8CYh3QQVMKsyyqrprqR"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    if-eqz v4, :cond_a9

    :try_start_a4
    invoke-direct {v6, v7, v8, v5}, Lcom/facebook/ads/redexgen/X/6R;->A05(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_b6
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a9} :catch_ae

    :cond_a9
    invoke-direct {v6, v7}, Lcom/facebook/ads/redexgen/X/6R;->A03(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_b6

    :catch_ae
    move-exception v0

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/6R;->A0B(Ljava/lang/Throwable;)V

    invoke-direct {v6, v7}, Lcom/facebook/ads/redexgen/X/6R;->A03(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_b6
    :goto_b6
    if-eqz v0, :cond_e0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_bc
    move-object/from16 v13, p1

    move-object/from16 v15, p3

    if-eqz v5, :cond_f4

    invoke-direct {v6, v7, v5}, Lcom/facebook/ads/redexgen/X/6R;->A00(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v11

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_e3

    sget v16, Lcom/facebook/ads/redexgen/X/6T;->A02:I

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/6T;->A03(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6O;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v5

    :cond_e0
    move-object/from16 v17, v9

    goto :goto_bc

    :cond_e3
    sget v16, Lcom/facebook/ads/redexgen/X/6T;->A01:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/6T;->A03(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6O;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/IP;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f3

    return-object v9

    :cond_f3
    return-object v5

    :cond_f4
    sget v16, Lcom/facebook/ads/redexgen/X/6T;->A03:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/6T;->A03(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6O;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v9

    :cond_fe
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A00(Lcom/facebook/ads/redexgen/X/7S;)Lcom/facebook/ads/redexgen/X/Qh;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Qv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Qv;-><init>()V

    invoke-interface {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Qh;->ADo(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qg;->A63()[B

    move-result-object v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x0

    array-length v0, v2

    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private A04(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/6R;->A0C(II)Z

    move-result v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_40

    const/16 v2, 0xe8

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_10

    goto :goto_22

    :cond_10
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_30

    :goto_22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A02(Ljava/lang/String;IILcom/facebook/ads/redexgen/X/7S;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_30
    invoke-direct {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/6R;->A00(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3f

    if-lez v1, :cond_6d

    return-object v2

    :cond_3f
    return-object v2
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_40} :catch_40

    :catch_40
    move-exception v6

    sget-object v5, Lcom/facebook/ads/redexgen/X/6R;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x69

    const/16 v1, 0x2b

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6d
    return-object v4
.end method

.method private A05(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/facebook/ads/redexgen/X/6V;->A01(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/6R;->A0A(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/6R;
    .registers 3

    sget-object v0, Lcom/facebook/ads/redexgen/X/6R;->A05:Lcom/facebook/ads/redexgen/X/6R;

    if-nez v0, :cond_17

    const-class v1, Lcom/facebook/ads/redexgen/X/6R;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/6R;->A05:Lcom/facebook/ads/redexgen/X/6R;

    if-nez v0, :cond_12

    new-instance v0, Lcom/facebook/ads/redexgen/X/6R;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6R;-><init>(Lcom/facebook/ads/redexgen/X/Y9;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6R;->A05:Lcom/facebook/ads/redexgen/X/6R;

    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :goto_17
    sget-object v0, Lcom/facebook/ads/redexgen/X/6R;->A05:Lcom/facebook/ads/redexgen/X/6R;

    return-object v0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/7S;)Ljava/io/File;
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->getCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static A08(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/6R;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x59

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A09()V
    .registers 1

    const/16 v0, 0x115

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/6R;->A02:[B

    return-void

    :array_a
    .array-data 1
        0x61t
        0x66t
        0x22t
        0x7ct
        0x62t
        0x6bt
        0x44t
        0x67t
        0x62t
        0x26t
        0x69t
        0x73t
        0x72t
        0x76t
        0x73t
        0x72t
        0x26t
        0x62t
        0x63t
        0x75t
        0x72t
        0x6ft
        0x68t
        0x67t
        0x72t
        0x6ft
        0x69t
        0x68t
        0x26t
        0x2et
        0x60t
        0x6ft
        0x6at
        0x63t
        0x3bt
        0x1at
        0x31t
        0x2ct
        0x35t
        0x39t
        0x28t
        0x78t
        0x2bt
        0x31t
        0x22t
        0x3dt
        0x78t
        0x3dt
        0x20t
        0x3bt
        0x3dt
        0x3dt
        0x3ct
        0x2bt
        0x78t
        0x35t
        0x39t
        0x20t
        0x78t
        0x2bt
        0x31t
        0x22t
        0x3dt
        0x78t
        0x3et
        0x37t
        0x2at
        0x78t
        0x2bt
        0x2ct
        0x37t
        0x2at
        0x39t
        0x3ft
        0x3dt
        0x62t
        0x78t
        0x67t
        0x45t
        0x47t
        0x4ct
        0x41t
        0x4t
        0x41t
        0x56t
        0x56t
        0x4bt
        0x56t
        0xat
        0x4t
        0x66t
        0x4dt
        0x50t
        0x49t
        0x45t
        0x54t
        0x4t
        0x4dt
        0x57t
        0x4t
        0x4at
        0x51t
        0x48t
        0x48t
        0xat
        0x39t
        0x1et
        0x16t
        0x13t
        0x1at
        0x1bt
        0x5ft
        0xbt
        0x10t
        0x5ft
        0x1ct
        0x10t
        0xft
        0x6t
        0x5ft
        0x13t
        0x10t
        0x1ct
        0x1et
        0x13t
        0x5ft
        0x16t
        0x12t
        0x1et
        0x18t
        0x1at
        0x5ft
        0x16t
        0x11t
        0xbt
        0x10t
        0x5ft
        0x1ct
        0x1et
        0x1ct
        0x17t
        0x1at
        0x5ft
        0x57t
        0xat
        0xdt
        0x13t
        0x42t
        0x35t
        0xet
        0x1t
        0x2t
        0xct
        0x5t
        0x40t
        0x14t
        0xft
        0x40t
        0x17t
        0x12t
        0x9t
        0x14t
        0x5t
        0x40t
        0x2t
        0x9t
        0x14t
        0xdt
        0x1t
        0x10t
        0x40t
        0x14t
        0xft
        0x40t
        0x6t
        0x9t
        0xct
        0x5t
        0x40t
        0x48t
        0x15t
        0x12t
        0xct
        0x5dt
        0x50t
        0x6bt
        0x64t
        0x67t
        0x69t
        0x60t
        0x25t
        0x71t
        0x6at
        0x25t
        0x72t
        0x77t
        0x6ct
        0x71t
        0x60t
        0x25t
        0x67t
        0x6ct
        0x71t
        0x68t
        0x64t
        0x75t
        0x25t
        0x71t
        0x6at
        0x25t
        0x6at
        0x70t
        0x71t
        0x75t
        0x70t
        0x71t
        0x25t
        0x76t
        0x71t
        0x77t
        0x60t
        0x64t
        0x68t
        0x7et
        0x6ct
        0x6ct
        0x7at
        0x6bt
        0x25t
        0x30t
        0x30t
        0x30t
        0x3ft
        0x30t
        0x35t
        0x3ct
        0x63t
        0x76t
        0x76t
        0x44t
        0x4bt
        0x4et
        0x47t
        0x18t
        0xdt
        0xdt
        0xdt
        0x43t
        0x4ct
        0x46t
        0x50t
        0x4dt
        0x4bt
        0x46t
        0x7dt
        0x43t
        0x51t
        0x51t
        0x47t
        0x56t
        0xdt
        0x1bt
        0x1ft
        0x13t
        0x15t
        0x17t
        0x0t
        0x3t
        0xdt
        0x8t
        0x4dt
        0x56t
        0x53t
        0x56t
        0x57t
        0x4ft
        0x56t
    .end array-data
.end method

.method public static A0A(Ljava/io/Closeable;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method

.method private A0B(Ljava/lang/Throwable;)V
    .registers 8

    const/16 v2, 0x105

    const/4 v1, 0x5

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A1e:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/7x;->A1e:I

    const/16 v2, 0x4d

    const/16 v1, 0x1c

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v3, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    goto :goto_1b
.end method

.method private A0C(II)Z
    .registers 4

    if-lez p1, :cond_e

    if-lez p2, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final A0D(Lcom/facebook/ads/redexgen/X/6O;)Landroid/graphics/Bitmap;
    .registers 8

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    move-object v2, p1

    iget v3, v2, Lcom/facebook/ads/redexgen/X/6O;->A04:I

    iget v4, v2, Lcom/facebook/ads/redexgen/X/6O;->A03:I

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/6O;->A01:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/6R;->A01(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6O;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 20

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A01:Ljava/util/Map;

    move-object/from16 v9, p2

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/6O;

    move-object v3, p1

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/6T;->A06(Lcom/facebook/ads/redexgen/X/7S;)Z

    move-result v0

    move/from16 v6, p3

    move/from16 v5, p4

    move-object/from16 v7, p5

    if-eqz v0, :cond_1f

    if-eqz v4, :cond_1f

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/6R;->A01(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6O;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1f
    new-instance v8, Lcom/facebook/ads/redexgen/X/6O;

    const/16 v2, 0x10e

    const/4 v1, 0x7

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0x10e

    const/4 v1, 0x7

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v13

    move v10, v6

    move v11, v5

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/6O;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/6R;->A01(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6O;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final A0F(Ljava/lang/String;)Ljava/io/File;
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6R;->A07(Lcom/facebook/ads/redexgen/X/7S;)Ljava/io/File;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2f

    :goto_2e
    return-object v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public final A0G(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6R;->A07(Lcom/facebook/ads/redexgen/X/7S;)Ljava/io/File;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    :cond_32
    return-object p1
.end method
