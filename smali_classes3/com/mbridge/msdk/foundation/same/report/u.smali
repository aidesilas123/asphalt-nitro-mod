###### Class com.mbridge.msdk.foundation.same.report.u (com.mbridge.msdk.foundation.same.report.u)
.class public final Lcom/mbridge/msdk/foundation/same/report/u;
.super Lcom/mbridge/msdk/e/v;
.source "StringReportResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/e/v;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/mbridge/msdk/e/a/k;)Lcom/mbridge/msdk/e/a/o;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/e/a/k;",
            ")",
            "Lcom/mbridge/msdk/e/a/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/mbridge/msdk/e/a/k;->b:[B

    iget-object v2, p1, Lcom/mbridge/msdk/e/a/k;->c:Ljava/util/Map;

    const-string v3, "ISO-8859-1"

    invoke-static {v2, v3}, Lcom/mbridge/msdk/e/a/a/e;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_17

    :catch_10
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/mbridge/msdk/e/a/k;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_17
    invoke-static {p1}, Lcom/mbridge/msdk/e/a/a/e;->a(Lcom/mbridge/msdk/e/a/k;)Lcom/mbridge/msdk/e/a/a$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/e/a/o;->a(Ljava/lang/Object;Lcom/mbridge/msdk/e/a/a$a;)Lcom/mbridge/msdk/e/a/o;

    move-result-object p1

    return-object p1
.end method
