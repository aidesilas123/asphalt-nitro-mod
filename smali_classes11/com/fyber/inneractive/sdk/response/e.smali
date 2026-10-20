###### Class com.fyber.inneractive.sdk.response.e (com.fyber.inneractive.sdk.response.e)
.class public abstract Lcom/fyber/inneractive/sdk/response/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Z

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Lcom/fyber/inneractive/sdk/ignite/k;

.field public G:Ljava/lang/String;

.field public H:Z

.field public I:J

.field public a:J

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

.field public o:Ljava/lang/String;

.field public p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/lang/String;

.field public r:Lcom/fyber/inneractive/sdk/external/ImpressionData;

.field public s:Lcom/fyber/inneractive/sdk/dv/g;

.field public t:I

.field public u:F

.field public v:Ljava/lang/String;

.field public w:I

.field public x:Ljava/lang/Exception;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/response/e;->t:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/fyber/inneractive/sdk/response/e;->u:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/response/e;->w:I

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/response/e;->B:Z

    sget-object v1, Lcom/fyber/inneractive/sdk/ignite/k;->NONE:Lcom/fyber/inneractive/sdk/ignite/k;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/response/e;->F:Lcom/fyber/inneractive/sdk/ignite/k;

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/response/e;->H:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/response/e;->I:J

    return-void
.end method


# virtual methods
.method public a()Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/response/e;->n:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    return-object v0
.end method

.method public abstract a(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;)Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;
.end method

.method public abstract a(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/config/global/s;)Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;
.end method

.method public a(Lcom/fyber/inneractive/sdk/ignite/k;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    sget-object p1, Lcom/fyber/inneractive/sdk/ignite/k;->NONE:Lcom/fyber/inneractive/sdk/ignite/k;

    :goto_5
    iput-object p1, p0, Lcom/fyber/inneractive/sdk/response/e;->F:Lcom/fyber/inneractive/sdk/ignite/k;

    return-void
.end method

.method public b()Z
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/response/e;->F:Lcom/fyber/inneractive/sdk/ignite/k;

    sget-object v1, Lcom/fyber/inneractive/sdk/ignite/k;->NONE:Lcom/fyber/inneractive/sdk/ignite/k;

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/response/e;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/response/e;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/response/e;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public c()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/response/e;->a:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
