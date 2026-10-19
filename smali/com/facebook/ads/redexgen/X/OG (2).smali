###### Class com.facebook.ads.redexgen.X.OG (com.facebook.ads.redexgen.X.OG)
.class public final Lcom/facebook/ads/redexgen/X/OG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sl;->A0S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sl;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sl;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OG;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v5, p0

    :try_start_8
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/OG;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Sl;->A0t(Lcom/facebook/ads/redexgen/X/Sl;Z)Z

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/OG;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0i(Lcom/facebook/ads/redexgen/X/Sl;)Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/OG;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Sl;->A09(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/0g;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FH;->A0G()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0a(Lcom/facebook/ads/redexgen/X/Sl;Ljava/lang/String;)V

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/OG;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0A(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0H()J

    move-result-wide v6

    const-wide/16 v1, 0x0

    cmp-long v0, v6, v1

    if-ltz v0, :cond_52

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/OG;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A06(Lcom/facebook/ads/redexgen/X/Sl;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/OG;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0I(Lcom/facebook/ads/redexgen/X/Sl;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/OG;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0A(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0H()J

    move-result-wide v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_52
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/OG;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Sl;->A0i(Lcom/facebook/ads/redexgen/X/Sl;)Z

    move-result v0

    if-nez v0, :cond_5e

    :goto_5a
    invoke-static {v1, v4}, Lcom/facebook/ads/redexgen/X/Sl;->A0b(Lcom/facebook/ads/redexgen/X/Sl;Z)V

    goto :goto_60

    :cond_5e
    const/4 v4, 0x0

    goto :goto_5a

    :goto_60
    return-void
    :try_end_61
    .catchall {:try_start_8 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
