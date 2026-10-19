###### Class com.facebook.ads.redexgen.X.RunnableC0982Ed (com.facebook.ads.redexgen.X.Ed)
.class public final Lcom/facebook/ads/redexgen/X/Ed;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ej;->A08(Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/El;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ej;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ek;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/El;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Em;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ej;Lcom/facebook/ads/redexgen/X/Em;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/El;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Lcom/facebook/ads/redexgen/X/Ej;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ed;->A03:Lcom/facebook/ads/redexgen/X/Em;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ed;->A01:Lcom/facebook/ads/redexgen/X/Ek;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Ed;->A02:Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v5, p0

    :try_start_8
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/Ed;->A03:Lcom/facebook/ads/redexgen/X/Em;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ed;->A00:Lcom/facebook/ads/redexgen/X/Ej;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/Ej;->A00:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ed;->A00:Lcom/facebook/ads/redexgen/X/Ej;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ej;->A01:Lcom/facebook/ads/redexgen/X/EW;

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Ed;->A01:Lcom/facebook/ads/redexgen/X/Ek;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ed;->A02:Lcom/facebook/ads/redexgen/X/El;

    invoke-interface {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Em;->ABo(ILcom/facebook/ads/redexgen/X/EW;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/El;)V

    return-void
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
