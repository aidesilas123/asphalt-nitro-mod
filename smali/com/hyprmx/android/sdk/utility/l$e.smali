###### Class com.hyprmx.android.sdk.utility.l.e (com.hyprmx.android.sdk.utility.l$e)
.class public final Lcom/hyprmx/android/sdk/utility/l$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:[Ljava/io/InputStream;

.field public final b:[J


# direct methods
.method public constructor <init>([Ljava/io/InputStream;[J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/l$e;->a:[Ljava/io/InputStream;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/utility/l$e;->b:[J

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 6

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l$e;->a:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    sget-object v4, Lcom/hyprmx/android/sdk/utility/u0;->a:Ljava/nio/charset/Charset;

    if-eqz v3, :cond_12

    :try_start_c
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_12

    goto :goto_12

    :catch_10
    move-exception v0

    throw v0

    :catch_12
    :cond_12
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_15
    return-void
.end method
