###### Class com.fyber.inneractive.sdk.metrics.a (com.fyber.inneractive.sdk.metrics.a)
.class public Lcom/fyber/inneractive/sdk/metrics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/metrics/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(IILorg/json/JSONArray;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p0, :cond_38

    if-gtz p1, :cond_6

    goto :goto_38

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const/4 p0, 0x0

    const/4 v3, 0x0

    :goto_14
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge p0, v4, :cond_35

    const-wide/16 v6, 0x0

    invoke-virtual {p2, p0, v6, v7}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v6

    cmp-long v4, v6, v1

    if-lez v4, :cond_26

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    :goto_27
    if-eqz v5, :cond_32

    add-int/lit8 v3, v3, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 p0, p0, 0x1

    goto :goto_14

    :cond_35
    if-lt v3, p1, :cond_38

    const/4 v0, 0x1

    :cond_38
    :goto_38
    return v0
.end method
