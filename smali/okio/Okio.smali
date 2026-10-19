###### Class okio.Okio (okio.Okio)
.class public final Lokio/Okio;
.super Ljava/lang/Object;


# direct methods
.method public static final appendingSink(Ljava/io/File;)Lokio/w;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->appendingSink(Ljava/io/File;)Lokio/w;

    move-result-object p0

    return-object p0
.end method

.method public static final asResourceFileSystem(Ljava/lang/ClassLoader;)Lokio/FileSystem;
    .registers 1

    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->asResourceFileSystem(Ljava/lang/ClassLoader;)Lokio/FileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static final blackhole()Lokio/w;
    .registers 1

    invoke-static {}, Lokio/Okio__OkioKt;->blackhole()Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method public static final buffer(Lokio/w;)Lokio/d;
    .registers 1

    invoke-static {p0}, Lokio/Okio__OkioKt;->buffer(Lokio/w;)Lokio/d;

    move-result-object p0

    return-object p0
.end method

.method public static final buffer(Lokio/y;)Lokio/e;
    .registers 1

    invoke-static {p0}, Lokio/Okio__OkioKt;->buffer(Lokio/y;)Lokio/e;

    move-result-object p0

    return-object p0
.end method

.method public static final cipherSink(Lokio/w;Ljavax/crypto/Cipher;)Lokio/f;
    .registers 2

    invoke-static {p0, p1}, Lokio/Okio__JvmOkioKt;->cipherSink(Lokio/w;Ljavax/crypto/Cipher;)Lokio/f;

    move-result-object p0

    return-object p0
.end method

.method public static final cipherSource(Lokio/y;Ljavax/crypto/Cipher;)Lokio/g;
    .registers 2

    invoke-static {p0, p1}, Lokio/Okio__JvmOkioKt;->cipherSource(Lokio/y;Ljavax/crypto/Cipher;)Lokio/g;

    move-result-object p0

    return-object p0
.end method

.method public static final hashingSink(Lokio/w;Ljava/security/MessageDigest;)Lokio/HashingSink;
    .registers 2

    invoke-static {p0, p1}, Lokio/Okio__JvmOkioKt;->hashingSink(Lokio/w;Ljava/security/MessageDigest;)Lokio/HashingSink;

    move-result-object p0

    return-object p0
.end method

.method public static final hashingSink(Lokio/w;Ljavax/crypto/Mac;)Lokio/HashingSink;
    .registers 2

    invoke-static {p0, p1}, Lokio/Okio__JvmOkioKt;->hashingSink(Lokio/w;Ljavax/crypto/Mac;)Lokio/HashingSink;

    move-result-object p0

    return-object p0
.end method

.method public static final hashingSource(Lokio/y;Ljava/security/MessageDigest;)Lokio/HashingSource;
    .registers 2

    invoke-static {p0, p1}, Lokio/Okio__JvmOkioKt;->hashingSource(Lokio/y;Ljava/security/MessageDigest;)Lokio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final hashingSource(Lokio/y;Ljavax/crypto/Mac;)Lokio/HashingSource;
    .registers 2

    invoke-static {p0, p1}, Lokio/Okio__JvmOkioKt;->hashingSource(Lokio/y;Ljavax/crypto/Mac;)Lokio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .registers 1

    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p0

    return p0
.end method

.method public static final openZip(Lokio/FileSystem;Lokio/Path;)Lokio/FileSystem;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lokio/Okio__JvmOkioKt;->openZip(Lokio/FileSystem;Lokio/Path;)Lokio/FileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/io/File;)Lokio/w;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->sink(Ljava/io/File;)Lokio/w;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/io/File;Z)Lokio/w;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1}, Lokio/Okio__JvmOkioKt;->sink(Ljava/io/File;Z)Lokio/w;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/io/OutputStream;)Lokio/w;
    .registers 1

    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->sink(Ljava/io/OutputStream;)Lokio/w;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/net/Socket;)Lokio/w;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->sink(Ljava/net/Socket;)Lokio/w;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/w;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-static {p0, p1}, Lokio/Okio__JvmOkioKt;->sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/w;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/w;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lokio/Okio__JvmOkioKt;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/w;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/io/File;)Lokio/y;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->source(Ljava/io/File;)Lokio/y;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/io/InputStream;)Lokio/y;
    .registers 1

    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->source(Ljava/io/InputStream;)Lokio/y;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/net/Socket;)Lokio/y;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->source(Ljava/net/Socket;)Lokio/y;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/y;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-static {p0, p1}, Lokio/Okio__JvmOkioKt;->source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/y;

    move-result-object p0

    return-object p0
.end method

.method public static final use(Ljava/io/Closeable;Lkotlin/jvm/b/l;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/b/l<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1}, Lokio/Okio__OkioKt;->use(Ljava/io/Closeable;Lkotlin/jvm/b/l;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
