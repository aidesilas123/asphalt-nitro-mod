###### Class com.facebook.ads.redexgen.X.C0938Ca (com.facebook.ads.redexgen.X.Ca)
.class public final Lcom/facebook/ads/redexgen/X/Ca;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentHeader"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ca;->A01:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ca;->A02:[Ljava/lang/String;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ca;->A00:I

    return-void
.end method
