###### Class com.facebook.ads.redexgen.X.C1389Uc (com.facebook.ads.redexgen.X.Uc)
.class public final Lcom/facebook/ads/redexgen/X/Uc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Is;


# instance fields
.field public final A00:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uc;->A00:Landroid/content/Context;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Uc;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Uc;->A00:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final A01(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16

    sget-object v0, Lcom/facebook/ads/redexgen/X/La;->A06:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ud;

    move-object v2, p0

    move v4, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Ud;-><init>(Lcom/facebook/ads/redexgen/X/Uc;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
