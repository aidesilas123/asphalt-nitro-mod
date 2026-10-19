###### Class f.b.b (f.b.b)
.class public Lf/b/b;
.super Lg/a/a/b;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Llzma/sdk/lzma/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lf/b/a;

    invoke-direct {v0, p2}, Lf/b/a;-><init>(Llzma/sdk/lzma/a;)V

    invoke-direct {p0, p1, v0}, Lg/a/a/b;-><init>(Ljava/io/InputStream;Lg/a/a/a;)V

    return-void
.end method
