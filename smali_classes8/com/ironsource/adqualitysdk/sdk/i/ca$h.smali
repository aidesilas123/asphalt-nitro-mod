###### Class com.ironsource.adqualitysdk.sdk.i.ca.h (com.ironsource.adqualitysdk.sdk.i.ca$h)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ca$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/az$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ca;->j()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/ca;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ca;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ca$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ｋ(Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ch;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/verizon/ads/vastcontroller/VASTController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;

    invoke-static {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ca;->y(Lcom/verizon/ads/vastcontroller/VASTController;Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;)V

    const/4 p1, 0x0

    return-object p1
.end method
