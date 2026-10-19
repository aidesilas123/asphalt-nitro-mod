###### Class lzma.sdk.lzma.a.C0602a (lzma.sdk.lzma.a$a)
.class Llzma/sdk/lzma/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llzma/sdk/lzma/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:[S

.field final b:[Llzma/sdk/rangecoder/BitTreeDecoder;

.field final c:[Llzma/sdk/rangecoder/BitTreeDecoder;

.field final d:Llzma/sdk/rangecoder/BitTreeDecoder;

.field e:I

.field final synthetic f:Llzma/sdk/lzma/a;


# direct methods
.method constructor <init>(Llzma/sdk/lzma/a;)V
    .registers 3

    iput-object p1, p0, Llzma/sdk/lzma/a$a;->f:Llzma/sdk/lzma/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [S

    iput-object p1, p0, Llzma/sdk/lzma/a$a;->a:[S

    const/16 p1, 0x10

    new-array v0, p1, [Llzma/sdk/rangecoder/BitTreeDecoder;

    iput-object v0, p0, Llzma/sdk/lzma/a$a;->b:[Llzma/sdk/rangecoder/BitTreeDecoder;

    new-array p1, p1, [Llzma/sdk/rangecoder/BitTreeDecoder;

    iput-object p1, p0, Llzma/sdk/lzma/a$a;->c:[Llzma/sdk/rangecoder/BitTreeDecoder;

    new-instance p1, Llzma/sdk/rangecoder/BitTreeDecoder;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Llzma/sdk/rangecoder/BitTreeDecoder;-><init>(I)V

    iput-object p1, p0, Llzma/sdk/lzma/a$a;->d:Llzma/sdk/rangecoder/BitTreeDecoder;

    const/4 p1, 0x0

    iput p1, p0, Llzma/sdk/lzma/a$a;->e:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    :goto_0
    iget v0, p0, Llzma/sdk/lzma/a$a;->e:I

    if-ge v0, p1, :cond_20

    iget-object v1, p0, Llzma/sdk/lzma/a$a;->b:[Llzma/sdk/rangecoder/BitTreeDecoder;

    new-instance v2, Llzma/sdk/rangecoder/BitTreeDecoder;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Llzma/sdk/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v1, v0

    iget-object v0, p0, Llzma/sdk/lzma/a$a;->c:[Llzma/sdk/rangecoder/BitTreeDecoder;

    iget v1, p0, Llzma/sdk/lzma/a$a;->e:I

    new-instance v2, Llzma/sdk/rangecoder/BitTreeDecoder;

    invoke-direct {v2, v3}, Llzma/sdk/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v0, v1

    iget v0, p0, Llzma/sdk/lzma/a$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llzma/sdk/lzma/a$a;->e:I

    goto :goto_0

    :cond_20
    return-void
.end method

.method public b(Llzma/sdk/rangecoder/Decoder;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llzma/sdk/lzma/a$a;->a:[S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Llzma/sdk/lzma/a$a;->b:[Llzma/sdk/rangecoder/BitTreeDecoder;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Llzma/sdk/rangecoder/BitTreeDecoder;->a(Llzma/sdk/rangecoder/Decoder;)I

    move-result p1

    return p1

    :cond_12
    iget-object v0, p0, Llzma/sdk/lzma/a$a;->a:[S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Llzma/sdk/lzma/a$a;->c:[Llzma/sdk/rangecoder/BitTreeDecoder;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Llzma/sdk/rangecoder/BitTreeDecoder;->a(Llzma/sdk/rangecoder/Decoder;)I

    move-result p1

    goto :goto_2c

    :cond_24
    iget-object p2, p0, Llzma/sdk/lzma/a$a;->d:Llzma/sdk/rangecoder/BitTreeDecoder;

    invoke-virtual {p2, p1}, Llzma/sdk/rangecoder/BitTreeDecoder;->a(Llzma/sdk/rangecoder/Decoder;)I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    :goto_2c
    add-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Llzma/sdk/lzma/a$a;->a:[S

    invoke-static {v0}, Llzma/sdk/rangecoder/Decoder;->initBitModels([S)V

    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Llzma/sdk/lzma/a$a;->e:I

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Llzma/sdk/lzma/a$a;->b:[Llzma/sdk/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Llzma/sdk/rangecoder/BitTreeDecoder;->b()V

    iget-object v1, p0, Llzma/sdk/lzma/a$a;->c:[Llzma/sdk/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Llzma/sdk/rangecoder/BitTreeDecoder;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1b
    iget-object v0, p0, Llzma/sdk/lzma/a$a;->d:Llzma/sdk/rangecoder/BitTreeDecoder;

    invoke-virtual {v0}, Llzma/sdk/rangecoder/BitTreeDecoder;->b()V

    return-void
.end method
