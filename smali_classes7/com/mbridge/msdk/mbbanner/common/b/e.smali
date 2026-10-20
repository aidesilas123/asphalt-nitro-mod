###### Class com.mbridge.msdk.mbbanner.common.b.e (com.mbridge.msdk.mbbanner.common.b.e)
.class public Lcom/mbridge/msdk/mbbanner/common/b/e;
.super Ljava/lang/Object;
.source "DownloadBannerUrlListener.java"

# interfaces
.implements Lcom/mbridge/msdk/videocommon/download/g$b;


# static fields
.field private static final a:Ljava/lang/String; = "e"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/mbridge/msdk/mbbanner/common/c/b;

.field private d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/mbbanner/common/c/b;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/b/e;->c:Lcom/mbridge/msdk/mbbanner/common/c/b;

    iput-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/b/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/mbbanner/common/b/e;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/b/e;->c:Lcom/mbridge/msdk/mbbanner/common/c/b;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/b/e;->b:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/b/e;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_e
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/b/e;->c:Lcom/mbridge/msdk/mbbanner/common/c/b;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/b/e;->b:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/b/e;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_e
    return-void
.end method
