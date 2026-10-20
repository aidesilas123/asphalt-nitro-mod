###### Class com.google.zxing.client.result.f (com.google.zxing.client.result.f)
.class public final Lcom/google/zxing/client/result/f;
.super Lcom/google/zxing/client/result/a;
.source "BookmarkDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/result/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/f;->p(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/y;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/y;
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method
