###### Class com.ironsource.adqualitysdk.sdk.i.cd.g (com.ironsource.adqualitysdk.sdk.i.cd$g)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cd$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/az$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cd;->j()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/cd;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cd;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cd$g;->a:Lcom/ironsource/adqualitysdk/sdk/i/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ｋ(Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;
    .registers 3
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

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/model/AdPayload$AdUnit;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v(Lcom/vungle/ads/internal/model/AdPayload$AdUnit;)Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;

    move-result-object p1

    return-object p1
.end method
