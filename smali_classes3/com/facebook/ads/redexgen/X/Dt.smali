###### Class com.facebook.ads.redexgen.X.RunnableC0972Dt (com.facebook.ads.redexgen.X.Dt)
.class public final Lcom/facebook/ads/redexgen/X/Dt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Dv;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dv;

.field public final synthetic A01:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dv;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dt;->A00:Lcom/facebook/ads/redexgen/X/Dv;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Dt;->A01:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v4, p0

    :try_start_8
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Dt;->A00:Lcom/facebook/ads/redexgen/X/Dv;

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Dt;->A01:Ljava/lang/Throwable;

    if-eqz v2, :cond_10

    const/4 v1, 0x4

    goto :goto_11

    :cond_10
    const/4 v1, 0x2

    :goto_11
    const/4 v0, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Dv;->A0J(Lcom/facebook/ads/redexgen/X/Dv;IILjava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Dt;->A00:Lcom/facebook/ads/redexgen/X/Dv;

    const/4 v1, 0x6

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0I(Lcom/facebook/ads/redexgen/X/Dv;II)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Dt;->A00:Lcom/facebook/ads/redexgen/X/Dv;

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0I(Lcom/facebook/ads/redexgen/X/Dv;II)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_33

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_33
    :goto_33
    return-void
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
