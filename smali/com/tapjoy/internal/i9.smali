###### Class com.tapjoy.internal.i9 (com.tapjoy.internal.i9)
.class public final Lcom/tapjoy/internal/i9;
.super Ljava/net/ContentHandler;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/i9;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/i9;

    invoke-direct {v0}, Lcom/tapjoy/internal/i9;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/i9;->a:Lcom/tapjoy/internal/i9;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    :goto_5
    :try_start_5
    instance-of v1, p1, Lcom/tapjoy/internal/u9;

    if-eqz v1, :cond_e

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2b

    :cond_e
    new-instance v1, Lcom/tapjoy/internal/u9;

    invoke-direct {v1, p1}, Lcom/tapjoy/internal/u9;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_17} :catch_1a
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    goto :goto_2b

    :catchall_18
    move-exception v0

    goto :goto_26

    :catch_1a
    move-exception v1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_25

    :try_start_1f
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_25
    throw v1
    :try_end_26
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_26} :catch_2a
    .catchall {:try_start_1f .. :try_end_26} :catchall_18

    :goto_26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    :catch_2a
    const/4 v0, 0x0

    :goto_2b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method
