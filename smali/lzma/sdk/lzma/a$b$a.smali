###### Class lzma.sdk.lzma.a.b.C0603a (lzma.sdk.lzma.a$b$a)
.class Llzma/sdk/lzma/a$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llzma/sdk/lzma/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:[S

.field final synthetic b:Llzma/sdk/lzma/a$b;


# direct methods
.method constructor <init>(Llzma/sdk/lzma/a$b;)V
    .registers 2

    iput-object p1, p0, Llzma/sdk/lzma/a$b$a;->b:Llzma/sdk/lzma/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x300

    new-array p1, p1, [S

    iput-object p1, p0, Llzma/sdk/lzma/a$b$a;->a:[S

    return-void
.end method


# virtual methods
.method public a(Llzma/sdk/rangecoder/Decoder;)B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :cond_1
    shl-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Llzma/sdk/lzma/a$b$a;->a:[S

    invoke-virtual {p1, v2, v0}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v0

    or-int/2addr v0, v1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_1

    int-to-byte p1, v0

    return p1
.end method

.method public b(Llzma/sdk/rangecoder/Decoder;B)B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_2
    shr-int/lit8 v2, p2, 0x7

    and-int/2addr v2, v0

    shl-int/2addr p2, v0

    int-to-byte p2, p2

    iget-object v3, p0, Llzma/sdk/lzma/a$b$a;->a:[S

    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v3

    shl-int/2addr v1, v0

    or-int/2addr v1, v3

    const/16 v4, 0x100

    if-eq v2, v3, :cond_25

    :goto_18
    if-ge v1, v4, :cond_27

    shl-int/lit8 p2, v1, 0x1

    iget-object v0, p0, Llzma/sdk/lzma/a$b$a;->a:[S

    invoke-virtual {p1, v0, v1}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v0

    or-int v1, p2, v0

    goto :goto_18

    :cond_25
    if-lt v1, v4, :cond_2

    :cond_27
    int-to-byte p1, v1

    return p1
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Llzma/sdk/lzma/a$b$a;->a:[S

    invoke-static {v0}, Llzma/sdk/rangecoder/Decoder;->initBitModels([S)V

    return-void
.end method
