###### Class com.hyprmx.android.sdk.utility.q0 (com.hyprmx.android.sdk.utility.q0)
.class public final Lcom/hyprmx/android/sdk/utility/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/nio/charset/Charset;

.field public c:[B

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/hyprmx/android/sdk/utility/u0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/q0;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/utility/q0;->b:Ljava/nio/charset/Charset;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/q0;->c:[B

    return-void

    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final close()V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/q0;->a:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/q0;->c:[B

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hyprmx/android/sdk/utility/q0;->c:[B

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/q0;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final d()Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/q0;->a:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/q0;->c:[B

    if-eqz v1, :cond_a2

    iget v2, p0, Lcom/hyprmx/android/sdk/utility/q0;->d:I

    iget v3, p0, Lcom/hyprmx/android/sdk/utility/q0;->e:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_23

    iget-object v2, p0, Lcom/hyprmx/android/sdk/utility/q0;->a:Ljava/io/InputStream;

    array-length v3, v1

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-eq v1, v4, :cond_1d

    iput v5, p0, Lcom/hyprmx/android/sdk/utility/q0;->d:I

    iput v1, p0, Lcom/hyprmx/android/sdk/utility/q0;->e:I

    goto :goto_23

    :cond_1d
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_23
    :goto_23
    iget v1, p0, Lcom/hyprmx/android/sdk/utility/q0;->d:I

    :goto_25
    iget v2, p0, Lcom/hyprmx/android/sdk/utility/q0;->e:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_54

    iget-object v2, p0, Lcom/hyprmx/android/sdk/utility/q0;->c:[B

    aget-byte v6, v2, v1

    if-ne v6, v3, :cond_51

    iget v3, p0, Lcom/hyprmx/android/sdk/utility/q0;->d:I

    if-eq v1, v3, :cond_3e

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v2, v4

    const/16 v6, 0xd

    if-ne v5, v6, :cond_3e

    goto :goto_3f

    :cond_3e
    move v4, v1

    :goto_3f
    new-instance v5, Ljava/lang/String;

    sub-int/2addr v4, v3

    iget-object v6, p0, Lcom/hyprmx/android/sdk/utility/q0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hyprmx/android/sdk/utility/q0;->d:I

    monitor-exit v0

    return-object v5

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_54
    new-instance v1, Lcom/hyprmx/android/sdk/utility/q0$a;

    iget v2, p0, Lcom/hyprmx/android/sdk/utility/q0;->e:I

    iget v6, p0, Lcom/hyprmx/android/sdk/utility/q0;->d:I

    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/hyprmx/android/sdk/utility/q0$a;-><init>(Lcom/hyprmx/android/sdk/utility/q0;I)V

    :cond_60
    iget-object v2, p0, Lcom/hyprmx/android/sdk/utility/q0;->c:[B

    iget v6, p0, Lcom/hyprmx/android/sdk/utility/q0;->d:I

    iget v7, p0, Lcom/hyprmx/android/sdk/utility/q0;->e:I

    sub-int/2addr v7, v6

    invoke-virtual {v1, v2, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iput v4, p0, Lcom/hyprmx/android/sdk/utility/q0;->e:I

    iget-object v2, p0, Lcom/hyprmx/android/sdk/utility/q0;->a:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/utility/q0;->c:[B

    array-length v7, v6

    invoke-virtual {v2, v6, v5, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v4, :cond_9c

    iput v5, p0, Lcom/hyprmx/android/sdk/utility/q0;->d:I

    iput v2, p0, Lcom/hyprmx/android/sdk/utility/q0;->e:I

    const/4 v2, 0x0

    :goto_7c
    iget v6, p0, Lcom/hyprmx/android/sdk/utility/q0;->e:I

    if-eq v2, v6, :cond_60

    iget-object v6, p0, Lcom/hyprmx/android/sdk/utility/q0;->c:[B

    aget-byte v7, v6, v2

    if-ne v7, v3, :cond_99

    iget v3, p0, Lcom/hyprmx/android/sdk/utility/q0;->d:I

    if-eq v2, v3, :cond_8f

    sub-int v4, v2, v3

    invoke-virtual {v1, v6, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_8f
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hyprmx/android/sdk/utility/q0;->d:I

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/utility/q0$a;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_9c
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_a2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_aa
    move-exception v1

    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_3 .. :try_end_ac} :catchall_aa

    throw v1
.end method
