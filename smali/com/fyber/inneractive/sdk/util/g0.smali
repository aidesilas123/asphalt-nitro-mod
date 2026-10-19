###### Class com.fyber.inneractive.sdk.util.g0 (com.fyber.inneractive.sdk.util.g0)
.class public Lcom/fyber/inneractive/sdk/util/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/util/g0;->b:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/util/g0;->c:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/util/g0;->d:J

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/g0;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    return-void
.end method
