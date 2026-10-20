###### Class com.ironsource.adqualitysdk.sdk.i.bd.j (com.ironsource.adqualitysdk.sdk.i.bd$j)
.class final Lcom/ironsource/adqualitysdk/sdk/i/bd$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/az$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/bd;->j()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/bd;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/bd;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bd$j;->a:Lcom/ironsource/adqualitysdk/sdk/i/bd;

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

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/bd;->m(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
