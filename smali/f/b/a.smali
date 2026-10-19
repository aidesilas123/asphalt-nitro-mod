###### Class f.b.a (f.b.a)
.class public Lf/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lg/a/a/a;


# instance fields
.field private final a:Llzma/sdk/lzma/a;


# direct methods
.method public constructor <init>(Llzma/sdk/lzma/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/b/a;->a:Llzma/sdk/lzma/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_47

    iget-object v0, p0, Lf/b/a;->a:Llzma/sdk/lzma/a;

    invoke-virtual {v0, v1}, Llzma/sdk/lzma/a;->c([B)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_14
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2e

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_26

    int-to-long v3, v3

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_26
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can\'t read stream size"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    iget-object v2, p0, Lf/b/a;->a:Llzma/sdk/lzma/a;

    invoke-virtual {v2, p1, p2, v0, v1}, Llzma/sdk/lzma/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    move-result p1

    if-eqz p1, :cond_37

    return-void

    :cond_37
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Decoding unsuccessful!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Decoder properties cannot be set!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    new-instance p1, Ljava/io/IOException;

    const-string p2, "LZMA file has no header!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
