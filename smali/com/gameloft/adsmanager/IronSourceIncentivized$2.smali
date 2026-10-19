###### Class com.gameloft.adsmanager.IronSourceIncentivized.AnonymousClass2 (com.gameloft.adsmanager.IronSourceIncentivized$2)
.class Lcom/gameloft/adsmanager/IronSourceIncentivized$2;
.super Ljava/lang/Object;
.source "IronSourceIncentivized.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceIncentivized;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSourceIncentivized;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceIncentivized;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceIncentivized$2;->this$0:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceIncentivized$2;->this$0:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceIncentivized;->sdkLocation:Ljava/lang/String;

    const/16 v2, 0x22b8

    invoke-virtual {v0, v2, v1}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnShowError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceIncentivized$2;->this$0:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceIncentivized;->access$000(Lcom/gameloft/adsmanager/IronSourceIncentivized;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/IronSource;->ResetIncentivized()V

    return-void
.end method
