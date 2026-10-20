###### Class com.google.zxing.client.result.a (com.google.zxing.client.result.a)
.class abstract Lcom/google/zxing/client/result/a;
.super Lcom/google/zxing/client/result/ResultParser;
.source "AbstractDoCoMoResultParser.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method static n(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/16 v0, 0x3b

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/zxing/client/result/ResultParser;->f(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static o(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x3b

    invoke-static {p0, p1, v0, p2}, Lcom/google/zxing/client/result/ResultParser;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
