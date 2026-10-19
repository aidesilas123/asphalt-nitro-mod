###### Class com.facebook.ads.redexgen.X.RunnableC0971Ds (com.facebook.ads.redexgen.X.Ds)
.class public final Lcom/facebook/ads/redexgen/X/Ds;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Dv;->A08()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dv;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ds;->A00:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v3, p0

    :try_start_8
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Ds;->A00:Lcom/facebook/ads/redexgen/X/Dv;

    const/4 v1, 0x5

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0I(Lcom/facebook/ads/redexgen/X/Dv;II)Z

    return-void
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
