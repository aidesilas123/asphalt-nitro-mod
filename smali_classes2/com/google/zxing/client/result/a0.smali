###### Class com.google.zxing.client.result.a0 (com.google.zxing.client.result.a0)
.class public final Lcom/google/zxing/client/result/a0;
.super Lcom/google/zxing/client/result/ResultParser;
.source "URLTOResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/a0;->n(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/y;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/y;
    .registers 5

    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->c(Lcom/google/zxing/d;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "urlto:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const-string v0, "URLTO:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    return-object v1

    :cond_16
    const/16 v0, 0x3a

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_20

    return-object v1

    :cond_20
    if-gt v0, v2, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_27
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/zxing/client/result/y;

    invoke-direct {v0, p1, v1}, Lcom/google/zxing/client/result/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
