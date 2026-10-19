###### Class com.gameloft.adsmanager.Tapjoy.AnonymousClass2 (com.gameloft.adsmanager.Tapjoy$2)
.class Lcom/gameloft/adsmanager/Tapjoy$2;
.super Ljava/lang/Object;
.source "Tapjoy.java"

# interfaces
.implements Lcom/tapjoy/TJGetCurrencyBalanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/Tapjoy;->CheckTapjoyCurrencyBalance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/Tapjoy;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/Tapjoy;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$2;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCurrencyBalanceResponse(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$2;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-virtual {v0, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnTapjoyCurrencyBalance(Ljava/lang/String;I)V

    return-void
.end method

.method public onGetCurrencyBalanceResponseFailure(Ljava/lang/String;)V
    .registers 4

    const-string v0, "onGetCurrencyBalanceResponseFailure"

    const-string v1, "Tapjoy.java"

    if-eqz p1, :cond_a

    invoke-static {v1, v0, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_a
    const-string p1, ""

    invoke-static {v1, v0, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method
