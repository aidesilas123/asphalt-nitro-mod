###### Class com.mbridge.msdk.mbbanner.common.b.f (com.mbridge.msdk.mbbanner.common.b.f)
.class public Lcom/mbridge/msdk/mbbanner/common/b/f;
.super Ljava/lang/Object;
.source "ProxyBannerShowListener.java"

# interfaces
.implements Lcom/mbridge/msdk/mbbanner/common/b/c;


# static fields
.field private static final a:Ljava/lang/String; = "f"


# instance fields
.field private b:Lcom/mbridge/msdk/mbbanner/common/b/c;

.field private c:Lcom/mbridge/msdk/c/h;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/mbbanner/common/b/c;Lcom/mbridge/msdk/c/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/b/f;->c:Lcom/mbridge/msdk/c/h;

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/b/f;->b:Lcom/mbridge/msdk/mbbanner/common/b/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/b/f;->b:Lcom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/mbbanner/common/b/c;->a()V

    :cond_7
    return-void
.end method

.method public final a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/b/f;->b:Lcom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/mbbanner/common/b/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_7
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/b/f;->b:Lcom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/mbbanner/common/b/c;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/b/f;->b:Lcom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/mbbanner/common/b/c;->a(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/b/f;->b:Lcom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/mbbanner/common/b/c;->b()V

    :cond_7
    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/b/f;->b:Lcom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/mbbanner/common/b/c;->c()V

    :cond_7
    return-void
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/b/f;->b:Lcom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/mbbanner/common/b/c;->d()V

    :cond_7
    return-void
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/b/f;->b:Lcom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/mbbanner/common/b/c;->e()V

    :cond_7
    return-void
.end method
