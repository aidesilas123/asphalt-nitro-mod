###### Class com.fyber.inneractive.sdk.metrics.c (com.fyber.inneractive.sdk.metrics.c)
.class public Lcom/fyber/inneractive/sdk/metrics/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/fyber/inneractive/sdk/metrics/c;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/metrics/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/metrics/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/fyber/inneractive/sdk/metrics/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/metrics/c;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/metrics/c;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/c;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/c;->b:Ljava/util/Map;

    new-instance v0, Lcom/fyber/inneractive/sdk/metrics/e;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/metrics/e;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/c;->c:Lcom/fyber/inneractive/sdk/metrics/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/f;
    .registers 4

    if-nez p1, :cond_5

    :try_start_2
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/metrics/c;->c:Lcom/fyber/inneractive/sdk/metrics/f;

    return-object p1

    :cond_5
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/metrics/f;

    if-nez v0, :cond_19

    new-instance v0, Lcom/fyber/inneractive/sdk/metrics/d;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/metrics/d;-><init>()V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    :cond_19
    return-object v0

    :catch_1a
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/metrics/c;->c:Lcom/fyber/inneractive/sdk/metrics/f;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/g;
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/metrics/g;

    if-nez v0, :cond_f

    new-instance v0, Lcom/fyber/inneractive/sdk/metrics/h;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/metrics/h;-><init>()V

    :cond_f
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/c;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
