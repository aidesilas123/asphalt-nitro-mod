###### Class com.facebook.ads.redexgen.X.C06941s (com.facebook.ads.redexgen.X.1s)
.class public final Lcom/facebook/ads/redexgen/X/1s;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/8G;

.field public final A02:Ljava/lang/String;

.field public final A03:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8G;Ljava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1s;->A03:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1s;->A01:Lcom/facebook/ads/redexgen/X/8G;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1s;->A02:Ljava/lang/String;

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/1s;->A00:J

    return-void
.end method


# virtual methods
.method public final A00()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1s;->A00:J

    return-wide v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/8G;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1s;->A01:Lcom/facebook/ads/redexgen/X/8G;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1s;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1s;->A03:Lorg/json/JSONObject;

    return-object v0
.end method
