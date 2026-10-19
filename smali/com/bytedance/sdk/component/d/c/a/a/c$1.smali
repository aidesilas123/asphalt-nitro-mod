###### Class com.bytedance.sdk.component.d.c.a.a.c.AnonymousClass1 (com.bytedance.sdk.component.d.c.a.a.c$1)
.class Lcom/bytedance/sdk/component/d/c/a/a/c$1;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/d/c/a/a/c;->a()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/d/c/a/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/d/c/a/a/c;I)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/c$1;->a:Lcom/bytedance/sdk/component/d/c/a/a/c;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    if-lez v0, :cond_10

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_10

    add-int/lit8 v0, v0, -0x1

    :cond_10
    :try_start_10
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/component/d/c/a/a/c$1;->a:Lcom/bytedance/sdk/component/d/c/a/a/c;

    invoke-static {v4}, Lcom/bytedance/sdk/component/d/c/a/a/c;->a(Lcom/bytedance/sdk/component/d/c/a/a/c;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_22} :catch_23

    return-object v1

    :catch_23
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
