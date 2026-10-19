###### Class com.facebook.ads.redexgen.X.DialogInterfaceOnClickListenerC1161Lh (com.facebook.ads.redexgen.X.Lh)
.class public final Lcom/facebook/ads/redexgen/X/Lh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Tp;->ACv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Tp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tp;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
