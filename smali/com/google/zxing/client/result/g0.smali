###### Class com.google.zxing.client.result.g0 (com.google.zxing.client.result.g0)
.class public final Lcom/google/zxing/client/result/g0;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/g0;->n(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/f0;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/f0;
    .registers 15

    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->c(Lcom/google/zxing/d;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "S:"

    const/16 v2, 0x3b

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v3}, Lcom/google/zxing/client/result/ResultParser;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7b

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_7b

    :cond_25
    const-string v0, "P:"

    invoke-static {v0, p1, v2, v3}, Lcom/google/zxing/client/result/ResultParser;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    const-string v0, "T:"

    invoke-static {v0, p1, v2, v3}, Lcom/google/zxing/client/result/ResultParser;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    const-string v0, "nopass"

    :cond_35
    move-object v5, v0

    const-string v0, "PH2:"

    invoke-static {v0, p1, v2, v3}, Lcom/google/zxing/client/result/ResultParser;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H:"

    invoke-static {v1, p1, v2, v3}, Lcom/google/zxing/client/result/ResultParser;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_60

    if-nez v0, :cond_59

    const-string v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    goto :goto_59

    :cond_57
    move-object v12, v1

    goto :goto_61

    :cond_59
    :goto_59
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object v12, v0

    move v8, v1

    goto :goto_62

    :cond_60
    move-object v12, v0

    :goto_61
    const/4 v8, 0x0

    :goto_62
    const-string v0, "I:"

    invoke-static {v0, p1, v2, v3}, Lcom/google/zxing/client/result/ResultParser;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v9

    const-string v0, "A:"

    invoke-static {v0, p1, v2, v3}, Lcom/google/zxing/client/result/ResultParser;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v10

    const-string v0, "E:"

    invoke-static {v0, p1, v2, v3}, Lcom/google/zxing/client/result/ResultParser;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v11

    new-instance p1, Lcom/google/zxing/client/result/f0;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/zxing/client/result/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_7b
    :goto_7b
    return-object v1
.end method
