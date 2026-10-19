###### Class com.mbridge.msdk.e.a.u (com.mbridge.msdk.e.a.u)
.class public Lcom/mbridge/msdk/e/a/u;
.super Ljava/lang/Exception;
.source "VolleyError.java"


# instance fields
.field public final a:Lcom/mbridge/msdk/e/a/k;

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/e/a/u;->a:Lcom/mbridge/msdk/e/a/k;

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/e/a/k;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/u;->a:Lcom/mbridge/msdk/e/a/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/u;->a:Lcom/mbridge/msdk/e/a/k;

    return-void
.end method


# virtual methods
.method final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/e/a/u;->b:J

    return-void
.end method
