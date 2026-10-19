###### Class com.mbridge.msdk.video.dynview.moffer.a.AnonymousClass1 (com.mbridge.msdk.video.dynview.moffer.a$1)
.class final Lcom/mbridge/msdk/video/dynview/moffer/a$1;
.super Ljava/lang/Object;
.source "MOfferEnergize.java"

# interfaces
.implements Lcom/mbridge/msdk/video/dynview/e/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/dynview/moffer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

.field final synthetic c:Lcom/mbridge/msdk/video/dynview/moffer/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/moffer/a;Landroid/view/ViewGroup;Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/a$1;->c:Lcom/mbridge/msdk/video/dynview/moffer/a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/moffer/a$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/mbridge/msdk/video/dynview/moffer/a$1;->b:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 3

    const-string p1, "MOfferEnergize"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .registers 6

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/a$1;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    goto :goto_19

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/a$1;->c:Lcom/mbridge/msdk/video/dynview/moffer/a;

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/a$1;->b:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    invoke-static {v1, v2, v0, p1, p2}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Lcom/mbridge/msdk/video/dynview/moffer/a;Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_19

    :catch_f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MOfferEnergize"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method
