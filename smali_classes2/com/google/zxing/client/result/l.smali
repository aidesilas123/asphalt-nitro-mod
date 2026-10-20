###### Class com.google.zxing.client.result.l (com.google.zxing.client.result.l)
.class public final Lcom/google/zxing/client/result/l;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/l;->n(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/k;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/k;
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method
