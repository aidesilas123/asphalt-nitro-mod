###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC1187Mh (com.facebook.ads.redexgen.X.Mh)
.class public final Lcom/facebook/ads/redexgen/X/Mh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Mj;->A01(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Mj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Mj;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mh;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v1, p0

    :try_start_8
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Mh;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A02(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MT;->A8F()V

    return-void
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
