###### Class com.gameloft.adsmanager.IronSource.AnonymousClass1 (com.gameloft.adsmanager.IronSource$1)
.class Lcom/gameloft/adsmanager/IronSource$1;
.super Ljava/lang/Object;
.source "IronSource.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSource;->Configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSource;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSource;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSource$1;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImpressionSuccess(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .registers 3

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAllData()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$1;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnImpressionData(Ljava/lang/String;)V

    :cond_11
    return-void
.end method
