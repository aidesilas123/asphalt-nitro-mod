###### Class com.mbridge.msdk.foundation.same.report.c (com.mbridge.msdk.foundation.same.report.c)
.class public final Lcom/mbridge/msdk/foundation/same/report/c;
.super Ljava/lang/Object;
.source "CommonReportEventGroup.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/same/report/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/report/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/c;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/c;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/mbridge/msdk/foundation/same/report/b;)Lcom/mbridge/msdk/foundation/same/report/b;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_d

    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/c;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-object p1
.end method

.method public final a(Lcom/mbridge/msdk/foundation/same/report/b;Ljava/lang/String;ZZ)Lcom/mbridge/msdk/foundation/same/report/b;
    .registers 7

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    if-eqz p3, :cond_f

    iget-object p3, p0, Lcom/mbridge/msdk/foundation/same/report/c;->b:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/foundation/same/report/b;

    goto :goto_17

    :cond_f
    iget-object p3, p0, Lcom/mbridge/msdk/foundation/same/report/c;->b:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/foundation/same/report/b;

    :goto_17
    if-nez p2, :cond_1a

    goto :goto_2f

    :cond_1a
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/b;->a()Lcom/mbridge/msdk/foundation/same/report/b$a;

    move-result-object p3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/b;->q()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/report/b;->q()J

    move-result-wide p1

    sub-long/2addr v0, p1

    invoke-virtual {p3, v0, v1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->a(J)Lcom/mbridge/msdk/foundation/same/report/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->a()Lcom/mbridge/msdk/foundation/same/report/b;

    move-result-object p1

    :goto_2f
    if-nez p4, :cond_3a

    iget-object p2, p0, Lcom/mbridge/msdk/foundation/same/report/c;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/b;->i()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    return-object p1
.end method
