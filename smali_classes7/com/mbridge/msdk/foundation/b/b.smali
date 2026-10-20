###### Class com.mbridge.msdk.foundation.b.b (com.mbridge.msdk.foundation.b.b)
.class public final Lcom/mbridge/msdk/foundation/b/b;
.super Ljava/lang/Object;
.source "CandidateEntity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:D

.field private g:I

.field private h:I

.field private i:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/b/b;->i:J

    return-wide v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/b/b;->g:I

    return-void
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/b/b;->i:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/b/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/b/b;->h:I

    return-void
.end method

.method public final b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/b/b;->e:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/b/b;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/b/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    :try_start_12
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_1d

    return-void

    :cond_1d
    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/b/b;->f:D
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    return-void
.end method

.method public final e()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/b/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final f()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/b/b;->e:J

    return-wide v0
.end method

.method public final g()D
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/b/b;->f:D

    return-wide v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/b/b;->g:I

    return v0
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/b/b;->h:I

    return v0
.end method
