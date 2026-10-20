###### Class com.fyber.inneractive.sdk.player.cache.l.a (com.fyber.inneractive.sdk.player.cache.l$a)
.class public Lcom/fyber/inneractive/sdk/player/cache/l$a;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/cache/l;->b()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/cache/l;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/cache/l;I)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/l$a;->a:Lcom/fyber/inneractive/sdk/player/cache/l;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    if-lez v0, :cond_f

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v3, 0xd

    if-ne v1, v3, :cond_f

    move v0, v2

    :cond_f
    :try_start_f
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/cache/l$a;->a:Lcom/fyber/inneractive/sdk/player/cache/l;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/cache/l;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
